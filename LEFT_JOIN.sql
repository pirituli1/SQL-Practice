-- Creamos una tabla donde tendra las siguientes columnas: id, name,created_by,marca, primary key, foreing key
-- foreing key (llave foranea) hace referencia a una columna de otra tabla le indicamos con reference <nombre_tabla_referenciada> y la columna entre ()
CREATE TABLE products (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(50) NOT NULL,
    created_by int NOT NULL,
    marca varchar(50),
    PRIMARY KEY (id),
    FOREIGN KEY (created_by) REFERENCES user(id)
);

rename table products to product; -- renombrar una tabla
-- insertamos varios datos al mismo tiempo con la siguiente estructura: 
INSERT INTO product (name,created_by,marca)
values 
	('ipad',1,'apple'),
    ('iphone',1,'apple'),
    ('watch',2,'apple'),
    ('macbook',1,'apple'),
    ('imac',3,'apple'),
    ('ipad mini',2,'apple');
    
SELECT * from product;
-- selecciona varias columnas de 2 tablas y con left join se unen donde sus id coinciden.
Select u.id, u.email from user u; -- se le da un alias a la tabla (u en este caso) hacemos una concatenacion con u.id y u.email
Select u.id, u.email, p.name from user u LEFT JOIN product p on u.id = p.created_by; -- le pedimos que una la ID con Created_by (que son el mismo número)
-- se le asigno un alias tambien a la tabla product despues de hacer referencia a ella más adelante 


