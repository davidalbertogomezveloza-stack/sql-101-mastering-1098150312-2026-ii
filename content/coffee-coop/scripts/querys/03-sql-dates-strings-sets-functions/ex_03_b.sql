-- Exercise 03 - b
-- Calculate the number of deliveries and total gross weight by month in 2026

SELECT
EXTRACT(month FROM delivered_at) AS month_number,
COUNT(*) AS deliveries_count,
SUM(gross_weight_kg) AS total_gross_kg
FROM buy.deliveries 
WHERE EXTRACT(YEAR FROM delivered_at) = 2026 
GROUP BY month_number
ORDER BY month_number ASC;
/**
 month_number | deliveries_count | total_gross_kg
--------------+------------------+----------------
            1 |            10844 |     1936615.09
            2 |             6385 |     1130029.16
            3 |             8117 |     1432138.39
            4 |            12699 |     2245018.94
            5 |            15475 |     2729045.06
            6 |            12755 |     2269182.31
            7 |             8267 |     1471400.48
            8 |             7176 |     1274020.71
            9 |             9184 |     1633935.15
(9 filas)
**/
/**  EXPLANATION:EN LOS MESES QUE LLEGO MAS CAFE  4,5,6 es donde hubieron mas kg de cafe por lo tanto  en esos 3 meses hubo unas buena cosecha**/