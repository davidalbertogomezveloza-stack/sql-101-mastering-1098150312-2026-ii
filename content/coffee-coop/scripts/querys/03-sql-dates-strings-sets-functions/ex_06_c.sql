-- Exercise 06 - c
-- Deliveries of 2026-09-30 received at Punto de Compra Bochalema 1 (id 163), with the code split into parts

SELECT
delivery_id AS delivery,
SUBSTRING(delivery_id FROM 1 FOR 3) AS prefix,
SUBSTRING(delivery_id FROM 5 FOR 8) AS date_code,
SUBSTRING(delivery_id FROM 14 FOR 6) AS sequence_code,
delivered_at AS delivered_at
FROM buy.deliveries 
WHERE collection_point_id = 163 AND delivery_id LIKE 'DLV-20260930-%'
ORDER BY delivery_id ASC;
/**
   delivery       | prefix | date_code | sequence_code |    delivered_at
---------------------+--------+-----------+---------------+---------------------
 DLV-20260930-000063 | DLV    | 20260930  | 000063        | 2026-09-30 08:04:43
 DLV-20260930-000077 | DLV    | 20260930  | 000077        | 2026-09-30 08:53:06
 DLV-20260930-000141 | DLV    | 20260930  | 000141        | 2026-09-30 11:11:53
 DLV-20260930-000233 | DLV    | 20260930  | 000233        | 2026-09-30 14:36:39
(4 filas)
**/