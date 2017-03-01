#sudo unlink /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/hello.py /etc/gunicorn.d/hello.py
sudo /etc/init.d/gunicorn stop
#sudo gunicorn -c /etc/gunicorn.d/hello.py hello:app
#sudo /etc/init.d/mysql start
sudo gunicorn -c /etc/gunicorn.d/hello.py hello:app
