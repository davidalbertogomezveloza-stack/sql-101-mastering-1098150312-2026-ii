SELECT 
T1.farm_name AS farm,
T1.rural_district 
from farm.farms AS T1 INNER JOIN buy.deliveries AS T2 ON T1.farm_id=T2.farm_id
WHERE T1.municipality_code='54518' AND EXTRACT(year FROM T2.delivered_at) = 2025 
EXCEPT
SELECT
T3.farm_name,
T3.rural_district
FROM farm.farms AS T3
INNER JOIN buy.deliveries AS T4  ON T3.farm_id = T4.farm_id
WHERE T3.municipality_code = '54518' AND EXTRACT(year FROM T4.delivered_at) = 2026
ORDER BY farm ASC, rural_district ASC;
/**
     farm      |    rural_district
---------------+----------------------
 Agua Bonita   | GarcÃ­a
 Altamira      | El Alizal
 Bellavista    | Cunuba
 Cafetal Viejo | Caima
 Cafetal Viejo | Cunuba
 Cafetal Viejo | San JosÃ© De Tonchala
 El ArrayÃ¡n    | Iscaligua
 El Brillante  | PeÃ±as
 El Diamante   | San JosÃ© De Tonchala
 El Encanto    | Cunuba
 El Guamo      | FontibÃ³n
 El Guayabo    | Caima
 El Guayabo    | El Rosal
 El HiguerÃ³n   | Caima
 El HiguerÃ³n   | La â”ŒPa
 El Horizonte  | El Totumo
 El Horizonte  | Tampanqueba
 El JardÃ­n     | Cabecera Municipal
 El JardÃ­n     | El Escorial
 El JardÃ­n     | La Legua
 El Manantial  | Santa Matilde
 El Mango      | La Legua
 El Mirador    | El Palchal
 El Porvenir   | Iscaligua
 El Porvenir   | La â”ŒPa
 El Recreo     | La Legua
 El Recuerdo   | El Escorial
 El Refugio    | PeÃ±as
 El Retiro     | Sabaneta Alta
 El Rosal      | Cabecera Municipal
 El Tesoro     | San Francisco
 El Vergel     | Cabecera Municipal
 La Argentina  | El Escorial
 La Argentina  | Lengua
 La Argentina  | San JosÃ© De Tonchala
 La Aurora     | La â”ŒPa
 La CabaÃ±a     | Cunuba
 La CabaÃ±a     | Llano Castro
 La CabaÃ±a     | Sabagua
 La Carolina   | Tampanqueba
 La Ceiba      | San Francisco
 La Divisa     | Cabecera Municipal
 La Esperanza  | El Palchal
 La Floresta   | San JosÃ© De Tonchala
 La Fortuna    | El Palchal
 La Gaitana    | Sabagua
 La Granja     | El Palchal
 La Loma       | Navarro
 La Milagrosa  | Cabecera Municipal
 La Milagrosa  | El Alizal
 La MontaÃ±a    | Monteadentro
 La Palma      | Cunuba
 La Primavera  | Sabagua
 La Primavera  | Tampanqueba
 La Quebrada   | El Totumo
 La Quebrada   | Navarro
 La Selva      | PeÃ±as
 La Selva      | Sabagua
 La Siberia    | GarcÃ­a
 La UniÃ³n      | Llano Castro
 La UniÃ³n      | Santa Matilde
 La Victoria   | El Escorial
 La Victoria   | La â”ŒPa
 Las Acacias   | Cunuba
 Las Brisas    | Alto Grande
 Las Delicias  | Caima
 Las Palmas    | El Rosal
 Los Guaduales | Santa Matilde
 Los Laureles  | Lengua
 Los Laureles  | PeÃ±as
 Miraflores    | El Rosal
 Monteverde    | El Alizal
 Monteverde    | El Palchal
 San Antonio   | Monteadentro
 San JosÃ©      | Iscaligua
 San Rafael    | San JosÃ© De Tonchala
 Tierra Linda  | El Palchal
 Villa Hermosa | Cunuba
 Villa Hermosa | La Legua
(79 filas)
**/

/** EXPLANATION:Si se invierte el orden de la consultas,aparce  el nombre y la vereda de las fincas del municipio 54518 que entregaron café en 2026 pero no en 2025 **/