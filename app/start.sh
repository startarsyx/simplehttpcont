cat nginx_template.conf | sed "s/__PORT__/$PORT/" > nginx-local.conf
nohup /usr/sbin/nginx -c $PWD/nginx-local.conf &

sleep 1

python3 echo.py -b 127.0.0.1 -p 1357
