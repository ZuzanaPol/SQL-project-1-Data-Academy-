CREATE OR REPLACE TABLE t_zuzana_polakova_project_SQL_primary_final AS (
SELECT
cp.id AS food_id, cp.category_code AS food_category, cp.value AS food_price, cp.date_from AS price_measured_from, 
cp.date_to AS price_measured_to, cpc.name, cpc.price_value, cpc.price_unit,
cpay.id AS payroll_id, cpay.calculation_code, cpay.industry_branch_code, cpay.value AS value_wages, cpay.payroll_year, cpay.payroll_quarter
FROM czechia_payroll AS cpay
JOIN czechia_price cp
ON cpay.payroll_year = YEAR (date_from) 
JOIN czechia_price_category cpc ON cp.category_code = cpc.code
WHERE cpay.value_type_code = 5958 AND cp.region_code IS NULL)
;

-- Industry branch code A 
CREATE OR REPLACE TABLE t_wages_table_year__industry_A AS(
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2006 AND industry_branch_code = 'A'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2007 AND industry_branch_code = 'A'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2008 AND industry_branch_code = 'A'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2009 AND industry_branch_code = 'A'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2010 AND industry_branch_code = 'A'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2011 AND industry_branch_code = 'A'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2012 AND industry_branch_code = 'A'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2013 AND industry_branch_code = 'A'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2014 AND industry_branch_code = 'A'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2015 AND industry_branch_code = 'A'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2016 AND industry_branch_code = 'A'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2017 AND industry_branch_code = 'A'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2018 AND industry_branch_code = 'A');

SELECT *
FROM t_wages_table_year__industry_A ;

CREATE OR REPLACE TABLE t_result_branch_A AS (
SELECT payroll_year+1 AS year_of_difference, ROUND((average_wage_next_year-average_wage)/average_wage *100, 2) AS growth_of_average_wage_for_A
FROM
(SELECT average_wage, payroll_year, industry_branch_code, LEAD(average_wage) OVER (ORDER BY payroll_year) AS average_wage_next_year
FROM t_wages_table_year__industry_A
LIMIT 12)AS result_for_A);

SELECT *
FROM t_result_branch_A ;

SELECT
	year_of_difference, growth_of_average_wage_for_A,
	CASE
		WHEN growth_of_average_wage_for_A < 0 THEN 'Mzdy meziročně klesly'
		WHEN growth_of_average_wage_for_A > 0 THEN 'Mzdy meziročně vzrostly'
	END AS growth_or_decline
FROM t_result_branch_A
ORDER BY growth_of_average_wage_for_A;

-- Industry branch code B
CREATE OR REPLACE TABLE t_wages_table_year__industry_B AS(
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2006 AND industry_branch_code = 'B'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2007 AND industry_branch_code = 'B'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2008 AND industry_branch_code = 'B'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2009 AND industry_branch_code = 'B'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2010 AND industry_branch_code = 'B'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2011 AND industry_branch_code = 'B'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2012 AND industry_branch_code = 'B'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2013 AND industry_branch_code = 'B'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2014 AND industry_branch_code = 'B'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2015 AND industry_branch_code = 'B'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2016 AND industry_branch_code = 'B'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2017 AND industry_branch_code = 'B'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2018 AND industry_branch_code = 'B');

SELECT *
FROM t_wages_table_year__industry_B ;

CREATE OR REPLACE TABLE t_result_branch_B AS (
SELECT payroll_year+1 AS year_of_difference, ROUND((average_wage_next_year-average_wage)/average_wage *100, 2) AS growth_of_average_wage_for_B
FROM
(SELECT average_wage, payroll_year, industry_branch_code, LEAD(average_wage) OVER (ORDER BY payroll_year) AS average_wage_next_year
FROM t_wages_table_year__industry_B
LIMIT 12)AS result_for_B);

SELECT *
FROM t_result_branch_B ;

SELECT
	year_of_difference, growth_of_average_wage_for_B,
	CASE
		WHEN growth_of_average_wage_for_B < 0 THEN 'Mzdy meziročně klesly'
		WHEN growth_of_average_wage_for_B > 0 THEN 'Mzdy meziročně vzrostly'
	END AS growth_or_decline
