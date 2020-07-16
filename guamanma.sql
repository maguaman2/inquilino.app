show tables;
drop table usuario;
create table usuario(
usuid int not null auto_increment primary key,
usunombre text,
usuapellido text,
idprefencia int
);

create table preferencia(
id int not null auto_increment primary key,
descripcion text
);
select * from preferencia;
