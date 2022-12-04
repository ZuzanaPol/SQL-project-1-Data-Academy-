-- Která kategorie potravin zdražuje nejpomaleji (je u ní nejnižší procentuální meziroční nárùst)?

CREATE OR REPLACE TABLE t_prices_year_category_111101 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '111101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '111101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '111101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '111101'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '111101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '111101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '111101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '111101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '111101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '111101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '111101'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '111101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '111101');

CREATE OR REPLACE TABLE result_table_111101 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_111101
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_111101
LIMIT 12
) AS result_table_111101);

SELECT *
FROM result_table_111101
ORDER BY growth_of_prices_111101 ;

CREATE OR REPLACE TABLE t_prices_year_category_111201 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '111201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '111201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '111201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '111201'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '111201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '111201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '111201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '111201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '111201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '111201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '111201'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '111201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '111201');

CREATE OR REPLACE TABLE result_table_111201 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_111201
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_111201
LIMIT 12
) AS result_table_111201);

SELECT *
FROM result_table_111201
ORDER BY growth_of_prices ;

CREATE OR REPLACE TABLE t_prices_year_category_111301 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '111301'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '111301'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '111301'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '111301'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '111301'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '111301'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '111301'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '111301'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '111301'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '111301'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '111301'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '111301'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '111301');

CREATE OR REPLACE TABLE result_table_111301 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_111301
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_111301
LIMIT 12
) AS result_table_111301);

SELECT *
FROM result_table_111301
ORDER BY growth_of_prices ;

CREATE OR REPLACE TABLE t_prices_year_category_111303 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '111303'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '111303'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '111303'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '111303'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '111303'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '111303'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '111303'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '111303'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '111303'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '111303'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '111303'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '111303'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '111303');

CREATE OR REPLACE TABLE result_table_111303 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_111303
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_111303
LIMIT 12
) AS result_table_111303);

SELECT *
FROM result_table_111303
ORDER BY growth_of_prices ;

CREATE OR REPLACE TABLE t_prices_year_category_111602 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '111602'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '111602'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '111602'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '111602'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '111602'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '111602'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '111602'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '111602'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '111602'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '111602'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '111602'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '111602'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '111602');

CREATE OR REPLACE TABLE result_table_111602 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_111602
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_111602
LIMIT 12
) AS result_table_111602);

SELECT *
FROM result_table_111602
ORDER BY growth_of_prices ;

CREATE OR REPLACE TABLE t_prices_year_category_112101 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '112101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '112101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '112101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '112101'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '112101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '112101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '112101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '112101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '112101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '112101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '112101'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '112101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '112101');

CREATE OR REPLACE TABLE result_table_112101 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_112101
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_112101
LIMIT 12
) AS result_table_112101);

SELECT *
FROM result_table_112101
ORDER BY growth_of_prices ;

CREATE OR REPLACE TABLE t_prices_year_category_112201 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '112201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '112201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '112201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '112201'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '112201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '112201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '112201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '112201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '112201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '112201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '112201'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '112201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '112201');

CREATE OR REPLACE TABLE result_table_112201 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_112201
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_112201
LIMIT 12
) AS result_table_112201);

SELECT *
FROM result_table_112201
ORDER BY growth_of_prices ;

CREATE OR REPLACE TABLE t_prices_year_category_112401 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '112401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '112401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '112401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '112401'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '112401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '112401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '112401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '112401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '112401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '112401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '112401'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '112401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '112401');

CREATE OR REPLACE TABLE result_table_112401 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_112401
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_112401
LIMIT 12
) AS result_table_112401);

SELECT *
FROM result_table_112401
ORDER BY growth_of_prices ;

CREATE OR REPLACE TABLE t_prices_year_category_112704 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '112704'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '112704'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '112704'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '112704'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '112704'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '112704'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '112704'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '112704'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '112704'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '112704'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '112704'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '112704'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '112704');

CREATE OR REPLACE TABLE result_table_112704 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_112704
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_112704
LIMIT 12
) AS result_table_112704);

SELECT *
FROM result_table_112704
ORDER BY growth_of_prices ;

CREATE OR REPLACE TABLE t_prices_year_category_114201 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '114201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '114201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '114201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '114201'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '114201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '114201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '114201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '114201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '114201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '114201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '114201'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '114201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '114201');

