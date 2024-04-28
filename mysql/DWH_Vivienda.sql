/*#Se crea la base de datos OLAP*/

CREATE DATABASE IF NOT EXISTS dwh_viviendas ;

USE dwh_Viviendas;

-- Crear tabla de dimensiones para Inmuebles
CREATE TABLE Dim_Inmuebles (
    id_inmueble INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50),
    descripcion TEXT,
    habitaciones INT,
    baños INT,
    area INT
);

/*Crear tabla de dimensiones para Barrios*/
CREATE TABLE Dim_Barrios (
    id_barrio INT AUTO_INCREMENT PRIMARY KEY,
    nombre_barrio VARCHAR(100)
);

/*Crear tabla de dimensiones para UPZs*/
CREATE TABLE Dim_UPZs (
    id_upz INT AUTO_INCREMENT PRIMARY KEY,
    nombre_upz VARCHAR(100)
);

/*Crear tabla de hechos para Ventas de Inmuebles*/
CREATE TABLE Fact_Ventas_Inmuebles (
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
    id_inmueble INT,
    id_barrio INT,
    id_upz INT,
    fecha_venta DATETIME,
    valor_venta DECIMAL(12, 2),

/*Crea las relaciones entre tablas*/
    FOREIGN KEY (id_inmueble) REFERENCES Dim_Inmuebles(id_inmueble),
    FOREIGN KEY (id_barrio) REFERENCES Dim_Barrios(id_barrio),
    FOREIGN KEY (id_upz) REFERENCES Dim_UPZs(id_upz)
);

