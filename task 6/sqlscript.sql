USE order_analysis;
CREATE TABLE orders (
    order_date DATE,
    product_id INT,
    city_id INT,
    orders INT
);

--  Extract month and year from order_date
SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month
FROM orders;

-- Monthly Revenue
SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(orders) AS total_revenue
FROM orders
GROUP BY order_year, order_month
ORDER BY order_year, order_month;

-- Group by year and month & calculate total volume
SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(orders) AS total_volume
FROM orders
GROUP BY order_year, order_month
ORDER BY order_year, order_month;




--  Limit results to a specific time period (e.g., 2019 only)
SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(orders) AS total_volume
FROM orders
WHERE YEAR(order_date) = 2019
GROUP BY order_year, order_month
ORDER BY order_month;


-- Count number of distinct product orders per month
SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    COUNT(DISTINCT product_id) AS unique_products
FROM orders
GROUP BY order_year, order_month
ORDER BY order_year, order_month;






