#creamos una base de datos 
CREATE DATABASE IF NOT EXISTS base_peliculas; 
-- Seleccionar base de datos 
USE base_peliculas;

#se crean las tablas que no tiene relacion (es mejor empezar así)
#creamos una tabla 
CREATE TABLE IF NOT EXISTS peliculas(
 id_pelicula INT NOT NULL AUTO_INCREMENT, 
 titulo VARCHAR(45) NOT NULL,
 fecha DATE,
 nacionalidad VARCHAR(20),
 idioma VARCHAR(120),
 formato ENUM('BLANCO Y NEGRO', 'COLOR'),
 descripcion VARCHAR(255),
 resumen VARCHAR(255),
 observaciones VARCHAR(255),
 PRIMARY KEY (id_pelicula)
)ENGINE=INNODB;

# Creación tablas acores 
CREATE TABLE IF NOT EXISTS actores(
	id_actor INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45),
    nacionalidad VARCHAR (45),
    nombre_personaje VARCHAR(45),
    PRIMARY KEY (id_actor)
)ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS directores(
	id_director INT NOT NULL AUTO_INCREMENT ,
    nombre VARCHAR (120) NOT NULL,
    fecha_nacimiento DATE,
    pais_origen VARCHAR(120),
    PRIMARY KEY (id_director),
    peliculas_id_pelicula INT NOT NULL, 
    CONSTRAINT fkdirector_pelicula
    FOREIGN KEY(peliculas_id_pelicula)
    REFERENCES peliculas(id_pelicula)
)ENGINE=INNODB;

#Creamos una relacion de M-N entre actores y peliculas. Porque una pelicula puede tener muchos actores y muchas peliculas pueden tener muchos actores
#La PRIMARY KEY es una llave compuesta, la compone más de un campo
CREATE TABLE IF NOT EXISTS actores_peliculas(
	peliculas_id_pelicula INT NOT NULL,
    actores_id_actor INT NOT NULL,
    -- llave primaria compuesta 
    PRIMARY KEY (peliculas_id_pelicula, actores_id_actor),
    -- llave foranea de la columna actores_id_actor. Basado en la table actores en la columna de id_actores 
    CONSTRAINT fkactor_peliculas_actor
    FOREIGN KEY (actores_id_actor)
    REFERENCES actores(id_actor),
    -- llave foranea de la columna peliculas_id_pelicula basada en la tabla peliculas en la columna id_peliculas 
    CONSTRAINT fkactores_actor_peliculas
    FOREIGN KEY (peliculas_id_pelicula)
    REFERENCES peliculas(id_pelicula)
)ENGINE=INNODB;
