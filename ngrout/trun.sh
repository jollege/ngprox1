docker rm -f ngrout
docker run --name ngrout --link=game2048 -p 80:80 -ti ngrout_img