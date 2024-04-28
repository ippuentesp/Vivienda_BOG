FROM mysql:latest
WORKDIR /mysql/data
ENV MYSQL_ROOT_PASSWORD=root
COPY OLTP_viviendas.sql /docker-entrypoint-initdb.d/
COPY DHW_Vivienda.sql /docker-entrypoint-initdb.d/