FROM t_result_branch_B
ORDER BY growth_of_average_wage_for_B;

-- Industry branch code C
CREATE OR REPLACE TABLE t_wages_table_year__industry_C AS(
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2006 AND industry_branch_code = 'C'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2007 AND industry_branch_code = 'C'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2008 AND industry_branch_code = 'C'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2009 AND industry_branch_code = 'C'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2010 AND industry_branch_code = 'C'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2011 AND industry_branch_code = 'C'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2012 AND industry_branch_code = 'C'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2013 AND industry_branch_code = 'C'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2014 AND industry_branch_code = 'C'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2015 AND industry_branch_code = 'C'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2016 AND industry_branch_code = 'C'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2017 AND industry_branch_code = 'C'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2018 AND industry_branch_code = 'C');

SELECT *
FROM t_wages_table_year__industry_C ;

CREATE OR REPLACE TABLE t_result_branch_C AS (
SELECT payroll_year+1 AS year_of_difference, ROUND((average_wage_next_year-average_wage)/average_wage *100, 2) AS growth_of_average_wage_for_C
FROM
(SELECT average_wage, payroll_year, industry_branch_code, LEAD(average_wage) OVER (ORDER BY payroll_year) AS average_wage_next_year
FROM t_wages_table_year__industry_C
LIMIT 12)AS result_for_C);

SELECT *
FROM t_result_branch_C ;

SELECT
	year_of_difference, growth_of_average_wage_for_C,
	CASE
		WHEN growth_of_average_wage_for_C < 0 THEN 'Mzdy meziročně klesly'
		WHEN growth_of_average_wage_for_C > 0 THEN 'Mzdy meziročně vzrostly'
	END AS growth_or_decline
FROM t_result_branch_C
ORDER BY growth_of_average_wage_for_C;

-- Industry branch code D
CREATE OR REPLACE TABLE t_wages_table_year__industry_D AS(
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2006 AND industry_branch_code = 'D'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2007 AND industry_branch_code = 'D'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2008 AND industry_branch_code = 'D'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2009 AND industry_branch_code = 'D'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2010 AND industry_branch_code = 'D'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2011 AND industry_branch_code = 'D'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2012 AND industry_branch_code = 'D'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2013 AND industry_branch_code = 'D'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2014 AND industry_branch_code = 'D'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2015 AND industry_branch_code = 'D'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2016 AND industry_branch_code = 'D'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2017 AND industry_branch_code = 'D'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2018 AND industry_branch_code = 'D');

SELECT *
FROM t_wages_table_year__industry_D ;

CREATE OR REPLACE TABLE t_result_branch_D AS (
SELECT payroll_year+1 AS year_of_difference, ROUND((average_wage_next_year-average_wage)/average_wage *100, 2) AS growth_of_average_wage_for_D
FROM
(SELECT average_wage, payroll_year, industry_branch_code, LEAD(average_wage) OVER (ORDER BY payroll_year) AS average_wage_next_year
FROM t_wages_table_year__industry_D
LIMIT 12)AS result_for_D);

SELECT *
FROM t_result_branch_D ;

SELECT
	year_of_difference, growth_of_average_wage_for_D,
	CASE
		WHEN growth_of_average_wage_for_D < 0 THEN 'Mzdy meziročně klesly'
		WHEN growth_of_average_wage_for_D > 0 THEN 'Mzdy meziročně vzrostly'
	END AS growth_or_decline
FROM t_result_branch_D
ORDER BY growth_of_average_wage_for_D;

-- Industry branch code E
CREATE OR REPLACE TABLE t_wages_table_year__industry_E AS(
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2006 AND industry_branch_code = 'E'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2007 AND industry_branch_code = 'E'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2008 AND industry_branch_code = 'E'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2009 AND industry_branch_code = 'E'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2010 AND industry_branch_code = 'E'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2011 AND industry_branch_code = 'E'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2012 AND industry_branch_code = 'E'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2013 AND industry_branch_code = 'E'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2014 AND industry_branch_code = 'E'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2015 AND industry_branch_code = 'E'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2016 AND industry_branch_code = 'E'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2017 AND industry_branch_code = 'E'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2018 AND industry_branch_code = 'E');

