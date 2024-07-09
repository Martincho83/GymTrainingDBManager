-- Consultas SQL

-- Nivel 1
-- 1. Listar todos los jugadores inscriptos en los entrenamientos de “fuerza intermedio”
SELECT J.apellido, J.nombre
FROM Jugadores J
JOIN Inscripciones I ON J.id_jugador = I.id_jugador
JOIN Entrenamientos E ON I.id_entrenamiento = E.id_entrenamiento
WHERE E.nombre = 'Fuerza Intermedio';

-- 2. Mostrar todas las inscripciones realizadas después del 1 de enero de 2024
SELECT * 
FROM Inscripciones 
WHERE fecha_insc > '2024-01-01';

-- 3. Contar la cantidad de inscripciones abonadas
SELECT COUNT(*) 
FROM Inscripciones 
WHERE abono_inscrip = TRUE;

-- . Listar los entrenamientos de nivel avanzado
SELECT nombre 
FROM Entrenamientos 
WHERE nivel_habilidad = 'Avanzado';

-- Nivel 2
-- 1. Listar los nombres y apellidos de los jugadores junto con los nombres de los entrenamientos a los que están inscriptos
SELECT J.nombre, J.apellido, E.nombre AS entrenamiento
FROM Jugadores J
JOIN Inscripciones I ON J.id_jugador = I.id_jugador
JOIN Entrenamientos E ON I.id_entrenamiento = E.id_entrenamiento;

-- 2. Obtener el nombre y apellido de los jugadores que están inscriptos en más de un entrenamiento
SELECT J.nombre, J.apellido
FROM Jugadores J
JOIN Inscripciones I ON J.id_jugador = I.id_jugador
GROUP BY J.id_jugador, J.nombre, J.apellido
HAVING COUNT(I.id_entrenamiento) > 1;

-- 3. Mostrar el nombre de cada entrenamiento y la cantidad de estudiantes inscriptos en cada uno
SELECT E.nombre, COUNT(I.id_jugador) AS cantidad_inscriptos
FROM Entrenamientos E
JOIN Inscripciones I ON E.id_entrenamiento = I.id_entrenamiento
GROUP BY E.nombre;

-- Nivel 3
-- 1. Listar los jugadores que no han abonado la inscripción
SELECT J.nombre, J.apellido
FROM Jugadores J
JOIN Inscripciones I ON J.id_jugador = I.id_jugador
WHERE I.abono_inscrip = FALSE;

-- 2. Obtener los nombres de los entrenamientos que tienen al menos un jugador mayor de 20 años inscripto
SELECT DISTINCT E.nombre
FROM Entrenamientos E
JOIN Inscripciones I ON E.id_entrenamiento = I.id_entrenamiento
JOIN Jugadores J ON I.id_jugador = J.id_jugador
WHERE YEAR(CURDATE()) - YEAR(J.fecha_nac) > 20;

-- 3. Listar el nombre y apellido de los jugadores junto con los nombres de los entrenamientos en los que están inscriptos, pero solo para aquellos que se inscribieron en 2024
SELECT J.nombre, J.apellido, E.nombre AS entrenamiento
FROM Jugadores J
JOIN Inscripciones I ON J.id_jugador = I.id_jugador
JOIN Entrenamientos E ON I.id_entrenamiento = E.id_entrenamiento
WHERE YEAR(I.fecha_insc) = 2024;









