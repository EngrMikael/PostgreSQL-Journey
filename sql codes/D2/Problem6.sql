-- I'll get the schema name first
-- SELECT schema_name
-- FROM information_schema.schemata;

-- Use the proper schema to get the tables
-- SELECT table_name
-- FROM information_schema.tables
-- WHERE table_schema = 'sales';

-- check the table for customers
-- SELECT *
-- FROM sales.customers;

SELECT *,
		DENSE_RANK() OVER (
			PARTITION BY country 
			ORDER BY score DESC NULLS LAST) 
			AS rank_by_country,
		CASE
			WHEN score IS NULL THEN 'No Score'
			WHEN score >= 800 THEN 'Top Performer'
			WHEN score >= 400 THEN 'Average Performer'
			ELSE 'Underperformer'
		END AS performance_level
FROM sales.customers
-- UNCOMMENT THIS IF U WANT TO EXCLUDE NULL SCORES
-- WHERE SCORE IS NOT NULL 
ORDER BY country ASC, rank_by_country ASC;