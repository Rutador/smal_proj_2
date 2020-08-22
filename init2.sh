sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo systemctl restart nginx
sudo gunicorn --bind=0.0.0.0:8080 hello:app
