create database if not exists hotel_db;
use hotel_db;
-- -------------- TABLE "habitaciones" ----------------------
create table if not exists habitaciones(
	id_habitacion INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
	num_habitacion INT UNIQUE NOT NULL,
    cap_max INT NOT NULL, 
    precio FLOAT NOT NULL   
)ENGINE=INNODB;

-- --------------- TABLE "clientes" ------------------------
create table if not exists clientes(
		id_cliente INT PRIMARY KEY UNIQUE NOT NULL AUTO_INCREMENT,
        nombre VARCHAR(60) NOT NULL,
        direccion VARCHAR(100) NOT NULL,
        -- elegí VARCHAR en lugar de int porque aveces los números tienen caracteres especiales
        num_telefono VARCHAR(40) 
)ENGINE=INNODB;

-- ----------------- TABLE "reservas" -------------------
CREATE TABLE IF NOT EXISTS reservas(
	id_reserva INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    -- llave foraranea de clientes
    cliente INT NOT NULL,
    CONSTRAINT reservas_cliente
    FOREIGN KEY (cliente)
	REFERENCES clientes(id_cliente),
    -- fin llave foranea de clientes
    habitacion INT NOT NULL,
    -- llave foranea habitacion
    CONSTRAINT reservas_habitacion
    FOREIGN KEY (habitacion)
    REFERENCES habitaciones (id_habitacion),
    -- fin llave foranea habitacion
    check_in DATETIME(1) NOT NULL,
    check_out DATETIME(1) NOT NULL
)ENGINE=INNODB;



