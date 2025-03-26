use northwind
SELECT * from Employees;
select * from Products
select * from Suppliers
select * from Orders;
SELECT * from [Order Details]


select employeeid, lastname, FirstName
    from Employees 

select productname, UnitPrice
    from Products

select productname, UnitPrice
    from Products
    where ProductID = 4

select productname, unitprice, CategoryID
    from Products
    where UnitPrice = 30

select productname, unitprice, CategoryID
    from Products
    where UnitPrice >= 30

select productname, unitprice, CategoryID
    from Products
    where UnitPrice Between 30 AND 40

    
select productname, unitprice, CategoryID
    from Products
    where productid in ( 8 )

select productid, productname, unitprice, CategoryID
    from Products
    where productname like '%c%'
s
elect productid, productname, unitprice, CategoryID
    from Products
    where productname like '%s'

select productid, productname, unitprice, CategoryID
    from Products
    where productname like '____a%'

select productid, productname, unitprice, CategoryID
    from Products
    where productname like '[a-c]%'

select productid, productname, unitprice, CategoryID
    from Products
    where productname like '[a,c]%'

select * from Employees
    where Region is null 

select productid, productname, unitprice, CategoryID
    from Products
    where productname like 'a%'
        or 
        UnitPrice = 30

select productid, productname, unitprice, CategoryID
    from Products
    where productname like 'U%'
        or 
        UnitPrice = 30

select productid, productname, unitprice, CategoryID
    from Products
    where UnitPrice Between 30 and 40
        and CategoryID = 2

SELECT * from Products, Categories

sELECT * from Products
join Categories on Products.CategoryID = Categories.CategoryID

SELECT ProductID, ProductName, UnitPrice, CategoryName from Products
join Categories on Products.CategoryID = Categories.CategoryID

SELECT * FROM Orders
    JOIN Customers on Customers.CustomerID = Orders.CustomerID

SELECT orderid, lastname from Orders
    join Employees on Employees.EmployeeID = Employees.EmployeeID

SELECT orderid, lastname, Companyname from Orders
    join Employees on Employees.EmployeeID = Employees.EmployeeID
    join Customers on Customers.CustomerID = Customers.CustomerID

SELECT orderid, lastname, Companyname, orderdate from Orders
join Employees on Employees.EmployeeID = Employees.EmployeeID
join Customers on Customers.CustomerID = Customers.CustomerID
where orderid = 10252

SELECT orderid, lastname, Companyname, RequiredDate, ShippedDate, DATEDIFF() from Orders
    join Employees on Employees.EmployeeID = Employees.EmployeeID
    join Customers on Customers.CustomerID = Customers.CustomerID

SELECT COUNT(*) from Products;
SELECT MAX(unitprice) from Products;
SELECT min(unitprice) from Products;
SELECT AVG(unitprice) from Products;
SELECT Sum(unitprice) from Products;

SELECT categoryid, AVG(unitprice) from Products
group by CategoryID
order by AVG(UnitPrice) DESC

SELECT categoryid, AVG(UnitPrice) as PrecioPromedio from Products
group by CategoryID
order by PrecioPromedio DESC

SELECT CategoryID, COUNT(*) as cantidad from Products
group by categoryid
order by cantidad

select unitprice * 1.10 as NuevoPrecio from Products

select * from Products

SELECT COUNT(*) from Products
WHERe Discontinued = 1

select * from Orders

SELECT * from [Order Details]

SELECT COUNT(*) from [Order Details]
    where orderid = 10250

SELECT sum(unitprice) from [Order Details]
    where OrderID = 10250

SELECT unitprice, Quantity, unitprice * Quantity from [Order Details]
WHERE OrderID = 10250

SELECT sum(unitprice * Quantity - Discount * UnitPrice * Quantity) from [Order Details]
WHERE OrderID = 10250

SELECT * from [Order Details] od
join Products P on P.Productid = od.productid
WHERE CategoryID = 1

select * FROM Categories

SELECT * from [Order Details] od
join Products P on P.Productid = od.productid
join Categories c on c.CategoryID = P.CategoryID
WHERE CategoryName like 'Beverages' 

SELECT * from [Order Details] od
join Products P on P.Productid = od.productid /* SE JUNTA LAS TABLSA CON EL JOIN*/
join Categories c on c.CategoryID = P.CategoryID
join orders o on o.OrderID = od.OrderID
WHERE CategoryName like 'Beverages' and OrderDate = '1997'

select sum(Quantity*(1-Discount)*od.UnitPrice) as total
from [Order Details] od 
JOIN Products P on P.ProductID = ProductID
join Categories c on c.CategoryID = P.CategoryID
JOIN Orders o on o.OrderID = od.orderid
WHERE c.CategoryName = 'Beverages'
and YEAR(orderdate) = 1997

-- TAREA 'Cuanto se vendio en 1997 por cada categoria
select c.CategoryName, SUM(od.UnitPrice * od.Quantity * (1-od.Discount)) AS TotalSales
from [Order Details] od 
JOIN Orders o on od.OrderID = o.OrderID
JOIN Products P on od.ProductID = P.ProductID
join Categories c on c.CategoryID = c.CategoryID
WHERE YEAR(OrderDate) = 1997
GROUP BY c.CategoryName
ORDER by TotalSales DESC;

-- consulta cuanto se vendio cada mes en cada categoria 

select DATENAME(MONTH, O.OrderDate), C.CategoryName, SUM(od.UnitPrice * od.Quantity * (1-od.Discount)) AS TotalSales 
from [Order Details] od 
JOIN Orders o on od.OrderID = o.OrderID
JOIN Products P on od.ProductID = P.ProductID
join Categories c on c.CategoryID = c.CategoryID
WHERE YEAR(OrderDate) = 1997
GROUP BY DATEPART (MONTH, o.OrderDate), DATENAME(MONTH, o.OrderDate), c.CategoryName  
ORDER by DATEPART(MONTH, o.orderdate), TotalSales DESC; --date part ES PARA ODERNAR LOS NUMEROS DE MENOR A MAYOR (EN ESTE CASO ORDENA LOS MESES)

--USALA PARA CONSULTAR EL NOMBRE DE LAS TABLAS
SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES; 

--agregarlo con los nombres de los proveedores
select DATENAME(MONTH, O.OrderDate), C.CategoryName, SUM(od.UnitPrice * od.Quantity * (1-od.Discount)) AS TotalSales 
from [Order Details] od 
JOIN Orders o on od.OrderID = o.OrderID
JOIN Products P on od.ProductID = P.ProductID
join Categories c on c.CategoryID = c.CategoryID
JOIN Employees e on 
WHERE YEAR(OrderDate) = 1997
GROUP BY DATEPART (MONTH, o.OrderDate), DATENAME(MONTH, o.OrderDate), c.CategoryName  
ORDER by DATEPART(MONTH, o.orderdate), TotalSales DESC;

