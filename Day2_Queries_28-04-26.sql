USE MyDatabase

-- Create a new table called persons with column id, person_name, birth_date and phone
-- CREATE TABLE persons (
--	id INT NOT NULL,
--	person_name VARCHAR(50) NOT NULL,
--	birth_date DATE,
--	phone VARCHAR(15) NOT NULL,
--	CONSTRAINT pk_persons PRIMARY KEY (id)
-- )


-- Add a new column called email to person table
-- ALTER TABLE persons 
--	ADD email VARCHAR(50) NOT NULL


-- Remove the column phone from the table persons
-- ALTER TABLE persons
-- 	DROP COLUMN phone


-- DELETE the table persons from the Database
-- DROP TABLE persons


-- Insert some values into customers table
-- INSERT INTO customers(id, first_name, country, score)
-- VALUES
--	(6, 'Anna', 'USA', NULL),
--	(7, 'Sam', NULL, 100),	
--	(8, 'USA', 'Max', NULL),
--	(9, 'Andreas', 'Germany', NULL),
--	(10, 'Sahra', NULL, NULL)


-- Insert or Copy data from customer table into persons

INSERT INTO persons(id, person_name, birth_date, phone)
SELECT 
id,
first_name,
NULL,
'Unknown'
FROM customers
	

-- Change the score of customers with ID 6 to 0
UPDATE customers
	SET score = 0
WHERE id= 6


-- Change the score of the customers with ID 10 to 0 and country to UK
UPDATE customers
	SET score = 0,
		country = 'UK'
WHERE id = 10


-- Update all customers with NULL score by setting their score to 0
UPDATE customers
	SET score = 0
WHERE score IS NULL


-- Delete customer where ID greater than 5
DELETE FROM customers
WHERE id > 5

-- Delete all data from persons
-- DELETE FROM persons


-- OPERATORS 

-- Fetch all data from germany
SELECT 
* 
FROM customers
WHERE country = 'Germany'


-- Fetch all data not from germany
SELECT 
* 
FROM customers
WHERE country != 'Germany'


-- Fetch all data score greater than 500
SELECT 
*
FROM customers 
WHERE score > 500


-- Fetch all data score greater than equal 500
SELECT 
* 
FROM customers
WHERE score >= 500


-- Fetch all data score lesser than 500
SELECT 
*
FROM customers 
WHERE score < 500


-- Fetch all data score lesser equal than 500
SELECT 
*
FROM customers 
WHERE score <= 500


-- Fetch all customer who are from USA and score greater than 500 
SELECT 
* 
FROM customers
WHERE country = 'USA' AND score > 500


-- Fetch all customer who are from USA OR score greater than 500 
SELECT 
* 
FROM customers
WHERE country = 'USA' OR score > 500


-- Fetch all customer with a score not less than 500 
SELECT 
* 
FROM customers
WHERE NOT score < 500


-- Fetch all customers whose score falls in range between 100 to 500
SELECT
*
FROM customers 
WHERE score BETWEEN 100 AND 500


-- Fetch all customers from Germany or USA
SELECT 
* 
FROM customers
WHERE country IN ('Germany', 'USA')


-- Find out customers whose name starts with M
SELECT 
*
FROM customers
WHERE first_name LIKE 'M%'


-- Find all customers whose first_name ends with n
SELECT 
*
FROM customers
WHERE first_name LIKE '%n'


-- Find all customers whose first_name contains an r
SELECT
*
FROM customers
WHERE first_name LIKE '%r%'


-- Find all customers whose first_name contains an r in third posistion
SELECT 
* 
FROM customers
WHERE first_name LIKE '__r%'