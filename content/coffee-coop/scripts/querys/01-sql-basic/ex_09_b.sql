SELECT
analysis_id AS analysis,
delivery_id AS delivery,
moisture_pct,
yield_factor ,
cup_score,
analyst_name,
observations
FROM buy.quality_analyses
WHERE analysis_id LIKE 'QA-20260930%' AND  moisture_pct NOT BETWEEN 10 AND 12
ORDER BY cup_score DESC;
/**
   analysis      |      delivery       | moisture_pct | yield_factor | cup_score |    analyst_name    |                          observations
--------------------+---------------------+--------------+--------------+-----------+--------------------+-----------------------------------------------------------------
 QA-20260930-000052 | DLV-20260930-000149 |        12.31 |        91.85 |           | Efraín Betancur    | Grano uniforme, buen secado.
 QA-20260930-000105 | DLV-20260930-000260 |        12.01 |        92.44 |           | Daniel Betancur    |
 QA-20260930-000109 | DLV-20260930-000272 |        12.18 |        95.93 |           | Jaime Ortega       |
 QA-20260930-000149 | DLV-20260930-000286 |        12.28 |        94.58 |           | Germán Peña        |
 QA-20260930-000012 | DLV-20260930-000057 |        12.16 |        92.79 |           | Guillermo Acevedo  |
 QA-20260930-000022 | DLV-20260930-000070 |        12.95 |       103.55 |           | Santiago Rojas     | Café con humedad alta, requiere más secado.
 QA-20260930-000025 | DLV-20260930-000083 |        16.00 |       102.88 |           | Germán Peña        |
 QA-20260930-000078 | DLV-20260930-000093 |        12.01 |        91.64 |           | Heriberto Galvis   |
 QA-20260930-000045 | DLV-20260930-000104 |        12.11 |        92.52 |           | Ruth Polanía       |
 QA-20260930-000035 | DLV-20260930-000115 |        12.31 |        90.58 |           | Santiago Rojas     | Muestra tomada por duplicado.
 QA-20260930-000076 | DLV-20260930-000116 |        12.08 |        91.70 |           | Germán González    |
 QA-20260930-000056 | DLV-20260930-000120 |        12.40 |        93.55 |           | Alejandra Torres   |
 QA-20260930-000099 | DLV-20260930-000131 |        12.15 |        92.38 |           | Gustavo Serrano    |
 QA-20260930-000077 | DLV-20260930-000144 |        12.25 |        92.93 |           | Emilio Polanía     |
 QA-20260930-000086 | DLV-20260930-000147 |        15.20 |        96.57 |           | Erika Restrepo     | Olor a fermento en la muestra.
 QA-20260930-000023 | DLV-20260930-000046 |        12.23 |        89.75 |           | Alejandra Torres   | Café de buena presentación, sin olores extraños.
 QA-20260930-000017 | DLV-20260930-000012 |        12.15 |        93.62 |           | Natalia Trujillo   |
 QA-20260930-000033 | DLV-20260930-000027 |        12.41 |        92.76 |           | Sara Sánchez       |
 QA-20260930-000027 | DLV-20260930-000043 |        12.07 |        92.47 |           | Germán González    | Caficultor solicita contramuestra.
-- Más  --
**/