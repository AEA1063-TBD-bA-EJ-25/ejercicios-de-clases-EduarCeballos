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