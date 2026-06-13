-- Find the total sales for each product

SELECT
    productid,
    SUM(sales) Total_Sales
FROM sales.orders
GROUP BY productid
ORDER BY productid ASC;

/*
Find the total sales for each product
Additionally provide details such as order id, order date and total_sales
*/

SELECT
    orderid,
    orderdate,
    productid,
    sales,
    SUM(sales) OVER(PARTITION BY productid) total_sales_by_products,
    SUM(sales) OVER() total_sales,
    RANK() OVER(ORDER BY sales DESC)
FROM sales.orders;