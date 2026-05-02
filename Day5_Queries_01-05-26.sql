-- DAY 5
USE SalesDB


-- UNION 

SELECT 
	FirstName,
	LastName
FROM Sales.Customers
UNION 
SELECT 
	FirstName,
	LastName
FROM Sales.Employees
	

-- Combine the data from employees and customers into one table

SELECT 
	FirstName,
	LastName
FROM Sales.Employees
UNION
SELECT 
	FirstName,
	LastName
FROM Sales.Customers


-- UNION ALL
-- Combine the data from employees and customers into one table
SELECT 
	FirstName,
	LastName
FROM Sales.Employees
UNION ALL
SELECT 
	FirstName,
	LastName
FROM Sales.Customers


-- EXCEPT
SELECT 
	FirstName,
	LastName
FROM Sales.Employees
EXCEPT
SELECT 
	FirstName,
	LastName
FROM Sales.Customers


-- INTERSECT
SELECT 
	FirstName,
	LastName
FROM Sales.Employees
INTERSECT
SELECT 
	FirstName,
	LastName
FROM Sales.Customers


-- Orders data are stored in seprate tables (orders and order archive) combine all orders data into one report without duplicates
SELECT 
	*
FROM Sales.Orders
UNION
SELECT 
	*
FROM Sales.OrdersArchive

SELECT * FROM Sales.Orders
SELECT * FROM Sales.OrdersArchive-- DAY 5

