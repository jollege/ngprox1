# echo "env 1st arg = $1"
# echo "env HOST = $HOST"
export _host=$1

if [ -z "$1" ]; then
  echo "no host specified with \$1, try \$HOST"
  export _host=$HOST
fi

if [ -z "$_host" ]; then
  echo "error; no host at all, exit"
  exit 1;
fi

echo "_host = $_host"

echo "mkdir /etc/nginx/sites-enabled"
mkdir /etc/nginx/sites-enabled

echo "Setting symlink to active configuration"
if [ "$_host" = "local" ]; then
  echo "active config for local"
  ln -s /etc/nginx/sites-available/app2 /etc/nginx/sites-enabled/app2
elif [ "$_host" = "dig" ]; then
  echo "active config for digitalocean1"
  ln -s /etc/nginx/sites-available/digitalocean1 /etc/nginx/sites-enabled/digitalocean1
fi

echo "ls /etc/nginx/sites-available"
ls -lAh /etc/nginx/sites-available

echo "ls /etc/nginx/sites-enabled"
ls -lAh /etc/nginx/sites-enabled