SELECT *
FROM t_wages_table_year__industry_E ;

CREATE OR REPLACE TABLE t_result_branch_E AS (
SELECT payroll_year+1 AS year_of_difference, ROUND((average_wage_next_year-average_wage)/average_wage *100, 2) AS growth_of_average_wage_for_E
FROM
(SELECT average_wage, payroll_year, industry_branch_code, LEAD(average_wage) OVER (ORDER BY payroll_year) AS average_wage_next_year
FROM t_wages_table_year__industry_E
LIMIT 12)AS result_for_E);

SELECT *
FROM t_result_branch_E ;

SELECT
	year_of_difference, growth_of_average_wage_for_E,
	CASE
		WHEN growth_of_average_wage_for_E < 0 THEN 'Mzdy meziročně klesly'
		WHEN growth_of_average_wage_for_E > 0 THEN 'Mzdy meziročně vzrostly'
	END AS growth_or_decline
FROM t_result_branch_E
ORDER BY growth_of_average_wage_for_E;

-- Industry branch code F
CREATE OR REPLACE TABLE t_wages_table_year__industry_F AS(
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2006 AND industry_branch_code = 'F'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2007 AND industry_branch_code = 'F'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2008 AND industry_branch_code = 'F'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2009 AND industry_branch_code = 'F'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2010 AND industry_branch_code = 'F'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2011 AND industry_branch_code = 'F'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2012 AND industry_branch_code = 'F'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2013 AND industry_branch_code = 'F'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2014 AND industry_branch_code = 'F'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2015 AND industry_branch_code = 'F'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2016 AND industry_branch_code = 'F'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2017 AND industry_branch_code = 'F'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2018 AND industry_branch_code = 'F');

SELECT *
FROM t_wages_table_year__industry_F ;

CREATE OR REPLACE TABLE t_result_branch_F AS (
SELECT payroll_year+1 AS year_of_difference, ROUND((average_wage_next_year-average_wage)/average_wage *100, 2) AS growth_of_average_wage_for_F
FROM
(SELECT average_wage, payroll_year, industry_branch_code, LEAD(average_wage) OVER (ORDER BY payroll_year) AS average_wage_next_year
FROM t_wages_table_year__industry_F
LIMIT 12)AS result_for_F);

SELECT *
FROM t_result_branch_F ;

SELECT
	year_of_difference, growth_of_average_wage_for_F,
	CASE
		WHEN growth_of_average_wage_for_F < 0 THEN 'Mzdy meziročně klesly'
		WHEN growth_of_average_wage_for_F > 0 THEN 'Mzdy meziročně vzrostly'
	END AS growth_or_decline
FROM t_result_branch_F
ORDER BY growth_of_average_wage_for_F;

-- Industry branch code G
CREATE OR REPLACE TABLE t_wages_table_year__industry_G AS(
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2006 AND industry_branch_code = 'G'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2007 AND industry_branch_code = 'G'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2008 AND industry_branch_code = 'G'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2009 AND industry_branch_code = 'G'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2010 AND industry_branch_code = 'G'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2011 AND industry_branch_code = 'G'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2012 AND industry_branch_code = 'G'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2013 AND industry_branch_code = 'G'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2014 AND industry_branch_code = 'G'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2015 AND industry_branch_code = 'G'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2016 AND industry_branch_code = 'G'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2017 AND industry_branch_code = 'G'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2018 AND industry_branch_code = 'G');

SELECT *
FROM t_wages_table_year__industry_G ;

CREATE OR REPLACE TABLE t_result_branch_G AS (
SELECT payroll_year+1 AS year_of_difference, ROUND((average_wage_next_year-average_wage)/average_wage *100, 2) AS growth_of_average_wage_for_G
FROM
(SELECT average_wage, payroll_year, industry_branch_code, LEAD(average_wage) OVER (ORDER BY payroll_year) AS average_wage_next_year
FROM t_wages_table_year__industry_G
LIMIT 12)AS result_for_G);

SELECT *
FROM t_result_branch_G ;

