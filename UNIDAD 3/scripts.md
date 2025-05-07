UNIDAD 3 PROCEDIMIENTO ALMACENADO

-- es un grupo de instrucciones del lenguaje Transact-SQL. Las instrucciones son compiladas en un solo plan de ejecucion

*VENTAJAS DE LOS PROCEDIMIENTOS ALMACENADOS*
- encapsulate business functionality and create reusable application logic
- shield users from exposure to the details of the tables in the database.
- provide security mechanisms
- improve performance
- reduce network traffic
 
 *GUIA PARA CREAR PROCEDIMIENTOS ALMACENADOS*
 - El usuario dbo es el propietario de todos los SP
 - usar un SP para una tarea
 - Crea, prueba y depura los SP en el servidor
 - Mo utiliza el prefijo SP en los nombres de los Stored Procedure -confunde-
 - Minimiza el uso de SP temporales 

 -* EL PREFIJO SP es propio del procedimiento almacenado no es recomendable utilizarlo en consultas de otras bases de datos. 

 --EJEMPLO DE CREAR UN PROCEDIMIENTO CON LA CLAUSULA CREATE PROCEDURE

use pubs
GO
CREATE PROC dbo.overdue_books
AS
    SELECT *
    FROM dbo.loan
where due_date > GETDATE()


**VARIABLE GLOBAL @@ERROR**
@@ERROR = 0, no existe error
@@ERROR <>, existe un error.

**VARIABLE RAISERROR**
Resuelve un mensaje de error definido 

**VARIABLE DE NUMERO DE ERROR**

**VARIABLE DE SEVERIDAD**

**VARIABLE DE ESTADO**

**VARIABLE DE MENSAJE**
es un texto que describe el error


**CURSORES**
- es una entidad que se relaciona con un conjunto de resultados y establece una posicion sobre un solo renglon dentro de ese conjunto
- el cursor es un mecanismo que permite interactuar sobre un subconjunto de RESULT SET

- posicionarse en un renglon especifico result set
- recuperar un renglon a partir de una posicion del result set
- modificar renglones del result set

