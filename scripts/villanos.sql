use test;

create table if not exists villanos (
id INT NOT NULL auto_increment,
nombre varchar(100) NOT NULL,
lineaTemporal varchar(40),
CONSTRAINT villanos_PK PRIMARY KEY(ID)
);
INSERT INTO test.villanos values
("1", "Eobard Thawne", "Original"),
("", "The Rival", "Flashpoint"),
("", "Zoom", "Muerte de Nora"),
("", "Grace (Cicada)", "Escape de Eobard");
