/*
SQL Join
*/

SELECT c.name, o.product, o.amount
FROM customers c
INNER JOIN orders o
ON c.id=o.customer_id;

SELECT c.name, COALESCE(SUM(o.amount), 0) AS total_cost
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
GROUP BY c.name
ORDER BY total_cost DESC;

SELECT c.name, o.product, o.amount
FROM customers c
RIGHT JOIN orders o
ON c.id=o.customer_id;

SELECT c.name, o.product, o.amount
FROM customers c
FULL JOIN orders o
ON c.id=o.customer_id;

/*
SQL Anti Join
*/

SELECT c.name
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
WHERE o.customer_id ISNULL;

SELECT o.customer_id
FROM customers c
RIGHT JOIN orders o
ON c.id = o.customer_id
WHERE c.id ISNULL;

SELECT *
FROM customers c
FuLL JOIN orders o
ON c.id = o.customer_id
WHERE c.id ISNULL or o.customer_id ISNULL;

-- Task: Get All customers who have something purchase without inner join

SELECT c.name, SUM(o.amount) AS total_cost
FROM customers c
RIGHT JOIN orders o
ON c.id = o.customer_id
WHERE c.id IS NOT NULL
GROUP BY c.name
ORDER BY total_cost DESC;

/*
CROSS JOIN
*/

SELECT *
FROM customers
CROSS JOIN orders;

/*
SELF JOIN
*/

-- Find each employee and their manager's name
SELECT
    e.name        AS employee,
    m.name        AS manager
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.id;