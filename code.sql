\status

CREATE USER 'sys_test'@'localhost' IDENTIFIED BY '12345';

SELECT user, authentication_string,plugin, host FROM mysql.user;

GRANT ALL PRIVILEGES ON * . * TO 'sys_test'@'localhost';

SHOW GRANTS FOR 'sys_test'@'localhost';

ALTER USER 'sys_test'@'localhost' IDENTIFIED WITH mysql_native_password BY '12345';

CREATE DATABASE sakila;

mysql -u sys_test -p sakila < /tmp/sakila-db/sakila-schema.sql

SHOW DATABASES;

USE sakila;

SELECT DATABASE ();

SHOW TABLES;