docker rm -f ngrout
docker run --name ngrout --link=game2048 -p 80:80 -d ngrout_img
