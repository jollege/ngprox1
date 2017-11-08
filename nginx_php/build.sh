if [ $1 = "nc" ]; then
  docker build --no-cache -t ellvtr/nginx-php .
else
  docker build -t ellvtr/nginx-php .
fi