SELECT
	year_of_difference, growth_of_average_wage_for_G,
	CASE
		WHEN growth_of_average_wage_for_G < 0 THEN 'Mzdy meziročně klesly'
		WHEN growth_of_average_wage_for_G > 0 THEN 'Mzdy meziročně vzrostly'
	END AS growth_or_decline
FROM t_result_branch_G
ORDER BY growth_of_average_wage_for_G;

-- Industry branch code H
CREATE OR REPLACE TABLE t_wages_table_year__industry_H AS(
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2006 AND industry_branch_code = 'H'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2007 AND industry_branch_code = 'H'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2008 AND industry_branch_code = 'H'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2009 AND industry_branch_code = 'H'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2010 AND industry_branch_code = 'H'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2011 AND industry_branch_code = 'H'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2012 AND industry_branch_code = 'H'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2013 AND industry_branch_code = 'H'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2014 AND industry_branch_code = 'H'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2015 AND industry_branch_code = 'H'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2016 AND industry_branch_code = 'H'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2017 AND industry_branch_code = 'H'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2018 AND industry_branch_code = 'H');

SELECT *
FROM t_wages_table_year__industry_H ;

CREATE OR REPLACE TABLE t_result_branch_H AS (
SELECT payroll_year+1 AS year_of_difference, ROUND((average_wage_next_year-average_wage)/average_wage *100, 2) AS growth_of_average_wage_for_H
FROM
(SELECT average_wage, payroll_year, industry_branch_code, LEAD(average_wage) OVER (ORDER BY payroll_year) AS average_wage_next_year
FROM t_wages_table_year__industry_H
LIMIT 12)AS result_for_H);

SELECT *
FROM t_result_branch_H ;

SELECT
	year_of_difference, growth_of_average_wage_for_H,
	CASE
		WHEN growth_of_average_wage_for_H < 0 THEN 'Mzdy meziročně klesly'
		WHEN growth_of_average_wage_for_H > 0 THEN 'Mzdy meziročně vzrostly'
	END AS growth_or_decline
FROM t_result_branch_H
ORDER BY growth_of_average_wage_for_H;

-- Industry branch code I
CREATE OR REPLACE TABLE t_wages_table_year__industry_I AS(
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2006 AND industry_branch_code = 'I'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2007 AND industry_branch_code = 'I'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2008 AND industry_branch_code = 'I'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2009 AND industry_branch_code = 'I'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2010 AND industry_branch_code = 'I'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2011 AND industry_branch_code = 'I'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2012 AND industry_branch_code = 'I'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2013 AND industry_branch_code = 'I'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2014 AND industry_branch_code = 'I'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2015 AND industry_branch_code = 'I'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2016 AND industry_branch_code = 'I'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2017 AND industry_branch_code = 'I'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2018 AND industry_branch_code = 'I');

SELECT *
FROM t_wages_table_year__industry_I ;

CREATE OR REPLACE TABLE t_result_branch_I AS (
SELECT payroll_year+1 AS year_of_difference, ROUND((average_wage_next_year-average_wage)/average_wage *100, 2) AS growth_of_average_wage_for_I
FROM
(SELECT average_wage, payroll_year, industry_branch_code, LEAD(average_wage) OVER (ORDER BY payroll_year) AS average_wage_next_year
FROM t_wages_table_year__industry_I
LIMIT 12)AS result_for_I);

SELECT *
FROM t_result_branch_I ;

SELECT
	year_of_difference, growth_of_average_wage_for_I,
	CASE
		WHEN growth_of_average_wage_for_I < 0 THEN 'Mzdy meziročně klesly'
		WHEN growth_of_average_wage_for_I > 0 THEN 'Mzdy meziročně vzrostly'
	END AS growth_or_decline
FROM t_result_branch_I
ORDER BY growth_of_average_wage_for_I;

-- Industry branch code J
CREATE OR REPLACE TABLE t_wages_table_year__industry_J AS(
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2006 AND industry_branch_code = 'J'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2007 AND industry_branch_code = 'J'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2008 AND industry_branch_code = 'J'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2009 AND industry_branch_code = 'J'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2010 AND industry_branch_code = 'J'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2011 AND industry_branch_code = 'J'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2012 AND industry_branch_code = 'J'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2013 AND industry_branch_code = 'J'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2014 AND industry_branch_code = 'J'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2015 AND industry_branch_code = 'J'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2016 AND industry_branch_code = 'J'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2017 AND industry_branch_code = 'J'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2018 AND industry_branch_code = 'J');

