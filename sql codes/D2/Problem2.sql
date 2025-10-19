/* =========================================================
   🧩 Problem 2
   Display only the first name and score of customers whose
   score is between 300 and 800, ordered by score descending.
   ========================================================= */

-- I'll get the schema name first
-- SELECT schema_name FROM information_schema.schemata;

-- Use the proper schema to get the tables
-- SELECT table_name FROM information_schema.tables
-- WHERE table_schema = 'sales';

-- check the table for customers
-- SELECT * FROM sales.customers;

SELECT 
    firstname,
    score
FROM sales.customers
WHERE score BETWEEN 300 AND 800
ORDER BY score DESC;