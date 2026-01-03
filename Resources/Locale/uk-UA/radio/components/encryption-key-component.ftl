encryption-key-successfully-installed = Ви вставляєте ключ шифрування всередину.
encryption-key-slots-already-full = Немає місця для ключа шифрування.
# Floof: locale strings for unremovable keys, pluralization handling
encryption-keys-all-extracted = { $count ->
    [one] You pop out the encryption key!
    *[other] You pop out the encryption keys!
}
encryption-keys-some-extracted = { $count ->
    [one] Ви виймаєте один із ключів шифрування!
    *[other] Ви виймаєте кілька ключів шифрування!
}
encryption-keys-none-extracted = { $remaining ->
    [one] Ключ шифрування не знімається!
    *[other] Ключі шифрування не знімаються!
}
encryption-keys-no-keys = Цей пристрій не має ключів шифрування!
encryption-keys-are-locked = Слоти для ключів шифрування заблоковані!
encryption-keys-panel-locked = Спочатку відкрийте технічну панель!

examine-encryption-channels-prefix = Доступні частоти:
examine-encryption-channel = [color={$color}]{$key} для {$id} ({$freq})[/color]
examine-encryption-default-channel = Стандартним каналом є [color={$color}]{$channel}[/color].
