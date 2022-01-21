FROM debian:buster

RUN apt-get update -y && apt-get -y install nginx openssl &&\
    rm -rf /var/lib/apt/lists/*

COPY nginx.conf /etc/nginx/sites-available/default

RUN openssl req -newkey rsa:2048 -nodes -x509 -days 365 \
	-subj "/C=RU/ST=Moscow/L=Moscow/O=jinigo/CN=jinigo.42.fr" \
	-keyout etc/ssl/key.key  \
	-out etc/ssl/cert.cert && \
	chmod 777 /etc/ssl/*

RUN	chown -R www-data /var/www/

VOLUME [ "/var/www/" ]

EXPOSE 443

CMD	["nginx","-g","daemon off;"]
