-- Kolik je možné si koupit litrů mléka a kilogramů chleba 
-- za první a poslední srovnatelné období v dostupných datech cen a mezd?

SELECT round(AVG(value_wages),2 ) AS average_wage_first_Q_2006 
FROM t_zuzana_polakova_project_sql_primary_final tzppspft 
WHERE payroll_quarter = 1 AND payroll_year = 2006 ;

SELECT*
FROM t_zuzana_polakova_project_sql_primary_final tzppspf 
WHERE name LIKE '%chléb%'
ORDER BY price_measured_from 
;

SELECT ROUND( SUM(food_price) / COUNT(food_price), 2) AS average_price_bread_for_first_quarter_2006
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE  food_category IN (111301) AND price_measured_from BETWEEN '2006-01-01' AND '2006-03-31'
;

WITH average_wage_first_Q_2006_table AS (
SELECT payroll_id, round(AVG(value_wages),2 ) AS average_wage_first_Q_2006
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_quarter = 1 AND payroll_year = 2006),
average_price_bread_for_first_quarter_2006_table AS(
SELECT payroll_id, ROUND(SUM(food_price) / COUNT(food_price), 2) AS average_price_bread_for_first_quarter_2006
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE food_category IN (111301) AND price_measured_from BETWEEN '2006-01-01' AND '2006-03-31')
SELECT
ROUND (average_wage_first_Q_2006/ average_price_bread_for_first_quarter_2006, 2 ) AS available_amount_of_bread_1stQ2006
FROM average_wage_first_Q_2006_table wages
JOIN average_price_bread_for_first_quarter_2006_table price
ON wages.payroll_id=price.payroll_id;

-- výpočet pro mléko polotučné

SELECT*
FROM t_zuzana_polakova_project_sql_primary_final tzppspf 
WHERE name LIKE '%mléko%'
ORDER BY price_measured_from 
;

SELECT *
FROM t_zuzana_polakova_project_sql_primary_final tzppspf 
WHERE  food_category IN (114201)
GROUP BY price_measured_from 
ORDER BY price_measured_from DESC ;

SELECT ROUND( SUM(food_price) / COUNT(food_price), 2) AS average_price_milk_for_first_quarter_2006
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE  food_category IN (114201) AND price_measured_from BETWEEN '2006-01-01' AND '2006-03-31'
;

WITH average_wage_first_Q_2006_table AS (
SELECT payroll_id, round(AVG(value_wages),2 ) AS average_wage_first_Q_2006
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_quarter = 1 AND payroll_year = 2006),
average_price_milk_for_first_quarter_2006_table AS(
SELECT payroll_id, ROUND(SUM(food_price) / COUNT(food_price), 2) AS average_price_milk_for_first_quarter_2006
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE food_category IN (114201) AND price_measured_from BETWEEN '2006-01-01' AND '2006-03-31')
SELECT
ROUND (average_wage_first_Q_2006/ average_price_milk_for_first_quarter_2006, 2 ) AS available_amount_of_milk_1stQ2006
FROM average_wage_first_Q_2006_table wages
JOIN average_price_milk_for_first_quarter_2006_table price
ON wages.payroll_id=price.payroll_id;

-- pro 4.Q roku 2018 - poslední období

SELECT round(AVG(value_wages),2 ) AS average_wage_last_Q_2018 
FROM t_zuzana_polakova_project_sql_primary_final tzppspft 
WHERE payroll_quarter = 4 AND payroll_year = 2018 ;

-- výpočet pro chléb (kg) za 4.Q 2018

WITH average_wage_last_Q_2018_table AS (
SELECT payroll_id, round(AVG(value_wages),2 ) AS average_wage_last_Q_2018
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_quarter = 4 AND payroll_year = 2018),
average_price_bread_for_last_quarter_2018_table AS(
SELECT payroll_id, ROUND(SUM(food_price) / COUNT(food_price), 2) AS average_price_bread_for_last_quarter_2018
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE food_category IN (111301) AND price_measured_from BETWEEN '2018-10-01' AND '2018-12-31')
SELECT
ROUND (average_wage_last_Q_2018/ average_price_bread_for_last_quarter_2018, 2 ) AS available_amount_of_bread_4thQ2018
FROM average_wage_last_Q_2018_table wages2
JOIN average_price_bread_for_last_quarter_2018_table price2
ON wages2.payroll_id=price2.payroll_id;

-- výpočet pro mléko polotučné za 4.Q 2018

WITH average_wage_last_Q_2018_table AS (
SELECT payroll_id, round(AVG(value_wages),2 ) AS average_wage_last_Q_2018
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_quarter = 4 AND payroll_year = 2018),
average_price_milk_for_last_quarter_2018_table AS(
SELECT payroll_id, ROUND(SUM(food_price) / COUNT(food_price), 2) AS average_price_milk_for_last_quarter_2018
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE food_category IN (114201) AND price_measured_from BETWEEN '2018-10-01' AND '2018-12-31')
SELECT
ROUND (average_wage_last_Q_2018/ average_price_milk_for_last_quarter_2018, 2 ) AS available_amount_of_milk_4thQ2018
FROM average_wage_last_Q_2018_table wages2
JOIN average_price_milk_for_last_quarter_2018_table price2
ON wages2.payroll_id=price2.payroll_id;