SELECT *
FROM t_wages_table_year__industry_J ;

CREATE OR REPLACE TABLE t_result_branch_J AS (
SELECT payroll_year+1 AS year_of_difference, ROUND((average_wage_next_year-average_wage)/average_wage *100, 2) AS growth_of_average_wage_for_J
FROM
(SELECT average_wage, payroll_year, industry_branch_code, LEAD(average_wage) OVER (ORDER BY payroll_year) AS average_wage_next_year
FROM t_wages_table_year__industry_J
LIMIT 12)AS result_for_J);

SELECT *
FROM t_result_branch_J ;

SELECT
	year_of_difference, growth_of_average_wage_for_J,
	CASE
		WHEN growth_of_average_wage_for_J < 0 THEN 'Mzdy meziročně klesly'
		WHEN growth_of_average_wage_for_J > 0 THEN 'Mzdy meziročně vzrostly'
	END AS growth_or_decline
FROM t_result_branch_J
ORDER BY growth_of_average_wage_for_J;

-- Industry branch code K
CREATE OR REPLACE TABLE t_wages_table_year__industry_K AS(
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2006 AND industry_branch_code = 'K'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2007 AND industry_branch_code = 'K'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2008 AND industry_branch_code = 'K'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2009 AND industry_branch_code = 'K'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2010 AND industry_branch_code = 'K'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2011 AND industry_branch_code = 'K'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2012 AND industry_branch_code = 'K'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2013 AND industry_branch_code = 'K'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2014 AND industry_branch_code = 'K'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2015 AND industry_branch_code = 'K'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2016 AND industry_branch_code = 'K'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2017 AND industry_branch_code = 'K'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2018 AND industry_branch_code = 'K');

SELECT *
FROM t_wages_table_year__industry_K ;

CREATE OR REPLACE TABLE t_result_branch_K AS (
SELECT payroll_year+1 AS year_of_difference, ROUND((average_wage_next_year-average_wage)/average_wage *100, 2) AS growth_of_average_wage_for_K
FROM
(SELECT average_wage, payroll_year, industry_branch_code, LEAD(average_wage) OVER (ORDER BY payroll_year) AS average_wage_next_year
FROM t_wages_table_year__industry_K
LIMIT 12)AS result_for_K);

SELECT *
FROM t_result_branch_K ;

SELECT
	year_of_difference, growth_of_average_wage_for_K,
	CASE
		WHEN growth_of_average_wage_for_K < 0 THEN 'Mzdy meziročně klesly'
		WHEN growth_of_average_wage_for_K > 0 THEN 'Mzdy meziročně vzrostly'
	END AS growth_or_decline
FROM t_result_branch_K
ORDER BY growth_of_average_wage_for_K;

-- Industry branch code L
CREATE OR REPLACE TABLE t_wages_table_year__industry_L AS(
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2006 AND industry_branch_code = 'L'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2007 AND industry_branch_code = 'L'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2008 AND industry_branch_code = 'L'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2009 AND industry_branch_code = 'L'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2010 AND industry_branch_code = 'L'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2011 AND industry_branch_code = 'L'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2012 AND industry_branch_code = 'L'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2013 AND industry_branch_code = 'L'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2014 AND industry_branch_code = 'L'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2015 AND industry_branch_code = 'L'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2016 AND industry_branch_code = 'L'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2017 AND industry_branch_code = 'L'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2018 AND industry_branch_code = 'L');

SELECT *
FROM t_wages_table_year__industry_L ;

CREATE OR REPLACE TABLE t_result_branch_L AS (
SELECT payroll_year+1 AS year_of_difference, ROUND((average_wage_next_year-average_wage)/average_wage *100, 2) AS growth_of_average_wage_for_L
FROM
(SELECT average_wage, payroll_year, industry_branch_code, LEAD(average_wage) OVER (ORDER BY payroll_year) AS average_wage_next_year
FROM t_wages_table_year__industry_L
LIMIT 12)AS result_for_L);

SELECT *
FROM t_result_branch_L ;

