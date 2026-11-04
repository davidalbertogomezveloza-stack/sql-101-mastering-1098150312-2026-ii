SELECT 
coffee_type,
COUNT(*) AS deliveries_count,
SUM(gross_weight_kg) AS total_gross_kg
FROM buy.deliveries
WHERE delivery_id LIKE 'DLV-20260930-%'
GROUP BY   coffee_type
ORDER BY total_gross_kg desc;
/**
  coffee_type  | deliveries_count | total_gross_kg
---------------+------------------+----------------
 dry_parchment |              278 |       48246.55
 cherry        |               10 |        2053.16
 wet_parchment |               12 |        1891.25
(3 filas)
**/