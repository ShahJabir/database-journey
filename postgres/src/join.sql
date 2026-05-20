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