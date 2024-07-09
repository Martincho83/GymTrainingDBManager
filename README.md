# 🏋️‍♂️ Ejercicio Práctico - GYM Entrenamiento

## 📝 Descripción

En el GYM se necesita una base de datos para gestionar los entrenamientos y actividades que ofrecerá. Para esto, el encargado del gym manifiesta que necesita almacenar los datos de los jugadores, los entrenamientos (con sus respectivos niveles de habilidad y tipo de equipamiento), y las inscripciones de cada jugador en los entrenamientos, en donde se debe especificar si el mismo abono la inscripción.

## 🗂️ Estructura de las Tablas

### 🗃️ Modelado

**Jugadores:**
- 🆔 id_jugador
- 🧑 apellido
- 👨‍🦱 nombre
- 📅 fecha_nac
- 🏠 dirección
- 📞 teléfono
- 📧 email

**Entrenamientos:**
- 🆔 id_entrenamiento
- 🏋️‍♀️ nombre
- 🏅 nivel_habilidad
- 🛠️ tipo_equipamiento

**Inscripciones:**
- 🆔 id_inscripcion
- 📅 fecha_insc
- 💰 abono_inscrip
- 👨‍🎓 id_alumno
- 📚 id_curso

### 📌 Tareas

1. 🛠️ Realizar el modelado de la base de datos (con las correspondientes tablas y relaciones).
2. 🔀 Agregar registros aleatorios a las tablas para poder realizar consultas.

### 🏆 Entrenamientos Disponibles

El director manifestó que los entrenamientos presentes serán:
- 💪 Fuerza principiante
- 💪 Fuerza intermedio
- 💪 Fuerza avanzado
- 🏃 Resistencia principiante
- 🏃 Resistencia intermedio
- 🏃 Resistencia avanzado
- 🤸 Agilidad principiante
- 🤸 Agilidad intermedio
- 🤸 Agilidad avanzado

## 💻 Consultas SQL

### Nivel 1

1. 📋 Listar todos los jugadores inscriptos en los entrenamientos de “fuerza intermedio”.
2. 📅 Mostrar todas las inscripciones realizadas después del 1 de enero de 2024.
3. 🔢 Contar la cantidad de inscripciones abonadas.
4. 🏅 Listar los entrenamientos de nivel avanzado.

### Nivel 2

1. 📋 Listar los nombres y apellidos de los jugadores junto con los nombres de los entrenamientos a los que están inscriptos.
2. 📋 Obtener el nombre y apellido de los jugadores que están inscriptos en más de un entrenamiento.
3. 📊 Mostrar el nombre de cada entrenamiento y la cantidad de estudiantes inscriptos en cada uno.

### Nivel 3

1. 📋 Listar los jugadores que no han abonado la inscripción.
2. 📋 Obtener los nombres de los entrenamientos que tienen al menos un jugador mayor de 20 años inscripto.
3. 📋 Listar el nombre y apellido de los jugadores junto con los nombres de los entrenamientos en los que están inscriptos, pero solo para aquellos que se inscribieron en 2024.
