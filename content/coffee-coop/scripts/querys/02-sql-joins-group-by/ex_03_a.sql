SELECT
T2.point_name AS collection_point,
T1.delivery_id AS delivery,
T1.gross_weight_kg AS gross_weight_kg
FROM buy.deliveries AS T1 RIGHT JOIN buy.collection_points AS T2  ON T1.collection_point_id = T2.collection_point_id  AND T1.delivery_id LIKE 'DLV-20260930-%';
/** 
La condición de la fecha va en el ON . Así el filtro se aplica antes de completar con NULL, y los puntos de compra sin entregas ese día siguen apareciendo
               collection_point               |      delivery       | gross_weight_kg
----------------------------------------------+---------------------+-----------------
 Punto de Compra Abriaquí 1                   | DLV-20260930-000164 |           48.18
 Punto de Compra Baraya 1                     | DLV-20260930-000165 |          348.59
 Punto de Compra Ansermanuevo 1               | DLV-20260930-000166 |          245.94
 Punto de Compra Jambaló 1                    | DLV-20260930-000167 |          209.25
 Punto de Compra La Plata 2                   | DLV-20260930-000168 |          173.46
 Punto de Compra San Lorenzo 1                | DLV-20260930-000169 |           49.26
 Punto de Compra Jambaló 1                    | DLV-20260930-000001 |           51.53
 Punto de Compra El Playón 1                  | DLV-20260930-000083 |           89.95
 Punto de Compra San Sebastián De Mariquita 1 | DLV-20260930-000084 |          131.42
 Punto de Compra La Merced 1                  | DLV-20260930-000085 |          239.20
 Punto de Compra Nátaga 1                     | DLV-20260930-000086 |           84.05
 Punto de Compra Algeciras 1                  | DLV-20260930-000087 |          116.95
 Punto de Compra Confines 1                   | DLV-20260930-000088 |          220.61
 Punto de Compra Villarrica 1                 | DLV-20260930-000089 |          229.80
 Punto de Compra Sevilla 1                    | DLV-20260930-000090 |          154.09
 Punto de Compra Morales 1                    | DLV-20260930-000091 |          139.14
 Punto de Compra Pijao 1                      | DLV-20260930-000092 |           59.23
 Punto de Compra Salamina 2                   | DLV-20260930-000093 |           39.42
 Punto de Compra Acevedo 1                    | DLV-20260930-000094 |          246.96
 Punto de Compra Sopetrán 1                   | DLV-20260930-000095 |          116.81
 Punto de Compra El Rosario 1                 | DLV-20260930-000096 |           53.57
 Punto de Compra Turbo 1                      | DLV-20260930-000097 |          146.99
 Punto de Compra Tibaná 1                     | DLV-20260930-000098 |           92.63
 Punto de Compra Teruel 1                     | DLV-20260930-000099 |          103.07
 Punto de Compra Popayán 1                    | DLV-20260930-000100 |          106.62
 Punto de Compra Paicol 1                     | DLV-20260930-000101 |          198.24
 Punto de Compra San Andrés De Tumaco 2       | DLV-20260930-000102 |           94.30
 Punto de Compra Turbo 2                      | DLV-20260930-000103 |          250.86
-- Más  --
**/