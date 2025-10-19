/* =========================================================
   🧩 Problem 4
   List all customers and add a new column called "Level" that labels them as:
     'Elite' if score ≥ 800
     'Good'  if score between 400–799
     'Low'   if below 400
   ========================================================= */

-- I'll get the schema name first
-- SELECT schema_name FROM information_schema.schemata;

-- Use the proper schema to get the tables
-- SELECT table_name FROM information_schema.tables
-- WHERE table_schema = 'sales';

-- check the table for customers
-- SELECT * FROM sales.customers;

SELECT *,
       CASE
           WHEN score >= 800 THEN 'Elite'
           WHEN score >= 400 THEN 'Good'
           ELSE 'Low'
       END AS level
FROM sales.customers;