SELECT
	year_of_difference, growth_of_average_wage_for_L,
	CASE
		WHEN growth_of_average_wage_for_L < 0 THEN 'Mzdy meziročně klesly'
		WHEN growth_of_average_wage_for_L > 0 THEN 'Mzdy meziročně vzrostly'
	END AS growth_or_decline
FROM t_result_branch_L
ORDER BY growth_of_average_wage_for_L;

-- Industry branch code M
CREATE OR REPLACE TABLE t_wages_table_year__industry_M AS(
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2006 AND industry_branch_code = 'M'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2007 AND industry_branch_code = 'M'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2008 AND industry_branch_code = 'M'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2009 AND industry_branch_code = 'M'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2010 AND industry_branch_code = 'M'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2011 AND industry_branch_code = 'M'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2012 AND industry_branch_code = 'M'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2013 AND industry_branch_code = 'M'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2014 AND industry_branch_code = 'M'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2015 AND industry_branch_code = 'M'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2016 AND industry_branch_code = 'M'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2017 AND industry_branch_code = 'M'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2018 AND industry_branch_code = 'M');

SELECT *
FROM t_wages_table_year__industry_M ;

CREATE OR REPLACE TABLE t_result_branch_M AS (
SELECT payroll_year+1 AS year_of_difference, ROUND((average_wage_next_year-average_wage)/average_wage *100, 2) AS growth_of_average_wage_for_M
FROM
(SELECT average_wage, payroll_year, industry_branch_code, LEAD(average_wage) OVER (ORDER BY payroll_year) AS average_wage_next_year
FROM t_wages_table_year__industry_M
LIMIT 12)AS result_for_M);

SELECT *
FROM t_result_branch_M ;

SELECT
	year_of_difference, growth_of_average_wage_for_M,
	CASE
		WHEN growth_of_average_wage_for_M < 0 THEN 'Mzdy meziročně klesly'
		WHEN growth_of_average_wage_for_M > 0 THEN 'Mzdy meziročně vzrostly'
	END AS growth_or_decline
FROM t_result_branch_M
ORDER BY growth_of_average_wage_for_M;

-- Industry branch code N
CREATE OR REPLACE TABLE t_wages_table_year__industry_N AS(
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2006 AND industry_branch_code = 'N'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2007 AND industry_branch_code = 'N'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2008 AND industry_branch_code = 'N'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2009 AND industry_branch_code = 'N'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2010 AND industry_branch_code = 'N'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2011 AND industry_branch_code = 'N'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2012 AND industry_branch_code = 'N'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2013 AND industry_branch_code = 'N'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2014 AND industry_branch_code = 'N'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2015 AND industry_branch_code = 'N'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2016 AND industry_branch_code = 'N'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2017 AND industry_branch_code = 'N'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2018 AND industry_branch_code = 'N');

SELECT *
FROM t_wages_table_year__industry_N ;

CREATE OR REPLACE TABLE t_result_branch_N AS (
SELECT payroll_year+1 AS year_of_difference, ROUND((average_wage_next_year-average_wage)/average_wage *100, 2) AS growth_of_average_wage_for_N
FROM
(SELECT average_wage, payroll_year, industry_branch_code, LEAD(average_wage) OVER (ORDER BY payroll_year) AS average_wage_next_year
FROM t_wages_table_year__industry_N
LIMIT 12)AS result_for_N);

SELECT *
FROM t_result_branch_N ;

SELECT
	year_of_difference, growth_of_average_wage_for_N,
	CASE
		WHEN growth_of_average_wage_for_N < 0 THEN 'Mzdy meziročně klesly'
		WHEN growth_of_average_wage_for_N > 0 THEN 'Mzdy meziročně vzrostly'
	END AS growth_or_decline
FROM t_result_branch_N
ORDER BY growth_of_average_wage_for_N;

