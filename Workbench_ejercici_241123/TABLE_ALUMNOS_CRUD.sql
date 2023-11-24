-- crea una base de datos 
CREATE DATABASE mibdd;

-- palabras clave 
DROP DATABASE mibdd; 
-- borra base de datos 


CREATE DATABASE IF NOT EXISTS tienda; 
-- crea una base de datos 
-- ATAJO Cntl + enter = ejecutar toda la LINEA de codigo 
# usar esta base de datos. Importante seleccionar
USE mibdd;

CREATE table escuela(
id_alumnos INT NOT NULL AUTO_INCREMENT UNIQUE,
nombre_alumno VARCHAR(50) NOT NULL,
edad int NOT NULL,
materia varchar(50) NOT NULL,
grado INT NOT NULL
);
-- ALTERAMOS UNA TABLA PARA EMPEZAR EN 1000 en vez de 1 
ALTER TABLE escuela AUTO_INCREMENT = 1000;
-- si olvidas poner la PRIMARY KEY usa esto:
ALTER TABLE escuela ADD PRIMARY KEY (id_alumnos);
-- seleccionamos una tabla y todo sus registros de la tabla ESCUELA
SELECT * FROM escuela;
-- Guardar información de una fila:
INSERT INTO escuela (nombre_alumno,edad,materia,grado) 
VALUES
('Juan Lopez',22,'Matematicas',4),
('Marcos Perez',21,'quimica',3),
('Ana Sanchez',21,'matematicas',3),
('Miguel Quiñorez',21,'contabilidad',5)
;

-- UPDATE 
UPDATE escuela SET nombre_alumno='Carlos Perez' WHERE id_alumno=1001;

-- ALterar tabla para cambiar nombre de columna 
ALTER TABLE escuela CHANGE id_alumnos id_alumno INT NOT NULL AUTO_INCREMENT UNIQUE;
-- OTRO UPDATE 
UPDATE escuela SET materia='ingles' WHERE id_alumno=1000;

RENAME TABLE escuela TO alumnos;
-- condicionar consultas con SELECT clausula WHERE 
SELECT * FROM alumnos;
-- seleccionamos con where un estado especifico
SELECT nombre_alumno 
FROM alumnos 
WHERE materia='quimica';
-- selecciona de la columna nombre_alumno de la tabla alumnos donde (where) edad es menor a 21. 
SELECT nombre_alumno 
FROM alumnos
WHERE edad>21;
# Selecciona los que son igual o menor a 21. 
SELECT nombre_alumno 
FROM alumnos
WHERE edad<=21;

-- modificar varios campos a la vez 
UPDATE alumnos 
set nombre_alumno='Daniel Quiñonez', edad=20 
WHERE id_alumno=1003; 
-- otro ejemplo de UPDATE
UPDATE alumnos 
set materia='base de datos', edad=26 
WHERE id_alumno=1002;

-- 
