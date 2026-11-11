-- Exercise 05 - b
-- Municipality of Norte de Santander with the longest name and its length
SELECT
municipality_name AS municipality,
LENGTH(municipality_name) AS name_length
FROM geo.municipalities 
WHERE department_code = '54'
ORDER BY name_length DESC, 
municipality_name ASC
LIMIT 1;
/**
   municipality    | name_length
-------------------+-------------
 Villa Del Rosario |          17
(1 fila)
**/