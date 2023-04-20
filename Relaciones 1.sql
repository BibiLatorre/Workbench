create database registrosdb;
use registrosdb;

create table docType(
id int not null auto_increment,
docType varchar (45) not null,
primary key (id)
);

create table person(
id int not null auto_increment,
name varchar (45) not null,
last_name varchar (45) not null,
doc int (45) not null,
docType_id int not null,
primary key (id),
constraint fk_Person_docType
foreign key (docType_id) references docType(id)
);

insert into docType (docType)
values ('nit');
select * from docType;

insert into person (name, last_name, doc, docType_id)
values ('Bibi', 'Latorre', 52534120, 1);
select * from person;


