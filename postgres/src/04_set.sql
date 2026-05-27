-- UNION Set Operator

SELECT firstname, lastname
From sales.customers
UNION
SELECT firstname, lastname
FROM sales.employees;

-- UNION ALL Set Operator

SELECT firstname, lastname
From sales.customers
UNION ALL
SELECT firstname, lastname
FROM sales.employees;

-- EXCEPT Set Operator

SELECT firstname, lastname
From sales.customers
EXCEPT
SELECT firstname, lastname
FROM sales.employees;

-- INTERSECT Set Operator

SELECT firstname AS name,
       COALESCE(lastname, 'N/A') AS nickname
From sales.customers
INTERSECT
SELECT firstname,
       COALESCE(lastname, 'N/A')
FROM sales.employees;

-- Experiment

SELECT firstname AS name,
       COALESCE(lastname, 'N/A') AS nickname
FROM sales.customers
UNION
SELECT firstname,
       COALESCE(lastname, 'N/A')
FROM sales.employees
ORDER BY name ASC;