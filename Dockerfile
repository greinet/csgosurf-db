FROM mariadb:latest

COPY ck_maptier.sql /docker-entrypoint-initdb.d/
COPY ck_zones.sql /docker-entrypoint-initdb.d/

USER root

RUN chmod 777 /docker-entrypoint-initdb.d/ck_maptier.sql
RUN chmod 777 /docker-entrypoint-initdb.d/ck_zones.sql
