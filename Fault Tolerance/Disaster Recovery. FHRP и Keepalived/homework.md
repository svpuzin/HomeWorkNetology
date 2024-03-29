# Домашнее задание к занятию  «Disaster Recovery. FHRP и Keepalived»


------


### Задание 1
- Дана [схема]([files/hsrp_advanced.pkt](https://github.com/svpuzin/HomeWorkNetology/blob/main/Fault%20Tolerance/Disaster%20Recovery.%20FHRP%20и%20Keepalived/files/hsrp_advanced.pkt)) для Cisco Packet Tracer, рассматриваемая в лекции.
- На данной схеме уже настроено отслеживание интерфейсов маршрутизаторов Gi0/1 (для нулевой группы)
- Необходимо аналогично настроить отслеживание состояния интерфейсов Gi0/0 (для первой группы).
- Для проверки корректности настройки, разорвите один из кабелей между одним из маршрутизаторов и Switch0 и запустите ping между PC0 и Server0.
- На проверку отправьте получившуюся схему в формате pkt и скриншот, где виден процесс настройки маршрутизатора.



### Решение 1

Настройка

![screen1](https://github.com/svpuzin/HomeWorkNetology/blob/main/Fault%20Tolerance/Disaster%20Recovery.%20FHRP%20и%20Keepalived/img/Снимок%20экрана%202024-02-01%20в%2022.11.01.png)
![screen2](https://github.com/svpuzin/HomeWorkNetology/blob/main/Fault%20Tolerance/Disaster%20Recovery.%20FHRP%20и%20Keepalived/img/Снимок%20экрана%202024-02-01%20в%2022.18.23.png)
![screen3](https://github.com/svpuzin/HomeWorkNetology/blob/main/Fault%20Tolerance/Disaster%20Recovery.%20FHRP%20и%20Keepalived/img/Снимок%20экрана%202024-02-01%20в%2022.11.52.png)

Дальше рвем кабель и видим результат

![screen4](https://github.com/svpuzin/HomeWorkNetology/blob/main/Fault%20Tolerance/Disaster%20Recovery.%20FHRP%20и%20Keepalived/img/Снимок%20экрана%202024-02-01%20в%2022.23.12.png)

[Схема в формате pkt](https://github.com/svpuzin/HomeWorkNetology/blob/main/Fault%20Tolerance/Disaster%20Recovery.%20FHRP%20и%20Keepalived/files/hsrp_advanced_1.pkt)



------

### Задание 2
- Запустите две виртуальные машины Linux, установите и настройте сервис Keepalived как в лекции, используя пример конфигурационного [файла](https://github.com/svpuzin/HomeWorkNetology/blob/main/Fault%20Tolerance/Disaster%20Recovery.%20FHRP%20и%20Keepalived/files/keepalived-simple.conf).
- Настройте любой веб-сервер (например, nginx или simple python server) на двух виртуальных машинах
- Напишите Bash-скрипт, который будет проверять доступность порта данного веб-сервера и существование файла index.html в root-директории данного веб-сервера.
- Настройте Keepalived так, чтобы он запускал данный скрипт каждые 3 секунды и переносил виртуальный IP на другой сервер, если bash-скрипт завершался с кодом, отличным от нуля (то есть порт веб-сервера был недоступен или отсутствовал index.html). Используйте для этого секцию vrrp_script
- На проверку отправьте получившейся bash-скрипт и конфигурационный файл keepalived, а также скриншот с демонстрацией переезда плавающего ip на другой сервер в случае недоступности порта или файла index.html



### Решение 2

Скрипт для проверки
![screen1](https://github.com/svpuzin/HomeWorkNetology/blob/main/Fault%20Tolerance/Disaster%20Recovery.%20FHRP%20и%20Keepalived/img/Снимок%20экрана%202024-02-01%20в%2017.19.07.png)

Конфигурационнае файлы
![screen2](https://github.com/svpuzin/HomeWorkNetology/blob/main/Fault%20Tolerance/Disaster%20Recovery.%20FHRP%20и%20Keepalived/img/Снимок%20экрана%202024-02-01%20в%2017.20.41.png)

До
![screen3](https://github.com/svpuzin/HomeWorkNetology/blob/main/Fault%20Tolerance/Disaster%20Recovery.%20FHRP%20и%20Keepalived/img/Снимок%20экрана%202024-02-01%20в%2017.21.55.png)

После переименовывания файла 
![screen4](https://github.com/svpuzin/HomeWorkNetology/blob/main/Fault%20Tolerance/Disaster%20Recovery.%20FHRP%20и%20Keepalived/img/Снимок%20экрана%202024-02-01%20в%2017.22.39.png)


------
