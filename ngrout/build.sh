# Specify host "local" or "dig" as 1st arg $1:
if [ -z $1 ]; then
  echo "specify host as \$1"; exit 1;
fi

# Se image name:
if [ $1 = "local" ]; then
  img_name=ellvtr/ngrout_local
elif [ $1 = "dig" ]; then
  img_name=ellvtr/ngrout
else
  echo "wrong value for \$1"; exit 1;
fi

# Build docker image:
docker build -t $img_name --build-arg host=$1 .
# docker build -t ellvtr/ngrout .
