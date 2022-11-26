-- Má výška HDP vliv na změny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste 
-- výrazněji v jednom roce, projeví se to na cenách potravin či mzdách ve stejném nebo 
-- následujícím roce výraznějším růstem?

CREATE OR REPLACE TABLE t_zuzana_polakova_project_sql_secondary_final AS(
SELECT c.country, e.year, e. GDP, e.gini, e.population
FROM countries c
JOIN economies e
ON c.country=e.country
WHERE continent='Europe'AND e.year BETWEEN '2006' AND '2018');

SELECT *
FROM t_zuzana_polakova_project_sql_secondary_final tzppssf ;

SELECT*
FROM t_result_table_wage_growth_percent ;

SELECT*
FROM t_result_table_price_growth_percent ;

CREATE OR REPLACE TABLE t_result_table_GDP_growth_percent AS (
SELECT year+1 AS year_of_difference, ROUND(((GDP_next_year-GDP)/GDP*100), 2) AS growth_of_GDP
FROM
(SELECT year, GDP, LEAD(GDP) OVER (ORDER BY year) AS GDP_next_year
FROM  t_zuzana_polakova_project_sql_secondary_final
WHERE country='Czech Republic'
LIMIT 12
)AS result_table_GDP);

CREATE OR REPLACE TABLE t_GDP_comparing_prices_wages AS(
SELECT trtggp.year_of_difference, trtggp.growth_of_GDP, trtwgp.growth_of_wages, trtpgp.growth_of_prices 
FROM t_result_table_GDP_growth_percent trtggp
JOIN t_result_table_wage_growth_percent trtwgp
ON trtggp.year_of_difference = trtwgp.year_of_difference 
JOIN t_result_table_price_growth_percent trtpgp
ON trtggp.year_of_difference = trtpgp.year_of_difference);

SELECT*
FROM t_gdp_comparing_prices_wages ;

SELECT ROUND (AVG (growth_of_GDP), 2)
FROM t_gdp_comparing_prices_wages;

SELECT ROUND(AVG(growth_of_wages),2)
FROM t_gdp_comparing_prices_wages;

SELECT ROUND(AVG(growth_of_prices),2)
FROM t_gdp_comparing_prices_wages;

SELECT
	year_of_difference, growth_of_GDP, growth_of_wages, growth_of_prices,
	CASE
		WHEN growth_of_GDP >= 2.13 AND growth_of_prices >=2.9 AND growth_of_wages >=3.87 THEN 'Růst HDP působí na růst prům.cen i růst mezd'
		WHEN growth_of_GDP >= 2.13 AND growth_of_wages >=3.87  THEN 'Růst HDP působí na růst prům.mezd'
		WHEN growth_of_GDP >= 2.13 AND growth_of_prices >=2.9  THEN 'Růst HDP působí na růst prům.cen'
		ELSE 'Růst HDP nemá vliv na růst cen a mezd'
	END AS GDP_impact
FROM t_gdp_comparing_prices_wages
ORDER BY year_of_difference;



