FROM nginx

# Get docker argument and set env-var to be used later in build1.sh:
ARG host
ENV HOST=$host
RUN echo $HOST

WORKDIR /usr/src

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

COPY ./static /usr/share/nginx/html
# RUN mkdir /usr/share/nginx/other_site

COPY ./sites-available /etc/nginx/sites-available

# Copy and run the script that sets active configuration:
COPY ./scripts .
# RUN ls -lAh
RUN sh build1.sh
