# Examine text after when they're holding something (in-hand)
comp-hands-examine = { CAPITALIZE(SUBJECT($user)) } тримає { $items }.
comp-hands-examine-empty = { CAPITALIZE(SUBJECT($user)) } нічого не тримає.

# Floof
comp-hands-examine-wrapper = { PROPER($item) ->
    *[false] { INDEFINITE($item) } [color=paleturquoise]{$item}[/color]
    [true] [color=paleturquoise]{$item}[/color]
}

comp-hands-examine-cuffed-all = { CAPITALIZE(POSS-ADJ($user)) } руки закуті.
comp-hands-examine-cuffed-some = { CAPITALIZE(NUMBER-WORDS($number)) } з { POSS-ADJ($user) } рук закуті.

comp-hands-examine-drag = { CAPITALIZE(SUBJECT($user)) } { CONJUGATE-BE($user) } тягне { $item }.
# End Floof

hands-system-blocked-by = Блокується
