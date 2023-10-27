# Домашнее задание к занятию «Git»


### Задание 1

Что нужно сделать:

1. Зарегистрируйте аккаунт на GitHub.
2. Создайте новый отдельный публичный репозиторий. Обязательно поставьте галочку в поле «Initialize this repository with a README».
3. Склонируйте репозиторий, используя https протокол git clone ....
4. Перейдите в каталог с клоном репозитория.
5. Произведите первоначальную настройку Git, указав своё настоящее имя и email: git config --global user.name и git config --global user.email johndoe@example.com.
6. Выполните команду git status и запомните результат.
7. Отредактируйте файл README.md любым удобным способом, переведя файл в состояние Modified.
8. Ещё раз выполните git status и продолжайте проверять вывод этой команды после каждого следующего шага.
9. Посмотрите изменения в файле README.md, выполнив команды git diff и git diff --staged.
10. Переведите файл в состояние staged или, как говорят, добавьте файл в коммит, командой git add README.md.
11. Ещё раз выполните команды git diff и git diff --staged.
12. Теперь можно сделать коммит git commit -m 'First commit'.
13. Сделайте git push origin master.
14. В качестве ответа добавьте ссылку на этот коммит в ваш md-файл с решением.

### Решение 1

Зарегистрируйте аккаунт на GitHub.
Создайте новый отдельный публичный репозиторий. Обязательно поставьте галочку в поле «Initialize this repository with a README».

