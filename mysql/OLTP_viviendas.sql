CREATE DATABASE db_viviendas_transact;

USE db_viviendas_transact;

/* SE CREA LA OLTP con la data de Inmuebles */
CREATE TABLE Inmuebles (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Tipo VARCHAR(50),
    Descripcion VARCHAR(255),
    Habitaciones INT,
    Banos INT,
    Area INT,
    Barrio VARCHAR(100),
    UPZ VARCHAR(255),
    Valor VARCHAR(50)
);

LOAD DATA INFILE 'data/inmuebles_bogota.csv'
INTO TABLE Inmuebles
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Tipo, Descripcion, Habitaciones, Banos, Area, Barrio, UPZ, Valor);