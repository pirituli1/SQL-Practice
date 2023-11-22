-- Seleccionamos que usaremos esta DB
use mydb;

-- insertar datos dentro de la DB 

INSERT INTO provedor (nombre,dirección,telefono) 
VALUES ("Proovedor A","Calle 123,Ciudad Uno",5551234567);

INSERT INTO provedor (nombre,dirección,telefono) 
VALUES ("Empresa XYZ","Avenida Principal, Ciudad Dos",5559876543);

INSERT INTO provedor (nombre,dirección,telefono) 
VALUES ("Distribuidora Zeta","Calle Comercial 45, Ciudad Tres",5555678901);

INSERT INTO provedor (nombre,dirección,telefono) 
VALUES ("Suministros Beta","Calle Mayor 67, Ciudad Cuatro",5552345678);

INSERT INTO provedor (nombre,dirección,telefono) 
VALUES ("Comercializadora Gamma","Calle Peatonal 89, Ciudad Cinco",5558765432);

INSERT INTO provedor (nombre,dirección,telefono) 
VALUES ("Proveedor Epsilon","Avenida Central 10, Ciudad Seis",5553456789);
-- Insertar gran cantidad de datos
INSERT INTO provedor (nombre,dirección,telefono) 
VALUES 
("Distribuciones Alfa","Calle Estrecha 32, Ciudad Siete",5556543210),
("Mayorista Omega","Calle Ancha 56, Ciudad Ocho",5554321098),
("Abastecedora Delta","Avenida Larga 78, Ciudad Nueve",5557890123),
("Proveedora Sigma","Calle Principal 111, Ciudad Diez",5552109876),
("Comercio Theta","Avenida Luminosa 222, Ciudad Once",5559012345),
("Distribuidora Eta","Calle Principal 333, Ciudad Doce",5555432109),
("Suministros Kappa","Avenida Central 444, Ciudad Trece",5556789012),
("Comercial Zeta","Calle Mayor 555, Ciudad Catorce",5553210987),
("Distribuidora Beta","Avenida Sur 666, Ciudad Quince",5558901234),
("Proveedor Iota","Calle Norte 777, Ciudad Dieciséis",5554567890),
("Mayorista Epsilon","Avenida Principal 888, Ciudad Diecisiete",5550123456),
("Comercio Omega","	Calle Ancha 999, Ciudad Dieciocho",5557892341),
("Abastecedora Kappa","Avenida Larga 1010, Ciudad Diecinueve",5552345678),
("Distribuidora Zeta","Calle Comercial 1111, Ciudad Veinte",5555678901)
;

-- Consultar todo de una tabla 
Select * from provedor;

DELETE FROM provedor WHERE id=1;
-- moficar una columna para ser auto incrementable 
ALTER TABLE provedor MODIFY COLUMN id int auto_increment;
-- quitar una llave foranea de una tabla
ALTER TABLE producto DROP FOREIGN KEY id_provedor;
-- Asignar una llave foranea a una tabla 
ALTER TABLE producto ADD CONSTRAINT id_provedor FOREIGN KEY (id) REFERENCES provedor(id);
