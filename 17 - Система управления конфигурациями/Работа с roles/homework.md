# Домашнее задание к занятию 4 «Работа с roles»

## Подготовка к выполнению

1. * Необязательно. Познакомьтесь с [LightHouse](https://youtu.be/ymlrNlaHzIY?t=929).
2. Создайте два пустых публичных репозитория в любом своём проекте: vector-role и lighthouse-role.
3. Добавьте публичную часть своего ключа к своему профилю на GitHub.

## Основная часть

Ваша цель — разбить ваш playbook на отдельные roles. 

Задача — сделать roles для ClickHouse, Vector и LightHouse и написать playbook для использования этих ролей. 

Ожидаемый результат — существуют три ваших репозитория: два с roles и один с playbook.

**Что нужно сделать**

1. Создайте в старой версии playbook файл `requirements.yml` и заполните его содержимым:

   ```yaml
   ---
     - src: git@github.com:AlexeySetevoi/ansible-clickhouse.git
       scm: git
       version: "1.13"
       name: clickhouse 
   ```

![s1](https://github.com/svpuzin/HomeWorkNetology/blob/main/17%20-%20Система%20управления%20конфигурациями/Работа%20с%20roles/img/Снимок%20экрана%202025-07-11%20в%2016.43.47.png)

2. При помощи `ansible-galaxy` скачайте себе эту роль.

![s4](https://github.com/svpuzin/HomeWorkNetology/blob/main/17%20-%20Система%20управления%20конфигурациями/Работа%20с%20roles/img/Снимок%20экрана%202025-07-11%20в%2015.08.23.png)

3. Создайте новый каталог с ролью при помощи `ansible-galaxy role init vector-role`.

![s2](https://github.com/svpuzin/HomeWorkNetology/blob/main/17%20-%20Система%20управления%20конфигурациями/Работа%20с%20roles/img/Снимок%20экрана%202025-07-11%20в%2001.36.45.png)
![s3](https://github.com/svpuzin/HomeWorkNetology/blob/main/17%20-%20Система%20управления%20конфигурациями/Работа%20с%20roles/img/Снимок%20экрана%202025-07-11%20в%2001.36.56.png)

4. На основе tasks из старого playbook заполните новую role. Разнесите переменные между `vars` и `default`. 
5. Перенести нужные шаблоны конфигов в `templates`.
6. Опишите в `README.md` обе роли и их параметры. Пример качественной документации ansible role [по ссылке](https://github.com/cloudalchemy/ansible-prometheus).
7. Повторите шаги 3–6 для LightHouse. Помните, что одна роль должна настраивать один продукт.
8. Выложите все roles в репозитории. Проставьте теги, используя семантическую нумерацию. Добавьте roles в `requirements.yml` в playbook.
9. Переработайте playbook на использование roles. Не забудьте про зависимости LightHouse и возможности совмещения `roles` с `tasks`.
10. Выложите playbook в репозиторий.
11. В ответе дайте ссылки на оба репозитория с roles и одну ссылку на репозиторий с playbook.


Проверил.... Все работает )
![s5](https://github.com/svpuzin/HomeWorkNetology/blob/main/17%20-%20Система%20управления%20конфигурациями/Работа%20с%20roles/img/Снимок%20экрана%202025-07-11%20в%2015.54.35.png)


Файлы тут https://github.com/svpuzin/HomeWorkNetology/tree/main/17%20-%20Система%20управления%20конфигурациями/Работа%20с%20roles/files
Роли тут https://github.com/svpuzin/ansible-clickhouse.git и https://github.com/svpuzin/ansible-vector.git


---

### Как оформить решение задания

Выполненное домашнее задание пришлите в виде ссылки на .md-файл в вашем репозитории.

---
