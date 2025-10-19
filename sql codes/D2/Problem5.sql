/* =========================================================
   🧩 Problem 5
   Query only customers with odd IDs,
   sorted by country alphabetically.
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
WHERE customerid % 2 = 1
ORDER BY country ASC;