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

-- ======================================================
-- Filtering: Logical Operators
-- ======================================================

SELECT * FROM customers
WHERE country = 'USA' AND score > 0;

SELECT * FROM customers
WHERE country = 'USA' OR country <> 'UK';

SELECT * FROM customers
WHERE NOT country = 'USA';