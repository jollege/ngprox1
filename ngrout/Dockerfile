FROM nginx

WORKDIR /usr/src
# RUN pwd

COPY ./conf/nginx.conf /etc/nginx/
RUN cat /etc/nginx/nginx.conf

COPY ./static /usr/share/nginx/html
RUN mkdir /usr/share/nginx/game2048
# RUN echo "Game 2048" > /usr/share/nginx/game2048/index.html

COPY ./sites-available /etc/nginx/sites-available
# RUN ls /etc/nginx/sites-available

COPY ./scripts .
# RUN ls -lAh
RUN sh build1.sh
