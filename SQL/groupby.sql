-- Aggregation
-- take multiple inputs and provides a single output
eg AVG(), COUNT(), MAX(), MIN(), SUM(), ROUND()
-- aggregate functions only happen in the select or HAVING clause

SELECT MIN(replacement_cost) FROM film

SELECT MAX(replacement_cost) FROM film

SELECT AVG(replacement_cost) FROM film

SELECT ROUND(AVG(replacement_cost),2) FROM film

SELECT SUM(replacement_cost) FROM film

-- GROUP BY
-- SELECT <category_col>, AGG(data_col) from <table_name>
-- GROUP BY <category_col>