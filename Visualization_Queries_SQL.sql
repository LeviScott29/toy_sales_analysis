/* Queries for Visualization */ 

/* #1 Number of orders for each product of each product line */
 -- Classic Cars
 
SELECT P.productName, SUM(O.quantityOrdered) as total_orders, P.productLine  
FROM orderdetails as O INNER JOIN products as P ON O.productCode = P.productCode
-- Where product is only one product line
WHERE P.productLine = "classic Cars"  
-- Grouped by distinct products in that line
GROUP BY P.ProductName 
--  Ordered by most sold to least sold
ORDER BY SUM(O.quantityOrdered) DESC

-- Motorcycles
SELECT P.productName, SUM(O.quantityOrdered) as total_orders, P.productLine  
FROM orderdetails as O INNER JOIN products as P ON O.productCode = P.productCode
-- Where product is only one product line
WHERE P.productLine = "motorcycles"  
-- Grouped by distinct products in that line
GROUP BY P.ProductName 
--  Ordered by most sold to least sold
ORDER BY SUM(O.quantityOrdered) DESC

-- Planes
SELECT P.productName, SUM(O.quantityOrdered) as total_orders, P.productLine  
FROM orderdetails as O INNER JOIN products as P ON O.productCode = P.productCode
-- Where product is only one product line
WHERE P.productLine = "planes"  
-- Grouped by distinct products in that line
GROUP BY P.ProductName 
--  Ordered by most sold to least sold
ORDER BY SUM(O.quantityOrdered) DESC

-- Ships
SELECT P.productName, SUM(O.quantityOrdered) as total_orders, P.productLine  
FROM orderdetails as O INNER JOIN products as P ON O.productCode = P.productCode
-- Where product is only one product line
WHERE P.productLine = "ships"  
-- Grouped by distinct products in that line
GROUP BY P.ProductName 
--  Ordered by most sold to least sold
ORDER BY SUM(O.quantityOrdered) DESC

-- trains
SELECT P.productName, SUM(O.quantityOrdered) as total_orders, P.productLine  
FROM orderdetails as O INNER JOIN products as P ON O.productCode = P.productCode
-- Where product is only one product line
WHERE P.productLine = "trains"  
-- Grouped by distinct products in that line
GROUP BY P.ProductName 
--  Ordered by most sold to least sold
ORDER BY SUM(O.quantityOrdered) DESC

-- Trucks and Buses
SELECT P.productName, SUM(O.quantityOrdered) as total_orders, P.productLine  
FROM orderdetails as O INNER JOIN products as P ON O.productCode = P.productCode
-- Where product is only one product line
WHERE P.productLine = "Trucks and Buses"  
-- Grouped by distinct products in that line
GROUP BY P.ProductName 
--  Ordered by most sold to least sold
ORDER BY SUM(O.quantityOrdered) DESC

-- Vintage Cars
SELECT P.productName, SUM(O.quantityOrdered) as total_orders, P.productLine  
FROM orderdetails as O INNER JOIN products as P ON O.productCode = P.productCode
-- Where product is only one product line
WHERE P.productLine = "vitnage cars"  
-- Grouped by distinct products in that line
GROUP BY P.ProductName 
--  Ordered by most sold to least sold
ORDER BY SUM(O.quantityOrdered) DESC

/* #2  Total sales of each product line */

SELECT SUM(O.quantityOrdered), P.productLine FROM orderdetails as O 
INNER JOIN products as P ON O.productCode = P.productCode
-- grouped by distinct product lines 
GROUP BY P.productLine 
-- ordered by most sold
ORDER BY SUM(O.quantityOrdered) DESC;

/* #3 Most popular products over all lines*/
SELECT O.productCode, SUM(O.quantityOrdered), P.productName FROM orderdetails as O 
INNER JOIN products as P ON O.productCode = P.productCode 
-- grouped by distinct product codes
GROUP BY O.productCode 
-- ordered by most ordered and limited to top 10 results
ORDER BY SUM(O.quantityOrdered) DESC LIMIT 10;




