# Домашнее задание к занятию "Сеть и сетевые протоколы: NAT"

---

### Дополнительные материалы, которые могут пригодиться для выполнения домашнего задания

[Документация](https://www.cisco.com/c/en/us/support/docs/ip/network-address-translation-nat/13772-12.html)

---

## Задание 1. Создание внешней сети и настройка NAT

### Описание задания
Перед вами стоит задача сделать подключение к интернет-провайдеру и создать для сетевых устройств доступность к “внешнему миру”

В вашем распоряжении есть две сети:
188.144.1.0/30 - интернет провайдер выделил данную сеть для подключения мини-офиса
188.144.0.0/30 - интернет провайдер выделил данную сеть для подключения  главного офиса

Необходимо подключить каждую из частей офиса подключить к интернет-провайдеру (ISP).

### Требование к результату
- Вы должны отправить файл .pkt с выполненным заданием. 
- К выполненной задаче добавьте скриншоты с доступностью “внешней сети” и ответы на вопросы.

### Процесс выполнения
1. Запустите программу Cisco Packet Tracer
2. В программе Cisco Packet Tracer загрузите [файл с сетью](https://github.com/netology-code/snet-homeworks/blob/snet-22/NAT-1_8.2.0.pkt)
3. Между всеми маршрутизаторами необходимо создать сетевую связность.
4. На каждом маршрутизаторе главного и мини-офиса настройте внутренние и внешние интерфейсы (inside, outside)
5. На каждом маршрутизаторе создайте списки доступа сетей, которые будут транслироваться во “внешнюю сеть”
6. На каждом маршрутизаторе создайте NAT-трансляцию с помощью вышеуказанного access-листа.
7. Проверьте доступность с любого конечного устройства доступность роутера интернет-провайдера, командой ping.
8. Во время проверки командой ping посмотрите на каждом роутере списки трансляции адресов. Сделайте скриншот.
9. Ответ внесите в комментарии к решению задания в личном кабинете Нетологии

--- 
 
## Задание 2. Создание внутреннего web-сервера и доступа к нему 

### Описание задания
Перед вами стоит задача обеспечить доступность внутреннего web-сервера из “внешней сети”. 

### Требование к результату
- Вы должны отправить файл .pkt с выполненным заданием
- К выполненной задаче добавьте скриншоты с доступностью устройств и ответы на вопросы.

### Процесс выполнения
1. Запустите программу Cisco Packet Tracer.
2. В программе Cisco Packet Tracer загрузите предыдущую практическую работу.
3. К коммутатору в мини-офисе добавьте сервер, включите на нем HTTP-сервис и назначьте ip-адрес в любой из vlan.
4. Создайте на маршрутизаторе этой сети static nat-трансляцию для web-сервера с указанием 80 порта.
5. Из сети главного офиса получите доступ к web-серверу по “внешнему ip-адресу” роутера мини-офиса. Сделайте скриншот.
6. Ответ внесите в комментарии к решению задания в личном кабинете Нетологии.
 
---