CREATE OR REPLACE TABLE result_table_114201 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_114201
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_114201
LIMIT 12
) AS result_table_114201);

SELECT *
FROM result_table_114201
ORDER BY growth_of_prices ;

CREATE OR REPLACE TABLE t_prices_year_category_114401 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '114401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '114401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '114401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '114401'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '114401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '114401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '114401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '114401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '114401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '114401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '114401'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '114401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '114401');

CREATE OR REPLACE TABLE result_table_114401 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_114401
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_114401
LIMIT 12
) AS result_table_114401);

SELECT *
FROM result_table_114401
ORDER BY growth_of_prices ;

CREATE OR REPLACE TABLE t_prices_year_category_114501 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '114501'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '114501'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '114501'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '114501'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '114501'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '114501'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '114501'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '114501'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '114501'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '114501'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '114501'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '114501'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '114501');

CREATE OR REPLACE TABLE result_table_114501 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_114501
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_114501
LIMIT 12
) AS result_table_114501);

SELECT *
FROM result_table_114501
ORDER BY growth_of_prices ;

CREATE OR REPLACE TABLE t_prices_year_category_114701 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '114701'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '114701'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '114701'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '114701'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '114701'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '114701'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '114701'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '114701'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '114701'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '114701'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '114701'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '114701'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '114701');

CREATE OR REPLACE TABLE result_table_114701 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_114701
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_114701
LIMIT 12
) AS result_table_114701);

SELECT *
FROM result_table_114701
ORDER BY growth_of_prices_114701 ;

CREATE OR REPLACE TABLE t_prices_year_category_115101 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '115101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '115101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '115101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '115101'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '115101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '115101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '115101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '115101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '115101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '115101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '115101'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '115101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '115101');

CREATE OR REPLACE TABLE result_table_115101 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_115101
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_115101
LIMIT 12
) AS result_table_115101);

SELECT *
FROM result_table_115101
ORDER BY growth_of_prices_115101 ;

CREATE OR REPLACE TABLE t_prices_year_category_115201 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '115201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '115201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '115201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '115201'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '115201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '115201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '115201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '115201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '115201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '115201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '115201'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '115201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '115201');

CREATE OR REPLACE TABLE result_table_115201 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_115201
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_115201
LIMIT 12
) AS result_table_115201);

SELECT *
FROM result_table_115201
ORDER BY growth_of_prices_115201 ;

CREATE OR REPLACE TABLE t_prices_year_category_116101 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '116101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '116101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '116101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '116101'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '116101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '116101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '116101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '116101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '116101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '116101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '116101'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '116101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '116101');

CREATE OR REPLACE TABLE result_table_116101 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_116101
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_116101
LIMIT 12
) AS result_table_116101);

SELECT *
FROM result_table_116101
ORDER BY growth_of_prices_116101 ;

CREATE OR REPLACE TABLE t_prices_year_category_116103 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '116103'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '116103'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '116103'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '116103'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '116103'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '116103'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '116103'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '116103'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '116103'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '116103'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '116103'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '116103'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '116103');

CREATE OR REPLACE TABLE result_table_116103 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_116103
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_116103
LIMIT 12
) AS result_table_116103);

SELECT *
FROM result_table_116103
ORDER BY growth_of_prices_116103 ;

CREATE OR REPLACE TABLE t_prices_year_category_116104 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '116104'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '116104'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '116104'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '116104'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '116104'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '116104'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '116104'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '116104'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '116104'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '116104'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '116104'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '116104'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '116104');

CREATE OR REPLACE TABLE result_table_116104 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_116104
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_116104
LIMIT 12
) AS result_table_116104);

SELECT *
FROM result_table_116104
ORDER BY growth_of_prices_116104 ;

CREATE OR REPLACE TABLE t_prices_year_category_117101 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '117101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '117101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '117101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '117101'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '117101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '117101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '117101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '117101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '117101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '117101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '117101'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '117101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '117101');

CREATE OR REPLACE TABLE result_table_117101 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_117101
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_117101
LIMIT 12
) AS result_table_117101);

SELECT *
FROM result_table_117101
ORDER BY growth_of_prices_117101 ;

CREATE OR REPLACE TABLE t_prices_year_category_117103 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '117103'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '117103'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '117103'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '117103'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '117103'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '117103'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '117103'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '117103'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '117103'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '117103'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '117103'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '117103'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '117103');

