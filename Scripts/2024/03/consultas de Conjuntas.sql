use northwind
SELECT * from Employees;
select * from Products
select * from Suppliers
select * from Orders;
SELECT * from [Order Details]

select FirstName +' '+lastname, homephone from employess
UNION --- une las dos tablas de consultas
SELECT ContactName, phone from customers
UNION
SELECT ContactName, phone from Suppliers

--USALA PARA CONSULTAR EL NOMBRE DE LAS TABLAS
SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES; 

----


