SELECT 
T1.farm_name AS farm,
count(T3.analysis_id) AS analyses_count,
ROUND(AVG(T3.cup_score), 2) AS avg_cup_score
from farm.farms AS T1 INNER JOIN  buy.deliveries AS T2 ON T1.farm_id = T2.farm_id INNER JOIN buy.quality_analyses AS T3 ON T2.delivery_id = T3.delivery_id
GROUP BY T1.farm_id, T1.farm_name
HAVING count(T3.analysis_id)>= 3 AND ROUND(AVG(T3.cup_score),2)>= 84 
ORDER BY avg_cup_score DESC;

/**
       farm       | analyses_count | avg_cup_score
------------------+----------------+---------------
 Las Mercedes     |              3 |         90.00
 La Cristalina    |              4 |         90.00
 Los Pinos        |              7 |         90.00
 Las Delicias     |              5 |         90.00
 El Porvenir      |              4 |         90.00
 La Unión         |              3 |         90.00
 El Encanto       |              3 |         90.00
 El Higuerón      |              6 |         90.00
 Altamira         |              3 |         90.00
 El Mango         |              7 |         90.00
 Monte Alto       |              3 |         90.00
 El Cedro         |              3 |         90.00
 El Cafetal       |              4 |         90.00
 El Placer        |              5 |         90.00
 El Triunfo       |              6 |         90.00
 El Refugio       |              3 |         90.00
 La Selva         |              3 |         90.00
 Las Margaritas   |              3 |         90.00
 La Quebrada      |              5 |         90.00
 La Floresta      |              6 |         90.00
 El Higuerón      |              3 |         90.00
 La Selva         |              4 |         90.00
 Cafetal Viejo    |              4 |         90.00
 El Tesoro        |              3 |         90.00
 La Reserva       |              3 |         90.00
 La Cabaña        |              5 |         90.00
 El Cafetal       |              3 |         90.00
-- Más  --
se agrupa por farm_id porque farm_name se repite entre fincas (98 nombres para 232.394 fincas)

**/