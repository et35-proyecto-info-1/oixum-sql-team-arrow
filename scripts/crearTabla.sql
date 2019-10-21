drop database if exists test;
create database test;
use test;

create table if not exists test.estudiantes (
id INT NOT NULL auto_increment,
nombre varchar(100) NOT NULL,
comidaPreferida varchar(100) NULL,
fechaNacimiento DATE NOT NULL,
CONSTRAINT estudiantes_PK PRIMARY KEY(ID)
);
INSERT INTO test.estudiantes values
("1", "Oliver Queen", "Pollo al horno", "2004-05-08"),
("", "Barry Allen", "Big Belly Burguer", "2002-07-15"),
("","Felicity Smoke", "Medialunas", "1998-01-25"),
("", "John Diggle", "Estofado", "2003-04-30");
