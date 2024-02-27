SHOW DATABASES;

/*
1)¿Qué es un modelo entidad relación?

R/: Modelo Entidad-Relación (ER): Es un modelo conceptual que se utiliza para representar la estructura de una base de datos de manera visual, utilizando entidades para representar objetos y relaciones para representar cómo se relacionan estos objetos entre sí.

2) ¿Qué es un Diagrama entidad relación?
R/: Diagrama Entidad-Relación: Es una representación gráfica de un modelo entidad-relación que muestra las entidades, atributos y relaciones de una base de datos de forma visual y fácil de entender.

3) ¿Qué es una llave primaria?
R/: Llave Primaria: Es un atributo (o conjunto de atributos) que identifica de forma única a cada registro en una tabla. Se utiliza para garantizar que no haya duplicados y para establecer relaciones con otras tablas.

4) ¿Qué es una llave foránea?
R/: Llave Foránea: Es un atributo (o conjunto de atributos) en una tabla que establece una relación con la llave primaria de otra tabla. Se utiliza para conectar dos tablas y establecer la relación entre ellas.

5) ¿Qué es una relación 1:1 (uno a uno)?
R/: Relación 1:1 (Uno a Uno): Es un tipo de relación en la que un registro en una tabla se relaciona con exactamente un registro en otra tabla, y viceversa. Por ejemplo, un cliente tiene una dirección única y una dirección está asociada a un único cliente.

6) ¿Qué es una relación 1:* (uno a muchos)?
R/: Relación 1: (Uno a Muchos):* Es un tipo de relación en la que un registro en una tabla se relaciona con uno o más registros en otra tabla, pero un registro en la segunda tabla se relaciona solo con un único registro en la primera tabla. Por ejemplo, un cliente puede tener muchas órdenes, pero cada orden está asociada a un único cliente.

7) ¿Qué es una relación *:* (muchos a muchos)?
R/: Relación : (Muchos a Muchos): Es un tipo de relación en la que un registro en una tabla puede estar relacionado con varios registros en otra tabla, y viceversa. Para representar este tipo de relación en una base de datos relacional, se utiliza una tabla intermedia que relaciona las dos tablas principales. Por ejemplo, muchos estudiantes pueden inscribirse en muchos cursos, y muchos cursos pueden tener muchos estudiantes inscritos.

*/

CREATE TABLE estudiantes(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombres VARCHAR(45),
    apellidos VARCHAR(45)
);

INSERT INTO estudiantes (nombres, apellidos) 
VALUES
    ("Cristian", "Franco"),
    ("Manuela", "Torres"),
    ("Juan", "Jaramillo"),
    ("Pablito", "Sanabria"),
    ("Camilo", "Tejada"),
    ("Andrea", "Gonzales"),
    ("Daniel", "Parra"),
    ("Alejandro", "Duque"),
    ("Santiago", "Henao"),
    ("Liliana", "Morales");

-- DROP TABLE estudiantes;

SELECT * FROM estudiantes;

CREATE TABLE materias(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombres VARCHAR(45),
    nota FLOAT,
    asignada INT,
    Foreign Key (asignada) REFERENCES estudiantes(id)
);

INSERT INTO materias (nombres, nota, asignada)
VALUES
    ("Matematicas", 4.5, 3),
    ("Inglés", 4, 3),
    ("Español", 3.5 , 3),
    ("Fisica", 4.5, 1),
    ("Sociales", 5, 1),
    ("Artistica", 4, 1),
    ("Filosofia", 2, 2),
    ("Biologia", 5, 2),
    ("Algebra", 4, 2),
    ("Deportes", 3, 4),
    ("Matematicas", 4.5, 4),
    ("Inglés", 4, 4),
    ("Español", 3.5 , 5),
    ("Fisica", 4.5, 5),
    ("Sociales", 5, 5),
    ("Artistica", 3, 6),
    ("Filosofia", 1.5, 6),
    ("Biologia", 5, 6),
    ("Algebra", 2, 7),
    ("Deportes", 2, 7),
    ("Matematicas", 4.5, 7),
    ("Inglés", 4, 8),
    ("Español", 3.5 , 8),
    ("Fisica", 4, 8),
    ("Sociales", 3.7, 9),
    ("Artistica", 4.8, 9),
    ("Filosofia", 2.5, 9),
    ("Biologia", 3.5, 10),
    ("Algebra", 3, 10),
    ("Deportes", 1, 10);

SELECT * FROM materias;

SELECT e.id, e.nombres, e.apellidos, m.nombres, m.nota FROM estudiantes e LEFT JOIN materias m on e.id=m.asignada;