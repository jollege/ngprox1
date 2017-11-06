FROM ubuntu
# FROM nginx

# Get docker argument and set env-var to be used later in build1.sh:
# ARG host
# ENV HOST=$host
# RUN echo $HOST

WORKDIR /usr/src

RUN apt-get update
# php7.0 php7.0-fpm php7.0-mysql
RUN apt-get install nginx php7.0 php7.0-fpm php7.0-mysql -y
RUN php -v
RUN ls /etc/nginx/
RUN ls /var/www/html

# COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

# COPY ./static /usr/share/nginx/html
# RUN mkdir /usr/share/nginx/other_site

# COPY ./nginx/sites-available /etc/nginx/sites-available

# Copy and run the script that sets active configuration:
# COPY ./scripts .
# RUN ls -lAh
# RUN sh build1.sh

CMD ["nginx", "-g", "daemon off;"]
