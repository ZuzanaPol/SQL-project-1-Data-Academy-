WITH total_wages_2006_table AS(SELECT payroll_id, ROUND(SUM(value_wages), 2) AS total_wages_2006
FROM t_zuzana_polakova_project_sql_primary_final tzppspf 
WHERE payroll_year = 2006 AND calculation_code = 200),
total_wages_2007_table AS (SELECT payroll_id,ROUND(SUM(value_wages), 2) AS total_wages_2007
FROM t_zuzana_polakova_project_sql_primary_final tzppspf2 
WHERE payroll_year = 2007 AND calculation_code = 200)
SELECT ROUND(total_wages_2007-total_wages_2006/total_wages_2006*100, 2) AS wage_growth_2007
FROM total_wages_2006_table wages2006
JOIN total_wages_2007_table wages2007
ON wages2006.payroll_id=wages2007.payroll_id;

SELECT payroll_id, ROUND(SUM(value_wages), 2) AS total_wages_2006
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2006 AND calculation_code = 200;

SELECT payroll_id, ROUND(SUM(value_wages), 2) AS total_wages_2007
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE payroll_year = 2007 AND calculation_code = 200;