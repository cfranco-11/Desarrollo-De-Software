/* Para ejecutar la base de datos */
SHOW DATABASES;

/* Para CREAR un TABLA que se le asigna el nombre "estudiantes" y que tiene valores dentro */
CREATE TABLE estudiantes(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombres VARCHAR(45),
    apellidos VARCHAR(45),
    correo VARCHAR(150),
    fecha_nacimiento DATE
);

/* Elimina la TABLA "estudiantes" */
DROP TABLE estudiantes;

/* Seleccionamos todos los datos (*) o datos especificos separados por comas */
SELECT nombres,fecha_nacimiento FROM estudiantes;

/* Creamos los datos. Segun los datos ingresados deben haber la misma cantidad de valores */
INSERT INTO estudiantes(nombres, apellidos, correo, fecha_nacimiento)
                VALUES("Joshua", "Franco", "correo@gmail.com", "2001-07-05");