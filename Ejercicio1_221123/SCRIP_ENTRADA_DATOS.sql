-- Insertamos datos en la tabla cat_marcas
INSERT INTO cat_marcas (marca) 
VALUES 
("HP"),
("COMPAQ"),
("ASUS");

SELECT * from cat_marcas;
-- Insertamos datos en la tabla cat_ubicacion
INSERT INTO cat_ubicacion(ubicacion)
VALUES 
("EL GRULLO"),
("COLOTLAN")
;

SELECT * FROM cat_ubicacion;

-- insert datos en tabla inventario 
INSERT INTO inventario (num_inventario,descripción,marca,fecha_registro,precio,num_factura,proveedor,num_serie,ubicación)  
VALUES 
("IITEJ-15206-469","COMPUTADORA WORKSTATION MARCA HP MODELO XW4600T",1,"2009-01-22",15482.34,16664,"COMPUTACION INTERACTIVA DE OCCIDENTE","2UA84801F2",1);

INSERT INTO inventario (num_inventario,descripción,marca,fecha_registro,precio,num_factura,proveedor,num_serie,ubicación)  
VALUES 
("IITEJ-15206-472","COMPUTADORA WORKSTATION MARCA HP MODELO XW4600T",2,"2009-01-22",15482.34,16664,"COMPUTACION INTERACTIVA DE OCCIDENTE","2UA84801GQ",2),
("IITEJ-15206-474","IMPRESORA LASER JET MODELO P1505",3,"2009-01-08",2080.61,16602,"COMPUTACION INTERACTIVA DE OCCIDENTE","VNB3B07852",1),
("IITEJ-15206-477","IMPRESORA LASER JET MODELO P1505",3,"2009-01-08",2080.61,16602,"COMPUTACION INTERACTIVA DE OCCIDENTE","VNB3J11533",2),
("IITEJ-15206-479","CAMARA DIGITAL MODELO DSC-S730",2,"2009-01-08",1822.3,16602,"COMPUTACION INTERACTIVA DE OCCIDENTE","S01-2144523-7",1),
("IITEJ-15206-48","CAMARA DIGITAL MODELO DSC-S730",1,"2009-01-08",1822.3,16602,"COMPUTACION INTERACTIVA DE OCCIDENTE","S01-2144524-8",2);


SELECT * FROM inventario;