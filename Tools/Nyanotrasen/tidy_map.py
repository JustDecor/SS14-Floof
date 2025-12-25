#!/usr/bin/python
# Tidy a map of any unnecessary datafields with GUI and multiprocessing support.

import argparse
import locale
import logging
import multiprocessing as mp
import traceback
from concurrent.futures import ProcessPoolExecutor, as_completed
from datetime import datetime
from pathlib import Path
from typing import Tuple

from ruamel.yaml import YAML

import tkinter as tk
from tkinter import ttk, filedialog, messagebox


# ---------------------------------------------------------------------
# YAML setup (ОСНОВНЕ ВИПРАВЛЕННЯ)
# ---------------------------------------------------------------------

def make_yaml() -> YAML:
    y = YAML(typ='rt')          # round-trip
    y.boolean_representation = ['False', 'True']
    y.default_flow_style = False
    return y


# ---------------------------------------------------------------------
# Logging
# ---------------------------------------------------------------------

def setup_logging():
    script_dir = Path(__file__).parent
    log_file = script_dir / f"map_cleaner_{datetime.now().strftime('%Y%m%d_%H%M%S')}.log"

    logging.basicConfig(
        level=logging.DEBUG,
        format='%(asctime)s - %(levelname)s - %(message)s',
        handlers=[
            logging.FileHandler(log_file, encoding='utf-8'),
            logging.StreamHandler()
        ]
    )

    logging.info(f"Logging to: {log_file}")
    return log_file


# ---------------------------------------------------------------------
# Cleanup rules
# ---------------------------------------------------------------------

REMOVE_COMPONENTS = [
    "AmbientSound",
    "EmitSoundOnCollide",
    "Fixtures",
    "GravityShake",
    "HandheldLight",
    "PlaySoundBehaviour",
]

REMOVE_COMPONENT_DATA = {
    "Airtight": ["airBlocked"],
    "DeepFryer": ["nextFryTime"],
    "Defibrillator": ["nextZapTime"],
    "Door": ["state", "SecondsUntilStateChange"],
    "Gun": ["nextFire"],
    "MaterialReclaimer": ["nextSound"],
    "MeleeWeapon": ["nextAttack"],
    "Occluder": ["enabled"],
    "Physics": ["canCollide"],
    "PowerCellDraw": ["nextUpdate"],
    "SolutionPurge": ["nextPurgeTime"],
    "SolutionRegeneration": ["nextChargeTime"],
    "SuitSensor": ["nextUpdate"],
    "Thruster": ["nextFire"],
    "VendingMachine": ["nextEmpEject"],
}

ERASE_COMPONENT_DATA = {
    "GridPathfinding": ["nextUpdate"],
    "SpreaderGrid": ["nextUpdate"],
}


# ---------------------------------------------------------------------
# Core logic
# ---------------------------------------------------------------------

def tidy_entity(entity):
    if "components" not in entity:
        return

    components = entity["components"]

    for i in range(len(components) - 1, -1, -1):
        component = components[i]

        if not isinstance(component, dict) or "type" not in component:
            continue

        ctype = component["type"]

        if ctype in REMOVE_COMPONENTS:
            del components[i]

        elif ctype in REMOVE_COMPONENT_DATA:
            for field in REMOVE_COMPONENT_DATA[ctype]:
                component.pop(field, None)

            if len(component) == 1:  # only "type" left
                del components[i]

        elif ctype in ERASE_COMPONENT_DATA:
            for field in ERASE_COMPONENT_DATA[ctype]:
                component.pop(field, None)


def tidy_map(map_data):
    for proto in map_data.get("entities", []):
        for ent in proto.get("entities", []):
            tidy_entity(ent)


# ---------------------------------------------------------------------
# File processing (multiprocessing-safe)
# ---------------------------------------------------------------------

def process_single_file(file_path: Path, output_dir: Path | None = None) -> Tuple[str, bool, int, str]:
    yaml = make_yaml()

    try:
        logging.info(f"Processing: {file_path}")

        with open(file_path, 'r', encoding='utf-8') as infile:
            map_data = yaml.load(infile)

        if not map_data:
            return (str(file_path), False, 0, "Empty or invalid YAML")

        tidy_map(map_data)

        if output_dir:
            outfname = (output_dir / file_path.name).with_stem(file_path.stem + "_tidy")
        else:
            outfname = file_path.with_stem(file_path.stem + "_tidy")

        with open(outfname, 'w', newline='\n', encoding='utf-8') as outfile:
            yaml.dump(map_data, outfile)
            outfile.write("...\n")

        saved = file_path.stat().st_size - outfname.stat().st_size
        return (str(file_path), True, saved, "")

    except Exception as e:
        logging.error(traceback.format_exc())
        return (str(file_path), False, 0, f"{type(e).__name__}: {e}")


