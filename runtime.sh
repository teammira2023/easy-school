
#!/bin/sh
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -a -q)
cd easy-school
docker-compose build
docker-compose run web DJANGO_SUPERUSER_PASSWORD=admin python manage.py createsuperuser --noinput --username=admin --email=admin@example.com
docker-compose up --detach