![скриншот1](https://github.com/svpuzin/HomeWorkNetology/blob/main/Automation%20and%20CI%5CCD/Git/img/Снимок%20экрана%202023-10-25%20в%2014.42.42.png)

Склонируйте репозиторий, используя https протокол git clone

![скриншот2](https://github.com/svpuzin/HomeWorkNetology/blob/main/Automation%20and%20CI%5CCD/Git/img/Снимок%20экрана%202023-10-25%20в%2014.44.00.png)

Перейдите в каталог с клоном репозитория

![скриншот3](https://github.com/svpuzin/HomeWorkNetology/blob/main/Automation%20and%20CI%5CCD/Git/img/Снимок%20экрана%202023-10-25%20в%2015.06.18.png)

Произведите первоначальную настройку Git, указав своё настоящее имя и email: git config --global user.name и git config --global user.email johndoe@example.com.

![скриншот4](https://github.com/svpuzin/HomeWorkNetology/blob/main/Automation%20and%20CI%5CCD/Git/img/Снимок%20экрана%202023-10-25%20в%2015.06.41.png)

Выполните команду git status и запомните результат

![скриншот5](https://github.com/svpuzin/HomeWorkNetology/blob/main/Automation%20and%20CI%5CCD/Git/img/Снимок%20экрана%202023-10-25%20в%2015.07.28.png)

Отредактируйте файл README.md любым удобным способом, переведя файл в состояние Modified

![скриншот6](https://github.com/svpuzin/HomeWorkNetology/blob/main/Automation%20and%20CI%5CCD/Git/img/Снимок%20экрана%202023-10-25%20в%2015.09.10.png)

Ещё раз выполните git status и продолжайте проверять вывод этой команды после каждого следующего шага.

![скриншот7](https://github.com/svpuzin/HomeWorkNetology/blob/main/Automation%20and%20CI%5CCD/Git/img/Снимок%20экрана%202023-10-25%20в%2015.09.58.png)

Посмотрите изменения в файле README.md, выполнив команды git diff и git diff --staged.

![скриншот8](https://github.com/svpuzin/HomeWorkNetology/blob/main/Automation%20and%20CI%5CCD/Git/img/Снимок%20экрана%202023-10-25%20в%2015.10.39.png)

![скриншот9](https://github.com/svpuzin/HomeWorkNetology/blob/main/Automation%20and%20CI%5CCD/Git/img/Снимок%20экрана%202023-10-25%20в%2015.13.00.png)

Ещё раз выполните команды git diff и git diff --staged

![скриншот10](https://github.com/svpuzin/HomeWorkNetology/blob/main/Automation%20and%20CI%5CCD/Git/img/Снимок%20экрана%202023-10-25%20в%2015.14.08.png)

Теперь можно сделать коммит git commit -m 'First commit'

![скриншот11](https://github.com/svpuzin/HomeWorkNetology/blob/main/Automation%20and%20CI%5CCD/Git/img/Снимок%20экрана%202023-10-25%20в%2015.15.43.png)

Сделайте git push origin master.

![скриншот12](https://github.com/svpuzin/HomeWorkNetology/blob/main/Automation%20and%20CI%5CCD/Git/img/Снимок%20экрана%202023-10-25%20в%2015.37.25.png)

В качестве ответа добавьте ссылку на этот коммит в ваш md-файл с решением.

https://github.com/svpuzin/git_test1/commit/103a0cdd69ed62256760620311eb4ab49b39fa2a


---

### Задание 2

**Что нужно сделать:**

1. Создайте файл .gitignore (обратите внимание на точку в начале файла) и проверьте его статус сразу после создания.
2. Добавьте файл .gitignore в следующий коммит `git add...`.
3. Напишите правила в этом файле, чтобы игнорировать любые файлы `.pyc`, а также все файлы в директории `cache`.
4. Сделайте коммит и пуш.

В качестве ответа добавьте ссылку на этот коммит в ваш md-файл с решением.


### Решение 2

Создайте файл .gitignore (обратите внимание на точку в начале файла) и проверьте его статус сразу после создания

![скриншот12](https://github.com/svpuzin/HomeWorkNetology/blob/main/Automation%20and%20CI%5CCD/Git/img/Снимок%20экрана%202023-10-26%20в%2023.44.43.png)

Добавьте файл .gitignore в следующий коммит `git add...`

![скриншот13](https://github.com/svpuzin/HomeWorkNetology/blob/main/Automation%20and%20CI%5CCD/Git/img/Снимок%20экрана%202023-10-26%20в%2023.46.50.png)

Напишите правила в этом файле, чтобы игнорировать любые файлы `.pyc`, а также все файлы в директории `cache`

![скриншот14](https://github.com/svpuzin/HomeWorkNetology/blob/main/Automation%20and%20CI%5CCD/Git/img/Снимок%20экрана%202023-10-27%20в%2000.16.07.png)

Сделайте коммит и пуш

![скриншот15](https://github.com/svpuzin/HomeWorkNetology/blob/main/Automation%20and%20CI%5CCD/Git/img/Снимок%20экрана%202023-10-27%20в%2013.03.00.png)

В качестве ответа добавьте ссылку на этот коммит в ваш md-файл с решением

https://github.com/svpuzin/git_test1/commit/09c2d052ef9d4823b4454201c6f3bfda7402d2c9


---

### Задание 3

**Что нужно сделать:**

1. Создайте новую ветку dev и переключитесь на неё.
2. Создайте в ветке dev файл test.sh с произвольным содержимым.
3. Сделайте несколько коммитов и пушей  в ветку dev, имитируя активную работу над  файлом в процессе разработки.
4. Переключитесь на основную ветку.
5. Добавьте файл main.sh в основной ветке с произвольным содержимым, сделайте комит и пуш . Так имитируется продолжение общекомандной разработки в основной ветке во время разработки отдельного функционала в dev  ветке.
6. Сделайте мердж dev  ветки в основную с помощью git merge dev. Напишите осмысленное сообщение в появившееся окно комита.
7. Сделайте пуш в основной ветке.
8. Не удаляйте ветку dev.

В качестве ответа прикрепите ссылку на граф коммитов https://github.com/ваш-логин/ваш-репозиторий/network в ваш md-файл с решением.

Ваш граф комитов должен выглядеть аналогично скриншоту:   

![скрин для Git](https://github.com/netology-code/sdvps-homeworks/assets/77622076/e73589cf-7e97-40e5-ac01-d1d55376f1b9)


### Решение 3


