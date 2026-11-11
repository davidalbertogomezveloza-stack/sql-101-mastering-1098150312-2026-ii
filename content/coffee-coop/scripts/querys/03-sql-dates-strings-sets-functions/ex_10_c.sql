-- Exercise 10 - c
-- Pending balance by collection point: non-cancelled settlements of the deliveries
-- of 2026-09-30, showing only the points with a total balance greater than 0

SELECT
T3.point_name AS collection_point,
COUNT(*) AS settlements_count,
SUM(pay.fn_settlement_balance(T1.settlement_id)) AS total_balance_cop
FROM pay.settlements AS T1 INNER JOIN buy.deliveries AS T2 ON T1.delivery_id = T2.delivery_id INNER JOIN buy.collection_points AS T3 ON T2.collection_point_id = T3.collection_point_id
WHERE T2.delivered_at::DATE = DATE '2026-09-30' AND T1.status <> 'cancelled'
GROUP BY T3.point_name
HAVING SUM(pay.fn_settlement_balance(T1.settlement_id)) > 0
ORDER BY total_balance_cop DESC;

/*
            collection_point            | settlements_count | total_balance_cop
----------------------------------------+-------------------+-------------------
 Punto de Compra San Francisco 1        |                 2 |        8483555.66
 Punto de Compra El Banco 1             |                 3 |        7874484.05
 Punto de Compra San Andrés De Tumaco 1 |                 2 |        7376967.21
 Punto de Compra Cajibío 3              |                 3 |        6400728.72
 Punto de Compra Manzanares 1           |                 2 |        6094824.45
 Punto de Compra Puerto Tejada 1        |                 2 |        6051013.94
 Punto de Compra El Bagre 1             |                 3 |        5013706.66
 Punto de Compra Sáchica 1              |                 1 |        4965142.70
 Punto de Compra Algeciras 1            |                 2 |        4135855.75
 Punto de Compra Turbo 1                |                 1 |        4023811.68
 Punto de Compra Bochalema 1            |                 2 |        3835395.90
 Punto de Compra Carmen De Apicalá 3    |                 1 |        3558394.56
 Punto de Compra Teruel 1               |                 2 |        3226895.19
 Punto de Compra Rioblanco 2            |                 1 |        3062643.10
 Punto de Compra Altamira 1             |                 1 |        2840302.58
 Punto de Compra Balboa 2               |                 1 |        2650830.73
 Punto de Compra Tello 1                |                 1 |        2432254.55
 Punto de Compra Herrán 2               |                 1 |        2212055.30
 Punto de Compra Popayán 1              |                 2 |        2000117.88
 Punto de Compra Tibaná 1               |                 1 |        1897343.72
 Punto de Compra Garzón 1               |                 1 |        1780119.24
 Punto de Compra Pacho 1                |                 1 |        1646071.75
 Punto de Compra El Playón 1            |                 1 |        1398228.24
 Punto de Compra Ocaña 1                |                 1 |        1313820.34
 Punto de Compra Armero Guayabal 2      |                 1 |        1296093.12
 Punto de Compra Bosconia 1             |                 1 |        1247639.70
 Punto de Compra Jambaló 1              |                 1 |        1200195.81
 Punto de Compra Villarrica 1           |                 1 |        1119580.57
 Punto de Compra Rionegro 1             |                 1 |         650532.86
(29 filas)
 
*/
/*
EXPLANATIONS
1. ¿Qué devolvería la función para una liquidación sin pagos si no se usara COALESCE?

Devolvería NULL. Cuando una liquidación no tiene pagos, SUM no encuentra filas y devuelve NULL, no 0, así que v_paid queda en NULL. Cualquier operación aritmética con NULL da NULL, por lo que v_net - v_paid también sería NULL. Lo correcto es que el saldo de una liquidación sin pagos sea todo su valor neto. COALESCE(v_paid, 0) convierte ese NULL en 0, y así v_net - 0 = v_net. Sin COALESCE, además, el literal c) tendría un problema: SUM ignora los NULL, así que esas liquidaciones sin pagos no aportarían su saldo al total del punto y la deuda pendiente quedaría subestimada.

2. ¿Qué pasa si se ejecuta dos veces el mismo CREATE OR REPLACE FUNCTION?

No ocurre ningún error. La primera ejecución crea la función y la segunda reemplaza la definición existente por una idéntica, sin duplicarla. Por eso los archivos .sql se pueden volver a ejecutar tal cual. Con CREATE FUNCTION a secas, la segunda ejecución fallaría porque la función ya existe. Hay un límite: CREATE OR REPLACE solo puede reemplazar si la firma (nombre y tipos de parámetros) y el tipo de retorno son los mismos. Si cambias el tipo de retorno, da error y hay que usar DROP FUNCTION pay.fn_settlement_balance(VARCHAR); antes. Si cambia los tipos de los parámetros, no la reemplaza: crea una segunda función con el mismo nombre (sobrecarga).
*/