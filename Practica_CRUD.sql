create database holamundo;
show databases;
use holamundo;
CREATE TABLE animales (
    id int,
    tipo varchar(255),
    estado varchar(255),
    PRIMARY KEY (id)
);

insert into animales (tipo,estado) values ('chanchitos','feliz');

ALTER TABLE animales MODIFY COLUMN id int auto_increment;

SHOW CREATE TABLE animales;

CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- insertamos más valores 
insert into animales (tipo,estado) values ('chanchitos','feliz');
insert into animales (tipo,estado) values ('dragon','feliz');
insert into animales (tipo,estado) values ('felipe','triste');

SELECT * FROM animales; -- Seleciona todo 
SElECT * FROM animales WHERE id = 1; -- Selecciona todo donde el ID sea igual a 1
SElECT * FROM animales WHERE estado = 'feliz'; -- Selecciona todo lo que tenga estado feliz (usar comillas simples)
SElECT * FROM animales WHERE estado = 'feliz' AND tipo = "chanchitos"; -- Agregamos AND (ambas condiciones deben cumplirse)

UPDATE animales SET estado = 'feliz' WHERE id=3; -- Se actualiza el estado del ID 3 con el estado feliz.

DELETE from animales where estado = 'feliz'; -- una prueba donde no nos deja eliminar varias cosas sin seleccionar su ID (activa el safe mode)
DELETE from animales where id = 4; -- Aqui si seleccionamos la ID por lo cual el registro 3 será eliminado

UPDATE animales set estado = 'triste' where tipo = 'dragon'; -- lanza un error porque queremos actualizar algo sin usar el ID 
UPDATE animales set estado = 'triste' where id = 2; -- formar correcta de hacerla 
