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