-- Exercise 02 - b
-- Count farmers and calculate average age by gender
SELECT 
gender,
COUNT(*) AS farmers_count,
ROUND(AVG(DATE_PART('year', AGE(DATE '2026-09-30', birth_date)))::NUMERIC, 2) AS avg_age_years
FROM farm.farmers
WHERE municipality_code='54518'
GROUP BY gender;
/**
 gender | farmers_count | avg_age_years
--------+---------------+---------------
 F      |           111 |         49.59
 M      |           115 |         51.31
 O      |             4 |         46.25
(3 filas)
**/























































































