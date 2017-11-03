docker rm -f ngrout
docker run --name ngrout --link=game2048 --link=game -p 80:80 -ti ellvtr/ngrout
