SELECT 
farm_name AS farm,
rural_district,
total_area_ha AS area_ha,
altitude_masl 
from farm.farms
WHERE municipality_code ='54518' AND altitude_masl BETWEEN 1600 AND  1800
ORDER BY rural_district;
/**
      farm       |    rural_district    | area_ha | altitude_masl
------------------+----------------------+---------+---------------
 Los Pinos        | Alcaparral           |    1.67 |          1771
 Miraflores       | Alcaparral           |    1.29 |          1636
 Monteverde       | Alto Grande          |    2.59 |          1794
 El Refugio       | Alto Grande          |    1.23 |          1661
 Bellavista       | Alto Grande          |    1.80 |          1704
 La Loma          | Alto Grande          |    2.09 |          1667
 La Milagrosa     | Cabecera Municipal   |    2.65 |          1643
 La Divisa        | Cabecera Municipal   |    1.32 |          1765
 El EdÃ©n          | Cabecera Municipal   |    2.89 |          1603
 El JardÃ­n        | Cabecera Municipal   |    3.26 |          1620
 El Recuerdo      | Caima                |    3.12 |          1758
 El Recreo        | Caima                |    1.33 |          1617
 La Palma         | Cunuba               |    1.60 |          1773
 La Isabela       | Cunuba               |    1.74 |          1663
 La Gaitana       | Cunuba               |    1.12 |          1659
 La Victoria      | Cunuba               |    1.79 |          1780
 El Oasis         | El Alizal            |    2.52 |          1692
 La Argentina     | El Escorial          |    4.41 |          1765
 El Horizonte     | El Escorial          |    1.68 |          1730
 El Recuerdo      | El Escorial          |    1.27 |          1619
 La Palma         | El Escorial          |    0.72 |          1636
 El Triunfo       | El Escorial          |    0.75 |          1715
 La Aurora        | El Palchal           |    2.74 |          1684
 Las Margaritas   | El Palchal           |    0.70 |          1686
 Tierra Linda     | El Palchal           |    3.15 |          1629
 Las Palmas       | El Rosal             |    3.67 |          1750
 Bella Vista Alta | El Rosal             |    1.03 |          1652
-- Más  --
**/
SELECT 
farm_name AS farm,
rural_district,
total_area_ha AS area_ha,
altitude_masl 
from farm.farms
WHERE municipality_code ='54518' AND altitude_masl BETWEEN 1600 AND  1800
ORDER BY total_area_ha DESC ;
/**
       farm       |    rural_district    | area_ha | altitude_masl
------------------+----------------------+---------+---------------
 El Cedro         | La â”ŒPa               |   13.90 |          1705
 El EdÃ©n          | Santa Matilde        |   11.41 |          1685
 El Horizonte     | PeÃ±as                |   10.63 |          1627
 Los Laureles     | Lengua               |    8.70 |          1639
 El ArrayÃ¡n       | Iscaligua            |    7.93 |          1747
 El Recuerdo      | Monteadentro         |    7.29 |          1711
 La Ceiba         | Llano Castro         |    7.20 |          1635
 La Floresta      | San JosÃ© De Tonchala |    7.07 |          1662
 Monteverde       | La Legua             |    6.73 |          1635
 La Cumbre        | Jurado               |    5.92 |          1756
 Tierra Linda     | Iscaligua            |    5.16 |          1721
 La Estrella      | Llano Castro         |    5.00 |          1685
 La Reserva       | La Legua             |    4.73 |          1774
 La Aurora        | Llano Castro         |    4.69 |          1700
 Las Acacias      | Jurado               |    4.58 |          1691
 El Nogal         | Tampanqueba          |    4.50 |          1627
 San Rafael       | El Totumo            |    4.50 |          1670
 La Primavera     | Tampanqueba          |    4.49 |          1709
 La Argentina     | El Escorial          |    4.41 |          1765
 El Guamo         | FontibÃ³n             |    4.35 |          1731
 El Cedro         | La Legua             |    4.06 |          1716
 El Mango         | La â”ŒPa               |    3.86 |          1733
 Las Palmas       | El Rosal             |    3.67 |          1750
 La Primavera     | San JosÃ© De Tonchala |    3.41 |          1732
 El JardÃ­n        | Cabecera Municipal   |    3.26 |          1620
 La CabaÃ±a        | Llano Castro         |    3.26 |          1666
 Mi Ranchito      | Iscaligua            |    3.24 |          1620
-- Más  --
**/