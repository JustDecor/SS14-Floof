## Job
character-job-requirement = Ви повинні {$inverted ->
    [true] не бути
    *[other] бути
} на одній з цих робіт: {$jobs}

character-department-requirement = Ви повинні {$inverted ->
    [true] не бути
    *[other] бути
} в одному з цих відділів: {$departments}

character-timer-department-insufficient = Вам потрібно на [color=yellow]{TOSTRING($time, "0")}[/color] хвилин більше ігрового часу у відділі [color={$departmentColor}]{$department}[/color]
character-timer-department-too-high = Вам потрібно на [color=yellow]{TOSTRING($time, "0")}[/color] хвилин менше ігрового часу у відділі [color={$departmentColor}]{$department}[/color]

character-timer-overall-insufficient = Вам потрібно на [color=yellow]{TOSTRING($time, "0")}[/color] хвилин більше ігрового часу
character-timer-overall-too-high = Вам потрібно на [color=yellow]{TOSTRING($time, "0")}[/color] хвилин менше ігрового часу

character-timer-role-insufficient = Вам потрібно на [color=yellow]{TOSTRING($time, "0")}[/color] хвилин більше ігрового часу за роль [color={$departmentColor}]{$job}[/color]
character-timer-role-too-high = Вам потрібно на [color=yellow] {TOSTRING($time, "0")}[/color] менше ігрового часу за роль [color={$departmentColor}]{$job}[/color]


## Logic
character-logic-and-requirement-listprefix = {""}
    {$indent}[color=gray]&[/color]{" "}
character-logic-and-requirement = Ви маєте{$inverted ->
    [true]{" "}не
    *[other]{""}
} підходити [color=red]усім[/color] з [color=gray]цього[/color]: {$options}

character-logic-or-requirement-listprefix = {""}
    {$indent}[color=white]АБО[/color]{" "}
character-logic-or-requirement = Ви маєте{$inverted ->
    [true]{" "}не
    *[other]{""}
} підходити [color=red]хоча б одному[/color] з [color=white]цього[/color]: {$options}

character-logic-xor-requirement-listprefix = {""}
    {$indent}[color=white]XОR[/color]{" "}
character-logic-xor-requirement = Ви маєте{$inverted ->
    [true]{" "}не
    *[other]{""}
} підходити [color=red]лише одному[/color] з [color=white]цього[/color]: {$options}


## Profile
character-age-requirement = Ви повинні {$inverted ->
    [true] не бути
    *[other] бути
} у межах [color=yellow]{$min}[/color] та [color=yellow]{$max}[/color] років

character-backpack-type-requirement = Ви повинні {$inverted ->
    [true] не використовувати
    *[other] використовувати
} [color=lightblue]{$type}[/color] як ваш мішок

character-clothing-preference-requirement = Ви повинні {$inverted ->
    [true] не носити
    *[other] носити
} [color=lightblue]{$type}[/color]

character-gender-requirement = Ви повинні {$inverted ->
    [true] не мати
    *[other] мати
} займенники [color=white]{$gender}[/color]

character-sex-requirement = Ви маєте{$inverted ->
    [true]{" "}не
    *[other]{""}
} бути [color=white]{$sex ->
    [None] без статі
    *[other] {$sex}
}[/color]
character-species-requirement = Ви повинні {$inverted ->
    [true] не бути
    *[other] бути
} {$species}

character-height-requirement = Ви маєте{$inverted ->
    [true]{" "}не
    *[other]{""}
} бути {$min ->
    [-2147483648]{$max ->
        [2147483648]{""}
        *[other] нижчим [color={$color}]{$max}[/color]см
    }
    *[other]{$max ->
        [2147483648] вищим за [color={$color}]{$min}[/color]см
        *[other] між [color={$color}]{$min}[/color] та [color={$color}]{$max}[/color]см висоти
    }
}

character-width-requirement = Ви маєте{$inverted ->
    [true]{" "}не
    *[other]{""}
} бути {$min ->
    [-2147483648]{$max ->
        [2147483648]{""}
        *[other] худішим за [color={$color}]{$max}[/color]см
    }
    *[other]{$max ->
        [2147483648] ширшим за [color={$color}]{$min}[/color]см
        *[other] між [color={$color}]{$min}[/color] та [color={$color}]{$max}[/color]см широким
    }
}

character-weight-requirement = Ви маєте{$inverted ->
    [true]{" "}не
    *[other]{""}
} бути {$min ->
    [-2147483648]{$max ->
        [2147483648]{""}
        *[other] легшим за [color={$color}]{$max}[/color]кг
    }
    *[other]{$max ->
        [2147483648] важчим за [color={$color}]{$min}[/color]кг
        *[other] між [color={$color}]{$min}[/color] та [color={$color}]{$max}[/color]кг
    }
}


character-trait-requirement = Ви повинні {$inverted ->
    [true] не мати
    *[other] мати
} особливості: [color=lightblue]{$traits}[/color]

character-loadout-requirement = Ви повинні {$inverted ->
    [true] не мати
    *[other] мати
} один з цих наборів: {$loadouts}


character-item-group-requirement = Ви повинні {$inverted ->
    [true] мати {$max} або більше
    *[other] мати {$max} або менше
} елементи з групи [color=white]{$group}[/color]


## Whitelist
character-whitelist-requirement = Ви повинні {$inverted ->
    [true] не бути
    *[other] бути
} у білому списку

## CVar

character-cvar-requirement =
    Сервер повинен{$inverted ->
    [true]{" "}не
    *[other]{""}
} мати [color={$color}]{$cvar}[/color] встановленим на [color={$color}]{$value}[/color].
