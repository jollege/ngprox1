# Docker nginx reverse proxy

To start all relevant containers:
```bash
./run.sh
```

The nginx is set up to reverse proxy to game2048:8080 on this header:
http://game2048/

And to reverse proxy to game:8080 on this header:
http://game/

I resolved previous errors described 
[in this issue](https://stackoverflow.com/questions/47091356/docker-nginx-reverse-proxy-gives-502-bad-gateway/) 
and in this readme file:
`./README.old01.md`

# Nginx config
The nginx image `ellvtr/ngrout` is based on the official `nginx` image
and built from the Dockerfile in `./ngrout/Dockerfile` - 
using `./ngrout/build.sh` for quick image build.

It currently use the config in `./ngrout/config/nginx.conf`
and `sites-available/app2` which has the following server
block:
```bash
server {
  
  listen 80;
  server_name game2048;

  location / {
    proxy_pass "http://game2048:8080";
  }

}

server {
  
  listen 80;
  server_name game;

  location / {
    # Remember to refer to docker port, 
    # not host port which was 9999 in this case:
    proxy_pass "http://game:8080";
  }

}
```