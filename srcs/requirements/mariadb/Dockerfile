FROM debian:buster
RUN	apt update && apt install mariadb-server -y && rm -rf /var/lib/apt/lists/*; \
    sed -i 's/^bind-address/#&/' /etc/mysql/mariadb.conf.d/50-server.cnf

COPY	mariadb.sh /
RUN		chmod 755 /mariadb.sh

VOLUME [ "/var/lib/mysql" ]

EXPOSE	3306

ENTRYPOINT	["bash", "/mariadb.sh"]
