# Домашнее задание к занятию «Кластеризация и балансировка нагрузки»


------



### Задание 1
- Запустите два simple python сервера на своей виртуальной машине на разных портах
- Установите и настройте HAProxy, воспользуйтесь материалами к лекции
- Настройте балансировку Round-robin на 4 уровне.
- На проверку направьте конфигурационный файл haproxy, скриншоты, где видно перенаправление запросов на разные серверы при обращении к HAProxy.

### Решение 1
[Конфигурационный файл haproxy](https://github.com/svpuzin/HomeWorkNetology/blob/main/Fault%20Tolerance/Clustering%20and%20Load%20Balancing/files/haproxy.cfg)

![screen1](https://github.com/svpuzin/HomeWorkNetology/blob/main/Fault%20Tolerance/Clustering%20and%20Load%20Balancing/img/Снимок%20экрана%202024-02-01%20в%2000.41.12.png)
---

### Задание 2
- Запустите три simple python сервера на своей виртуальной машине на разных портах
- Настройте балансировку Weighted Round Robin на 7 уровне, чтобы первый сервер имел вес 2, второй - 3, а третий - 4
- HAproxy должен балансировать только тот http-трафик, который адресован домену example.local
- На проверку направьте конфигурационный файл haproxy, скриншоты, где видно перенаправление запросов на разные серверы при обращении к HAProxy c использованием домена example.local и без него.

### Решение 2
[Конфигурационный файл haproxy](https://github.com/svpuzin/HomeWorkNetology/blob/main/Fault%20Tolerance/Clustering%20and%20Load%20Balancing/files/haproxy-2.cfg)

![screen2](https://github.com/svpuzin/HomeWorkNetology/blob/main/Fault%20Tolerance/Clustering%20and%20Load%20Balancing/img/Снимок%20экрана%202024-02-01%20в%2021.04.46.png)

---

