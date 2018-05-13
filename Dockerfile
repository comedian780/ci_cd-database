FROM mysql:5.6

MAINTAINER AaronLuellwitz <aaron.luellwitz@gmx.de>

ENV MYSQL_ROOT_PASSWORD password

COPY ./mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf

COPY ./parcel.sql /docker-entrypoint-initdb.d/

RUN /etc/init.d/mysql start

EXPOSE 3306
