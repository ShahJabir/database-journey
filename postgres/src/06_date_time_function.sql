
SELECT creationtime,
       '2025-08-20' AS hardcoded_date,
       NOW() AT TIME ZONE 'Asia/Dhaka' AS today
FROM sales.orders;

SELECT *
FROM sales.orders;

/*
Date and Time Function - Part Extraction - EXTRACT()
*/

SELECT orderdate, EXTRACT(DAY FROM orderdate) AS day   FROM sales.orders;
SELECT orderdate, EXTRACT(MONTH FROM orderdate) AS month FROM sales.orders;
SELECT orderdate, EXTRACT(YEAR FROM orderdate) AS year  FROM sales.orders;
SELECT orderdate, EXTRACT(DOW FROM orderdate) AS weekday   FROM sales.orders;
SELECT orderdate, EXTRACT(DOY FROM orderdate) AS day_of_year FROM sales.orders;
SELECT orderdate, EXTRACT(WEEK FROM orderdate) AS week_number  FROM sales.orders;
SELECT creationtime, EXTRACT(HOUR FROM creationtime) AS hour  FROM sales.orders;
SELECT creationtime, EXTRACT(MINUTE FROM creationtime) AS minute  FROM sales.orders;
SELECT creationtime, EXTRACT(SECOND FROM creationtime) AS second FROM sales.orders;
SELECT orderdate, EXTRACT(QUARTER FROM orderdate) AS quarter  FROM sales.orders;


/*
Date and Time Function - Part Extraction - DATE_PART()
*/

SELECT orderdate, DATE_PART('day',   orderdate) AS day   FROM sales.orders;
SELECT orderdate, DATE_PART('month', orderdate) AS month FROM sales.orders;
SELECT orderdate, DATE_PART('year',  orderdate) AS year  FROM sales.orders;

/*
Date and Time Function - Part Extraction - DATE_TRUNC()
*/

SELECT DATE_TRUNC('month', orderdate) FROM sales.orders;                             -- 2024-01-01 00:00:00
SELECT DATE_TRUNC('year', orderdate) FROM sales.orders;                              -- 2024-01-01 00:00:00
SELECT DATE_TRUNC('week', orderdate) FROM sales.orders;                              -- start of week
SELECT DATE_TRUNC('quarter', orderdate) FROM sales.orders;                           -- start of quarter
SELECT DATE_TRUNC('hour', NOW() AT TIME ZONE 'Asia/Dhaka') FROM sales.orders;        -- current hour

SELECT (DATE_TRUNC('month', orderdate) + INTERVAL '1 month - 1 day')::DATE
AS end_of_month
FROM sales.orders;  -- last date of month

/*
Date and Time Function - Format & Casting - TO_CHAR()
*/

SELECT TO_CHAR(orderdate, 'DD/MM/YYYY') FROM sales.orders; -- '27/05/2026'
SELECT TO_CHAR(orderdate, 'DD MM YYYY') FROM sales.orders; -- '27 May 2026'
SELECT TO_CHAR(orderdate, 'Dy, Day, Mon, Month') FROM sales.orders; -- 'Wednesday, 27 May 2026'
SELECT TO_CHAR(NOW(), 'YYYY-MM-DD HH24:MI:SS') FROM orders; -- '2026-05-27 14:35:22'

/*
Date and Time Function - Format & Casting - CAST() or ::
*/

SELECT CAST(orderdate AS TEXT)  FROM sales.orders;
SELECT orderdate::TEXT          FROM sales.orders;
SELECT orderdate::VARCHAR       FROM sales.orders;

-- Convert text back to date
SELECT '2026-05-27'::DATE;
SELECT CAST('2026-05-27' AS DATE);

SELECT CAST(orderdate AS TEXT) FROM sales.orders;
SELECT CAST('123' AS INTEGER) FROM orders;
SELECT CAST(amount AS INTEGER) FROM orders;
SELECT CAST(NOW() AS DATE) FROM orders;

/*
Date and Time Function - Calculations - INTERVAL arithmetic
*/

SELECT orderdate + INTERVAL '7 days'   FROM sales.orders;
SELECT orderdate + INTERVAL '1 month'  FROM sales.orders;
SELECT orderdate + INTERVAL '1 year'   FROM sales.orders;
SELECT orderdate - INTERVAL '30 days'  FROM sales.orders; -- subtract
SELECT NOW() + INTERVAL '2 hours'  FROM sales.orders;
SELECT NOW() + INTERVAL '1 year 2 months 3 days' FROM sales.orders;
SELECT CURRENT_DATE - orderdate AS days_since FROM sales.orders;

/*
Date and Time Function - Calculations - EXTRACT
*/

-- For months or years difference
SELECT EXTRACT(YEAR  FROM AGE(orderdate, '2020-01-01')) AS years_diff  FROM sales.orders;
SELECT EXTRACT(MONTH FROM AGE(orderdate, '2020-01-01')) AS months_diff FROM sales.orders;
SELECT EXTRACT(DAY FROM AGE(orderdate, '2020-01-01')) AS day_diff FROM sales.orders;

/*
Date and Time Function - Calculations - AGE
*/

-- AGE() returns a human-readable interval
SELECT AGE(NOW(), orderdate::TIMESTAMP) AS age FROM sales.orders;
-- e.g. '2 years 3 months 14 days'

/*
Date and Time Function - Validation - PostgreSQL doesn't have a built-in ISDATE, but you can do this
*/

SELECT
    orderdate,
    CASE
        WHEN orderdate::TEXT ~ '^\d{4}-\d{2}-\d{2}$'
        THEN TRUE
        ELSE FALSE
    END AS is_valid_date
FROM sales.orders;

/*
Date and Time Function - Extras
*/

-- AGE() — human readable difference between two dates
SELECT AGE('2026-05-27', '2001-01-11'); -- '25 years 4 months 16 days'
SELECT AGE(NOW(), birthdate)           -- age of each user
FROM sales.employees;

-- MAKE_DATE() — build a date from parts
SELECT MAKE_DATE(2026, 5, 27); -- '2026-05-27'

-- MAKE_TIME() — build a time from parts
SELECT MAKE_TIME(14, 35, 22); -- '14:35:22'

-- MAKE_TIMESTAMP() — build a full timestamp
SELECT MAKE_TIMESTAMP(2026, 5, 27, 14, 35, 22); -- '2026-05-27 14:35:22'

-- MAKE_INTERVAL() — build an interval from parts
SELECT MAKE_INTERVAL(years=>1, months=>2, days=>3);

-- CLOCK_TIMESTAMP() — actual real-time clock (unlike NOW() which is transaction time)
SELECT CLOCK_TIMESTAMP();

-- TIMEOFDAY() — current time as a formatted text string
SELECT TIMEOFDAY(); -- 'Wed May 27 14:35:22.123456 2026 BDT'

-- JUSTIFY_DAYS / JUSTIFY_HOURS / JUSTIFY_INTERVAL — normalize intervals
SELECT JUSTIFY_DAYS(INTERVAL '35 days');    -- '1 mon 5 days'
SELECT JUSTIFY_HOURS(INTERVAL '25 hours');  -- '1 day 01:00:00'