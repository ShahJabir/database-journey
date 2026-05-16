-- ======================================================
-- CRUD: Read Data using SQL query
-- ======================================================

SELECT * FROM customers;

SELECT
    first_name,
    score
FROM customers;

SELECT
    first_name,
    score
FROM customers
WHERE
    score > 0 and country = 'USA';

SELECT
    first_name,
    score,
    country
FROM customers
WHERE score > 0
ORDER BY score DESC;

SELECT
    country,
    count(id) AS total_customers,
    sum(score) AS total_score
FROM customers
WHERE score > 0
GROUP BY country
ORDER BY total_score desc;

SELECT
    country,
    count(id) AS total_customers,
    sum(score) AS total_score
FROM customers
WHERE score > 0
GROUP BY country
HAVING sum(score) > 800
ORDER BY total_score desc
LIMIT 3;

SELECT DISTINCT country
FROM customers
ORDER BY country;

SELECT *
FROM customers
LIMIT 3;

SELECT *
FROM orders
ORDER BY order_date DESC;

SELECT *
FROM customers;
SELECT *
FROM orders;

SELECT first_name, 'New Customer' AS status
FROM customers;