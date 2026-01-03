paperwork-header-security = {"["}color=#cb0000] ◥[bold]N[/bold]◣ [head=3][bold]СЛУЖБА БЕЗПЕКИ[/bold][/head][/color]
paperwork-separator-security = {"["}color=#cb0000]‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾[/color]

paperwork-security-arrest-report = 
    { paperwork-header-security }
    { paperwork-separator-security }
        {"["}head=2]ЗВІТ ПРО АРЕШТ[/head]
    { paperwork-separator-security }
        {"["}bold]СЕКТОР:[/bold] Станція Флуф
        {"["}bold]СТАНЦІЯ:[/bold] {$stationName}
        {"["}bold]ЧАС ЗМІНИ:[/bold] XX:XX
        {"["}bold]ГЛАВА СЛУЖБИ БЕЗПЕКИ:[/bold]
        {"["}bold]ОФІЦЕР, ЩО ПРОВОДИВ АРЕШТ:[/bold]
        {"["}bold]ЗААРЕШТОВАНА ОСОБА:[/bold]
        {"["}bold]РОБОТА:[/bold]
    { paperwork-separator-security }
    • Причина арешту:
    { paperwork-separator-security }
    {"["}head=3]Звинувачення:[/head]
    1XX Проступки:
    \[  ] Код:СЗ1-01 (Залякування) - 5хв Макс
    \[  ] Код:СЗ1-03 (Жорстоке поводження з тваринами) - 3хв
    \[  ] Код:СЗ1-04 (Крадіжка) - 2хв
    \[  ] Код:СЗ1-06 (Вандалізм) - 2хв
    \[  ] Код:СЗ1-09 (Погроза зброєю) - 2хв
    \[  ] Код:СЗ1-11 (Володіння) - 5хв Макс
    \[  ] Код:СЗ1-12 (Проникнення) - 2хв
    \[  ] Код:СЗ1-15 (Хуліганство) - 'За рішенням'
    \[  ] Код:СЗ1-17 (Невиконання вимог) - 2хв
    {"["}color=gray]За перший проступок можна винести попередження.[/color]
    { paperwork-separator-security }
    2XX Тяжкі злочини:
    \[  ] Код:СЗ2-01 (Лжесвідчення або неправдиве повідомлення) - 3 хв
    \[  ] Код:СЗ2-03 (Вбивство з необережності) - 8хв
    \[  ] Код:СЗ2-04 (Велика крадіжка) - 8хв
    \[  ] Код:СЗ2-05 (Чорний ринок) - 6хв
    \[  ] Код:СЗ2-06 (Саботаж) - 6хв
    \[  ] Код:СЗ2-07 (Ламання розуму) - 5хв
    \[  ] Код:СЗ2-08 (Викрадення) - 8хв
    \[  ] Код:СЗ2-09 (Напад)- 5хв
    \[  ] Код:СЗ2-10 (Зловживання владою) - 5хв
    \[  ] Код:СЗ2-11 (Володіння тяжке) - 10хв Макс
    \[  ] Код:СЗ2-12 (Проникнення до захищеної зони) - 4хв
    \[  ] Код:СЗ2-13 (Створення небезпеки) - 4хв
    \[  ] Код:СЗ2-14 (Домагання) - 4хв
    \[  ] Код:СЗ2-15 (Заворушення) - 4хв
    \[  ] Код:СЗ2-16 (Неповага до суду) - 4хв
    \[  ] Код:СЗ2-17 (Перешкоджання правосуддю) - 2хв
    { paperwork-separator-security }
    3XX Особливо тяжкі злочини:
    \[  ] Код:СЗ3-01 (Тероризм)
    \[  ] Код:СЗ3-03 (Умисне вбивство)
    \[  ] Код:СЗ3-06 (Великий саботаж)
    \[  ] Код:СЗ3-07 (Декорпореалізація)
    \[  ] Код:СЗ3-08 (Захоплення заручників)
    \[  ] Код:СЗ3-13 (Велика небезпека)
    \[  ] Код:СЗ3-15 (Заколот)
    {"["}color=gray]Всі особливо тяжкі злочини потребують обов'язкового суду.[/color]
    { paperwork-separator-security }
    Модифікатори злочину:
    {"["}color=gray]Час відповідає скоєним або замахнутим злочинам.[/color]
    \[  ] Підбурювання
    \[  ] Пособництво
    \[  ] Замах
    \[  ] Змова
    {"["}color=gray]150% макс додатковий модифікатор оригінального терміну.[/color]
    \[  ] Смертельна зброя
    \[  ] Обтяження
    \[  ] Дискримінаційний намір
    {"["}color=gray]200% макс додатковий модифікатор оригінального терміну.[/color]
    \[  ] Рецидивізм
    {"["}color=gray]Зменшення терміну або помилування.[/color]
    \[  ] Співпраця - 50% зменшення оригінального терміну.
    \[  ] Надзвичайна ситуація - Зменшення терміну або повне помилування.
    \[  ] Самооборона - Зменшення терміну або повне помилування.

    {"["}color=red]This document is not valid unless stamped by at least one of the required personnel.[/color]
    {"["}color=gray]This form follows NT space law.[/color]
    {"["}color=gray]Those who abuse granted permission can be fined up to 5000 Spesos.[/color]
    {"["}bold]Warden or Head of Securiy's Signature:[/bold]
    {"["}bold]Attorney's Signature:[/bold]
    {"["}bold]Prosecutor's Signature:[/bold]



