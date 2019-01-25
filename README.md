1) Клонировать проект
# git clone https://github.com/maddcast/simple-docker.git
2) Перейти в каталог склонированного проекта
# cd simple-docker
3) Создать образ
# sudo docker build -t task:test .
4) Запустить контейнер из образа в фоновом режиме
# sudo docker run -d task:test
5) Посмотреть статус запущенного контейнера
# sudo docker ps
6) Получить IP адрес запущенного контейнера
# sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' <docker_id>
7) Выполнить скрипт
# links http://<IP адрес>/check.php
