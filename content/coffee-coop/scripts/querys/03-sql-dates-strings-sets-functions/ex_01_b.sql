SELECT 
document_number AS document,
first_name,
last_name,
AGE(DATE '2026-09-30',membership_date) AS membership_age,
DATE_PART('year',AGE(DATE '2026-09-30',membership_date)) AS membership_years
FROM farm.farmers
WHERE municipality_code='54518'
ORDER BY membership_age DESC
LIMIT 10;
/**
-- Exercise 01 - b
-- Top 10 oldest farmers of municipality 54518: membership age at 2026-09-30 with AGE and years with DATE_PART
  document  |    first_name    |     last_name      |     membership_age      | membership_years
------------+------------------+--------------------+-------------------------+------------------
 402745033  | Julián Guillermo | Valencia Narváez   | 31 years 8 mons 3 days  |               31
 361839624  | Rocío Alba       | Ortega Serrano     | 31 years 2 mons 20 days |               31
 546579335  | Wilson           | Parra Prada        | 31 years 2 mons 2 days  |               31
 939635303  | Marleny          | Álvarez Correa     | 30 years 6 mons 10 days |               30
 748380481  | Teresa Adriana   | Valencia Moreno    | 30 years 2 mons 7 days  |               30
 1012324420 | Martha Carolina  | Pérez Jaimes       | 29 years 10 mons 8 days |               29
 230971064  | Manuel           | Agudelo Jiménez    | 29 years 6 mons 1 day   |               29
 483692716  | Ramiro           | Barrera Villamizar | 29 years 5 mons 22 days |               29
 677772599  | Guillermo        | Pérez Pérez        | 29 years 4 mons 13 days |               29
 59388780   | Juan             | Ortega Zapata      | 29 years 2 mons 17 days |               29
(10 filas)
**/
/**
En el literal a) se calcula la antiguedad con CURRENT_DATE - membership_date. Como CURRENT_DATE es la fecha de hoy, cada dia que ejecuto la consulta el resultado sube en un dia, asi que los dias de antiguedad nunca son los mismos.

En el literal b) se usa una fecha fija, el 30 de septiembre de 2026, dentro de AGE. Como esa fecha no cambia, la antiguedad da siempre el mismo resultado sin importar cuando se ejecute la consulta.
**/