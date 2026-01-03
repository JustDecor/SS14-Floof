paperwork-header-justice = {"["}color=#6b2833] ◥[bold]N[/bold]◣ [head=3][bold]ПРАВОСУДДЯ[/bold][/head][/color]
paperwork-separator-justice = {"["}color=#6b2833]‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾[/color]


paperwork-justice-pardon-request = 
    { paperwork-header-justice }
    { paperwork-separator-justice }
        {"["}head=2]ЗАПИТ НА ПОМИЛУВАННЯ[/head]
    { paperwork-separator-justice }
        {"["}bold]СЕКТОР:[/bold] Станція Флуф
        {"["}bold]СТАНЦІЯ:[/bold] {$stationName}
        {"["}bold]ЧАС ЗМІНИ:[/bold] XX:XX
        {"["}bold]КАПІТАН:[/bold]
        {"["}bold]НАГЛЯДАЧ:[/bold]
        {"["}bold]ЦІЛЬ ПОМИЛУВАННЯ:[/bold]
    { paperwork-separator-justice }
    Цей документ, якщо схвалений, дозволяє звільнення ув'язненого, засудженого до постійного ув'язнення (перма), за умов, узгоджених уповноваженим персоналом.
    {"["}color=red][italic]Ув'язнені можуть бути випущені умовно-достроково наглядачем, главою служби безпеки, або можуть подати заяву на умовне звільнення на розсуд і доступність головного судді або секретаря суду. Цей документ повинен бути затверджений і проштампований уповноваженим членом персоналу, щоб бути дійсним: наглядачем, главою служби безпеки або командуючим офіцером.[/italic][/color]
    { paperwork-separator-justice }
    {"["}bold]Обґрунтування ув'язненого для умовного звільнення[/bold]


    { paperwork-separator-justice }
    {"["}bold]Warden's Notes:[/bold]


    { paperwork-separator-justice }
    I, (full name), in the position of (full name of the position), authorize the release of inmate (full name) from Permanent Confinement. After the pardon is issued, the parolee will be given a civilian job with mandatory work until the end of the shift.
    { paperwork-separator-justice }

    {"["}bold]Pardon Issuer's Signature:[/bold]
    {"["}bold]Approver's Signature:[/bold]


paperwork-justice-restraining-order = 
    { paperwork-header-justice }
    { paperwork-separator-justice }
    {"["}head=2]ЗАБОРОННИЙ ОРДЕР[/head]
    { paperwork-separator-justice }
        {"["}bold]СЕКТОР:[/bold] Станція Флуф
        {"["}bold]СТАНЦІЯ:[/bold] {$stationName}
        {"["}bold]ЧАС ЗМІНИ:[/bold] XX:XX
        {"["}bold]УКЛАДАЧ ДОКУМЕНТА:[/bold]
        {"["}bold]РОБОТА:[/bold]
        {"["}bold]ЦІЛЬ ЗАБОРОННОГО ОРДЕРА:[/bold]
    { paperwork-separator-justice }
    Причина заборонного ордера:
    Заявник:
    Робота заявника:
    Заборона відділу:( )
    {"["}color=gray][italic]Будь ласка, вкажіть, чи заборонено цілі входити до відділу роботи заявника.[/color][/italic]
    { paperwork-separator-justice }
    {"["}color=red]Цей документ не є дійсним, якщо не проштампований принаймні одним з уповноважених затверджувачів: головним суддею або секретарем суду, або за їх відсутності главою персоналу.[/color]
    {"["}color=red]Цей документ не є дійсним, якщо не проштампований наглядачем або главою служби безпеки.[/color]
    { paperwork-separator-justice }
     {"["}bold] Уповноважений затверджувач:[/bold]
     {"["}bold] Підпис глави служби безпеки/наглядача:[/bold]

paperwork-justice-trial-docket-civil = 
    { paperwork-header-justice }
    { paperwork-separator-justice }
    {"["}head=2]СУДОВИЙ РЕЄСТР - ЦИВІЛЬНИЙ[/head]
    { paperwork-separator-justice }
    {"["}bold]СЕКТОР:[/bold] Станція Флуф
    {"["}bold]СТАНЦІЯ:[/bold] {$stationName}
    {"["}bold]СПРАВА:[/bold] (ПОЗИВАЧ) проти (ВІДПОВІДАЧА)

    { paperwork-separator-justice }
    PLAINTIFF'S ATTORNEY:
    DEFENDANT'S ATTORNEY:
    CLASSIFICATION: Civil

    {"["}color=gray]This form serves as official notification from the filer to the Legal Department that a Civil Trial has been requested.[/color]
    { paperwork-separator-justice }
    {"["}bold]Claim of Damages:[/bold]


    {"["}bold]Plaintiff's Requested Award for Damages:[/bold]


    { paperwork-separator-justice }
    {"["}color=red]This document is not valid unless stamped by the presiding judge or the Clerk of Court.[/color]

    {"["}color=#aaaaaa]Failure to appear in court will result in the absent party being charged with Contempt of Court.[/color]
    {"["}color=gray]Evidence not provided to the Clerk of Court for certification prior to the court proceedings, if available, will not be accepted into the record. All evidence collected should be shared with representatives from both parties.[/color]
    { paperwork-separator-justice }
    {"["}bold]Filer's Signature:[/bold]
    {"["}bold]Presiding Judge's Signature:[/bold]


