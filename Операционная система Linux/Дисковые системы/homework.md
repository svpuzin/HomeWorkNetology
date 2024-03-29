# Домашнее задание к занятию "Дисковые системы"

### Инструменты/ дополнительные материалы, которые пригодятся для выполнения задания

1. [Знакомство с технологией RAID](http://rus-linux.net/MyLDP/BOOKS/LSA/ch10.html)   
2. [Виртуальные файловые системы в Linux](http://rus-linux.net/MyLDP/file-sys/Virtual_filesystems_in_Linux.html)   
3. [Основы работы с утилитой mdadm](http://xgu.ru/wiki/mdadm)

---

### Задание 1

Какие виды RAID увеличивают производительность дисковой системы?

*Приведите ответ в свободной форме.*

---

### Задание 2

Назовите преимущества использования VFS. Используется ли VFS при работе с tmpfs? Почему?

*Приведите развернутый ответ в свободной форме.*

---

### Задание 3

Подключите к виртуальной машине 2 новых диска. 

1. На первом диске создайте таблицу разделов MBR, создайте 4 раздела: первый раздел на 50% диска, остальные диски любого размера на ваше усмотрение. Хотя бы один из разделов должен быть логическим.

2. На втором диске создайте таблицу разделов GPT. Создайте 4 раздела: первый раздел на 50% диска, остальные любого размера на ваше усмотрение.

*В качестве ответа приложите скриншоты, на которых будет видно разметку диска (например, командами lsblk -a; fdisk -l)*

---

### Задание 4

Создайте программный RAID 1 в вашей ОС, используя программу `mdadm`.

Объем RAID неважен.

*В качестве ответа приложите скриншот вывода команды `mdadm -D /dev/md0`, где md0 - это название вашего рейд массива (может быть любым).*

---

### Задание 5

Влияет ли количество операций ввода-вывода на параметр `load average`?

*Приведите развернутый ответ в свободной форме.*

---

### Задание 6

1. Сделайте скриншоты вывода комманд df -h, pvs, lvs, vgs.
2. Подключите к ОС 2 новых диска.
3. Создайте новую VG, добавьте в него 1 диск.
4. Создайте 2 LV, распределите доступное пространство между ними поровну.
5. Создайте на обоих томах файловую систему `xfs`.
6. Создайте две точки монтирования и смонтируйте каждый из томов.
7. Сделайте скриншот вывода комманд df -h.
8. Добавьте в VG второй оставшийся диск.
9. Расширьте первый LV на объем нового диска.   
10. Расширьте файловую систему на размер нового доступного пространства.    
11. Сделайте скриншоты вывода комманд df -h, pvs, lvs, vgs.

*В качестве ответа приложите созданные скриншоты и скриншоты выполнения.*

------
