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