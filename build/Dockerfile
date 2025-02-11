# syntax=docker/dockerfile:1
FROM python:3.12.1-bookworm
WORKDIR /usr/share/app
COPY app/django_publicaciones .
ENV DB_NAME = django
ENV DB_USER = django
ENV DB_PASSWORD = django
ENV DB_HOST = localhost
ENV DJ_USER = django
ENV DJ_PASSWORD = django
RUN pip3 install --no-cache-dir --break-system-packages -r requirements.txt && pip3 install --no-cache-dir --break-system-packages mysqlclient
COPY script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh
EXPOSE 3000
CMD /usr/local/bin/script.sh