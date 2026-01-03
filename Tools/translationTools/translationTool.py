import os
import sys
import re
from datetime import datetime
from pathlib import Path
from multiprocessing import Pool, cpu_count
from typing import Dict, Set, List, Tuple

def extract_ftl_from_file(file_path: str) -> Dict[str, Dict[str, str]]:
    """
    Reads a single text file and extracts 'name', 'description', and 'suffix' values
    that are not already FTL variables.
    
    Args:
        file_path: Path to the YAML file to process
        
    Returns:
        Dictionary mapping entity IDs to their name/description/suffix values
    """
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            lines = f.readlines()

        def is_ftl_variable(s: str) -> bool:
            """Check if a string is already an FTL variable."""
            if ' ' in s:
                return False
            if '-' not in s:
                return False
            return True

        found_entities = {}
        current_id = None

        line_regex = re.compile(r"(\s*)(id|name|description|suffix):\s*('|\")?(.*?)('|\")?\s*(?:#.*)?$")

        for line in lines:
            # Reset current_id when encountering a new list item
            if line.strip().startswith('-'):
                current_id = None

            match = line_regex.match(line)
            if not match:
                continue

            _, key, _, value, _ = match.groups()

            if key == 'id':
                entity_id = value.strip()
                # Skip entities with blacklisted characters
                if '*' in entity_id:
                    print(f"Info: Skipping entity with ID '{entity_id}' due to blacklisted '*' character.")
                    current_id = None
                else:
                    current_id = entity_id
                continue

            # Extract name, description, and suffix
            if key in ['name', 'description', 'suffix'] and current_id:
                if not is_ftl_variable(value):
                    found_entities.setdefault(current_id, {})
                    found_entities[current_id][key] = value

        return found_entities

    except Exception as e:
        print(f"Error processing {file_path}: {e}")
        return {}


def load_existing_ftl_ids(ftl_path: str) -> Set[str]:
    """
    Reads an existing FTL file and returns a set of all entity IDs found.
    
    Args:
        ftl_path: Path to the FTL file
        
    Returns:
        Set of existing entity IDs
    """
    if not os.path.exists(ftl_path):
        return set()

    print(f"--- Reading existing FTL file: {ftl_path} ---")
    existing_ids = set()
    # Regex to find lines like: ent-SomeID = Some Name
    id_regex = re.compile(r"^\s*ent-([^=\s]+)")
    
    try:
        with open(ftl_path, 'r', encoding='utf-8') as f:
            for line in f:
                match = id_regex.match(line)
                if match:
                    existing_ids.add(match.group(1))
        print(f"Found {len(existing_ids)} existing entities.")
    except Exception as e:
        print(f"Error reading FTL file: {e}")
    
    return existing_ids


def process_single_file(args: Tuple[str, Set[str]]) -> Tuple[str, Dict[str, Dict[str, str]]]:
    """
    Process a single YAML file and extract new entities.
    This function is designed to be used with multiprocessing.
    
    Args:
        args: Tuple of (file_path, existing_ids)
        
    Returns:
        Tuple of (filename, new_entities_dict)
    """
    file_path, existing_ids = args
    filename = os.path.basename(file_path)
    
    entities_from_file = extract_ftl_from_file(file_path)
    
    # Filter to get only new entities
    new_entities = {
        entity_id: data 
        for entity_id, data in entities_from_file.items() 
        if entity_id not in existing_ids
    }
    
    return filename, new_entities


def process_directory_and_generate_ftl(input_dir: str, output_ftl_path: str, num_processes: int = None):
    """
    Walks a directory, finds new entities using multiprocessing, and appends them to an FTL file.
    
    Args:
        input_dir: Directory containing YAML files
        output_ftl_path: Path to the output FTL file
        num_processes: Number of processes to use (defaults to CPU count)
    """
    if not os.path.isdir(input_dir):
        print(f"Error: Input path '{input_dir}' is not a valid directory.")
        return

    # Ensure output directory exists
    output_dir = os.path.dirname(output_ftl_path)
    if output_dir and not os.path.exists(output_dir):
        print(f"Creating output directory: {output_dir}")
        os.makedirs(output_dir, exist_ok=True)

    # Load all IDs that are already in the target FTL file
    existing_ids = load_existing_ftl_ids(output_ftl_path)

    # Collect all YAML files
    yaml_files = []
    for root, _, files in os.walk(input_dir):
        for filename in sorted(files):
            if filename.endswith(".yml"):
                file_path = os.path.join(root, filename)
                yaml_files.append(file_path)

    print(f"\n--- Found {len(yaml_files)} YAML files to process ---")
    
    if not yaml_files:
        print("No YAML files found in the directory.")
        return

    # Determine number of processes
    if num_processes is None:
        num_processes = min(cpu_count(), len(yaml_files))
    
    print(f"--- Processing files using {num_processes} processes ---\n")

    # Process files in parallel
    new_data_to_append = []
    total_new_entities = 0
    
    # Prepare arguments for multiprocessing
    process_args = [(file_path, existing_ids) for file_path in yaml_files]
    
    with Pool(processes=num_processes) as pool:
        results = pool.map(process_single_file, process_args)
    
    # Collect results
    for filename, new_entities in results:
        if new_entities:
            new_data_to_append.append((filename, new_entities))
            total_new_entities += len(new_entities)

    # Append the new entities to the FTL file
    if new_data_to_append:
        # Check if the file is non-empty to decide if we need a separator
        needs_separator = os.path.exists(output_ftl_path) and os.path.getsize(output_ftl_path) > 0

        with open(output_ftl_path, 'a', encoding='utf-8') as f:
            if needs_separator:
                f.write(f"\n\n# === Entries Appended on {datetime.now().strftime('%Y-%m-%d %H:%M:%S')} ===\n")
            
            for filename, entities in new_data_to_append:
                # Write filename header
                f.write(f"\n# {filename}\n")
                
                for entity_id, data in sorted(entities.items()):
                    if 'name' in data:
                        f.write(f"ent-{entity_id} = {data['name']}\n")
                        if 'description' in data and data['description']:
                            f.write(f"    .desc = {data['description']}\n")
                        if 'suffix' in data and data['suffix']:
                            f.write(f"    .suffix = {data['suffix']}\n")
        
        print(f"\n✓ Successfully appended {total_new_entities} new entities to '{output_ftl_path}'.")
    else:
        print("\n✓ No new hardcoded strings found to add to the FTL file.")


def main():
    """Main entry point for the script."""
    if len(sys.argv) < 3:
        # Default paths
        input_directory = "../../Resources/Prototypes"
        output_ftl_file = "../Resources/Locale/ua-UA/prototypes/prototypes.ftl"
        print(f"Using default paths:")
        print(f"  Input: {input_directory}")
        print(f"  Output: {output_ftl_file}")
        process_directory_and_generate_ftl(input_directory, output_ftl_file)
    elif len(sys.argv) == 3:
        input_directory = sys.argv[1]
        output_ftl_file = sys.argv[2]
        process_directory_and_generate_ftl(input_directory, output_ftl_file)
    elif len(sys.argv) == 4:
        input_directory = sys.argv[1]
        output_ftl_file = sys.argv[2]
        num_processes = int(sys.argv[3])
        process_directory_and_generate_ftl(input_directory, output_ftl_file, num_processes)
    else:
        print("Usage: python translationTool.py <input_directory> <output_ftl_file> [num_processes]")
        print("Or run without arguments to use default paths.")
        sys.exit(1)


if __name__ == "__main__":
    main()