CREATE OR REPLACE TABLE result_table_117103 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_117103
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_117103
LIMIT 12
) AS result_table_117103);

SELECT *
FROM result_table_117103
ORDER BY growth_of_prices_117103 ;

CREATE OR REPLACE TABLE t_prices_year_category_117106 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '117106'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '117106'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '117106'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '117106'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '117106'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '117106'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '117106'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '117106'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '117106'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '117106'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '117106'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '117106'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '117106');

CREATE OR REPLACE TABLE result_table_117106 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_117106
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_117106
LIMIT 12
) AS result_table_117106);

SELECT *
FROM result_table_117106
ORDER BY growth_of_prices_117106 ;

CREATE OR REPLACE TABLE t_prices_year_category_117401 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '117401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '117401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '117401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '117401'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '117401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '117401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '117401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '117401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '117401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '117401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '117401'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '117401'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '117401');

CREATE OR REPLACE TABLE result_table_117401 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_117401
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_117401
LIMIT 12
) AS result_table_117401);

SELECT *
FROM result_table_117401
ORDER BY growth_of_prices_117401 ;

CREATE OR REPLACE TABLE t_prices_year_category_118101 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '118101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '118101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '118101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '118101'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '118101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '118101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '118101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '118101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '118101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '118101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '118101'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '118101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '118101');

CREATE OR REPLACE TABLE result_table_118101 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_118101
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_118101
LIMIT 12
) AS result_table_118101);

SELECT *
FROM result_table_118101
ORDER BY growth_of_prices_118101 ;

CREATE OR REPLACE TABLE t_prices_year_category_122102 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '122102'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '122102'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '122102'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '122102'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '122102'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '122102'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '122102'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '122102'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '122102'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '122102'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '122102'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '122102'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '122102');

CREATE OR REPLACE TABLE result_table_122102 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_122102
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_122102
LIMIT 12
) AS result_table_122102);

SELECT *
FROM result_table_122102
ORDER BY growth_of_prices_122102 ;

CREATE OR REPLACE TABLE t_prices_year_category_212101 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '212101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '212101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '212101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '212101'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '212101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '212101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '212101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '212101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '212101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '212101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '212101'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '212101'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '212101');

CREATE OR REPLACE TABLE result_table_212101 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_212101
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_212101
LIMIT 12
) AS result_table_212101);

SELECT *
FROM result_table_212101
ORDER BY growth_of_prices_212101 ;

CREATE OR REPLACE TABLE t_prices_year_category_213201 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '213201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '213201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '213201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '213201'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '213201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '213201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '213201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '213201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '213201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '213201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '213201'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '213201'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '213201');

CREATE OR REPLACE TABLE result_table_213201 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_213201
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_213201
LIMIT 12
) AS result_table_213201);

SELECT *
FROM result_table_213201
ORDER BY growth_of_prices_213201 ;

CREATE OR REPLACE TABLE t_prices_year_category_2000001 AS(
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2006-01-01' AND '2006-12-31'
AND food_category = '2000001'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2007-01-01' AND '2007-12-31'
AND food_category = '2000001'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2008-01-01' AND '2008-12-31'
AND food_category = '2000001'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2009-01-01' AND '2009-12-31'
AND food_category = '2000001'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2010-01-01' AND '2010-12-31'
AND food_category = '2000001'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2011-01-01' AND '2011-12-31'
AND food_category = '2000001'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2012-01-01' AND '2012-12-31'
AND food_category = '2000001'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2013-01-01' AND '2013-12-31'
AND food_category = '2000001'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2014-01-01' AND '2014-12-31'
AND food_category = '2000001'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2015-01-01' AND '2015-12-31'
AND food_category = '2000001'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2016-01-01' AND '2016-12-31'
AND food_category = '2000001'
UNION
SELECT food_category , price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2017-01-01' AND '2017-12-31'
AND food_category = '2000001'
UNION
SELECT food_category, price_measured_from, 
round(AVG(food_price),2 ) AS average_price
FROM t_zuzana_polakova_project_sql_primary_final tzppspf
WHERE price_measured_from BETWEEN '2018-01-01' AND '2018-12-31'
AND food_category = '2000001');

