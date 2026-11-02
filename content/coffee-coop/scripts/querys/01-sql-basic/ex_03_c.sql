SELECT
certification_id,
certification_name,
issuing_body,
premium_per_kg,
(premium_per_kg * 125) AS premium_per_load_cop
FROM farm.certifications
WHERE premium_per_kg >= 350;
/**
certification_id | certification_name |           issuing_body            | premium_per_kg | premium_per_load_cop
------------------+--------------------+-----------------------------------+----------------+----------------------
                2 | Fairtrade          | Fairtrade International           |         400.00 |             50000.00
                4 | Orgánico           | Ente certificador orgánico        |         800.00 |            100000.00
                6 | Nespresso AAA      | Nespresso / Rainforest Alliance   |         350.00 |             43750.00
                7 | Bird Friendly      | Smithsonian Migratory Bird Center |         500.00 |             62500.00
(4 filas)
**/
