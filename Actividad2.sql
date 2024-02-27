/* /////////////////////////////////////////////////////////////////////////////////////// */

show tables;
select * from users order by id desc;
drop table users;

/* /////////////////////////////////////////////////////////////////////////////////////// */

/* 1) Listado de todos los usuarios con solo los nombres, apellidos y edad, que tengan 20 años de edad.

El WHERE se utiliza para filtrar datos de una columna, en este caso una edad especifica*/
SELECT * FROM users WHERE edad = 20;

/* 2) Listado de todas las mujeres en la base de datos que tengan entre 20 y 30 años de edad.*/
SELECT * FROM users WHERE genero = "M" AND edad >19 AND edad <31;

/* 3) Quién es la persona con menos edad de la base de datos.

MIN(columa) para saber el valor minimo de esa columna*/
SELECT * FROM users ORDER BY edad ASC LIMIT 1;

/* 4) Cuantos usuarios hay registrados en la base de datos.

MAX(columna) para saber el valor máximo */
SELECT MAX(id) FROM users;

/* 5) Traer los 5 primeros usuarios de la base de datos

ORDER BY lista ASC LIMIT x
Ordenar lista de forma ascendente con un limite de x resultados
*/
SELECT * FROM users ORDER BY id ASC LIMIT 5;

/* 6) Traer los 10 últimos usuarios de la base de datos

DESC para ordenar de forma descendente */
SELECT * FROM users ORDER BY id DESC LIMIT 10;

/* 7) Listar usuarios que su correo finalice en .net

LOCATE("valor buscado", lista en que buscar)*/
SELECT * FROM users WHERE LOCATE (".net", correo);

/* 8) Listar usuarios no vivan en  colombia.

!= Diferente a */
SELECT * FROM users WHERE pais != "colombia";

/* 9) Listar usuarios que no vivan en ecuador y panamá.

!= Diferente a */
SELECT * FROM users WHERE pais != "ecuador" AND pais != "panama";

/* 10) Cuantos(numero) usuarios son de colombia y les gusta el rock.

COUNT(elementos) para contar la cantidad de esos elementos */
SELECT COUNT(*) FROM users WHERE pais = "colombia" AND musica = "rock";

/* 11) Actualizar el género musical de todos los usuarios de la base de datos de "metal" a "carranga".

UPDATE tabla SET elemento=nuevo_valor WHERE condicion/elemento=valor_a_cambiar */
UPDATE users SET musica="carranga" WHERE musica="metal";
SELECT * FROM users WHERE musica="carranga";

/* 12) Listado de hombres que les guste la "carranga" sean de colombia y tengan entre 10 y 20 años de edad.*/
SELECT * FROM users WHERE genero = "H" AND musica="carranga" AND pais="colombia" AND edad >9 AND edad <21;

/* 13) Actualizar a todos los usuarios que tengan 99 años, su nuevo género musical favorito será la "carranga"*/
UPDATE users SET musica="carranga" WHERE edad = 99;
SELECT * FROM users WHERE edad = 99;

/* 14) Listar todos los usuarios que su nombre inicie con "a","A"

Lista LIKE "elemento a buscar" %=para limite */
SELECT * FROM users WHERE nombres LIKE "a%";

/* 15) Listar todos los usuarios que su apellido finalice en "z","Z"*/
SELECT * FROM users where apellidos LIKE "%z";

/* 16) Actualizar los usuarios que tengan 50 años de edad su nuevo género musical será NULL

ALTER TABLE tabla MODIFY lista VARCHAR(255) NULL para que en la lista acepte valores Nulos */
ALTER TABLE users MODIFY musica VARCHAR(255) NULL;
UPDATE users SET musica=NULL WHERE edad=50;
SELECT * FROM users WHERE edad=50;

/* 17) Listar todos los usuarios que su género musical sea igual a NULL

lista IS NULL// donde los datos de esa lista sean Nulos*/
SELECT * FROM users WHERE musica IS NULL;

/* 18) Cual es el resultado de la suma de todas las edades de la base de datos.

SUM(lista)//Suma todos los valores que haya en esa lista*/
SELECT SUM(edad) AS "SUMA" FROM users;

/* 19) Cuantos usuarios tenemos registrados de "ecuador"*/
SELECT pais, COUNT(*) FROM users WHERE pais="ecuador";

/* 20) Cuántos usuarios son de Colombia y les gusta el vallenato.*/
SELECT COUNT(*) FROM users WHERE pais = "colombia" AND musica="vallenato";
