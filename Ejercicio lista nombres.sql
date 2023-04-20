create database registros;
use registros;

create table registros_persona(
id int auto_increment not null,
nombre varchar (10) not null,
apellido varchar (10) not null,
fecha_cumpleanos date not null,
estado_civil varchar (10) not null,
ciudad varchar (10) not null,
primary key (id)
);

insert into registros_persona(
nombre, apellido, fecha_cumpleanos,estado_civil, ciudad)
values
('Bibiana', 'Latorre','78/12/22','U Libre','Bogotá'),
('Edgar', 'Merchan', '74/06/17','U Libre', 'Bogotá'),
('Natalia','Merchan','11/03/02', 'Soltera','Bogotá'),
('Valeria','Merchan','15/01/08', 'Soltera','Bogotá'),
('Sonia', 'Latorre','80/11/28','Casada', 'Bogotá'),
('Mafe', 'Latorre','99/11/20', 'Soltera', 'Supia'),
('MaLigia','Alba','56/02/13','Divorciada','Bogotá'),
('Antonio','Moreno','81/07/02', 'Casado', 'Bogotá');

select nombre, apellido from registros_persona;
select nombre, apellido from registros_persona order by nombre, apellido asc;
select * from registros_persona where estado_civil ='casada';
select * from registros_persona where estado_civil = 'soltera'; 
select * from registros_persona where apellido = 'Baez';
select * from registros_persona where apellido = 'Vargas' and estado_civil = 'soltera'; 
select * from registros_persona;
update registros_persona set apellido= 'Vegas' where (id='5');
select * from registros_persona limit 3 offset 2;
select day (fecha_cumpleanos) from registros_persona;
select day (fecha_cumpleanos) as dia from registros_persona;
select year (fecha_cumpleanos) as año from registros_persona;
select month (fecha_cumpleanos) as mes from registros_persona;
select *from registros_persona where


