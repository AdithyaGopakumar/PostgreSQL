-- making a db query
-- SELECT <column names> FROM <table name>
SELECT * FROM film;
SELECT title,rating FROM film

-- get unique/distinct values from a column in a table
SELECT DISTINCT title FROM film

-- get the count of entries in a table
SELECT COUNT(*) FROM film
-- count distinct values in a table 
SELECT COUNT(DISTINCT(rating)) FROM film

-- Select based on a condition
-- SELECT <column names> 
-- FROM <table name>
-- WHERE <condition>
-- conditions could be comparisons(=,<,>,<=,>=,!=) or logical operators like (AND,OR,NOT)
SELECT * FROM customer
WHERE first_name = 'Jared'

SELECT * FROM film
WHERE rental_rate > 4

SELECT * FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99

SELECT * FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating = 'R'

SELECT COUNT(title) FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating = 'R'

-- ORDER BY
-- SELECT <column names> FROM <table name>
-- ORDER BY <column name>     // by default ASC

SELECT * FROM customer
ORDER BY first_name

SELECT * FROM customer
ORDER BY first_name DESC

SELECT * FROM customer
ORDER BY store_id,first_name -- first order by store_id then sort by first name

SELECT * FROM customer
ORDER BY store_id DESC,first_name ASC

--  LIMIT
SELECT * FROM payment
ORDER BY payment_date DESC
LIMIT 5 -- latest 5 payments

SELECT * FROM payment
WHERE amount != 0.00
ORDER BY payment_date DESC
LIMIT 5

SELECT customer_id FROM payment
ORDER BY payment_date
LIMIT 10

-- BETWEEN
-- SELECT <column names> FROM <table name>
-- WHERE <column name> BETWEEN <init value> AND <final value>  

SELECT * FROM payment
WHERE amount BETWEEN 8 AND 9

SELECT * FROM payment
WHERE amount NOT BETWEEN 8 AND 9

-- IN
-- SELECT <column names> FROM <table name>
-- WHERE <column name> IN (8,9)

SELECT  * FROM payment
WHERE amount IN (7.99,1.99)

SELECT  * FROM payment
WHERE amount NOT IN (7.99,1.99)

-- LIKE //for pattern matching against string characters
-- % matches a sequence of characters
-- - matches a single characters
-- A% starts with A
-- %a ends with a
-- like is case sensitive, we can use ILIKE which is case insensitive \

SELECT  * FROM customer
WHERE first_name LIKE 'J%'

SELECT  * FROM customer
WHERE first_name NOT LIKE '_her%'
