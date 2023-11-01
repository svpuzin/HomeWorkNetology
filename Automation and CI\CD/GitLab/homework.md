# Домашнее задание к занятию «GitLab»

### Задание 1

**Что нужно сделать:**

1. Разверните GitLab локально, используя Vagrantfile и инструкцию, описанные в [этом репозитории](https://github.com/netology-code/sdvps-materials/tree/main/gitlab).   
2. Создайте новый проект и пустой репозиторий в нём.
3. Зарегистрируйте gitlab-runner для этого проекта и запустите его в режиме Docker. Раннер можно регистрировать и запускать на той же виртуальной машине, на которой запущен GitLab.

В качестве ответа в репозиторий шаблона с решением добавьте скриншоты с настройками раннера в проекте.

### Решение 1

Разверните GitLab локально, используя Vagrantfile и инструкцию, описанные в [этом репозитории](https://github.com/netology-code/sdvps-materials/tree/main/gitlab).   

![скрин1](https://github.com/svpuzin/HomeWorkNetology/blob/main/Automation%20and%20CI%5CCD/GitLab/img/1.png)

Создайте новый проект и пустой репозиторий в нём

![скрин2](https://github.com/svpuzin/HomeWorkNetology/blob/main/Automation%20and%20CI%5CCD/GitLab/img/2.png)

Зарегистрируйте gitlab-runner для этого проекта и запустите его в режиме Docker. Раннер можно регистрировать и запускать на той же виртуальной машине, на которой запущен GitLab

![скрин3](https://github.com/svpuzin/HomeWorkNetology/blob/main/Automation%20and%20CI%5CCD/GitLab/img/3.png)

---

### Задание 2

**Что нужно сделать:**

1. Запушьте [репозиторий](https://github.com/netology-code/sdvps-materials/tree/main/gitlab) на GitLab, изменив origin. Это изучалось на занятии по Git.
2. Создайте .gitlab-ci.yml, описав в нём все необходимые, на ваш взгляд, этапы.

В качестве ответа в шаблон с решением добавьте: 
   
 * файл gitlab-ci.yml для своего проекта или вставьте код в соответствующее поле в шаблоне; 
 * скриншоты с успешно собранными сборками.


### Решение 2

Запушьте [репозиторий](https://github.com/netology-code/sdvps-materials/tree/main/gitlab) на GitLab, изменив origin. Это изучалось на занятии по Git

![скрин4](https://github.com/svpuzin/HomeWorkNetology/blob/main/Automation%20and%20CI%5CCD/GitLab/img/4.png)

Создайте .gitlab-ci.yml, описав в нём все необходимые, на ваш взгляд, этапы

![скриншот6](https://github.com/svpuzin/HomeWorkNetology/blob/main/Automation%20and%20CI%5CCD/GitLab/img/6.png)

Я добавил в пайплайн только один этап тест ((( 2 дня бился с этапом буилд из лекции постоянно натыкаясь на ошибку несовместимости образов докера (( на данный момент знаний решить проблему не хватило )) оставил ее на попозже НО согласно заданию один этап сделал) 

![скриншот5](https://github.com/svpuzin/HomeWorkNetology/blob/main/Automation%20and%20CI%5CCD/GitLab/img/5.png)
