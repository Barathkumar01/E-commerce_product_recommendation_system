/* SQL Queries for Analysing the Dataset */

/* Details of top five customers with maximum expenditure */ 

SELECT c.customerid, c.name, c.email, c.age, c.gender, c.address,      
SUM(o.price) AS total_purchases 
FROM customer c JOIN   orders o 
ON c.customerid    =    o.user_id 
GROUP BY c.customerid, c.name, c.email, c.age, c.gender, c.address
ORDER	BY	total_purchases	DESC LIMIT 5;

/* Details of the top 5 customers with maximum interactions */


SELECT c.customerid, c.name, c.email, c.age, c.gender, c.address,
COUNT(i.interaction_id) AS total_interactions FROM	customer c 
JOIN interaction i ON c.customerid   =   i.user_id 
GROUP BY c.customerid, c.name, c.email, c.age, c.gender, c.address
ORDER	BY	total_interactions	DESC LIMIT 5;

/* Checking if any customer exists without any purchase */

SELECT c.customerid, c.name, c.email, c.age, c.gender, c.address
FROM customer c
LEFT JOIN orders o ON c.customerid = o.user_id WHERE o.order_id IS NULL;

/* Finding the most popular product */

SELECT p.product_id, p.productname, c.categoryname, b.brandsname, p.price, p.inventory, SUM(o.quantity) AS total_quantity_sold FROM orders o
JOIN products p ON o.product_id = p.product_id JOIN category c ON p.category_id = c.category_id JOIN brands b ON p.brands_id = b.brands_id
GROUP BY p.product_id, p.productname, c.categoryname, b.brandsname, p.price, p.inventory
ORDER BY total_quantity_sold DESC LIMIT 5;


/* Based on each category's top 5 sales */

WITH RankedProducts AS (
SELECT c.category_id, c.categoryname, p.product_id, p.productname, o.quantity, o.price, ROW_NUMBER() OVER (PARTITION BY c.category_id ORDER BY o.quantity DESC) AS rank_within_category
FROM orders o
JOIN products p ON o.product_id = p.product_id JOIN category c ON p.category_id = c.category_id
)
SELECT product_id, productname, category_id, categoryname, quantity, price
FROM RankedProducts
WHERE rank_within_category <= 5;

/* Identifying the hour at which maximum interactions were done */

SELECT EXTRACT(HOUR FROM i_date) AS interaction_hour,COUNT(*) AS total_interactions FROM Interaction
GROUP BY interaction_hour
ORDER BY total_interactions DESC LIMIT 1;

/* Identifying products with inventory size less than 200 */

SELECT p.product_id, p.productname, c.categoryname, b.brandsname, p.price, p.inventory
FROM products p
JOIN category c ON p.category_id = c.category_id JOIN brands b ON p.brands_id = b.brands_id WHERE p.inventory < 200
ORDER BY Inventory DESC;

/* Identifying top 3 brands based on sales */

SELECT b.brands_id, b.brandsname, SUM(o.price) AS total_sales FROM orders o
JOIN products p ON o.product_id = p.product_id JOIN brands b ON p.brands_id = b.brands_id GROUP BY b.brands_id, b.brandsname
ORDER BY total_sales DESC

LIMIT 3;

/* Revenue per gender per category */


SELECT c.gender, cat.categoryname, SUM(o.price) AS Total_Revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
JOIN category cat ON p.category_id = cat.category_id JOIN brands b ON p.brands_id = b.brands_id
JOIN customer c ON o.user_id = c.customerid GROUP BY c.gender, cat.categoryname

ORDER BY c.gender, Total_Revenue DESC;

