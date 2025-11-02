CREATE DATABASE ecommerce_db;
Use ecommerce_db;

-- USING SELECT, WHERE, GROUP BY ,ORDER BY
-- List customers from the state of SP--
SELECT * FROM olist_customers WHERE customer_state = 'SP';

-- Show top 5 cities with most customers
SELECT customer_city, COUNT(*) AS total_customers
FROM olist_customers
GROUP BY customer_city
ORDER BY total_customers DESC
LIMIT 5;

-- CREATING TABLE
CREATE TABLE customer_states (
    state_code VARCHAR(2),
    region_name VARCHAR(50)
);

INSERT INTO customer_states (state_code, region_name) VALUES
('SP', 'Southeast'),
('RJ', 'Southeast'),
('MG', 'Southeast'),
('BA', 'North'),
('RS', 'South'),
('PR', 'South');

-- JOINS
-- INNER JOIN – customers with region info
SELECT c.customer_id, c.customer_state, s.region_name
FROM olist_customers c
INNER JOIN customer_states s
ON c.customer_state = s.state_code
LIMIT 10;

 -- LEFT JOIN: all customers, even if no region mapping
 SELECT c.customer_id, c.customer_state, s.region_name
FROM olist_customers c
LEFT JOIN customer_states s
ON c.customer_state = s.state_code
LIMIT 10;

-- RIGHT JOIN :
SELECT c.customer_id, s.state_code, s.region_name
FROM customer_states s
RIGHT JOIN olist_customers c
ON c.customer_state = s.state_code
LIMIT 10;

-- SUBQUERIES
-- To find customers from the most common state
SELECT * FROM olist_customers
WHERE customer_state = (
    SELECT customer_state
    FROM olist_customers
    GROUP BY customer_state
    ORDER BY COUNT(*) DESC
    LIMIT 1
);

-- To find cities with more than 100 customers
SELECT customer_city, COUNT(*) AS customer_count
FROM olist_customers
GROUP BY customer_city
HAVING COUNT(*) > 100
ORDER BY customer_count DESC;

-- To show how many customers are from each state (using a correlated subquery)
SELECT customer_state, COUNT(*) AS total_customers_in_state
FROM olist_customers
GROUP BY customer_state
ORDER BY total_customers_in_state DESC;

-- AGGREGATE FUNCTIONS 
-- Total number of customers per state (using COUNT())
SELECT customer_state, COUNT(*) AS total_customers
FROM olist_customers
GROUP BY customer_state
ORDER BY total_customers DESC;

-- Most common city per state (with MAX() and GROUP BY combo)
SELECT customer_state, COUNT(*) AS total_customers
FROM olist_customers
GROUP BY customer_state, customer_city
ORDER BY total_customers DESC
LIMIT 10;

-- VIEWS
-- Creating Views

CREATE VIEW customers_by_state AS
SELECT customer_state, COUNT(*) AS total_customers
FROM olist_customers
GROUP BY customer_state;

SELECT * FROM customers_by_state;