-- Industry branch code O
CREATE OR REPLACE TABLE t_wages_table_year__industry_O AS(
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2006 AND industry_branch_code = 'O'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2007 AND industry_branch_code = 'O'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2008 AND industry_branch_code = 'O'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2009 AND industry_branch_code = 'O'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2010 AND industry_branch_code = 'O'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2011 AND industry_branch_code = 'O'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2012 AND industry_branch_code = 'O'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2013 AND industry_branch_code = 'O'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2014 AND industry_branch_code = 'O'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2015 AND industry_branch_code = 'O'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2016 AND industry_branch_code = 'O'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2017 AND industry_branch_code = 'O'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2018 AND industry_branch_code = 'O');

SELECT *
FROM t_wages_table_year__industry_O ;

CREATE OR REPLACE TABLE t_result_branch_O AS (
SELECT payroll_year+1 AS year_of_difference, ROUND((average_wage_next_year-average_wage)/average_wage *100, 2) AS growth_of_average_wage_for_O
FROM
(SELECT average_wage, payroll_year, industry_branch_code, LEAD(average_wage) OVER (ORDER BY payroll_year) AS average_wage_next_year
FROM t_wages_table_year__industry_O
LIMIT 12)AS result_for_O);

SELECT *
FROM t_result_branch_O ;

SELECT
	year_of_difference, growth_of_average_wage_for_O,
	CASE
		WHEN growth_of_average_wage_for_O < 0 THEN 'Mzdy meziročně klesly'
		WHEN growth_of_average_wage_for_O > 0 THEN 'Mzdy meziročně vzrostly'
	END AS growth_or_decline
FROM t_result_branch_O
ORDER BY growth_of_average_wage_for_O;

-- Industry branch code P
CREATE OR REPLACE TABLE t_wages_table_year__industry_P AS(
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2006 AND industry_branch_code = 'P'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2007 AND industry_branch_code = 'P'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2008 AND industry_branch_code = 'P'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2009 AND industry_branch_code = 'P'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2010 AND industry_branch_code = 'P'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2011 AND industry_branch_code = 'P'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2012 AND industry_branch_code = 'P'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2013 AND industry_branch_code = 'P'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2014 AND industry_branch_code = 'P'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2015 AND industry_branch_code = 'P'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2016 AND industry_branch_code = 'P'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2017 AND industry_branch_code = 'P'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2018 AND industry_branch_code = 'P');

SELECT *
FROM t_wages_table_year__industry_P ;

CREATE OR REPLACE TABLE t_result_branch_P AS (
SELECT payroll_year+1 AS year_of_difference, ROUND((average_wage_next_year-average_wage)/average_wage *100, 2) AS growth_of_average_wage_for_P
FROM
(SELECT average_wage, payroll_year, industry_branch_code, LEAD(average_wage) OVER (ORDER BY payroll_year) AS average_wage_next_year
FROM t_wages_table_year__industry_P
LIMIT 12)AS result_for_P);

SELECT *
FROM t_result_branch_P ;

SELECT
	year_of_difference, growth_of_average_wage_for_P,
	CASE
		WHEN growth_of_average_wage_for_P < 0 THEN 'Mzdy meziročně klesly'
		WHEN growth_of_average_wage_for_P > 0 THEN 'Mzdy meziročně vzrostly'
	END AS growth_or_decline
FROM t_result_branch_P
ORDER BY growth_of_average_wage_for_P;

-- Industry branch code Q
CREATE OR REPLACE TABLE t_wages_table_year__industry_Q AS(
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2006 AND industry_branch_code = 'Q'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2007 AND industry_branch_code = 'Q'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2008 AND industry_branch_code = 'Q'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2009 AND industry_branch_code = 'Q'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2010 AND industry_branch_code = 'Q'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2011 AND industry_branch_code = 'Q'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2012 AND industry_branch_code = 'Q'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2013 AND industry_branch_code = 'Q'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2014 AND industry_branch_code = 'Q'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2015 AND industry_branch_code = 'Q'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2016 AND industry_branch_code = 'Q'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2017 AND industry_branch_code = 'Q'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2018 AND industry_branch_code = 'Q');

SELECT *
FROM t_wages_table_year__industry_Q ;

CREATE OR REPLACE TABLE t_result_branch_Q AS (
SELECT payroll_year+1 AS year_of_difference, ROUND((average_wage_next_year-average_wage)/average_wage *100, 2) AS growth_of_average_wage_for_Q
FROM
(SELECT average_wage, payroll_year, industry_branch_code, LEAD(average_wage) OVER (ORDER BY payroll_year) AS average_wage_next_year
FROM t_wages_table_year__industry_Q
LIMIT 12)AS result_for_Q);

