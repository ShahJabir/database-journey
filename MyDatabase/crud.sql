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