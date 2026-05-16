-- ======================================================
-- CRUD: Read Data using SQL query
-- ======================================================

SELECT * FROM customers;

SELECT
    first_name,
    score
FROM customers;

SELECT
    first_name,
    score
FROM customers
WHERE
    score > 0 and country = 'USA';

SELECT
    first_name,
    score,
    country
FROM customers
WHERE score > 0
ORDER BY score DESC;

SELECT
    country,
    count(id) AS total_customers,
    sum(score) AS total_score
FROM customers
WHERE score > 0
GROUP BY country
ORDER BY total_score desc;

SELECT
    country,
    count(id) AS total_customers,
    sum(score) AS total_score
FROM customers
WHERE score > 0
GROUP BY country
HAVING sum(score) > 800
ORDER BY total_score desc
LIMIT 3;

SELECT DISTINCT country
FROM customers
ORDER BY country;

SELECT *
FROM customers
LIMIT 3;

SELECT *
FROM orders
ORDER BY order_date DESC;

SELECT *
FROM customers;
SELECT *
FROM orders;

SELECT first_name, 'New Customer' AS status
FROM customers;

-- ======================================================
-- CRUD: Create Data using SQL Query
-- ======================================================

CREATE TABLE users (
    id INT NOT NULL,
    person_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15) NOT NULL,
    CONSTRAINT pk_users PRIMARY KEY (id)
);

INSERT INTO users (id, person_name, birth_date, phone) VALUES
    (1, 'Maria',  '2001-01-11', '01000000000'),
    (2, 'John',   '2002-12-23', '01234567890'),
    (3, 'Georg',  '2003-03-21', '01888888888'),
    (4, 'Martin', '2001-05-09', '01987654321'),
    (5, 'Peter',  '2002-01-11', '01098123475');

-- ======================================================
-- CRUD: Update Data using SQL Query
-- ======================================================

ALTER TABLE users
ADD email VARCHAR(50) NOT NULL DEFAULT 'unknown@email.com';

UPDATE users SET email = 'maria@email.com'  WHERE id = 1;
UPDATE users SET email = 'john@email.com'   WHERE id = 2;
UPDATE users SET email = 'georg@email.com'  WHERE id = 3;
UPDATE users SET email = 'martin@email.com' WHERE id = 4;
UPDATE users SET email = 'peter@email.com'  WHERE id = 5;

-- ======================================================
-- CRUD: Delete Data using SQL Query
-- ======================================================

DROP TABLE IF EXISTS not_exists;
DELETE FROM users WHERE id = 5;
TRUNCATE TABLE users;