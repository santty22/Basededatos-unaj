drop database if exists tienda;
create database tienda;
use tienda;
create table fabrica(codigo int primary key not null, nombre varchar(60));
describe fabrica;
create table articulo(codigo int primary key not null, nombre varchar(60), precio double, fabrica int);
describe articulo;
insert into fabrica values(23, 'IBM');
insert into fabrica values(34,'EPSON'),(12,'COMPACT'),(4,'PACK BELL'),(59,'SONY');
select * from fabrica;
insert into articulo values(234895,'Impresora 3145',456.23,34),
(345282,'PC 5672',943.56,12),
(124537,'Mouse 37 I',24.53,23),
(456238,'PenDrive',159.23,59),
(234159,'Impresora TX40',34.74,23);
select nombre from articulo;
select nombre,precio from articulo;
select nombre from articulo where precio>=200;
select * from articulo where precio>=60 and precio<=120;
select * from articulo where precio between 60 and 120;
select nombre, precio/28.80 as precio_en_dolares from articulo;
select avg(precio) as promedio from articulo;
select avg(precio) as promedio_fab_23 from articulo where fabrica=23;
select count(codigo) as cantidad from articulo where precio>=180;
select nombre, precio from articulo where precio>=120 order by precio desc;
select nombre, precio from articulo where precio>=120 order by nombre asc;
select articulo.codigo, articulo.nombre, fabrica.nombre from articulo, fabrica where articulo.fabrica=fabrica.codigo;
select articulo.codigo, articulo.nombre, fabrica.nombre from articulo inner join fabrica on articulo.fabrica=fabrica.codigo;
select fabrica, avg(precio) as preciopromedio from articulo group by fabrica;
select fabrica.nombre, avg(articulo.precio) as promedio from articulo inner join fabrica on articulo.fabrica=fabrica.codigo group by fabrica having avg(precio)>=180;
update articulo set nombre='Impresora Laser' where codigo=234159;
select * from articulo;
select nombre, min(precio) from articulo;
insert into articulo values(300000,'Parlantes',70,59);