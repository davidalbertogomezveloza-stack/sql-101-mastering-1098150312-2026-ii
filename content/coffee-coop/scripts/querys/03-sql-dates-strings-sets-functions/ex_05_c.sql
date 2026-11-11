-- Exercise 05 - c
-- Code and name of the department 'Norte de Santander': exact comparison and comparison with UPPER

-- Query 1: exact comparison
SELECT
department_code AS code,
department_name AS department
FROM geo.departments 
WHERE department_name = 'Norte de Santander';
/**
 code | department
------+------------
(0 filas)
**/

-- Query 2: comparison with UPPER on both sides
SELECT
department_code AS code,
department_name AS department
FROM geo.departments 
WHERE UPPER(department_name) = UPPER('Norte de Santander');
/**
 code |     department
------+--------------------
 54   | Norte De Santander
(1 fila)
**/
/**
En la primera consulta  en el WHERE se escribio  exactamente 'Norte de Santander', con la «d» de «de» en minúscula. Pero en la base de datos el departamento está guardado como Norte De Santander, con la «D» de «De» en mayúscula. PostgreSQL, cuando compara textos con =, distingue entre mayúsculas y minúsculas, así que para él de y De son textos diferentes. Por eso la primera consulta no encontró ninguna fila.

En la segunda consulta usé UPPER en los dos lados de la comparación. UPPER convierte los dos textos a mayúscula sostenida antes de compararlos, y entonces ambos quedan como NORTE DE SANTANDER. Ya no importa cómo se escribió cada uno, y por eso la segunda consulta sí devolvió el departamento.**/