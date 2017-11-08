FROM ubuntu
# FROM nginx

WORKDIR /usr/src

RUN apt-get update

# RUN apt-get install ufw -y
# RUN ufw status
# RUN ufw activate
# RUN ufw allow 'Nginx HTTP'

RUN apt-get install nano -y
RUN apt-get install nginx -y
RUN apt-get install php php-fpm -y

RUN php -v
RUN ls /etc/nginx/
RUN ls /var/www/html

COPY php.ini /etc/php/7.0/fpm/php.ini
RUN cat /etc/php/7.0/fpm/php.ini | grep "cgi.fix_pathinfo"
RUN sleep 5
RUN service php7.0-fpm start && echo "yo!"

COPY default.nginx /etc/nginx/sites-available/default
RUN nginx -t
RUN service nginx restart

COPY info.php /var/www/html/info.php

COPY services.sh ./

CMD ./services.sh
# CMD ["nginx", "-g", "daemon off;"]
