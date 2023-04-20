create database colegio;
use colegio;

create table alumno(
id_alumno int auto_increment not null,
nombre varchar(45) not null,
apellido varchar(45) not null,
edad int not null,

primary key(id_alumno)

);

create table profesor(
id_profesor int auto_increment not null,
nombre varchar(45) not null,
apellido varchar(45) not null,
edad int not null,

primary key(id_profesor)
);

create table alumno_profesor(
id_alumno_fk int not null,
id_profesor_fk int not null
);

alter table alumno_profesor add constraint alumno_profesor_fk0 foreign key(id_alumno_fk) references alumno (id_alumno);

alter table alumno_profesor add constraint alumno_profesor_fk1 foreign key(id_profesor_fk) references profesor (id_profesor);

insert into alumno (nombre, apellido, edad)
values ('Bibiana', 'Latorre', 44),
('Edgar', 'Merchan', 48),
('Sonia', 'Latorre', 42);

select * from alumno;

insert into profesor (nombre, apellido, edad)
values ('Valeria', 'Merchan', 8),
('Natalia', 'Merchan', 12);

select * from profesor;

insert into alumno_profesor (id_alumno_fk, id_profesor_fk)
values (1,1),
(2,1),
(3,1),
(1,2),
(2,2),
(3,2);

select * from alumno_profesor;












