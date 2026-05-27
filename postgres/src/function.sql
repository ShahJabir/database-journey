/*
String Function - Manipulation - Concat
*/

SELECT first_name, country,
CONCAT(first_name, '-', country)
FROM customers;

/*
String Function - Manipulation - Upper
*/

SELECT first_name,
UPPER(first_name)
FROM customers;

/*
String Function - Manipulation - Lower
*/

SELECT first_name,
LOWER(first_name)
FROM customers;

/*
String Function - Manipulation - Trim
& Calculation - Length
*/

SELECT first_name,
LENGTH(first_name) AS before_trim,
LENGTH(TRIM(first_name)) AS after_trim
FROM customers
WHERE LENGTH(first_name) != LENGTH(TRIM(first_name));

/*
String Function - Manipulation - Replace
*/

SELECT order_date,
    REPLACE(order_date::TEXT, '-', '/') AS formatted_date
FROM orders;

/*
String Function - Manipulation - TO_CHAR
*/

SELECT order_date,
       TO_CHAR(order_date, 'YYYY/MM/DD') AS formatted_date
FROM orders;

/*
String Function - String Extraction - Left
*/

SELECT first_name,
       LEFT(TRIM(first_name), 2) AS name_2_char
FROM customers;

/*
String Function - String Extraction - Right
*/

SELECT first_name,
       RIGHT(TRIM(first_name), 2) AS name_2_char
FROM customers;

/*
String Function - String Extraction - SubString
*/

SELECT first_name,
       SUBSTRING(TRIM(first_name), 2, LENGTH(first_name)) AS sub_name
FROM customers;


/*
Numeric Functions - Round
*/

SELECT 3.516 AS original_number,
       ROUND(3.516, 2) AS round_2,
       ROUND(3.516, 1) AS round_1,
       ROUND(3.516, 0) AS round_0;

/*
Numeric Functions - ABS
*/

SELECT -10 AS original_number,
       ABS(-10) AS negetive_number,
       ABS(10) AS positive_number;