SELECT
 municipality_code ,
 municipality_name AS municipality
FROM geo.municipalities
WHERE municipality_name ILIKE  '%Pamplona%';
/**
 municipality_code | municipality
-------------------+--------------
 54518             | Pamplona
(1 fila)
**/