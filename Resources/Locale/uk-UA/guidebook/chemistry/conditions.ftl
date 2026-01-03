reagent-effect-condition-guidebook-total-damage =
    { $max ->
        [2147483648] має принаймні {NATURALFIXED($min, 2)} загальних пошкоджень
        *[other] { $min ->
                    [0] має не більше {NATURALFIXED($max, 2)} загальних пошкоджень
                    *[other] має від {NATURALFIXED($min, 2)} до {NATURALFIXED($max, 2)} загальних пошкоджень
                 }
    }

reagent-effect-condition-guidebook-total-hunger =
    { $max ->
        [2147483648] ціль має принаймні {NATURALFIXED($min, 2)} загального голоду
        *[other] { $min ->
                    [0] ціль має не більше {NATURALFIXED($max, 2)} загального голоду
                    *[other] ціль має від {NATURALFIXED($min, 2)} до {NATURALFIXED($max, 2)} загального голоду
                 }
    }

reagent-effect-condition-guidebook-reagent-threshold =
    { $max ->
        [2147483648] є принаймні {NATURALFIXED($min, 2)} од. {$reagent}
        *[other] { $min ->
                    [0] є не більше {NATURALFIXED($max, 2)} од. {$reagent}
                    *[other] є від {NATURALFIXED($min, 2)} од. до {NATURALFIXED($max, 2)} од. {$reagent}
                 }
    }

reagent-effect-condition-guidebook-mob-state-condition =
    ціль { $state }

reagent-effect-condition-guidebook-job-condition =
    посада цілі - { $job }

reagent-effect-condition-guidebook-solution-temperature =
    температура розчину { $max ->
            [2147483648] принаймні {NATURALFIXED($min, 2)}K
            *[other] { $min ->
                        [0] не більше {NATURALFIXED($max, 2)}K
                        *[other] від {NATURALFIXED($min, 2)}K до {NATURALFIXED($max, 2)}K
                     }
    }

reagent-effect-condition-guidebook-body-temperature =
    температура тіла { $max ->
            [2147483648] принаймні {NATURALFIXED($min, 2)}K
            *[other] { $min ->
                        [0] не більше {NATURALFIXED($max, 2)}K
                        *[other] від {NATURALFIXED($min, 2)}K до {NATURALFIXED($max, 2)}K
                     }
    }

reagent-effect-condition-guidebook-organ-type =
    метаболізуючий орган { $shouldhave ->
                                [true] є
                                *[false] не є
                           } {INDEFINITE($name)} органом типу {$name}

reagent-effect-condition-guidebook-has-tag =
    ціль { $invert ->
                 [true] не має
                 *[false] має
                } тег {$tag}

reagent-effect-condition-guidebook-this-reagent = цей реагент
