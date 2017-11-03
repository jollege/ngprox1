# Docker nginx proxy

To start all relevant containers:
```bash
./run.sh
```

The nginx is set up to proxy port 8080 on this path:
http://localhost/

And to serve port 9999 on this path:
http://localhost/game

The first one works, but the second gives a "502 Bad Gateway"
in the browser and within the nginx docker it gives
this error:
```
[error] 7#7: *6 connect() failed (111: Connection refused) 
while connecting to upstream, client: 172.17.0.1, server: , 
request: "GET /game HTTP/1.1", upstream: "http://172.17.0.4:9999/game", 
host: "localhost"
````

# Nginx config
The nginx image `ellvtr/ngrout` is based on the official `nginx` image
and built from the Dockerfile in `./ngrout/Dockerfile`.

It currently uses the config in `./ngrout/config/nginx.conf`
and `sites-available/app1` which has the following server
block:
```
server {
  
  listen 80;

  location / {
    proxy_pass "http://game2048:8080";
  }

  location /game {
    proxy_pass "http://game:9999";
  }

}
```
