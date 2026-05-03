-- DAY 6
USE MyDatabase

-- CONCAT
-- Concatenate first name and country into one column

SELECT 
	first_name,
	country,
	CONCAT(first_name, ' ', country) AS name_country
FROM customers


-- UPPER 
SELECT 
	UPPER(first_name)
FROM customers


-- LOWER
SELECT 
	LOWER(first_name)
FROM customers


-- TRIM
-- Find customers whose first name contains leading or trailing spaces

SELECT 
	first_name,
	LEN(first_name) AS LEN_First_name,
	TRIM(first_name) AS Trimed_first_name,
	LEN(TRIM(first_name)) AS LEN_Trimed, 
	LEN(first_name)  - LEN(TRIM(first_name)) AS Flag
FROM customers
WHERE LEN(first_name)  - LEN(TRIM(first_name)) > 0


-- REPLACE
SELECT 
	'112-223-334' AS Num,
	REPLACE ('112-223-334', '-', '') AS Replaced_Num
 
-- CALCULATION FUNCTIONS
-- LEN
SELECT
	first_name,
	LEN(first_name)
FROM customers


-- STRING EXTRACTION
-- LEFT

SELECT 
	first_name,
	LEFT(first_name, 2)
FROM customers  

-- RIGHT

SELECT 
	first_name,
	RIGHT(first_name, 2)
FROM customers


-- SUBSTRING
SELECT 
	first_name,
	SUBSTRING(first_name, 2, len(first_name))
FROM customers


-- NUMBER FUNCTION
-- ROUND
SELECT 
	3.156,
	ROUND(3.156,2), 
	ROUND(3.156,0)

-- ABS
SELECT 
	ABS(-20)