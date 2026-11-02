SELECT
certification_id,
certification_name,
issuing_body,
premium_per_kg,
(premium_per_kg * 125) AS premium_per_load_cop
FROM farm.certifications;
/**
 certification_id | certification_name  |           issuing_body            | premium_per_kg | premium_per_load_cop
------------------+---------------------+-----------------------------------+----------------+----------------------
                1 | Rainforest Alliance | Rainforest Alliance               |         300.00 |             37500.00
                2 | Fairtrade           | Fairtrade International           |         400.00 |             50000.00
                3 | 4C                  | 4C Services                       |         150.00 |             18750.00
                4 | Orgánico            | Ente certificador orgánico        |         800.00 |            100000.00
                5 | C.A.F.E. Practices  | Starbucks / SCS Global Services   |         250.00 |             31250.00
                6 | Nespresso AAA       | Nespresso / Rainforest Alliance   |         350.00 |             43750.00
                7 | Bird Friendly       | Smithsonian Migratory Bird Center |         500.00 |             62500.00
(7 filas)
**/