docker rm -f game2048
docker run --name game2048 -p 8080:8080 -d ellvtr/game2048a

docker rm -f game
docker run --name game -p 9999:8080 -d ellvtr/game2048a

docker rm -f awe1
docker run --name awe1 -p 9998:8080 -d ellvtr/awemap01

docker rm -f ngrout
docker run --name ngrout --link=game2048 --link=game --link=awe1\
  -p 80:80 -d ellvtr/ngrout_local
