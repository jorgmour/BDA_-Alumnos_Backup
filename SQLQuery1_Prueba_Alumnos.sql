/*Se crea  Base de datos*/
Create Database Prueba
go

use Prueba
/****************************************************************/
Create Table Alumno
(
/* ID_Alumno va a ser primary key,Es progresivo y no es nulo*/
ID_Alumno int Primary key identity not null,  
/*Nvarchar para  datos desconocidos*/
Nombre	  Nvarchar(50),
Telefono  Nvarchar(15),
Edad      int
)

/*Mostrar datos de la base de datos*/
select * from Alumno

/*Para insertar datos dentros de los registros de la base de datos*/
Insert into Alumno(Nombre,Telefono,Edad)
/*Para ingresar datos  se usa VALUES*/
values
('Jorge Morales','123456789','23'),
('Juan  Perez','987654321','26'),
('Diego Morales','654987321','13'),
('Carlos Avila','951623847','30')

select * from Alumno
/****************************************************************/
/*Consultar por columnas */
select Nombre from Alumno
select Telefono from Alumno 
select Edad from Alumno

/*Calcular el promedio de una columna se usa AVG*/
/* Se usa la funcion AS para asignar un nombre a la columna*/
select AVG(edad) AS Promedio  from Alumno

/*Count calcular el numero de registros*/
select COUNT(*) as Total_registro from Alumno

/*Calcular el Maximo  y Minimo*/
select MAX(edad) as Maxima_edad from Alumno
select MIN(edad) as Minima_edad from Alumno

/*Para realizar la suma de una columna se usa SUM*/
select SUM(edad) as Suma_edades from Alumno

/*Consulta con restriccion de edad*/
select Nombre from Alumno where Edad=23
select Nombre from Alumno where Edad<23
select Nombre from Alumno where Edad>23