leash-attaching-popup-self = Ви намагаєтесь прикріпити повідець до {$selfAnchor ->
    [false] {POSS-ADJ($target)} {$anchor}
    *[true] {THE($target)}
}...
leash-attaching-popup-target = {THE($target)} намагається прикріпити повідець до {$selfAnchor ->
    [false] вашого {$anchor}
    *[true] вас
}...
leash-attaching-popup-others = {THE($user)} намагається прикріпити повідець до {$selfAnchor ->
    [false] {POSS-ADJ($target)} {$anchor}
    *[true] {THE($target)}
}

leash-detaching-popup-self = Ви намагаєтесь зняти повідець...
leash-detaching-popup-others = {THE($user)} намагається зняти повідець {$isSelf ->
    [true] з {REFLEXIVE($user)}
    *[false] з {THE($target)}
}...

leash-snap-popup = {THE($leash)} відскочив!
leash-set-length-popup = Довжину встановлено на {$length}м.

leash-length-examine-text = Його поточна довжина становить {$length}м.
