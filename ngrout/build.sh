# Specify host "local" or "dig" as 1st arg $1:
if [ -z $1 ]; then
  echo "specify host as \$1"
  exit 1;
fi
docker build -t ellvtr/ngrout --build-arg host=$1 .
# docker build -t ellvtr/ngrout .
