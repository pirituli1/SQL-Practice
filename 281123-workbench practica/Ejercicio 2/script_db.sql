CREATE DATABASE IF NOT EXISTS proyectos_db;
USE proyectos_db;
-- --------------------- TABLE TAREAS ------------------------
CREATE TABLE IF NOT EXISTS tareas(
	id_tarea INT UNIQUE NOT NULL PRIMARY KEY AUTO_INCREMENT,
    descripcion VARCHAR(255) NOT NULL,
    -- usamos ENUM para fijar los valores que se pueden poner en la columna 
    estado ENUM ('pendiente','en progreso','completada') NOT NULL,
	fecha_vencimiento DATE NOT NULL
);

-- ----------------		TABLE PROYECTOS	------------------------

CREATE TABLE IF NOT EXISTS proyectos(
	id_proyectos INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    fecha_inicio DATE NOT NULL,
    fecha_final DATE NOT NULL,
    tareas INT,
    CONSTRAINT proyectos_tareas
    FOREIGN KEY (tareas)
    references tareas(id_tarea)
);