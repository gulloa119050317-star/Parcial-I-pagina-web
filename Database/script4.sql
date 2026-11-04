CREATE DATABASE biblioteca ; 

USE bilioteca ; 

CREATE TABLE libros (

Id int AUTO_INCREMENT PRIMARY KEY, 
titulo VARCHAR (255) NOT NULL, 
autor VARCHAR (255) NOT NULL, 
genero VARCHAR (255) NOT NULL, 
imagen VARCHAR (255) NOT NULL

) ; 

INSERT INTO libros (titulo , autor, genero, imagen)
VALUES('Orgullo y prejuicio', 'Jane Auten', 'Romance','https://1.bp.blogspot.com/-loEu1pOpOKc/VLaSZTAYEJI/AAAAAAAAILE/VECEMESu9Cc/s1600/una-imagen-11-portadas-libros-leidos-L-CCtY_E.jpeg');
INSERT INTO libros (titulo , autor, genero, imagen)
VALUES('El principito', 'Antoine de Saint-Exupéry', 'Fantasía','https://cdn.prod.website-files.com/6034d7d1f3e0f52c50b2adee/681b63dd7d9dbb4c4ce5ae76_WJlUnXLgNrZqh3HN_u7WMEnTVs1tV0qKwtUkvXJ2JTk.jpeg');
INSERT INTO libros (titulo , autor, genero, imagen)
VALUES('Frankenstein', 'Mary shelly', 'novela','https://m.media-amazon.com/images/I/61pTZ0JheNL._SL1499_.jpg');
INSERT INTO libros (titulo , autor, genero, imagen)
VALUES('Don Quijote', 'Miguel de Cervantes', 'novela','https://i.pinimg.com/originals/b5/0f/9c/b50f9c7c4969883cfa1dfe5a80763529.jpg');

SELECT * FROM libros ;

