
#!/bin/sh
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -a -q)
rm -rf easy-school
git clone https://github.com/teammira2023/easy-school.git
cd easy-school
docker-compose build
docker-compose run web python manage.py createsuperuser
docker-compose up
