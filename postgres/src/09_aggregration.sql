SELECT customer_id,
       count(*) AS total_nr_orders,
       sum(sales) AS total_sales,
       avg(sales) AS avg_sales,
       max(sales) AS highest_sales,
       min(sales) AS lowest_sales
FROM orders
GROUP BY customer_id
ORDER BY customer_id ASC;