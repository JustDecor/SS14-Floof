-create-3rd-person =
    { $chance ->
        [1] Створює
        *[other] створюють
    }

-cause-3rd-person =
    { $chance ->
        [1] Завдає
        *[other] завдають
    }

-satiate-3rd-person =
    { $chance ->
        [1] Задовольняє
        *[other] задовольняють
    }

reagent-effect-guidebook-create-entity-reaction-effect =
    { $chance ->
        [1] Створює
        *[other] створюють
    } { $amount ->
        [1] {INDEFINITE($entname)}
        *[other] {$amount} {MAKEPLURAL($entname)}
    }

reagent-effect-guidebook-explosion-reaction-effect =
    { $chance ->
        [1] Викликає
        *[other] викликають
    } вибух

reagent-effect-guidebook-emp-reaction-effect =
    { $chance ->
        [1] Викликає
        *[other] викликають
    } електромагнітний імпульс

reagent-effect-guidebook-foam-area-reaction-effect =
    { $chance ->
        [1] Створює
        *[other] створюють
    } велику кількість піни

reagent-effect-guidebook-smoke-area-reaction-effect =
    { $chance ->
        [1] Створює
        *[other] створюють
    } велику кількість диму

reagent-effect-guidebook-satiate-thirst =
    { $chance ->
        [1] Задовольняє
        *[other] задовольняють
    } спрагу { $relative ->
        [1] в середньому
        *[other] у {NATURALFIXED($relative, 3)} рази швидше за середню швидкість
    }

reagent-effect-guidebook-satiate-hunger =
    { $chance ->
        [1] Задовольняє
        *[other] задовольняють
    } голод { $relative ->
        [1] в середньому
        *[other] у {NATURALFIXED($relative, 3)} рази швидше за середню швидкість
    }

reagent-effect-guidebook-health-change =
    { $chance ->
        [1] { $healsordeals ->
                [heals] Лікує
                [deals] Завдає
                *[both] Змінює здоров'я на
             }
        *[other] { $healsordeals ->
                    [heals] лікують
                    [deals] завдають
                    *[both] змінюють здоров'я на
                 }
    } { $changes }

reagent-effect-guidebook-status-effect =
    { $type ->
        [add]   { $chance ->
                    [1] Викликає
                    *[other] викликають
                } {LOC($key)} принаймні на {NATURALFIXED($time, 3)} {MANY("секунду", $time)} з накопиченням
        *[set]  { $chance ->
                    [1] Викликає
                    *[other] викликають
                } {LOC($key)} принаймні на {NATURALFIXED($time, 3)} {MANY("секунду", $time)} без накопичення
        [remove]{ $chance ->
                    [1] Знімає
                    *[other] знімають
                } {NATURALFIXED($time, 3)} {MANY("секунду", $time)} стану {LOC($key)}
    }

reagent-effect-guidebook-activate-artifact =
    { $chance ->
        [1] Намагається
        *[other] намагаються
    } активувати артефакт

reagent-effect-guidebook-set-solution-temperature-effect =
    { $chance ->
        [1] Встановлює
        *[other] встановлюють
    } температуру розчину рівно на {NATURALFIXED($temperature, 2)}K

reagent-effect-guidebook-adjust-solution-temperature-effect =
    { $chance ->
        [1] { $deltasign ->
                [1] Додає
                *[-1] Забирає
            }
        *[other]
            { $deltasign ->
                [1] додають
                *[-1] забирають
            }
    } теплоту з розчину, поки він не досягне { $deltasign ->
                [1] максимум {NATURALFIXED($maxtemp, 2)}K
                *[-1] мінімум {NATURALFIXED($mintemp, 2)}K
            }

reagent-effect-guidebook-adjust-reagent-reagent =
    { $chance ->
        [1] { $deltasign ->
                [1] Додає
                *[-1] Забирає
            }
        *[other]
            { $deltasign ->
                [1] додають
                *[-1] забирають
            }
    } {NATURALFIXED($amount, 2)} од. {$reagent} { $deltasign ->
        [1] до
        *[-1] з
    } розчину

reagent-effect-guidebook-adjust-reagent-group =
    { $chance ->
        [1] { $deltasign ->
                [1] Додає
                *[-1] Забирає
            }
        *[other]
            { $deltasign ->
                [1] додають
                *[-1] забирають
            }
    } {NATURALFIXED($amount, 2)} од. реагентів у групі {$group} { $deltasign ->
            [1] до
            *[-1] з
        } розчину

reagent-effect-guidebook-adjust-temperature = { $chance ->
        [1] { $deltasign ->
                [1] Додає
                *[-1] Видаляє
            }
        *[other]
            { $deltasign ->
                [1] додає
                *[-1] видалити
            }
    } {POWERJOULES($amount)} тепла { $deltasign ->
            [1] до
            *[-1] від
        }
        від тіла, в якому вона перебуває

reagent-effect-guidebook-chem-cause-disease =
    { $chance ->
        [1] Викликає
        *[other] викликають
    } захворювання { $disease }

reagent-effect-guidebook-chem-cause-random-disease =
    { $chance ->
        [1] Викликає
        *[other] викликають
    } захворювання {$diseases}

reagent-effect-guidebook-jittering =
    { $chance ->
        [1] Викликає
        *[other] викликають
    } тремтіння

