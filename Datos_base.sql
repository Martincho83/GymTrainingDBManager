CREATE DATABASE gym;

USE gym;

CREATE TABLE Jugadores(
	id_jugador INT PRIMARY KEY,
    apellido VARCHAR(50),
    nombre VARCHAR(50),
    fecha_nac DATE,
    direccion VARCHAR(100),
    telefono VARCHAR(20),
    email VARCHAR(50)
);

CREATE TABLE Entrenamientos(
	id_entrenamiento INT PRIMARY KEY,
    nombre VARCHAR(50),
    nivel_habilidad VARCHAR(20),
    tipo_equipamiento VARCHAR(50)
);

CREATE TABLE Inscripciones(
	id_inscripcion INT PRIMARY KEY,
    fecha_insc DATE,
    abono_inscrip BOOLEAN,
    id_jugador INT,
    id_entrenamiento INT,
    FOREIGN KEY (id_jugador) REFERENCES Jugadores(id_jugador),
    FOREIGN KEY (id_entrenamiento) REFERENCES Entrenamientos(id_entrenamiento)
);

    