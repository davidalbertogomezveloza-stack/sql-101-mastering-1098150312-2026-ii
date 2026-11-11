 -- Exercise 05 - a
-- Coffee varieties: name in uppercase, species in lowercase and name length

SELECT
UPPER(variety_name) AS variety_upper,
LOWER(species) AS species,
LENGTH(variety_name) AS name_length
FROM farm.coffee_varieties AS T1
ORDER BY name_length DESC, variety_name ASC;
/**
 variety_upper | species | name_length
---------------+---------+-------------
 BORBÓN ROSADO | arabica |          13
 CENICAFÉ 1    | arabica |          10
 MARAGOGIPE    | arabica |          10
 CASTILLO      | arabica |           8
 COLOMBIA      | arabica |           8
 PACAMARA      | arabica |           8
 CATURRA       | arabica |           7
 ROBUSTA       | robusta |           7
 BORBÓN        | arabica |           6
 GEISHA        | arabica |           6
 TÍPICA        | arabica |           6
 TABI          | arabica |           4
(12 filas)
**/