SHOW DATABASES;

/* Creación de tabla "empresas" */
CREATE TABLE empresas(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(40),
    nit VARCHAR(40),
    telefono VARCHAR(20),
    direccion VARCHAR(40)
);

/* INSERT INTO para ingresar los datos de cada parametro de la tabla */
INSERT INTO empresas(nombre, nit, telefono, direccion)
                VALUES("Microsoft", "16486564", "34348484","Calle 92 # 11-51");

/* SELECT para mostrar los datos deseados de la tabla ↑ */
SELECT * FROM empresas;

/* Creación de tabla "usuarios" */
CREATE TABLE usuarios(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombres VARCHAR(45),
    apellidos VARCHAR(45),
    correo VARCHAR(150),
    password VARCHAR(45),
    edad VARCHAR(3),
    genero VARCHAR(45),
    altura VARCHAR(40),
    peso VARCHAR(40)
);

/* INSERT INTO para ingresar los datos de cada parametro de la tabla */
INSERT INTO usuarios(nombres, apellidos, correo, password, edad, genero, altura, peso)
                VALUES("Cristian", "Franco", "caf@gmail.com", "contraseña", "22", "Masculino", "1.77", "85");

/* SELECT para mostrar los datos deseados de la tabla ↑ */
SELECT * FROM usuarios;

/* Creación de tabla "vehiculos" */
CREATE TABLE vehiculos(
    id INT PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR(40),
    modelo VARCHAR(45),
    marca VARCHAR(45),
    color VARCHAR(40),
    tipo_vehiculo VARCHAR(45)
);

/* INSERT INTO para ingresar los datos de cada parametro de la tabla */
INSERT INTO vehiculos(placa, modelo, marca, color, tipo_vehiculo)
                VALUES("ACD123", "2019", "MUSTANG", "Negro mate", "Carro");

/* SELECT para mostrar los datos deseados de la tabla ↑ */
SELECT * FROM vehiculos;

/* Creación de tabla "paises" */
CREATE TABLE paises(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(40)
);

/* INSERT INTO para ingresar los datos de cada parametro de la tabla */
INSERT INTO paises(nombre)
                VALUES("COLOMBIA");

/* SELECT para mostrar los datos deseados de la tabla ↑ */
SELECT * FROM paises;

/* Creación de tabla "ciudad" */
CREATE TABLE ciudad(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50)
);

/* INSERT INTO para ingresar los datos de cada parametro de la tabla */
INSERT INTO ciudad(nombre)
                VALUES("Medayork");

/* SELECT para mostrar los datos deseados de la tabla ↑ */
SELECT * FROM ciudad;


/* DROP para eliminar una tabla deseada */
DROP TABLE usuarios;


/* -------------------------INVESTIGACIONES------------------------- */

/*
***Investigar en Mysql.

1) ¿Que es un motor de base de datos?
R//: Es el componente de software subyacente que un sistema de administración de la base de datos (SGBD) utiliza para crear, leer, actualizar y eliminar (CRUD) datos de una base de datos.

Webgrafía: https://es.wikipedia.org/wiki/Motor_de_base_de_datos#:~:text=Un%20motor%20de%20base%20de,de%20una%20base%20de%20datos.

2) ¿Cual es la diferencia entre SQL y MYSQL?
R//: MySQL es la tecnología subyacente que almacena los datos, mientras que SQL es el lenguaje que se utiliza para leer, modificar y eliminar esos datos.

Webgrafía: https://aws.amazon.com/es/compare/the-difference-between-sql-and-mysql/#:~:text=MySQL%20es%20la%20tecnolog%C3%ADa%20subyacente,que%20tambi%C3%A9n%20es%20muy%20conocido.

3)¿Que es una relación en MYSQL.?
R//: Es una asociación que se crea entre tablas, con el fin de vincularlas y garantizar la integridad referencial de sus datos.

Webgrafía: https://styde.net/relaciones-entre-tablas-de-bases-de-datos/#:~:text=Curso%3A%20Introducci%C3%B3n%20a%20SQL%20con,integridad%20referencial%20de%20sus%20datos.

***Sentencias SQL

INSERT: Permite generar sentencias de SQL para insertar nuevas filas en una base de datos.

SELECT: Permite generar consultas SQL que contienen todas las filas que coinciden con las condiciones especificadas, aunque las filas están duplicadas. Las consultas pueden enviarse a una pantalla o a un archivo.

UPDATE: Permite generar sentencias de SQL para actualizar filas de una base de datos.

DELETE: Permite suprimir filas especificadas de una base de datos.

CREATE TABLE: La sentencia CREATE TABLE define una tabla. Esta definición debe incluir el nombre de la tabla y los nombres y atributos de sus columnas. La definición puede incluir otros atributos de la tabla, como su clave primaria o restricciones de comprobación.

ALTER TABLE: Es la sentencia SQL para para añadir, eliminar o modificar columnas en una tabla, así como para agregar o suprimir restricciones en la misma.

Webgrafía:  https://www.ibm.com/docs/es/host-on-demand/12.0?topic=SSS9FA_12.0.0/com.ibm.hod.doc/help/tabled.htm
            https://sqlearning.com/es/creacion-gestion-bases-datos/alter-table/
            https://www.ibm.com/docs/es/db2woc?topic=statements-create-table

 */