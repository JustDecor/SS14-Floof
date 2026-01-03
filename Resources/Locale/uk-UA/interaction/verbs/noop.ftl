interaction-LookAt-name = Втупитися
interaction-LookAt-description = Втупіться у порожнечу й побачте, як вона втуплюється у відповідь.
interaction-LookAt-success-self-popup = Ви втупаєтесь у {THE($target)}.
interaction-LookAt-success-target-popup = Ви відчуваєте, як {THE($user)} витріщається на вас...
interaction-LookAt-success-others-popup = {THE($user)} витріщається на {THE($target)}.

# Designed to not be seen by others, only you and your target.  Plays a light sound effect that is very unique to it to catch the attention of the party being eye'd up.
interaction-CheckOut-name = Оцінити поглядом
interaction-CheckOut-description = Це дозволяє вам непомітно оцінити когось поглядом; знатимуть лише ви та він/вона.
interaction-CheckOut-success-self-popup = Ви справді пильно розглядаєте {THE($target)}.
interaction-CheckOut-success-target-popup = Ви думаєте, що {THE($user)}, можливо, оцінює вас поглядом...

interaction-Hug-name = Обійняти
interaction-Hug-description = Одні обійми на день відганяють психологічні жахи поза межами вашого розуміння.
interaction-Hug-success-self-popup = Ви обіймаєте {THE($target)}.
interaction-Hug-success-target-popup = {THE($user)} обіймає вас.
interaction-Hug-success-others-popup = {THE($user)} обіймає {THE($target)}.

interaction-Pet-name = Погладити
interaction-Pet-description = Погладьте свого колегу, щоб зняти стрес.
interaction-Pet-success-self-popup = Ви гладите {THE($target)} по {POSS-ADJ($target)} голові.
interaction-Pet-success-target-popup = {THE($user)} гладить вас по голові.
interaction-Pet-success-others-popup = {THE($user)} гладить {THE($target)}.

interaction-PetAnimal-name = {interaction-Pet-name}
interaction-PetAnimal-description = Погладити тварину.
interaction-PetAnimal-success-self-popup = {interaction-Pet-success-self-popup}
interaction-PetAnimal-success-target-popup = {interaction-Pet-success-target-popup}
interaction-PetAnimal-success-others-popup = {interaction-Pet-success-others-popup}

interaction-KnockOn-name = Постукати
interaction-KnockOn-description = Постукайте по цілі, щоб привернути увагу.
interaction-KnockOn-success-self-popup = Ви стукаєте по {THE($target)}.
interaction-KnockOn-success-target-popup = {THE($user)} стукає по вам.
interaction-KnockOn-success-others-popup = {THE($user)} стукає по {THE($target)}

interaction-Rattle-name = Потрясти
interaction-Rattle-success-self-popup = Ви струшуєте {THE($target)}.
interaction-Rattle-success-target-popup = {THE($user)} струшує вас.
interaction-Rattle-success-others-popup = {THE($user)} трясе {THE($target)}.

# The below includes conditionals for if the user is holding an item
interaction-WaveAt-name = Помахати
interaction-WaveAt-description = Помахайте цілі. Якщо ви тримаєте предмет, ви помахаєте ним.
interaction-WaveAt-success-self-popup = Ви махаєте {$hasUsed ->
    [false] на {THE($target)}.
    *[true] своїм {$used} на {THE($target)}.
}
interaction-WaveAt-success-target-popup = {THE($user)} махає {$hasUsed ->
    [false] вам.
    *[true] {POSS-PRONOUN($user)} {$used} вам.
}
interaction-WaveAt-success-others-popup = {THE($user)} махає {$hasUsed ->
    [false] на {THE($target)}.
    *[true] {POSS-PRONOUN($user)} {$used} на {THE($target)}.
}
