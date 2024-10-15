CREATE DATABASE `Tipos`;

USE `Tipos`;

-- EJEMPLOS NUMERICOS -----------------------------------------------------------------------------
CREATE TABLE ejemplo_numericos (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,  -- Entero sin signo
    edad TINYINT,                                -- Pequeño entero (con signo)
    altura SMALLINT UNSIGNED,                    -- Entero pequeño sin signo
    peso MEDIUMINT,                              -- Entero mediano
    visitas INT,                                 -- Entero estándar
    cantidad BIGINT UNSIGNED,                    -- Entero grande sin signo
    salario DECIMAL(10, 2),                      -- Número decimal con 10 dígitos, 2 después del punto
    porcentaje FLOAT,                            -- Número en punto flotante (precisión simple)
    puntuacion DOUBLE                            -- Número en punto flotante de doble precisión
);

-- EJEMPLOS FECHA -----------------------------------------------------------------------------
CREATE TABLE ejemplo_fecha (
    fecha_nacimiento DATE,                       -- Fecha en formato 'YYYY-MM-DD'
    hora_entrada TIME,                           -- Hora en formato 'HH:MM:SS'
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Marca de tiempo (UTC)
    modificado_en DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP, -- Fecha y hora
    año_ingreso YEAR                             -- Solo el año (rango de 1901 a 2155)
);

-- EJEMPLOS CADENA -----------------------------------------------------------------------------
CREATE TABLE ejemplo_cadena (
    nombre VARCHAR(100),                         -- Cadena de texto de longitud variable (hasta 100 caracteres)
    iniciales CHAR(3),                           -- Cadena de longitud fija (exactamente 3 caracteres)
    descripcion TEXT,                            -- Texto largo (hasta 65,535 caracteres)
    comentarios LONGTEXT,                        -- Texto muy largo (hasta 4,294,967,295 caracteres)
    estado ENUM('activo', 'inactivo', 'pendiente'), -- Valor predefinido
    permisos SET('leer', 'escribir', 'borrar'),  -- Combinación de valores predefinidos
    imagen BLOB,                                 -- Datos binarios pequeños
    archivo LONGBLOB                             -- Datos binarios grandes (como archivos grandes)
);

-- INSERCION DE DATOS -----------------------------------------------------------------------------

INSERT INTO ejemplo_numericos (edad, altura, peso, visitas, cantidad, salario, porcentaje, puntuacion)
VALUES 
(25, 170, 65, 10, 5000000000, 2500.50, 75.5, 88.99),
(30, 180, 80, 25, 10000000000, 3500.75, 90.25, 95.15);

INSERT INTO ejemplo_fecha (fecha_nacimiento, hora_entrada, creado_en, modificado_en, año_ingreso)
VALUES 
('1990-05-15', '08:30:00', CURRENT_TIMESTAMP, NULL, 2010),
('1985-11-23', '09:45:00', CURRENT_TIMESTAMP, NULL, 2015);

INSERT INTO ejemplo_cadena (nombre, iniciales, descripcion, comentarios, estado, permisos, imagen, archivo)
VALUES 
('Juan Perez', 'JPR', 'Empleado de ventas', 'Muy trabajador y dedicado.', 'activo', 'leer,escribir', NULL, NULL),
('Maria Lopez', 'MLP', 'Gerente de operaciones', 'Experiencia en logística y gestión.', 'pendiente', 'leer', NULL, NULL);
