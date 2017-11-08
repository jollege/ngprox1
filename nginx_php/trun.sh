docker rm -f nginx_php
docker run --name nginx_php -p 8888:80 -ti ellvtr/nginx-php 
# docker run --name nginx_php -p 8888:80 -ti ellvtr/nginx-php bash
