

-- DAY 7

-- DATE & TIME FUNCTION

USE SalesDB

--Day, Month, Year
SELECT 
	OrderID,
	OrderDate,
	DAY(OrderDate) AS OD,
	MONTH(OrderDate) AS OM,
	YEAR(OrderDate) AS OY
FROM Sales.Orders

-- DATEPART
SELECT 
	OrderID,
	CreationTime,
	DATEPART(month, CreationTime) AS MonthOfOrder,
	DATEPART(year, CreationTime) AS YearOfOrder,
	DATEPART(day, CreationTime) AS DayOfOrder,
	DATEPART(hour, CreationTime) AS HourOfOrder,
	DATEPART(quarter, CreationTime) AS QuarterOfOrder,
	DATEPART(week, CreationTime) AS WeekOfOrder  
FROM Sales.Orders


-- DATENAME
SELECT 
	OrderID,
	ProductID,
	OrderDate,
	CreationTime,
	DATENAME(month, CreationTime) AS MonthNames,
	DATENAME(weekday, CreationTime) AS DaysNames
FROM Sales.Orders


-- DATETRUNC
SELECT 
	OrderID,
	ProductID,
	OrderDate,
	CreationTime,
	DATETRUNC(month, CreationTime) AS MonthTunc
FROM Sales.Orders


-- EOMONTH
SELECT 
	OrderID,
	CreationTime,
	EOMONTH(CreationTime) AS EndOfTheMonth
FROM Sales.Orders


-- How many orders were placed every year
SELECT 
	YEAR(OrderDate) AS Years,
	COUNT(OrderID) AS OrderCount
FROM Sales.Orders
GROUP BY YEAR(OrderDate)


-- How many orders were place each month
SELECT 
--	MONTH(OrderDate) AS Months,
	DATENAME(month, OrderDate) AS MonthsName,
	COUNT(OrderID) AS OrderCount
FROM Sales.Orders
-- GROUP BY MONTH(OrderDate)
GROUP BY DATENAME(month, OrderDate)


-- Show all orders that were placed dureing the month of Febuary
SELECT 
	COUNT(OrderID),
	DATENAME(month, OrderDate) AS MonthsName
FROM Sales.Orders
WHERE DATENAME(month, OrderDate) = 'February'
GROUP BY DATENAME(month, OrderDate)


-- FORMAT AND CASTING
 SELECT 
	OrderID,
	OrderDate,
	CreationTime,
	FORMAT(CreationTime, 'dd') AS DD,
	FORMAT(CreationTime, 'ddd') AS DDD,
	FORMAT(CreationTime, 'dddd') AS DDDD

FROM Sales.Orders


--  Show CreationTime using the following format
-- Day Wed Jan Q1 2025 12:34:56 PM

SELECT 
	CreationTime,
	'DAY ' + FORMAT(CreationTime, 'ddd MMM') + ' Q' + DATENAME(QUARTER, CreationTime) + ' ' + FORMAT(CreationTime,'yyyy hh:mm:ss tt') AS DateInfo
FROM Sales.Orders 


-- CONVERT
SELECT
	OrderID,
	OrderDate,
	CONVERT(INT, '123'),
	CONVERT(VARCHAR, OrderDate) AS StringDate,
	CONVERT(DATE, CreationTime) AS CreationTime
FROM Sales.Orders


-- CAST
SELECT 
	OrderID,
	OrderDate,
	CreationTime,
	CAST(CreationTime AS DATE) AS CastedDate
FROM Sales.Orders


-- CALCULATION
-- DATEADD
SELECT 
	OrderID,
	OrderDate,
	DATEADD(YEAR, 2, OrderDate) AS AddDate,
	DATEADD(MONTH, -5, OrderDate) AS AddMonth

FROM Sales.Orders

-- DATEDIFF
-- CALCULATE the age of the employee
SELECT 
	EmployeeID,
	BirthDate,
	DATEDIFF(Year, BirthDate, GETDATE()) AS BirtDay
FROM Sales.Employees

-- Find the average shipping duration in Days for each month
SELECT 
	DATENAME(MONTH, OrderDate) AS MONTHS,
	AVG(DATEDIFF(Day, OrderDate, ShipDate)) AS ShippingDate
FROM Sales.Orders
GROUP BY DATENAME(MONTH, OrderDate)


-- TIME GAP ANALYSIS
-- Find the num of days between each order and previous order
SELECT 
	OrderID,
	OrderDate,
	LAG(OrderDate) OVER(ORDER BY OrderDate),
	DATEDIFF(DAY, LAG(OrderDate) OVER(ORDER BY OrderDate), OrderDate)
FROM Sales.Orders


-- VALIDATION 
-- ISDATE

SELECT 
ISDATE('2025-02-01')