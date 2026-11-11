-- Exercise 04 - c
-- Deliveries of 2026 by week of the year (36 to 40): deliveries count and first and last day of the year with data

SELECT
EXTRACT(week FROM delivered_at) AS week_number,
COUNT(*) AS deliveries_count,
MIN(EXTRACT(doy FROM delivered_at)) AS first_day_of_year,
MAX(EXTRACT(doy FROM delivered_at)) AS last_day_of_year
FROM buy.deliveries 
WHERE EXTRACT(year FROM delivered_at) = 2026  AND EXTRACT(week FROM delivered_at) BETWEEN 36 AND 40
GROUP BY EXTRACT(week FROM delivered_at)
ORDER BY week_number ASC;
/**
week_number | deliveries_count | first_day_of_year | last_day_of_year
-------------+------------------+-------------------+------------------
          36 |             2146 |               243 |              249
          37 |             2151 |               250 |              256
          38 |             2099 |               257 |              263
          39 |             2104 |               264 |              270
          40 |              928 |               271 |              273
(5 filas)
**/
/**   EXPLANATION:ESTA SEMANA TIENE MENOS ENTREEGAS PORQUE NO ESTA COMPLETA PORQUE INCLUYE LOS DIAS  HASTA EL 30 DE SEPTIEMBRE DEL 2026 ,POR LO QUE ESA SEMANA LE FALTAN DIAS**/