/*
NULL Function - COALESCE()
*/

SELECT firstname, COALESCE(lastname, 'N/A') AS lastname FROM sales.customers
UNION ALL
SELECT firstname, COALESCE(lastname, 'N/A') FROM sales.employees;

/*
NULL Function - NULLIF()
*/

SELECT
    NULLIF(quantity, 0) AS quantity
FROM sales.orders;

/*
NULL Function - IS NULL
*/

SELECT firstname, lastname
FROM sales.customers
WHERE lastname IS NULL;

/*
NULL Function - IS NOT NULL
*/

SELECT firstname, lastname
FROM sales.customers
WHERE lastname IS NOT NULL;