paperwork-security-arrest-warrant = 
    { paperwork-header-security }
    { paperwork-separator-security }
        {"["}head=2]ОРДЕР НА АРЕШТ [/head]
    { paperwork-separator-security }
        {"["}bold]СЕКТОР:[/bold] Станція Флуф
        {"["}bold]СТАНЦІЯ:[/bold] {$stationName}
        {"["}bold]ЧАС ЗМІНИ:[/bold] XX:XX
        {"["}bold]ОФІЦЕР, ЩО ПРОВОДИТЬ АРЕШТ: [/bold]
        {"["}bold]ГЛАВА СЛУЖБИ БЕЗПЕКИ: [/bold]
        {"["}bold]ПРОКУРОР: [/bold]
        {"["}bold]ЦІЛЬ ОРДЕРА: [/bold]
        {"["}bold]РОБОТА: [/bold]
    { paperwork-separator-security }
    • Причина арешту:
    { paperwork-separator-security }
    {"["}color=gray]Ордери дійсні лише тоді, коли видані головним суддею або секретарем суду, або за їх відсутності командуючим офіцером, главою служби безпеки або наглядачем.[/color]
    {"["}color=#cb0000]Цей документ не є дійсним, якщо не проштампований принаймні одним із необхідних співробітників.[/color]

    {"["}color=gray]This form follows NT space law.[/color]
    {"["}color=gray]Those who abuse granted permission can be fined up to 5000 Spesos.[/color]

    { paperwork-separator-security }
    {"["}bold]Issuer's Signature:[/bold]

paperwork-security-department-search-warrant = 
    { paperwork-header-security }
    { paperwork-separator-security }
        {"["}head=2]ОРДЕР НА ОБШУК ВІДДІЛУ [/head]
    { paperwork-separator-security }
        {"["}bold]СЕКТОР:[/bold] Станція Флуф
        {"["}bold]СТАНЦІЯ:[/bold] {$stationName}
        {"["}bold]ЧАС ЗМІНИ:[/bold] XX:XX
        {"["}bold]ПРОКУРОР:[/bold]
        {"["}bold]ГЛАВА СЛУЖБИ БЕЗПЕКИ:[/bold]
        {"["}bold]ЦІЛЬ ОРДЕРА: [/bold]
    { paperwork-separator-security }
    • Офіцер, що робить запит:

    • Reason for the search:
    { paperwork-separator-security }
    If illegal items are found in the searched department they will be confiscated and the owner of these items may be detained at the officer's discretion. Search Warrants should include an area, a brief description of the probable cause, and a list of individuals if applicable.

    {"["}bold]Warrants are only valid when issued by either the Chief Justice or the Clerk of Court, or in their absence, the Commanding Officer, the Head of Security, or the Warden.[/bold]
    {"["}color=#cb0000]This document is not valid unless stamped by at least one of the required personnel.[/color]

    {"["}color=gray]This form follows NT space law.[/color]
    {"["}color=gray]Those who abuse granted permission can be fined up to 5000 Spesos.[/color]

    { paperwork-separator-security }
    {"["}bold]Issuer's Signature:[/bold]

