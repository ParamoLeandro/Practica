CREATE DATABASE UNI
USE UNI

CREATE TABLE Employees( 
ID int, --Permite conpartir los datos en la misma tabla debido a que son muchos a muchos
Name varchar(30), 
Birthday date, 
Email varchar(30), 
Position varchar(30), 
Department varchar(30) 
)

DROP TABLE TEMPORAL

--Insersión de los datos 
--Final de los datos previamente ingresados durante la clases
INSERT Employees (ID,Name,Birthday,Email,Position,Department) 
VALUES (1000,'Juan','1993-04-05','Juan@test.com','Jefe','IT')

INSERT Employees 
VALUES (1000,'Pedro','2020-12-31','pedro2@test.com','Fiscal','Finanzas')

INSERT Employees 
VALUES (1001,'Fernanda','1999-06-22','maria@test.com','DBA','IT'),
	   (1002,'Pedro','1998-09-03','maria@test.com','Contador','Finanzas')
--Final de los datos previamente ingresados durante la clases

--Nuevos datos ingresados
INSERT Employees
VALUES(1007,'Carlos','1996-09-14','Ccarlos@test.com','Mantenimiento','Limpieza')
--Nuevos datos ingresados

SELECT * FROM [Employees]

SELECT Name, Position, Email FROM [Employees]-- Verlo con el DBA

SELECT 
	Name,
	Position,
	Email,
	ID
FROM [Employees]
WHERE ID=1000 AND NAME='Maria'

--Update de mi parte
UPDATE [Employees]
SET ID=1010
SET Position='IT',
WHERE ID=1007 AND NAME='Carlos'
--Update de mi parte

--Update de los datos
UPDATE [Employees]
SET ID=1003
WHERE ID=1000 AND NAME='Maria'

UPDATE [Employees]
SET Position='Programador Sr'
WHERE ID=1003 

UPDATE [Employees]
SET Department='MK', ID=1005
WHERE ID=1000 

UPDATE [Employees]
SET Email='Pedro2020@test.com'
WHERE NAME='Pedro'
--Update de los datos

--Delete del profe
DELETE FROM [Employees]
--Delete del profe



TRUNCATE TABLE [Employees] --Se usa para borrar toda la tabla y todo su contenido, pero no elimina la estructura
WHERE ID=1000

	