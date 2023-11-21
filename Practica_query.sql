-- Creamos una tabla con las columnas de: ID,name,edad,email y su primary KEY
CREATE TABLE user (
	id int not null auto_increment,
    name varchar(50) not null,
    edad int not null,
    email varchar(100) not null,
    primary key (id)
);
-- Empezamos a incluir datos:
INSERT INTO user (name,edad,email) values ('Oscar',25,'oscar@gmail.com');
INSERT INTO user (name,edad,email) values ('Layla',15,'layla@gmail.com');
INSERT INTO user (name,edad,email) values ('Nicolas',36,'nico@gmail.com');
INSERT INTO user (name,edad,email) values ('Chanchito',7,'chanchito@gmail.com');

-- Empezamos a hacer consultas:

SELECT * FROM user; -- Muestra todo de la tabla "user"
SELECT * FROM user limit 1; -- la propiedad de limit, limitara los resultados que nos devuelva
SELECT * FROM user WHERE edad > 15; -- Selecciona todos los que sean mayores a 15
SELECT * FROM user WHERE edad >= 15; -- Selecciona todos los que sean igual o mayores a 15
SELECT * FROM user WHERE edad >= 20 AND email = 'nico@gmail.com'; -- mayor o igual a 20 AND su email coincida con el puesto
SELECT * FROM user WHERE edad > 20 OR email = 'layla@gmail,com'; -- Se selecciona todos los mayores de 20 años o cumpla con ser igual al correo
SELECT * FROM user WHERE email != 'layla@gmail.com'; -- negacion todos los registros que cumplan la condicion de no ser igual a ese correo
SELECT * FROM user WHERE edad between 15 and 30; -- usamos beetween para buscar todos los registros entre esos 2 rangos que ponemos nosotros

SELECT * FROM user WHERE email like '%@gmail%'; -- Busca dentro del campo de email la cadena dentro de %% que marcan el inicio y el final
SELECT * FROM user WHERE email like '%@gmail'; -- El % al principio indica que todo el texto anterior no importa, pero si o si debe terminar con esa cadena de texto
SELECT * FROM user WHERE email like 'oscar%'; -- En este caso debe iniciar como la cadena indica pero no importa todo lo demás 

SELECT * FROM user order by edad asc; -- Usamos order by para ordenar la consulta y al seleccionar asc decimos que queremos que sea ascendente 
SELECT * FROM user order by edad desc; -- lo mismo pero descendente 

SELECT max(edad) as mayor FROM USER; -- consultamos la edad más grande dentro de la tabla user 
SELECT min(edad) as mayor FROM USER; -- lo mismo pero la mínima. Dentro de los parentesis va la columna. 
SELECT max(edad) as texto FROM USER; -- el as solo se usa para seleccionar el texto con el que queremos que sea devuelto

-- seleccionar columnas de interes 
select id, name from user; -- seleccionamos toda la columna de ID de la tabla USER 
select id, name as nombre from user; -- usamos as para devolverlo con el titulo de la comumna "nombre"