paperwork-security-detective-report = 
    { paperwork-header-security }
    { paperwork-separator-security }
    {"["}head=2]ЗВІТ ДЕТЕКТИВА [/head]
    { paperwork-separator-security }
    {"["}bold]СПРАВА:[/bold] ОХОРОНА СТАНЦІЇ проти (ВІДПОВІДАЧА)
    {"["}bold]ПРОКУРОР:[/bold]
    { paperwork-separator-security }
    Деталі справи:

    Evidence Collected:

    { paperwork-separator-security }
    {"["}color=red]This document is not valid unless stamped by at least one of the required personnel.[/color]

    {"["}color=gray]Evidence not provided to the Clerk of Court for certification prior to the court proceedings, if available, will not be accepted into the record. All evidence collected should be shared with the Defendant's Attorney.[/color]

    {"["}color=gray]Failure to appear to a Court Summons is a violation of Space Law and will be considered Contempt of Court.[/color]

    { paperwork-separator-security }
    {"["}bold]Prosecutor's Signature:[/bold]
    {"["}bold]Detective's Signature:[/bold]

paperwork-security-furlough-request = 
    { paperwork-header-security }
    { paperwork-separator-security }
        {"["}head=2]ЗАПИТ НА ВІДПУСТКУ[/head]
    { paperwork-separator-security }
    Цей документ, якщо схвалений, дозволяє ув'язненому покинути свою камеру під прямим наглядом охоронного персоналу не більше ніж на 20 хвилин. Ув'язнений погоджується на повний обшук після закінчення відпустки, щоб переконатися, що немає контрабанди.
    {"["}color=red][bold]Цей документ повинен бути затверджений і проштампований наглядачем або главою служби безпеки, і підписаний ув'язненим, щоб бути дійсним![/bold][/color]

    Inmate:  [color=#002AAF]Name Here[/color]
                ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾
    Warden: [color=#002AAF]Name Here[/color]
                 ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾
    Head of Security:   [color=#002AAF]Name Here[/color]
                               ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾
    If contraband is discovered or given to the inmate, sentences may be applied or extended.
    Furlough may end early at the Warden's discretion, for the safety of employees and inmates. Public displays of affection must be limited to single kiss, or hug.
    { paperwork-separator-security }
    {"["}bold]Inmate's reason for furlough:[/bold]


    {"["}color=red][bold]DO NOT SIGN UNTIL WARDEN/HoS REVIEWS!!![/color][/bold]
    { paperwork-separator-security }
    {"["}bold]Reason for denial (if denied):[/bold]



    { paperwork-separator-security }
    {"["}color=#aaaaaa]This document is not valid unless stamped by at least one of the listed required personnel.
    This form follows NT Space Law.
    Those who abuse granted permission can be fined up to 5000 spesos pursuant NT Handbook §16-8.7c[/color]

    { paperwork-separator-security }
    {"["}color=red][italic]By signing here, the Inmate agrees to adheare to the conditions listed within this form.[/color][/italic]
    {"["}bold]Approver's Signature:[/bold]
    {"["}bold]Inmate's Signature:[/bold]


