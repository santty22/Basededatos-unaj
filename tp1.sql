create database escuela;
use escuela;
create table alumnos(
nleg int,
apynom varchar(50),
tipodoc varchar(3),
ndoc varchar(10),
sexo varchar(1),
fnac date,
lnac varchar(100),
nacion varchar(50),
domicilio varchar(255),
loc varchar(100),
cp varchar(10),
madre varchar(50),
nacmadre varchar(50),
vivemadre varchar(1),
padre varchar(50),
nacpadre varchar(50),
vivepadre varchar(1));
describe alumnos;
insert into alumnos values(25,'Perez Juan','DNI','23145365','M','1987-12-27','Capital Federal','Argentino','Alvear 5674 Piso 2 Dto A','Temperley','1834','Cejas Beatriz Magdalena','Argentina','S','Perez Ricardo','Argentino','N');
select * from alumnos;
select * from alumnos where apynom like '% Juan';
insert into alumnos values(26,'Gomez Pablo','DNI','28279810','M','1992-08-15','Avellaneda','Argentino','Avenida Rivadavia 1034','Capital Federal','1032','Alvarez Mabel','Paraguaya','S','Gomez Jose','Uruguayo','S');
insert into alumnos values(27,'Gomez Maximo','DNI','29275926','M','1993-05-10','Avellaneda','Argentino','Avenida Rivadavia 1034','Capital Federal','1032','Alvarez Mabel','Paraguaya','S','Gomez Jose','Uruguayo','S'),
(28,'Perez Sebastian','DNI','24709834','M','1988-03-08','Lanus','Argentino','Calle 21 1200','Berazategui','1884','Fernandez Maria','Argentina','S','Perez Pedro','Argentino','S'),
(29,'Silva Sofia','NIE','59689491R','F','1995-06-20','Valencia','Española','Roseti 853','Capital Federal','1030','Torres Carolina','Argentina','S','Silva Santiago','Argentino','S'),
(30,'Dominguez Sebastian','DNI','','M','1982-11-19','Tigre','Argentino','Alsina 508','Tigre','1020','Gimenez Fernanda','Argentina','S','Dominguez German','Argentino','S');
create table cursos(
anio int,
divi varchar(1),
turno varchar(1));
describe cursos;
insert into cursos values(1,'A','M'),
(1,'B','T'),
(2,'A','M'),
(2,'B','T'),
(2,'C','V'),
(3,'B','T'),
(3,'C','V');
select * from cursos;
create table aluxcur(anio int, divi varchar(1), turno varchar(1), nleg int);
describe aluxcur;
