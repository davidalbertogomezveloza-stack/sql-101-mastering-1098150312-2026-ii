-- Exercise 03 - a
-- Analyze deliveries in September 2026 by day of the week
-- Exercise 03 - a
-- Analyze deliveries in September 2026 by day of the week

SELECT
EXTRACT(DOW FROM delivered_at) AS day_of_week,
COUNT(*) AS deliveries_count,
SUM(gross_weight_kg) AS total_gross_weight_kg
FROM buy.deliveries 
WHERE EXTRACT(YEAR FROM delivered_at) = 2026 AND EXTRACT(MONTH FROM delivered_at) = 9
GROUP BY day_of_week
ORDER BY day_of_week ASC;
/**
 day_of_week | deliveries_count | total_gross_weight_kg
-------------+------------------+-----------------------
           0 |             1230 |             221024.65
           1 |             1234 |             221199.72
           2 |             1515 |             263977.32
           3 |             1511 |             269496.31
           4 |             1250 |             221423.80
           5 |             1237 |             219113.26
           6 |             1207 |             217700.09
(7 filas)
**/