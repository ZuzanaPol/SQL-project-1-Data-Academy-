
CREATE OR REPLACE TABLE t_wages_table_year AS(
SELECT payroll_id, payroll_year, 
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2006
UNION
SELECT payroll_id, payroll_year, round(AVG(value_wages),2 ) AS average_wage_2007
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2007
UNION
SELECT payroll_id, payroll_year, round(AVG(value_wages),2 ) AS average_wage_2008
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2008
UNION
SELECT payroll_id, payroll_year, round(AVG(value_wages),2 ) AS average_wage_2009
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2009
UNION
SELECT payroll_id, payroll_year, round(AVG(value_wages),2 ) AS average_wage_2010
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2010
UNION
SELECT payroll_id, payroll_year, round(AVG(value_wages),2 ) AS average_wage_2011
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2011
UNION
SELECT payroll_id, payroll_year, round(AVG(value_wages),2 ) AS average_wage_2012
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2012
UNION
SELECT payroll_id, payroll_year, round(AVG(value_wages),2 ) AS average_wage_2013
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2013
UNION
SELECT payroll_id, payroll_year, round(AVG(value_wages),2 ) AS average_wage_2014
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2014
UNION
SELECT payroll_id, payroll_year, round(AVG(value_wages),2 ) AS average_wage_2015
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2015
UNION
SELECT payroll_id, payroll_year, round(AVG(value_wages),2 ) AS average_wage_2016
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2016
UNION
SELECT payroll_id, payroll_year, round(AVG(value_wages),2 ) AS average_wage_2017
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2017
UNION
SELECT payroll_id, payroll_year, round(AVG(value_wages),2 ) AS average_wage_2018
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2018);

SELECT *
FROM t_wages_table_year twty  ;


CREATE OR REPLACE TABLE t_result_table_wage_growth_percent AS (
SELECT payroll_year+1 AS year_of_difference, ROUND(((average_wage_next_year-average_wage)/average_wage*100), 2) AS growth_of_wages
FROM
(SELECT payroll_id, payroll_year, average_wage, LEAD(average_wage) OVER (ORDER BY payroll_year) AS average_wage_next_year
FROM  t_wages_table_year twty
LIMIT 12
)AS result_table_wages);

SELECT *
FROM t_result_table_wage_growth_percent;

-- PRO CENY--

SELECT food_id, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31';


CREATE OR REPLACE TABLE t_prices_table_year AS(
SELECT food_id, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
UNION
SELECT food_id, price_measured_from, 
round(AVG(food_price),2 ) AS average_price_2007
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
UNION
SELECT food_id, price_measured_from, 
round(AVG(food_price),2 ) AS average_price_2008
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
UNION
SELECT food_id, price_measured_from, 
round(AVG(food_price),2 ) AS average_price_2009
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
UNION
SELECT food_id, price_measured_from, 
round(AVG(food_price),2 ) AS average_price_2010
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
UNION
SELECT food_id, price_measured_from, 
round(AVG(food_price),2 ) AS average_price_2011
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
UNION
SELECT food_id, price_measured_from, 
round(AVG(food_price),2 ) AS average_price_2012
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
UNION
SELECT food_id, price_measured_from, 
round(AVG(food_price),2 ) AS average_price_2013
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
UNION
SELECT food_id, price_measured_from, 
round(AVG(food_price),2 ) AS average_price_2014
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
UNION
SELECT food_id, price_measured_from, 
round(AVG(food_price),2 ) AS average_price_2015
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
UNION
SELECT food_id, price_measured_from, 
round(AVG(food_price),2 ) AS average_price_2016
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
UNION
SELECT food_id, price_measured_from, 
round(AVG(food_price),2 ) AS average_price_2017
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
UNION
SELECT food_id, price_measured_from, 
round(AVG(food_price),2 ) AS average_price_2018
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31');


CREATE OR REPLACE TABLE t_result_table_price_growth_percent AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_id, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_table_year tpty
LIMIT 12
)AS result_table_prices);

CREATE TABLE t_comparing_table AS (
WITH t_result_table_price_growth_percent AS(
SELECT year_of_difference, growth_of_prices
FROM t_result_table_price_growth_percent tpty),
t_result_table_wage AS(
SELECT year_of_difference, growth_of_wages
FROM t_result_table_wage_growth_percent trtwgp)
SELECT tpty.year_of_difference, ROUND (growth_of_prices-growth_of_wages, 2 ) AS prices_wages_growth
FROM t_result_table_price_growth_percent tpty
JOIN t_result_table_wage_growth_percent trtwgp 
ON tpty.year_of_difference=trtwgp.year_of_difference);

SELECT *
FROM t_comparing_table tct ;

SELECT
	year_of_difference, prices_wages_growth,
	CASE
		WHEN prices_wages_growth <= 10 THEN 'není významný nárůst cen oproti mzdám'
		WHEN prices_wages_growth > 10 THEN 'významný nárůst cen oproti mzdám'
	END AS looking_for_significant_price_growth
FROM t_comparing_table tct 
ORDER BY prices_wages_growth;

