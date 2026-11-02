SELECT 
farm_name AS farm,
rural_district,
total_area_ha AS area_ha,
altitude_masl ,
from farm.farms
WHERE municipality_code ='54518' AND (latitude IS NULL OR longitude IS NULL);
/**
       farm       |    rural_district    | area_ha | altitude_masl
------------------+----------------------+---------+---------------
 El Recuerdo      | Alto Grande          |    1.47 |          1875
 La Esperanza     | El Palchal           |    1.64 |          1345
 Las Delicias     | Caima                |    1.01 |          1308
 Los Arrayanes    | Cabecera Municipal   |    3.66 |          1452
 El Brillante     | PeÃ±as                |    2.06 |          1274
 El Porvenir      | FontibÃ³n             |    4.75 |          1418
 La Florida       | PeÃ±as                |    1.16 |          1657
 Los Arrayanes    | Navarro              |    1.42 |          1101
 El Guayabo       | San Francisco        |    3.20 |          1718
 El Encanto       | FontibÃ³n             |    0.75 |          1639
 Cafetal Viejo    | San JosÃ© De Tonchala |    2.44 |          1469
 El Vergel        | Cabecera Municipal   |    5.14 |          1437
 El HiguerÃ³n      | Caima                |    2.45 |          1868
 Bella Vista Alta | El Rosal             |    1.03 |          1652
 El Horizonte     | San JosÃ© De Tonchala |    0.79 |          1415
 La Esperanza     | PeÃ±as                |    2.05 |          1679
 El MesÃ³n         | Iscaligua            |    2.80 |          1840
 Las Mercedes     | Llano Castro         |    2.73 |          1942
 Las OrquÃ­deas    | Sabaneta Baja        |    0.78 |          2152
 La UniÃ³n         | La Legua             |    2.74 |          1826
 San Antonio      | Jurado               |    1.64 |          1422
 San Luis         | Sabaneta Alta        |    1.06 |          1584
 El Danubio       | GarcÃ­a               |    7.83 |          2160
 Tierra Linda     | Lengua               |    4.17 |          1864
 Tierra Linda     | Iscaligua            |    5.16 |          1721
 Los Laureles     | PeÃ±as                |    0.97 |          1549
 Bella Vista Alta | Sabaneta Baja        |   12.71 |          1350
-- Más  --
**/