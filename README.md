1) Клонировать проект
```sh
$ git clone https://github.com/maddcast/simple-docker.git
```
2) Перейти в каталог склонированного проекта
```sh
$ cd simple-docker
```
3) Создать образ
```sh
$ sudo docker build -t task:test .
```
4) Запустить контейнер из образа в фоновом режиме
```sh
$ sudo docker run -d task:test
```
5) Посмотреть статус запущенного контейнера
```sh
$ sudo docker ps
```
6) Получить IP адрес запущенного контейнера
```sh
$ sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' <docker_id>
```
7) Выполнить скрипт
```sh
$ links http://<IP адрес>/check.php
```