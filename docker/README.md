# Docker окружение для разработки

Разворачивает traefik сервер для проксирования докер контейнеров и доступа по именам, а не апишникам

Перед запуском необходимо создать общую сеть для работы всех контейнеров:
```
$ docker network create web
```
после чего можно собрать и запустить traefik сервер (если в первый раз)
```
$ make init
```
для последующего запуска сервера можно использовать
```
$ make up
```

для подключения контейнера из другого docker-compose.yml к сети надо её объявить:
```
networks:
  web: # сеть traefik
    external: true
  internal:  # сеть для общения местных контейнеров
    external: false
```
и прописать у всех необходимым контейнеров:
```
services:
  nginx:
    ...
    networks:
      - web
      - internal
    # настройки в нутри сети traefik
    labels:
      - traefik.enable=true
      - traefik.backend=nginx
      - traefik.frontend.rule=Host:nginx.docker.localhost
      - traefik.port=80
      - traefik.docker.network=web
    ...
```
не забыть всем сервисам прописать доступ во внутреннюю (internal) сеть если он им нужен
