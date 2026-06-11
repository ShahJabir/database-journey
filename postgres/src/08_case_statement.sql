/*
Case Statement syntax

CASE column
    WHEN value1 THEN result1
    WHEN value2 THEN result2
    ELSE default_result
END

Usage Area

SELECT
WHERE
ORDER BY
GROUP BY
UPDATE SET


*/



SELECT
    TRIM(c.first_name),
    COALESCE(SUM(o.sales), 0) AS total_spent,
    CASE
        WHEN SUM(o.sales) >= 30 THEN 'VIP'
        WHEN SUM(o.sales) >= 20  THEN 'Regular'
        WHEN SUM(o.sales) >= 10  THEN 'Occasional'
        ELSE                            'New'
    END AS customer_tier
FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
GROUP BY c.first_name;

SELECT
    TRIM(c.first_name),
    COALESCE(SUM(o.sales), 0) AS total_spent
FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
GROUP BY c.first_name
ORDER BY
    CASE
        WHEN SUM(o.sales) >= 30 THEN 1
        WHEN SUM(o.sales) >= 20  THEN 2
        ELSE 3
    END,
    c.first_name ASC;