create DATABASE prueba;
USE PRUEBA;

CREATE TABLE productos(
id int NOT NULL auto_increment,
nombre varchar(100)not null,

primary key (id)
);

ALTER TABLE productos CHANGE nombres nombres BIGINT null;
ALTER TABLE productos ADD COLUMN categoria_id int not null;
ALTER TABLE productos ADD FOREIGN KEY (categoria_id) REFERENCES categorias(id);
ALTER TABLE productos MODIFY nombres varchar(50);
insert into productos (nombres, categoria_id) values ('zapatos', '1' );
insert into productos (nombres, categoria_id) values ('licuadora', '2' );
 
CREATE TABLE precios(
id int NOT NULL auto_increment,
cantidad int not null,
tipo varchar(50) ,
id_productos int not null,

primary key (id),
foreign key(id_productos) references productos (id)
);

insert into precios (cantidad, tipo, id_productos) values ('30', 'oferta' , '14');
insert into precios (cantidad, tipo, id_productos) values ('50', 'normal' , '15');

CREATE TABLE categorias(
id int NOT NULL auto_increment,
nombre varchar(50) not null,
descripcion varchar(100) ,

primary key (id)
);

 select * from productos;
  select * from precios;
 select * from categorias;
 
 insert into categorias (nombre, descripcion) values ('ropa', 'prendas de vestir' );
 insert into categorias (nombre, descripcion) values ('electrodomesticos', ' funciona con energía eléctrica y está destinado al uso doméstico.' );
 
 CREATE USER 'root'@'wampmysqld64' IDENTIFIED BY '1234';
 CREATE USER 'analista'@'wampmysqld64' IDENTIFIED BY '4321';
 
 grant all privileges on *.* to 'root'@'wampmysqld64';
 grant select  on *.* to 'analista'@'wampmysqld64';
 
 
  
  
 
 
