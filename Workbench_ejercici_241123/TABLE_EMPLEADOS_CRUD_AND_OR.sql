create table empleados(
	id_empleado INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    nombre_empleado VARCHAR(45) NOT NULL,
	sueldo_empleado DOUBLE NOT NULL,
    direccion_empleado VARCHAR(80) NOT NULL,
    puesto_empleado VARCHAR(40) NOT NULL
); 
INSERT INTO empleados (nombre_empleado,sueldo_empleado,direccion_empleado, puesto_empleado)
VALUES 
('Laura',4250.2,'Paseo de la Luna 425 Cielo Azul','contador'),
('Josefina',2250.4,'Benito Juarez 234','secretaría'),
('Ana',1450.2,'Arcos del norte 435 la luna','cajero'),
('Marisol',1450.2,'Cristobal Colon 224 Athenas','cajero'),
('Andres',2455.6,'Adan y Eva 256 centro','auxiliar contable');

SELECT * FROM empleados;


-- ------------- Condicion AND -------------
-- seleccionando una QUERY con 2 condiciones separadas por AND 
-- Se recomienda filtrarlos por la primera condicion sea menos común 
-- Si no se cumple la primera condicion no se ejecuta la segunda. AMBAS deben cumplirse
SELECT nombre_empleado FROM empleados
WHERE sueldo_empleado>1000 AND puesto_empleado='cajero';


-- ------------- CONDICION OR ---------------
-- Si se cumple una de las 2 devuelve resultados
SELECT nombre_empleado FROM empleados
WHERE sueldo_empleado>5000 OR puesto_empleado='contador';
