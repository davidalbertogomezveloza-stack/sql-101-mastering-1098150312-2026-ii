SELECT
COUNT(*) AS total_deliveries, 
SUM(gross_weight_kg) AS total_gross_kg,
ROUND(AVG(gross_weight_kg), 2) AS avg_gross_kg
FROM buy.deliveries 
WHERE delivery_id LIKE 'DLV-20260930-%';
/**
total_deliveries | total_gross_kg | avg_gross_kg
------------------+----------------+--------------
              300 |       52190.96 |       173.97
(1 fila)
**/