paperwork-security-individual-search-warrant = 
    { paperwork-header-security }
    { paperwork-separator-security }
        {"["}head=2]ОРДЕР НА ОСОБИСТИЙ ОБШУК [/head]
    { paperwork-separator-security }
        {"["}bold]СЕКТОР:[/bold] Станція Флуф
        {"["}bold]СТАНЦІЯ:[/bold] {$stationName}
        {"["}bold]ЧАС ЗМІНИ:[/bold] XX:XX
        {"["}bold]ПРОКУРОР:[/bold]
        {"["}bold]ГЛАВА СЛУЖБИ БЕЗПЕКИ:[/bold]
        {"["}bold]ЦІЛЬ ОРДЕРА:[/bold]
        {"["}bold]РОБОТА:[/bold]
    { paperwork-separator-security }
    • Офіцер, що робить запит:

    • Reason for the search:
    { paperwork-separator-security }
    If illegal items are found in the posession of the searched individual they will be confiscated and the owner of these items may be detained at the officer's discretion.

    {"["}bold]Warrants are only valid when issued by either the Chief Justice or the Clerk of Court, or in their absence, the Commanding Officer, the Head of Security, or the Warden.[/bold]
    {"["}color=#cb0000]This document is not valid unless stamped by at least one of the required personnel.[/color]

    {"["}color=gray]This form follows NT space law.[/color]
    {"["}color=gray]Those who abuse granted permission can be fined up to 5000 Spesos.[/color]

    { paperwork-separator-security }
    {"["}bold]Issuer's Signature:[/bold]


paperwork-security-inmate-request = 
    { paperwork-header-security }
    { paperwork-separator-security }
        {"["}head=2]Форма запиту ув'язненого [/head]
    { paperwork-separator-security }
        {"["}bold]  СЕКТОР:[/bold] Станція Флуф
        {"["}bold]  СТАНЦІЯ:[/bold] {$stationName}
        {"["}bold]  ЧАС ЗМІНИ:[/bold] XX:XX
        {"["}bold]  НАГЛЯДАЧ:[/bold]
        {"["}bold]  УВ'ЯЗНЕНИЙ:[/bold]
    { paperwork-separator-security }
    • Запитані предмети:



    {"["}italic]NOTE: Please place an X with the number of items desired.[/italic]
    { paperwork-separator-security }
    {"["}color=red]This document is not valid unless stamped by either the Warden or Head of Security.[/color]

    {"["}color=gray]Your request will be considered and approved within reason.[/color]
    { paperwork-separator-security }
    {"["}bold]Inmate's Signature:[/bold]
    {"["}bold]Approver's Signature:[/bold]

paperwork-security-visitation-request = 
    { paperwork-header-security }
    { paperwork-separator-security }
        {"["}head=2]ЗАПИТ НА ВІДВІДУВАННЯ[/head]
    { paperwork-separator-security }
    Цей документ, якщо схвалений, дозволяє одноразове відвідування між ув'язненим і працівником станцій НаноТрасен. Відвідувач погоджується на обшук перед входом до зони відвідувань. Ув'язнений також погоджується на повний обшук після закінчення відвідування.
    {"["}color=red][bold]Цей документ повинен бути затверджений і проштампований наглядачем, і підписаний як відвідувачем, так і ув'язненим, щоб бути дійсним![/bold][/color]

    Inmate: [color=#002AAF]Name Here[/color]
                  ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾
    Warden: [color=#002AAF]Name Here[/color]
                   ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾
    Visitor: [color=#002AAF]Name Here[/color]
                ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾
    {"["}bold]General visitation will not exceed 10 minutes. If contraband is discovered on the vistior or inmate, sentences may be applied or extended.[/bold]

    { paperwork-separator-security }
    {"["}bold]Guest's reason for visitation:[/bold]

    /[ ]Conjugal - [color=red]STRICTLY 1HR MAX[/color]
    {"["}color=red][bold]DO NOT SIGN UNTIL INMATE SIGNS!!![/color][/bold]
    { paperwork-separator-security }
    {"["}bold]Inmate's reason for denial (if denied):[/bold]

    { paperwork-separator-security }
    {"["}color=#aaaaaa]This document is not valid unless stamped by at least one of the listed required personnel.
    This form follows NT Space Law.
    Those who abuse granted permission can be fined up to 5000 spesos pursuant NT Handbook §16-8.7c[/color]
    { paperwork-separator-security }
    {"["}color=red][italic]By signing here, the visitor and Inmate agree to adheare to the conditions listed within this form.[/color][/italic]
    {"["}bold]Requesting Visitor's Signature:[/bold]
    {"["}bold]Inmate's Signature:[/bold]
