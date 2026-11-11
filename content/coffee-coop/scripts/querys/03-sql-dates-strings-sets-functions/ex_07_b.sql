-- Exercise 07 - b
-- Municipality codes of Norte de Santander where a farmer lives, united with those where there is a farm

-- Version 1: UNION
SELECT
T1.municipality_code AS municipality_code
FROM farm.farmers AS T1
WHERE T1.municipality_code LIKE '54%'
UNION
SELECT
T2.municipality_code
FROM farm.farms AS T2
WHERE T2.municipality_code LIKE '54%'
ORDER BY municipality_code ASC;
/**
 municipality_code
-------------------
 54001
 54003
 54051
 54099
 54109
 54125
 54128
 54172
 54174
 54206
 54223
 54239
 54245
 54250
 54261
 54313
 54344
 54347
 54377
 54385
 54398
 54405
 54418
 54480
 54498
 54518
 54520
 54553
 54599
 54660
 54670
 54673
 54680
 54720
 54743
 54800
 54810
 54820
 54871
 54874
(40 filas)
**/

-- Version 2: UNION ALL
SELECT
T1.municipality_code AS municipality_code
FROM farm.farmers AS T1
WHERE T1.municipality_code LIKE '54%'
UNION ALL
SELECT
T2.municipality_code
FROM farm.farms AS T2
WHERE T2.municipality_code LIKE '54%'
ORDER BY municipality_code ASC;
/**
municipality_code
-------------------
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 **/
 /** EXPLANATION :  Con UNION elimina los repetidos, así que sale un código por municipio: máximo 40 filas, porque Norte de Santander tiene 40 municipios.
 Pero con UNION ALL: conserva todo, cada asociado y cada finca aporta su propia fila, así que el resultado es muy largo, con miles de filas.**/
