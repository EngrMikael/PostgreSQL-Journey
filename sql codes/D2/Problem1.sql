/* =========================================================
   🧩 Problem 1
   List all customers from Germany who have a score higher than 400.
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
WHERE country = 'Germany' AND score > 400;