reagent-effect-guidebook-chem-clean-bloodstream =
    { $chance ->
        [1] Очищає
        *[other] очищують
    } кровообіг від інших хімічних речовин

reagent-effect-guidebook-cure-disease =
    { $chance ->
        [1] Лікує
        *[other] лікують
    } захворювання

reagent-effect-guidebook-cure-eye-damage =
    { $chance ->
        [1] { $deltasign ->
                [1] Завдає
                *[-1] Лікує
            }
        *[other]
            { $deltasign ->
                [1] завдають
                *[-1] лікують
            }
    } пошкодження очей

reagent-effect-guidebook-chem-vomit =
    { $chance ->
        [1] Викликає
        *[other] викликають
    } блювання

reagent-effect-guidebook-create-gas =
    { $chance ->
        [1] Створює
        *[other] створюють
    } { $moles } { $moles ->
        [1] моль
        *[other] молей
    } газу {$gas}

reagent-effect-guidebook-drunk =
    { $chance ->
        [1] Викликає
        *[other] викликають
    } сп'яніння

reagent-effect-guidebook-electrocute =
    { $chance ->
        [1] Б'є струмом
        *[other] б'ють струмом
    } метаболізуючий орган протягом {NATURALFIXED($time, 3)} {MANY("секунду", $time)}

reagent-effect-guidebook-extinguish-reaction =
    { $chance ->
        [1] Гасить
        *[other] гасять
    } вогонь

reagent-effect-guidebook-flammable-reaction =
    { $chance ->
        [1] Підвищує
        *[other] підвищують
    } займистість

reagent-effect-guidebook-ignite =
    { $chance ->
        [1] Підпалює
        *[other] підпалюють
    } метаболізуючий орган

reagent-effect-guidebook-make-sentient =
    { $chance ->
        [1] Робить
        *[other] роблять
    } метаболізуючий орган розумним

reagent-effect-guidebook-make-polymorph =
    { $chance ->
        [1] Перетворює
        *[other] перетворюють
    } метаболізуючий орган на {$entityname}

reagent-effect-guidebook-modify-bleed-amount =
    { $chance ->
        [1] { $deltasign ->
                [1] Викликає
                *[-1] Зменшує
            }
        *[other] { $deltasign ->
                    [1] викликають
                    *[-1] зменшують
                 }
    } кровотечу

reagent-effect-guidebook-modify-blood-level =
    { $chance ->
        [1] { $deltasign ->
                [1] Підвищує
                *[-1] Знижує
            }
        *[other] { $deltasign ->
                    [1] підвищують
                    *[-1] знижують
                 }
    } рівень крові

reagent-effect-guidebook-paralyze =
    { $chance ->
        [1] Паралізує
        *[other] паралізують
    } метаболізуючий орган принаймні на {NATURALFIXED($time, 3)} {MANY("секунду", $time)}

reagent-effect-guidebook-movespeed-modifier =
    { $chance ->
        [1] Змінює
        *[other] змінюють
    } швидкість руху у {NATURALFIXED($walkspeed, 3)} рази принаймні на {NATURALFIXED($time, 3)} {MANY("секунду", $time)}

reagent-effect-guidebook-reset-narcolepsy =
    { $chance ->
        [1] Тимчасово відганяє
        *[other] тимчасово відганяють
    } нарколепсію

reagent-effect-guidebook-wash-cream-pie-reaction =
    { $chance ->
        [1] Змиває
        *[other] змивають
    } вершковий пиріг з обличчя

reagent-effect-guidebook-cure-zombie-infection =
    { $chance ->
        [1] Лікує
        *[other] лікують
    } поточну зомбі-інфекцію

reagent-effect-guidebook-cause-zombie-infection =
    { $chance ->
        [1] Надає
        *[other] надають
    } особі зомбі-інфекцію

reagent-effect-guidebook-innoculate-zombie-infection =
    { $chance ->
        [1] Лікує
        *[other] лікують
    } поточну зомбі-інфекцію та надає імунітет до майбутніх інфекцій

reagent-effect-guidebook-reduce-rotting =
    { $chance ->
        [1] Регенерує
        *[other] регенерують
    } {NATURALFIXED($time, 3)} {MANY("секунду", $time)} гниття

reagent-effect-guidebook-missing =
    { $chance ->
        [1] Викликає
        *[other] викликають
    } невідомий ефект, оскільки ніхто ще не описав цей ефект

reagent-effect-guidebook-change-glimmer-reaction-effect =
    { $chance ->
        [1] Змінює
        *[other] змінюють
    } кількість мерехтіння на {$count} очок

reagent-effect-guidebook-chem-remove-psionic =
    { $chance ->
        [1] Видаляє
        *[other] видаляють
    } псионічні здібності

reagent-effect-guidebook-chem-reroll-psionic =
    { $chance ->
        [1] Дає
        *[other] дають
    } шанс отримати іншу псионічну здатність

## Floof - Improve ChemAddMoodlet effect guidebook description
reagent-effect-guidebook-add-moodlet =
    { $use-effect-name ->
        [true] { $chance ->
            [1] Викликає
            *[other] викликають
        } {$mood-effect}
        *[false] { $chance ->
            [1] Змінює
            *[other] змінюють
        } настрій на {$amount}
    } { $timeout ->
        [0] назавжди
        *[other] на {$timeout} секунд
    }

reagent-effect-guidebook-purify-evil = Очищає від злих сил
