FROM nginx

WORKDIR /usr/src

# COPY ./conf/nginx2.conf /etc/nginx/nginx.conf
# COPY ./conf/nginx3.conf /etc/nginx/nginx.conf
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
RUN cat /etc/nginx/nginx.conf

COPY ./static /usr/share/nginx/html
RUN mkdir /usr/share/nginx/game2048

COPY ./sites-available /etc/nginx/sites-available

COPY ./scripts .
# RUN ls -lAh
RUN sh build1.sh
