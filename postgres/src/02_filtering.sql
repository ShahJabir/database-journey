-- ======================================================
-- Filtering: Comparison Operators
-- ======================================================

SELECT *
FROM customers
WHERE country = 'USA';

SELECT *
FROM customers
WHERE country != 'UK';

SELECT *
FROM customers
WHERE country <> 'Germany';

SELECT *
FROM customers
WHERE score < 800;

SELECT *
FROM customers
WHERE score <= 800;

SELECT *
FROM customers
WHERE score > 750;

SELECT *
FROM customers
WHERE score >= 750;

-- ======================================================
-- Filtering: Logical Operators
-- ======================================================

SELECT * FROM customers
WHERE country = 'USA' AND score > 0;

SELECT * FROM customers
WHERE country = 'USA' OR country <> 'UK';

SELECT * FROM customers
WHERE NOT country = 'USA';

-- ======================================================
-- Filtering: Range Operators
-- ======================================================

SELECT * FROM customers
WHERE score BETWEEN 100 AND 500;

-- ======================================================
-- Filtering: Membership Operators
-- ======================================================

SELECT * FROM users
WHERE id IN (1, 3, 5);

SELECT * FROM customers
WHERE country NOT IN ('USA', 'Germany')
AND country IS NOT NULL;

-- ======================================================
-- Filtering: Search Operators
-- ======================================================

-- Names that START with 'Mar'  →  Maria, Martin, Mark
SELECT * FROM users
WHERE person_name LIKE 'Mar%';

-- Names that END with 'n'  →  John, Martin
SELECT * FROM users
WHERE person_name LIKE '%n';

-- Names that CONTAIN 'or'  →  Georg, George, Morris
SELECT * FROM users
WHERE person_name LIKE '%or%';

-- Names with exactly 4 characters  →  John
SELECT * FROM users
WHERE person_name LIKE '____';

-- Names starting with any letter then 'ohn'  →  John
SELECT * FROM users
WHERE person_name LIKE '_ohn';

-- Matches insensitive 'maria', 'Maria', 'MARIA'

SELECT * FROM users
WHERE person_name ILIKE 'maria%';

SELECT * FROM users
WHERE person_name NOT LIKE 'M%';