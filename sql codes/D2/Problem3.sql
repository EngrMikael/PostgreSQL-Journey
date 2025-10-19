/* =========================================================
   🧩 Problem 3
   Show all customers whose first name starts with ‘M’
   or who live in the USA.
   ========================================================= */

-- I'll get the schema name first
-- SELECT schema_name FROM information_schema.schemata;

-- Use the proper schema to get the tables
-- SELECT table_name FROM information_schema.tables
-- WHERE table_schema = 'sales';

-- check the table for customers
-- SELECT * FROM sales.customers;

SELECT *
FROM sales.customers
WHERE firstname LIKE 'M%' OR country = 'USA';