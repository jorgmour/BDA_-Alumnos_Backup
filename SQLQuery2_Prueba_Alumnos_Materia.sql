USE Prueba

Create Table Alumno
(
/* ID_Alumno va a ser primary key,Es progresivo y no es nulo*/
ID_Alumno int Primary key identity not null,  
/*Nvarchar para  datos desconocidos*/
Nombre	  Nvarchar(50),
Telefono  Nvarchar(15),
Edad      int,
Id_Materia int references Materia(Id_Materia) --UNIO DE LAS DOS TABLAS  TANTO ALUMNO COMO MATERIA
)

SELECT * FROM Alumno
DROP TABLE Alumno --ELIMINA LA TABLA  ALUMNO


CREATE TABLE Materia
(
Id_Materia INT PRIMARY KEY IDENTITY NOT NULL,
Nombre Nvarchar(25)
)

SET IDENTITY_INSERT Materia On;
INSERT INTO Materia(Id_Materia,Nombre) VALUES
(111, 'Base de datos'),
(222, 'Matematicas')

SELECT * FROM Materia


INSERT INTO Alumno VALUES
('Luis Garcia','123456789',23,111),
('Juan Perez','987654321',50,222),
('Maria Lopez','52512355855',23,222),
('JKarla Guzman','25263035',50,222)

select * from  Alumno

--CONSULTA PARA PODER VER EL ID_ALUMNO, NOMBRE Y QUE MATERIA ESTA CURSANDO** USANDO UNA CONDICION--
SELECT A.Nombre , M.Nombre -- se le agrega un alias  en este caso las letras: A y M para relacionarla con BDA
FROM  Alumno A , Materia M
WHERE A.Id_Materia = M.Id_Materia 



--CONSULTA  GROUP BY--
--CUANTO ALUMNOS TIENE CADA MATERIA
--1. QUE DATOS NOS PIDEN? 
-->NOMBRE DE ALUMNOS POR MATERIA.


--2. EN DONDE ESTAN ESOS DATOS?
-->  SE ENCUENTRA EN LA TABLA MATERIA 
-->  SE TOMA DE LA TABLA ALUMNO 

--3. QUE REQUISITOS DEBE TENER ESTA CONSULTA?
/*MUESTRA EL ID DE LA MATERIA  Y CUANTAS PERSONAS  PERO NO CUENTA 
CON LA INFORMACION DE LA MATERIA COMO TAL*/
SELECT  Id_Materia, COUNT(*) FROM  Alumno GROUP BY Id_Materia

/*CUMPLE CON LO PEDIDO  Y MUESTRA LA CANTIDAD DE PERSONAS POR MATERIA  
Y MUESTRA LA MATERIA*/
SELECT M.Nombre, COUNT(*) AS No_Alumnos FROM Alumno A, Materia M 
WHERE M.Id_Materia = A.Id_Materia GROUP BY M.Nombre