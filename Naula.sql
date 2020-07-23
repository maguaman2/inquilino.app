CREATE TABLE telefono (


id Serial,
telefono_convencional varchar (20) NOT NULL,
celular varchar (20) NOT NULL,

id_propietario integer,


 FOREIGN KEY (id_propietario ) REFERENCES propietario(id)



);