CREATE OR REPLACE TABLE result_table_2000001 AS (
SELECT price_year+1 AS year_of_difference, ROUND(((average_price_next_year-average_price)/average_price*100), 2) AS growth_of_prices_2000001
FROM
(SELECT YEAR (price_measured_from) AS price_year, food_category, average_price, LEAD(average_price) OVER (ORDER BY price_measured_from) AS average_price_next_year
FROM  t_prices_year_category_2000001
LIMIT 12
) AS result_table_2000001);

SELECT *
FROM result_table_2000001
ORDER BY growth_of_prices_2000001 ;Â¨

SELECT*
FROM t_growth_of_prices_for_category;

CREATE OR REPLACE TABLE t_growth_of_prices_for_category AS (
SELECT rt1.year_of_difference, growth_of_prices_111101, growth_of_prices_111201, growth_of_prices_111301, growth_of_prices_111303
growth_of_prices_111602, growth_of_prices_112101, growth_of_prices_112201, growth_of_prices_112401, growth_of_prices_112704,
growth_of_prices_114201,growth_of_prices_114401, growth_of_prices_114501, growth_of_prices_114701, growth_of_prices_115101,
growth_of_prices_115201, growth_of_prices_116101, growth_of_prices_116103, growth_of_prices_116104,
growth_of_prices_117101,growth_of_prices_117103,growth_of_prices_117106,growth_of_prices_117401,growth_of_prices_118101,
growth_of_prices_122102, growth_of_prices_212101,growth_of_prices_213201,growth_of_prices_2000001
FROM result_table_111101 rt1
LEFT JOIN result_table_111201 rt2
ON rt1.year_of_difference=rt2.year_of_difference 
LEFT JOIN result_table_111301 rt3
ON rt1.year_of_difference=rt3.year_of_difference
LEFT JOIN result_table_111303 rt4
ON rt1.year_of_difference=rt4.year_of_difference
LEFT JOIN result_table_111602 rt5
ON rt1.year_of_difference=rt5.year_of_difference
LEFT JOIN result_table_112101 rt6
ON rt1.year_of_difference=rt6.year_of_difference
LEFT JOIN result_table_112201 rt7
ON rt1.year_of_difference=rt7.year_of_difference
LEFT JOIN result_table_112401 rt8
ON rt1.year_of_difference=rt8.year_of_difference
LEFT JOIN result_table_112704 rt9
ON rt1.year_of_difference=rt9.year_of_difference
LEFT JOIN result_table_114201 rt10
ON rt1.year_of_difference=rt10.year_of_difference
LEFT JOIN result_table_114401 rt11
ON rt1.year_of_difference=rt11.year_of_difference
LEFT JOIN result_table_114501 rt12
ON rt1.year_of_difference=rt12.year_of_difference
LEFT JOIN result_table_114701 rt13
ON rt1.year_of_difference=rt13.year_of_difference
LEFT JOIN result_table_115101 rt14
ON rt1.year_of_difference=rt14.year_of_difference
LEFT JOIN result_table_115201 rt15
ON rt1.year_of_difference=rt15.year_of_difference
LEFT JOIN result_table_116101 rt16
ON rt1.year_of_difference=rt16.year_of_difference
LEFT JOIN result_table_116103 rt17
ON rt1.year_of_difference=rt17.year_of_difference
LEFT JOIN result_table_116104 rt18
ON rt1.year_of_difference=rt18.year_of_difference
LEFT JOIN result_table_117101 rt19
ON rt1.year_of_difference=rt19.year_of_difference
LEFT JOIN result_table_117103 rt20
ON rt1.year_of_difference=rt20.year_of_difference
LEFT JOIN result_table_117106 rt21
ON rt1.year_of_difference=rt21.year_of_difference
LEFT JOIN result_table_117401 rt22
ON rt1.year_of_difference=rt22.year_of_difference
LEFT JOIN result_table_118101 rt23
ON rt1.year_of_difference=rt23.year_of_difference
LEFT JOIN result_table_122102 rt24
ON rt1.year_of_difference=rt24.year_of_difference
LEFT JOIN result_table_212101 rt25
ON rt1.year_of_difference=rt25.year_of_difference
LEFT JOIN result_table_213201 rt26
ON rt1.year_of_difference=rt26.year_of_difference
LEFT JOIN result_table_2000001 rt27
ON rt1.year_of_difference=rt27.year_of_difference);

SELECT 
FROM t_growth_of_prices_for_category;

