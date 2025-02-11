#!/bin/bash
cd /usr/share/app/django_publicaciones/

export DJANGO_SUPERUSER_PASSWORD=${DJ_PASSWORD} 
python manage.py createsuperuser --username=${DJ_USER} --noinput

python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:3000