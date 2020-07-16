CREATE TABLE vivienda (
id SERIAL,
descripcion varchar(100),
	direccion varchar(100),
	ncuartos int,
idpropietario int,
  PRIMARY KEY (id),
  foreign key (idpropietario) references propietario (id)
	)