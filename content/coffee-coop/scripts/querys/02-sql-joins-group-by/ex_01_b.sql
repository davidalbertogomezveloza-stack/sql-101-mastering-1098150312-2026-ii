SELECT
T1.farm_name AS farm,
T1.rural_district,
T3.municipality_name AS municipality,
T2.first_name,
T2.last_name 
FROM farm.farms AS T1 INNER JOIN farm.farmers AS T2 ON T1.farmer_id=T2.farmer_id  INNER JOIN geo.municipalities AS T3 ON T2.municipality_code=T3.municipality_code
WHERE T1.municipality_code = '54518'
ORDER BY T2.last_name ASC;
/**
       farm       |    rural_district    |        municipality         |     first_name     |      last_name
------------------+----------------------+-----------------------------+--------------------+---------------------
 El Jardín        | El Escorial          | Pamplona                    | Manuel             | Agudelo Jiménez
 La Selva         | Peñas                | Pamplona                    | Manuel             | Agudelo Jiménez
 El Diamante      | El Alizal            | Pamplona                    | Marleny            | Agudelo Sandoval
 El Encanto       | Fontibón             | Pamplona                    | Rocío              | Álvarez Cárdenas
 Bellavista       | Alto Grande          | Pamplona                    | Rocío              | Álvarez Cárdenas
 La Cabaña        | Lengua               | Pamplona                    | Mónica             | Álvarez Carrillo
 Monteverde       | Lengua               | Pamplona                    | Mónica             | Álvarez Carrillo
 El Arrayán       | Navarro              | Pamplona                    | Marleny            | Álvarez Correa
 El Mango         | La Legua             | Pamplona                    | Alberto            | Álvarez Villamizar
 Monteverde       | La Legua             | Pamplona                    | Myriam Yuliana     | Arango Narváez
 El Recuerdo      | La Legua             | Pamplona                    | Ancízar            | Arango Silva
 El Rosal         | Navarro              | Pamplona                    | Edilma Gabriela    | Arias Álvarez
 Monteverde       | El Palchal           | Pamplona                    | Edilma Gabriela    | Arias Álvarez
 Las Delicias     | Sabagua              | Pamplona                    | Camilo             | Arias Mora
 La Quebrada      | Navarro              | Pamplona                    | Viviana            | Arias Ramírez
 La Selva         | Sabaneta Baja        | Pamplona                    | Guillermo Pedro    | Arias Rodríguez
 San Luis         | Sabaneta Alta        | Pamplona                    | Isabella           | Barrera Cabrera
 La Siberia       | El Alizal            | Pamplona                    | Mariana            | Barrera Correa
 El Brillante     | La Legua             | Ancuyá                      | Miguel             | Barrera Osorio
 La Floresta      | San José De Tonchala | Santa María                 | Ángela             | Barrera Peña
 El Oasis         | El Alizal            | Pamplona                    | Ramiro             | Barrera Villamizar
 Agua Bonita      | Monteadentro         | Pamplona                    | Manuela            | Bastidas Medina
 Monteverde       | Alto Grande          | Pamplona                    | Antonio            | Bastidas Rodríguez
 Villa Rosa       | Cunuba               | San Luis                    | Fabio              | Bastidas Ruiz
 El Triunfo       | García               | Pamplona                    | Rocío              | Bastidas Suárez
 La Argentina     | Caima                | Pamplona                    | Rocío              | Bastidas Suárez
 Los Pinos        | San Francisco        | Necoclí                     | Rafael Héctor      | Bedoya Pinzón
-- Más  --
**/