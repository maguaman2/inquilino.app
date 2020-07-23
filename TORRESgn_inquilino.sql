create database inquilinos;
USE inquilinos;

CREATE TABLE inquilino(
id int NOT NULL auto_increment,
nombres varchar(100)not null,
apellidos varchar(100)not null,

primary key (id)
);

#insert into inquilino (nombres, apellidos) values ('Gabriela Nicole', 'Torres Velez' );

CREATE TABLE telefonos(
telefono varchar (10) not null,
id_inquilino int not null,
primary key(telefono),
foreign key(id_inquilino) references inquilino (id)
);


CREATE TABLE Contratos_Arriendo(
codigo int NOT NULL auto_increment,
fecha_inicio varchar(8) not null,
fecha_fin varchar(8) not null,
valor_mensual double(6,2) not null,
primary key(codigo)
);
#insert into Contratos_Arriendo(fecha_inicio, fecha_fin, valor_mensual) values ('01-05-2004', '01-05-2010' , '150');

CREATE TABLE Inquilinos_Carriendo(
id_inquilino int not null,
codigo_carriendo int not null,

primary key(id_inquilino, codigo_carriendo),
foreign key(id_inquilino) references inquilino (id),
foreign key(codigo_carriendo) references Contratos_Arriendo(codigo)
);


