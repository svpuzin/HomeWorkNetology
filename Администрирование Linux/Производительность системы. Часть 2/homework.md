# Домашнее задание к занятию «Производительность системы. Часть 2»

------

### Задание 1

Составьте задание через утилиту `cron` на проверку объёма кеш-обновлений еженедельно.

Кеш-обновления — это обновления, которые остаются после выполнения `apt update`, `apt upgrade`.

*Приведите ответ в виде команды.*

---

### Задание 2

1. Запустите процесс копирования большого файла (1 Гб) на жёсткий диск.
2. Запустите команду `iostat`.
3. Запустите `iotop`.

Какие процессы влияют на данные команды?

*Приведите развёрнутый ответ и приложите снимки экрана.*

---

### Задание 3

1. Настройте приоритет использования `swap` в пропорции:

- 30/70,
- 50/50,
- 70/30.

2. Запустите браузер и нагрузите память:
   - сделайте скриншот терминала с выводом команды `free -h`;
   - открывайте закладки браузера, к примеру, Rutube;
   - мониторьте использование swap командой `free -h`;
   - при увеличении swap сделайте скриншот `free -h`;
   - продолжайте открывать закладки до близкого к полному исчерпанию оперативной памяти;
   - сделайте скриншот `free -h`;
   - сбросьте swap или перезагрузите машину;
   - повторите всё сначала в следующем режиме.

3. Проанализируйте результат.

*Приведите развёрнутый ответ и приложите снимки экрана.*

------

### Задание 4

Задание можно выполнить, если вы используете Linux на реальном железе. Можно установить программу `apt install cpufreq` и посмотреть настройки режимов процессора.

- установите `cpufreq`,
- выполните настройку на режим сохранения энергии,
- выполните настройку полной производительности.

Сравните результаты.

*Приведите развёрнутый ответ и приложите снимки экрана.*

---

### Задание 5

Cron — ортодоксальный планировщик задач, но мы живём в 21 веке. Составьте задание на проверку объёма кеш-обновлений с помощью systemd-timers. В качестве подсказки используйте [материалы](https://opensource.com/article/20/7/systemd-timers).

*Прикрепите тест сервиса.*

---
