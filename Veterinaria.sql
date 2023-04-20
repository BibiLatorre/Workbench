create database veterinaria;
use veterinaria;

create table informacion(
id int not null,
nombre varchar(30) not null,
años int not null,
raza varchar (30),

primary key (id)
);

insert into informacion (id, nombre, años, raza)
values (1, 'Loki',3,'Criollo'),
(2, 'Pua',3,'Criolla'),
(3, 'Milu', 3, 'Schnauzer'),
(4, 'Molly', 8, 'Criolla'),
(5, 'Fruna', 7, 'Criolla');