paperwork-justice-trial-docket-criminal = 
    { paperwork-header-justice }
    { paperwork-separator-justice }
        {"["}head=2]СУДОВИЙ РЕЄСТР - КРИМІНАЛЬНИЙ[/head]
    { paperwork-separator-justice }
        {"["}bold]СЕКТОР:[/bold] Станція Флуф
        {"["}bold]СТАНЦІЯ:[/bold] {$stationName}
        {"["}bold]СПРАВА:[/bold] ОХОРОНА СТАНЦІЇ проти (ВІДПОВІДАЧА)
        {"["}bold]КАПІТАН:[/bold]
        {"["}bold]ГЛАВА СЛУЖБИ БЕЗПЕКИ:[/bold]
    { paperwork-separator-justice }
    ОБВИНУВАЧЕННЯ:
    АДВОКАТ:
    КЛАСИФІКАЦІЯ: Кримінальна

    {"["}color=gray]This form serves as official notification from the filer to the Legal Department that a Criminal Trial has been requested.[/color]
    { paperwork-separator-justice }
    {"["}head=3]Charges:[/head]
    1XX Misdemeanor Crimes:
    \[  ] Code:SL1-01 (Fearmongering)
    \[  ] Code:SL1-03 (Animal Cruelty)
    \[  ] Code:SL1-04 (Theft)
    \[  ] Code:SL1-06 (Vandalism)
    \[  ] Code:SL1-09 (Brandishing)
    \[  ] Code:SL1-11 (Possession)
    \[  ] Code:SL1-12 (Trespass)
    \[  ] Code:SL1-15 (Hooliganism)
    \[  ] Code:SL1-17 (Failure To Comply)

    { paperwork-separator-justice }
    2XX Felony Crimes:
    \[  ] Code:SL2-01 (Perjury or False Report)
    \[  ] Code:SL2-03 (Manslaughter)
    \[  ] Code:SL2-04 (Grand Theft)
    \[  ] Code:SL2-05 (Black Marketeering)
    \[  ] Code:SL2-06 (Sabotage)
    \[  ] Code:SL2-07 (Mindbreaking)
    \[  ] Code:SL2-08 (Kidnapping)
    \[  ] Code:SL2-09 (Assault)
    \[  ] Code:SL2-10 (Abuse of Power)
    \[  ] Code:SL2-11 (Felony Possession)
    \[  ] Code:SL2-12 (Secure Trespass)
    \[  ] Code:SL2-13 (Endangerment)
    \[  ] Code:SL2-14 (Harassment)
    \[  ] Code:SL2-15 (Rioting)
    \[  ] Code:SL2-16 (Contempt of Court)
    \[  ] Code:SL2-17 (Obstruction of Justice)

    { paperwork-separator-justice }
    3XX Capital Crimes:
    \[  ] Code:SL3-01 (Terrorism)
    \[  ] Code:SL3-03 (Murder)
    \[  ] Code:SL3-06 (Grand Sabotage)
    \[  ] Code:SL3-07 (Decorporealization)
    \[  ] Code:SL3-08 (Hostage Taking)
    \[  ] Code:SL3-13 (Grand Endangerment)
    \[  ] Code:SL3-15 (Sedition)

    { paperwork-separator-justice }
    Crime Modifiers:
    {"["}color=gray]Time matches crimes commited or attempted.[/color]
    \[  ] Solicitation
    \[  ] Accessory
    \[  ] Attempt
    \[  ] Conspiracy
    {"["}color=gray]150% max additional modifier of original sentence.[/color]
    \[  ] Deadly Weapon
    \[  ] Aggravation
    \[  ] Discriminatory Intent
    {"["}color=gray]200% max additional modifier of original sentence.[/color]
    \[  ] Recidivism
    {"["}color=gray]Sentence reduction or pardon.[/color]
    \[  ] Cooperation - 50% reduction of original sentence.
    \[  ] Dire Emergency - Sentence reduction or full pardon.
    \[  ] Self-Defence - Sentence reduction or full pardon.
    { paperwork-separator-justice }

    {"["}bold]TOTAL TIME SENTENCED:[/bold]
    {"["}bold]REQUESTING PERMENANT CONFINEMENT?:[/bold]
    {"["}color=red]This document is not valid unless stamped by the presiding judge or the Clerk of Court.[/color]

    {"["}color=#aaaaaa]For charges totaling 25 minutes or greater, the trial must be held within one hour following the filing of those charges.[/color]
    {"["}color=gray]Evidence not provided to the Clerk of Court for certification prior to the court proceedings, if available, will not be accepted into the record. All evidence collected should be shared with representatives from both parties.[/color]
    { paperwork-separator-justice }
    {"["}bold]Attorney's Signature:[/bold]
    {"["}bold]Prosecution/Head of Security's Signature:[/bold]
    {"["}bold]Presiding Judge's Signature:[/bold]

paperwork-justice-written-testimony = 
    { paperwork-header-justice }
    { paperwork-separator-justice }
        {"["}head=2]ПИСЬМОВІ СВІДЧЕННЯ[/head]
    { paperwork-separator-justice }
        {"["}bold]СПРАВА:[/bold] (ПОЗИВАЧ) проти (ВІДПОВІДАЧА)
        {"["}bold]ПРОКУРОР:[/bold]
        {"["}bold]АДВОКАТ:[/bold]
    { paperwork-separator-justice }
    Свідчення xxx:

    { paperwork-separator-justice }
    {"["}color=red]This document is not valid unless stamped by at least one of the required personnel.[/color]

    {"["}color=gray]Evidence not provided to the Clerk of Court for certification prior to the court proceedings, if available, will not be accepted into the record. All evidence collected should be shared with representatives from both parties.[/color]

    {"["}color=gray]Failure to appear to a Court Summons is a violation of Space Law & will be considered Contempt of Court.[/color]

    { paperwork-separator-justice }
    {"["}bold]Witness' Signature:[/bold]
