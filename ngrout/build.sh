# Specify host "local" or "dig" as 1st arg $1:
if [ -z $1 ]; then
  echo "specify host as \$1"
  exit 1;
fi

if [ $1 = "local" ]; then
  img_name=ellvtr/ngrout_local
else
  img_name=ellvtr/ngrout
fi

docker build -t $img_name --build-arg host=$1 .
# docker build -t ellvtr/ngrout .
