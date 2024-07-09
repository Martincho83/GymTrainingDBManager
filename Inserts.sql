-- INSERTS
-- DATOS DE JUGADORES
INSERT INTO Jugadores (id_jugador, apellido, nombre, fecha_nac, direccion, telefono, email) VALUES
(1, 'Perez', 'Juan', '1996-06-10', 'Calle Falsa 123', '123456789', 'juan.perez@example.com'),
(2, 'Gonzalez', 'Maria', '1999-03-20', 'Avenida Siempre Viva 742', '987654321', 'maria.gonzalez@example.com'),
(3, 'Lopez', 'Carlos', '1990-11-21', 'Calle Principal 456', '456123789', 'carlos.lopez@example.com'),
(4, 'Martinez', 'Ana', '1991-11-23', 'Calle Secundaria 789', '789123456', 'ana.martinez@example.com'),
(5, 'Fernandez', 'Lucia', '1995-05-04', 'Calle Tercera 321', '321654987', 'lucia.fernandez@example.com'),
(6, 'Sanchez', 'Diego', '2001-12-25', 'Calle Cuarta 654', '654987321', 'diego.sanchez@example.com');

-- DATOS DE ENTRENAMIENTOS
INSERT INTO Entrenamientos (id_entrenamiento, nombre, nivel_habilidad, tipo_equipamiento) VALUES
(1, 'Fuerza Principiante', 'Principiante', 'Pesas'),
(2, 'Fuerza Intermedio', 'Intermedio', 'Pesas'),
(3, 'Fuerza Avanzado', 'Avanzado', 'Pesas'),
(4, 'Resistencia Principiante', 'Principiante', 'Cinta de Correr'),
(5, 'Resistencia Intermedio', 'Intermedio', 'Cinta de Correr'),
(6, 'Resistencia Avanzado', 'Avanzado', 'Cinta de Correr'),
(7, 'Agilidad Principiante', 'Principiante', 'Conos'),
(8, 'Agilidad Intermedio', 'Intermedio', 'Conos'),
(9, 'Agilidad Avanzado', 'Avanzado', 'Conos');

-- DATOS DE INSCRIPCIONES
INSERT INTO Inscripciones (id_inscripcion, fecha_insc, abono_inscrip, id_jugador, id_entrenamiento) VALUES
(1, '2024-01-05', TRUE, 1, 1),
(2, '2024-01-10', FALSE, 2, 2),
(3, '2024-02-15', TRUE, 3, 3),
(4, '2024-03-20', FALSE, 4, 4),
(5, '2024-04-25', TRUE, 5, 5),
(6, '2024-05-30', FALSE, 6, 6),
(7, '2024-01-15', TRUE, 1, 2),
(8, '2024-02-10', TRUE, 2, 3),
(9, '2024-03-05', FALSE, 3, 1),
(10, '2024-04-01', TRUE, 4, 6),
(11, '2024-05-05', FALSE, 5, 4),
(12, '2024-06-01', TRUE, 6, 9),
(13, '2024-01-20', FALSE, 1, 5),
(14, '2024-02-25', TRUE, 2, 7),
(15, '2024-03-30', FALSE, 3, 8);
