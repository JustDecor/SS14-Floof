# Mailto
command-mailto-description = Поставити посилку в чергу на доставку до об'єкта. Приклад використання: `mailto 1234 5678 false false`. Вміст цільового контейнера буде переміщено до справжньої поштової посилки.
command-mailto-help = Використання: {$command} <ID_сутності_отримувача> <ID_сутності_контейнера> [крихке: true або false] [пріоритетне: true або false] [велике: true або false, необов'язково]
command-mailto-no-mailreceiver = Цільовий об'єкт-одержувач не має {$requiredComponent}.
command-mailto-no-blankmail = Прототип {$blankMail} не існує. Щось дуже негаразд. Зв'яжіться з програмістом.
command-mailto-bogus-mail = {$blankMail} не мав {$requiredMailComponent}. Щось дуже негаразд. Зв'яжіться з програмістом.
command-mailto-invalid-container = Цільовий об'єкт-контейнер не має контейнера {$requiredContainer}.
command-mailto-unable-to-receive = Не вдалося налаштувати цільовий об'єкт-одержувач для отримання пошти. Можливо, відсутній ID.
command-mailto-no-teleporter-found = Не вдалося знайти відповідний поштовий телепорт на станції для цільового об'єкта-одержувача. Одержувач може бути поза станцією.
command-mailto-success = Успіх! Поштова посилка додана в чергу на наступну телепортацію через {$timeToTeleport} секунд.

# Mailnow
command-mailnow = Примусово змусити всі поштові телепорти доставити наступну партію пошти якомога швидше. Це не обійде ліміт недоставленої пошти.
command-mailnow-help = Використання: {$command}
command-mailnow-success = Успіх! Усі поштові телепорти незабаром доставлять наступну партію пошти.

command-mailtestbulk-help = Використання: {$command} <id_телепортера>


command-mailtestbulk-success = Успіх! Усі поштові телепорти незабаром доставлять ще одну партію пошти.


command-mailtestbulk = Надсилає по одному пакунку кожного типу на вказаний поштовий телепорт. Неявно викликає mailnow.
