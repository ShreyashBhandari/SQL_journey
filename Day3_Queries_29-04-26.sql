USE MyDatabase
-- FILTERING DATA using WHERE OPERATORS
-- Theory based as we have already used it in multiple languages before 


--            # BASIC JOINS

-- NO JOINS
SELECT * 
FROM customers;

SELECT * 
FROM orders;


-- Inner Join

SELECT 
	customers.id,
	customers.first_name,
	customers.country,
	orders.order_id,
	orders.sales
FROM customers
INNER JOIN orders
ON customers.id = orders.customer_id


-- Left Join
-- Get all customers along with their orders, including those without orders
SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
LEFT JOIN orders as o
ON c.id = o.customer_id


-- Right Join
-- Get all customers along with their orders, including orders those without customers
SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id


-- Right Join task but theirs a catch now do the same using left join
-- Get all customers along with their orders, including orders those without customers
SELECT
	o.order_id,
	o.sales,
	c.id,
	c.first_name
FROM orders AS o
LEFT JOIN customers AS c
ON o.customer_id = c.id

SELECT * FROM orders