SELECT *
FROM t_result_branch_Q ;

SELECT
	year_of_difference, growth_of_average_wage_for_Q,
	CASE
		WHEN growth_of_average_wage_for_Q < 0 THEN 'Mzdy meziročně klesly'
		WHEN growth_of_average_wage_for_Q > 0 THEN 'Mzdy meziročně vzrostly'
	END AS growth_or_decline
FROM t_result_branch_Q
ORDER BY growth_of_average_wage_for_Q;

-- Industry branch code R
CREATE OR REPLACE TABLE t_wages_table_year__industry_R AS(
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2006 AND industry_branch_code = 'R'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2007 AND industry_branch_code = 'R'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2008 AND industry_branch_code = 'R'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2009 AND industry_branch_code = 'R'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2010 AND industry_branch_code = 'R'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2011 AND industry_branch_code = 'R'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2012 AND industry_branch_code = 'R'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2013 AND industry_branch_code = 'R'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2014 AND industry_branch_code = 'R'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2015 AND industry_branch_code = 'R'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2016 AND industry_branch_code = 'R'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2017 AND industry_branch_code = 'R'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2018 AND industry_branch_code = 'R');

SELECT *
FROM t_wages_table_year__industry_R ;

CREATE OR REPLACE TABLE t_result_branch_R AS (
SELECT payroll_year+1 AS year_of_difference, ROUND((average_wage_next_year-average_wage)/average_wage *100, 2) AS growth_of_average_wage_for_R
FROM
(SELECT average_wage, payroll_year, industry_branch_code, LEAD(average_wage) OVER (ORDER BY payroll_year) AS average_wage_next_year
FROM t_wages_table_year__industry_R
LIMIT 12)AS result_for_R);

SELECT *
FROM t_result_branch_R ;

SELECT
	year_of_difference, growth_of_average_wage_for_R,
	CASE
		WHEN growth_of_average_wage_for_R < 0 THEN 'Mzdy meziročně klesly'
		WHEN growth_of_average_wage_for_R > 0 THEN 'Mzdy meziročně vzrostly'
	END AS growth_or_decline
FROM t_result_branch_R
ORDER BY growth_of_average_wage_for_R;

-- Industry branch code S
CREATE OR REPLACE TABLE t_wages_table_year__industry_S AS(
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2006 AND industry_branch_code = 'S'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2007 AND industry_branch_code = 'S'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2008 AND industry_branch_code = 'S'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2009 AND industry_branch_code = 'S'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2010 AND industry_branch_code = 'S'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2011 AND industry_branch_code = 'S'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2012 AND industry_branch_code = 'S'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2013 AND industry_branch_code = 'S'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2014 AND industry_branch_code = 'S'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2015 AND industry_branch_code = 'S'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2016 AND industry_branch_code = 'S'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2017 AND industry_branch_code = 'S'
UNION
SELECT payroll_year, industry_branch_code,
round(AVG(value_wages),2 ) AS average_wage
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2018 AND industry_branch_code = 'S');

SELECT *
FROM t_wages_table_year__industry_S ;

CREATE OR REPLACE TABLE t_result_branch_S AS (
SELECT payroll_year+1 AS year_of_difference, ROUND((average_wage_next_year-average_wage)/average_wage *100, 2) AS growth_of_average_wage_for_S
FROM
(SELECT average_wage, payroll_year, industry_branch_code, LEAD(average_wage) OVER (ORDER BY payroll_year) AS average_wage_next_year
FROM t_wages_table_year__industry_S
LIMIT 12)AS result_for_S);

SELECT *
FROM t_result_branch_S ;

SELECT
	year_of_difference, growth_of_average_wage_for_S,
	CASE
		WHEN growth_of_average_wage_for_S < 0 THEN 'Mzdy meziročně klesly'
		WHEN growth_of_average_wage_for_S > 0 THEN 'Mzdy meziročně vzrostly'
	END AS growth_or_decline
FROM t_result_branch_S
ORDER BY growth_of_average_wage_for_S;
