SELECT
 municipality_code ,
 municipality_name AS municipality
FROM geo.municipalities
WHERE department_code= '54' AND municipality_name LIKE 'San%'
ORDER BY municipality_name;
/**
 municipality_code | municipality
-------------------+--------------
 54670             | San Calixto
 54673             | San Cayetano
 54680             | Santiago
(3 filas)
**/