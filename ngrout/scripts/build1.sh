# mkdir /etc/nginx/sites-available
echo "mkdir /etc/nginx/sites-enabled"
mkdir /etc/nginx/sites-enabled

echo "Game 2048" > /usr/share/nginx/game2048/index.html
echo "cat /usr/share/nginx/game2048/index.html"
cat /usr/share/nginx/game2048/index.html

# ln -s /etc/nginx/sites-available/ellehauge.net /etc/nginx/sites-enabled/ellehauge.net
ln -s /etc/nginx/sites-available/game2048 /etc/nginx/sites-enabled/game2048

echo "ls /etc/nginx/sites-available"
ls -lAh /etc/nginx/sites-available

echo "ls /etc/nginx/sites-enabled"
ls -lAh /etc/nginx/sites-enabled
