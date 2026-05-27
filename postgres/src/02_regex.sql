-- ~ operator

-- Names that start with 'M'
SELECT * FROM users
WHERE person_name ~ '^M';

-- Names that end with 'n'
SELECT * FROM users
WHERE person_name ~ 'n$';

-- Names that contain only letters (no numbers or symbols)
SELECT * FROM users
WHERE person_name ~ '^[A-Za-z]+$';

-- Phone numbers that start with 010 or 011
SELECT * FROM users
WHERE phone ~ '^01[01]';

-- Case-insensitive: matches 'maria', 'Maria', 'MARIA'
SELECT * FROM users
WHERE person_name ~* '^maria';

-- Everyone whose name does NOT start with 'M'
SELECT * FROM users
WHERE person_name !~ '^M';

/*
SIMILAR TO — a weaker middle ground between LIKE and regex
It uses a limited regex-like syntax but is much less powerful than ~
*/

-- Names starting with M or J
SELECT * FROM users
WHERE person_name SIMILAR TO '(M|J)%';

-- REGEXP_REPLACE — find and replace with regex

-- Remove all non-numeric characters from phone numbers
SELECT REGEXP_REPLACE(phone, '[^0-9]', '', 'g')
FROM users;

-- REGEXP_MATCHES — extract matched parts

-- Extract the first word from person_name
SELECT REGEXP_MATCHES(person_name, '^\w+')
FROM users;