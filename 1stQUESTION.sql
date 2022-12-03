First question: Rostou v průběhu let mzdy ve všech odvětvích, nebo v některých klesají?

CREATE OR REPLACE TABLE t_zuzana_polakova_project_SQL_primary_final AS (
SELECT
cp.id AS food_id, cp.category_code AS food_category, cp.value AS food_price, 
cp.date_from AS price_measured_from, YEAR(date_from) AS year,
cp.date_to AS price_measured_to, cpc.name, cpc.price_value, cpc.price_unit,
cpay.id AS payroll_id, cpay.calculation_code, cpay.industry_branch_code, 
cpay.value AS value_wages, cpay.payroll_year, cpay.payroll_quarter
FROM czechia_payroll AS cpay
JOIN czechia_price cp
ON cpay.payroll_year = YEAR (date_from) 
JOIN czechia_price_category cpc ON cp.category_code = cpc.code
WHERE cpay.value_type_code = 5958 AND cp.region_code IS NULL)
;

CREATE OR REPLACE TABLE t_average_year_wages AS(
SELECT industry_branch_code, avg(value_wages)AS av_wage, year
FROM t_zuzana_polakova_project_sql_primary_final tzppspf 
WHERE industry_branch_code IS NOT NULL
AND calculation_code = 100
GROUP BY industry_branch_code, payroll_year 
ORDER BY payroll_year);

CREATE OR REPLACE TABLE t_wages_difference AS
SELECT year, industry_branch_code, av_wage,
	av_wage - (lag(av_wage) OVER (PARTITION BY industry_branch_code ORDER BY year)) AS difference,
	round(((av_wage - (lag(av_wage) OVER (PARTITION BY industry_branch_code ORDER BY year))) * 100) / (lag(av_wage) OVER (PARTITION BY industry_branch_code ORDER BY year)), 2) AS percent_change,
	CASE 
		WHEN av_wage - (lag(av_wage) OVER (PARTITION BY industry_branch_code ORDER BY year)) < 0 THEN 'Mzdy klesaly'
		WHEN av_wage - (lag(av_wage) OVER (PARTITION BY industry_branch_code ORDER BY year)) > 0 THEN 'Mzdy rostly'
	END AS growth_or_decline
FROM t_average_year_wages
GROUP BY year, industry_branch_code
ORDER BY industry_branch_code, year;

SELECT *
FROM t_wages_difference ;

