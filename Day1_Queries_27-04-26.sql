USE MyDatabase

-- Retrive everything from customers
--SELECT *
--FROM customers

 
-- Retrive everything from orders
--SELECT *
--FROM orders


-- Retrive each cutomer's name, country name and their scores
--SELECT 
--	first_name,
--	country,
--	score
--FROM customers


-- Retrieve All data where score is greater than 500
--SELECT *
--FROM customers
--WHERE score > 500


-- Retrieve customers with a score not equal to 0
--SELECT 
--	first_name,
--	score
--FROM customers
--	WHERE score != 0


-- Retrieve customers from Germany
-- SELECT *
-- FROM customers
-- WHERE country = 'Germany'


-- Retrieve all the customer and sort the result by highest score first
-- SELECT *
-- FROM customers
-- ORDER BY score DESC


-- Retrieve all the customer and sort the result by lowest score first
-- SELECT * 
-- FROM customers
-- ORDER BY score ASC


-- Retrieve all the customer and sort the result by Country followed by sorting Highest score first
-- SELECT *
-- FROM customers
-- ORDER BY country ASC,
--		 score DESC


-- Find total score of each country
-- SELECT 
--	country,
--	SUM(score) AS Scored
-- FROM customers
-- GROUP BY country


-- Find total score and total num of cutomer of each country 
-- SELECT 
--	country,
--	COUNT(country) AS Customer_Count,
--	SUM(score) AS Total_Score
-- FROM customers
-- GROUP BY country


-- Using both WHERE and HAVING 
-- SELECT 
--	country,
--	SUM(score) AS total_score
-- FROM customers
-- WHERE score > 400
-- GROUP BY country
-- HAVING SUM(score) > 800


-- Find the average score for the country considering only customers with a score not equal to 0 and return only those 
-- countries with a average score greater than 430
-- SELECT 
--	country,
--	AVG(score) as AverageScore
-- FROM customers
-- WHERE score != 0
-- GROUP BY country
-- HAVING AVG(score) > 430


-- Retrun Unique list of all country
-- SELECT DISTINCT
-- country
-- FROM customers


-- Return top 2 customers country and score form the table
-- SELECT TOP 2
-- country,
-- score
-- FROM customers


-- Retrieve top 3 customers with the highest score
-- SELECT TOP 3 
-- * 
-- FROM customers
-- ORDER BY score DESC


-- Retrieve top 2 customers with the lowest score
-- SELECT TOP 2
-- *
-- FROM customers
-- ORDER BY score ASC 



