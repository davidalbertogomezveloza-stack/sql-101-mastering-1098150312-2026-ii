SELECT
analysis_id AS analysis,
delivery_id AS delivery,
moisture_pct,
yield_factor ,
cup_score,
analyst_name,
observations
FROM buy.quality_analyses
WHERE analysis_id LIKE 'QA-20260930%' AND is_accepted='f' AND observations IS NOT NULL
ORDER BY defects_pct  DESC;
/**
      analysis      |      delivery       | moisture_pct | yield_factor | cup_score |    analyst_name    |                observations
--------------------+---------------------+--------------+--------------+-----------+--------------------+---------------------------------------------
 QA-20260930-000104 | DLV-20260930-000214 |        17.68 |        97.46 |     82.59 | Carolina Rodríguez | Olor a fermento en la muestra.
 QA-20260930-000068 | DLV-20260930-000165 |        16.13 |       100.22 |           | Germán Peña        | Muestra tomada por duplicado.
 QA-20260930-000119 | DLV-20260930-000253 |         8.39 |       106.52 |     84.33 | Aníbal Pabón       | Exceso de impurezas y pasilla.
 QA-20260930-000086 | DLV-20260930-000147 |        15.20 |        96.57 |           | Erika Restrepo     | Olor a fermento en la muestra.
 QA-20260930-000113 | DLV-20260930-000223 |         9.57 |        99.70 |     85.05 | Reinaldo Bermúdez  | Café sobresecado, grano quebradizo.
 QA-20260930-000022 | DLV-20260930-000070 |        12.95 |       103.55 |           | Santiago Rojas     | Café con humedad alta, requiere más secado.
 QA-20260930-000018 | DLV-20260930-000006 |        17.24 |       103.31 |     79.98 | Nicolás Serrano    | Café con humedad alta, requiere más secado.
(7 filas)
**/