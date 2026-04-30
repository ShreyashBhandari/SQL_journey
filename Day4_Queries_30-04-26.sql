USE MyDatabase
-- DAY 4

-- LEFT ANTI JOIN
-- Find customers who havent order anything
SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL


-- RIGHT ANTI JOIN
-- Get all order without matching customers
SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL

-- Get all order without matching customers but by using only LEFT ANTI JOIN
SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM orders AS o
LEFT JOIN customers AS c
ON o.customer_id = c.id
WHERE c.id IS NULL


-- FULL ANTI JOIN
-- Find customers without orders and orders without customers
SELECT 
	c.id,
	c.first_name,
	o.order_id, 
	o.sales
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL 
OR o.customer_id IS NULL

SELECT * FROM customers;
SELECT * FROM orders;


-- Get customer along with orders but only for customers who have placed an order
SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NOT NULL 
AND	  o.customer_id IS NOT NULL


-- CROSS JOIN
SELECT *
FROM customers
CROSS JOIN orders


-- Using SALES DATABASE retrieve a list of all orders , along with the realted customer, product and emplyee details.
-- OrderID, Customer's name, Product Name, Sales, Price, Sales person's name 
USE SalesDB

SELECT 
	o.OrderID,
	o.Sales,
	c.FirstName AS CustomerFirstName,
	c.LastName AS CustomerLastName,
	p.Product AS ProductName,
	p.Price,
	e.FirstName AS EmployeeFirstName,
	e.LastName AS EmployeeLastName

FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID


SELECT * 
FROM Sales.Orders;

SELECT * 
FROM Sales.Customers;

SELECT * 
FROM Sales.Employees;

SELECT * 
FROM Sales.Products;

SELECT * 
FROM Sales.OrdersArchive;