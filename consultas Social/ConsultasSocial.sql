use social
SELECT * from Highschooler

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