# ---------------------------------------------------------------------
# GUI
# ---------------------------------------------------------------------

class MapCleanerGUI:
    def __init__(self, root, log_file):
        self.root = root
        self.root.title("Map Cleaner - SS14")
        self.root.geometry("800x600")
        self.log_file = log_file

        self.files_to_process = []
        self.setup_ui()

    def setup_ui(self):
        main = ttk.Frame(self.root, padding=10)
        main.pack(fill=tk.BOTH, expand=True)

        btns = ttk.Frame(main)
        btns.pack(fill=tk.X)

        ttk.Button(btns, text="Вибрати файли", command=self.select_files).pack(side=tk.LEFT)
        ttk.Button(btns, text="Вибрати папку", command=self.select_folder).pack(side=tk.LEFT)
        ttk.Button(btns, text="Очистити", command=self.clear_list).pack(side=tk.LEFT)

        self.recursive_var = tk.BooleanVar(value=True)
        ttk.Checkbutton(btns, text="З підпапками", variable=self.recursive_var).pack(side=tk.LEFT, padx=20)

        self.listbox = tk.Listbox(main)
        self.listbox.pack(fill=tk.BOTH, expand=True, pady=10)

        self.progress = ttk.Progressbar(main, maximum=100)
        self.progress.pack(fill=tk.X)

        self.status = ttk.Label(main, text="Готово")
        self.status.pack(anchor=tk.W)

        self.results = tk.Text(main, height=10)
        self.results.pack(fill=tk.BOTH, expand=True)

        ttk.Button(main, text="Обробити", command=self.process_files).pack(pady=5)

    def select_files(self):
        files = filedialog.askopenfilenames(filetypes=[("YAML", "*.yml")])
        for f in files:
            p = Path(f)
            if p not in self.files_to_process:
                self.files_to_process.append(p)
                self.listbox.insert(tk.END, str(p))

    def select_folder(self):
        folder = filedialog.askdirectory()
        if not folder:
            return

        pattern = "**/*.yml" if self.recursive_var.get() else "*.yml"
        for p in Path(folder).glob(pattern):
            if p not in self.files_to_process:
                self.files_to_process.append(p)
                self.listbox.insert(tk.END, str(p))

    def clear_list(self):
        self.files_to_process.clear()
        self.listbox.delete(0, tk.END)
        self.results.delete("1.0", tk.END)
        self.progress["value"] = 0
        self.status.config(text="Готово")

    def process_files(self):
        if not self.files_to_process:
            messagebox.showwarning("Нічого нема", "Файли не вибрані")
            return

        total = len(self.files_to_process)
        self.progress["value"] = 0
        self.results.delete("1.0", tk.END)

        with ProcessPoolExecutor(max_workers=max(1, mp.cpu_count() - 1)) as ex:
            futures = [ex.submit(process_single_file, f) for f in self.files_to_process]

            for i, fut in enumerate(as_completed(futures), 1):
                name, ok, saved, err = fut.result()
                if ok:
                    self.results.insert(tk.END, f"✓ {Path(name).name} (-{saved} байт)\n")
                else:
                    self.results.insert(tk.END, f"✗ {Path(name).name}: {err}\n")

                self.progress["value"] = (i / total) * 100
                self.status.config(text=f"{i}/{total}")

        self.status.config(text="Готово")


# ---------------------------------------------------------------------
# Entry point
# ---------------------------------------------------------------------

def main():
    log_file = setup_logging()

    parser = argparse.ArgumentParser()
    parser.add_argument("--cli", action="store_true")
    parser.add_argument("--infile")
    parser.add_argument("--outfile")
    args = parser.parse_args()

    if args.cli and args.infile:
        yaml = make_yaml()

        with open(args.infile, "r", encoding="utf-8") as f:
            data = yaml.load(f)

        tidy_map(data)

        out = args.outfile or Path(args.infile).with_stem(Path(args.infile).stem + "_tidy")
        with open(out, "w", encoding="utf-8", newline="\n") as f:
            yaml.dump(data, f)
            f.write("...\n")

        print("Done.")
    else:
        root = tk.Tk()
        MapCleanerGUI(root, log_file)
        root.mainloop()


if __name__ == "__main__":
    main()
