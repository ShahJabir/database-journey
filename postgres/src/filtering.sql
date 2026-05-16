-- ======================================================
-- Filtering: Comparison Operators
-- ======================================================

SELECT *
FROM customers
WHERE country = 'USA';

SELECT *
FROM customers
WHERE country != 'UK';

SELECT *
FROM customers
WHERE country <> 'Germany';

SELECT *
FROM customers
WHERE score < 800;

SELECT *
FROM customers
WHERE score <= 800;

SELECT *
FROM customers
WHERE score > 750;

SELECT *
FROM customers
WHERE score >= 750;