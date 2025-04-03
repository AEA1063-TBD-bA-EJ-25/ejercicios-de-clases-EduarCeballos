use social
SELECT * from Highschooler

SELECT * FROM Friend

SELECT * FROM Likes

--consulta para conocer el id del alumno y de los amigos
SELECT h1.name, h2.name
from Highschooler h1
JOIN friend F on H1.id = F.ID1
JOIN Highschooler H2 on h2.id = f.id2
WHERE h1.name = 'Gabriel'
--consulta para saber que dos alumnos le gusta a alguien del mismo grade
SELECT * 
FROM Highschooler h1
JOIN Likes L on l.ID1 = h1.ID
JOIN Highschooler h2 on l.ID2 = h2.ID
WHERE h1.grade = h2.grade

--consulta para saber que alumno le gusta una persona 2 o mas grados menor
SELECT * 
FROM Highschooler h1
JOIN Likes L on l.ID1 = h1.ID
JOIN Highschooler h2 on l.ID2 = h2.ID
WHERE h1.grade - 2 >= h2.grade

--mostrar los estudiantes que se gustan mutuamente

SELECT h1.name, h1.grade, h2.name, h2.grade
from Likes L1
JOIN Likes l2 on L1.ID2 = L2.ID1
join Highschooler h1 on h1.ID = l1.ID1
join Highschooler h2 on h2.ID = l1.ID2
WHERE L1.ID1 = l2.id2
    AND L1.ID1 > l1.ID2 -- esto elimina los datos repetidos, ya que hace un mayor


--for every situation where student A likes student B, but student B likes different students C, return
--the names and grades of A,B,C

SELECT * from Likes L1 

INNER JOIN likes L2 on L1.ID2 = l2.ID1
where L1.ID1 <> L2.ID2
