-- Exercise 09 - b
-- Test the delivery-count function with a collection point and date
CREATE OR REPLACE FUNCTION farm.fn_age_years(p_birth_date DATE, p_reference_date DATE) 
RETURNS INT 
LANGUAGE plpgsql
AS 
$$
DECLARE
age_years INT;
BEGIN
 SELECT DATE_PART('year', AGE(p_reference_date, p_birth_date)) INTO age_years;

    RETURN age_years;
END;
$$;


SELECT
document_number AS document,
first_name AS first_name,
last_name AS last_name,
farm.fn_age_years(birth_date, DATE '2026-09-30') AS age_years,
farm.fn_age_years(birth_date, membership_date) AS age_at_membership
FROM farm.farmers 
WHERE municipality_code = '54518'
ORDER BY age_at_membership ASC
LIMIT 10;
/*
  document  |   first_name   |     last_name     | age_years | age_at_membership
------------+----------------+-------------------+-----------+-------------------
 92240743   | Mario          | Ríos Ibarra       |        27 |                18
 1180237528 | Ángela Beatriz | Sandoval Bermúdez |        29 |                18
 571748382  | Marleny        | Pinzón Delgado    |        35 |                18
 333176982  | Edilma         | Rivera Rivera     |        30 |                18
 1090968710 | Ruth           | Rodríguez Pérez   |        34 |                18
 455264704  | Valentina      | Mora Rangel       |        26 |                18
 211924295  | Álvaro         | Valencia Rivera   |        30 |                18
 700421194  | Teresa         | Torres Giraldo    |        27 |                18
 463842401  | Rocío          | Álvarez Cárdenas  |        26 |                18
 1196615388 | Fernando       | Burbano Flórez    |        27 |                18
(10 filas)
*/