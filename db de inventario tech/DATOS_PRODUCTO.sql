-- Revisar restricciones de una tabla!
ALTER TABLE producto MODIFY COLUMN id int auto_increment;

insert into producto (nombre,precio,inventario,id_provedor) 
VALUES 
("Computadora Portátil",799.99 ,"25 unidades",2),
("Smartphone Avanzado",699.99 , "50 unidades",4),
("Cámara Digital Profesional",499.99 , "30 unidades",6),
("Auriculares Inalámbricos",149.99 , "75 unidades",8),
("Monitor UltraAncho", 899.99, "20 unidades",10),
("Teclado Mecánico RGB",129.99 , "40 unidades",12),
("Mouse Ergonómico",49.99 , "100 unidades",14),
("Altavoces Bluetooth",179.99,"35 unidades",16),
("Impresora Multifuncional",299.99,"15 unidades",18),
("Tableta Gráfica Profesional",399.99,"10 unidades",20),
("Micrófono de Estudio",199.99,"55 unidades",1),
("Router de Alta Velocidad",129.99,"30 unidades",3),
("Mochila para Portátil",69.99,"80 unidades",5),
("Disco Duro Externo",119.99,"25 unidades",7),
("Lámpara Inteligente",39.99,"70 unidades",9)
;