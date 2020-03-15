-- 1. Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль, который указывался при установке.
-- Был установлен OpenServer, запускаю его и получают базу данных MySQL 8.


-- 2. Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.
drop database if exists `example`;

create database `example`;

use `example`;


drop table if exists users;

create table users(
	id serial primary key,
	name varchar(100) comment 'Название раздела'
);

insert into users values
	(null, 'Процессоры'),
	(null, 'Клавиатура'),
	(null, 'Мышь');

select * from users;

-- 3. Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.

/*
 1. Создаем базу данные sample в клиенте MySQL:
 	drop database if exists sample;
 	create database sample;
 	
 2. Создаем дамп базы данных example.
	 Меняем в файле my.cnf первую строчку с [mysql] на [client]. 
	 В командной строке Windows пишем команду: 
	 mysqldump -u root -p example > dumpstruct.sql
 
 3. Записываем дамп базы данных в новуб БД example:
 	mysql sample < dumpstruct.sql

 */


 -- 4. (по желанию) Ознакомьтесь более подробно с документацией утилиты mysqldump. Создайте дамп единственной таблицы help_keyword базы данных mysql. Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.

-- mysqldump -u root -p --where="1 limit 100" mysql help_keyword > dump_mysql_help.sql
