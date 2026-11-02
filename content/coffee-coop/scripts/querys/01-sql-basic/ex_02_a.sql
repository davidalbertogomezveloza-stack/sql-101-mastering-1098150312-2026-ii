SELECT 
variety_name AS variety,
species,
description
FROM farm.coffee_varieties
WHERE is_rust_resistant= 't';
/**

 variety   | species |                             description
------------+---------+---------------------------------------------------------------------
 Castillo   | arabica | Variedad colombiana resistente a la roya, la más sembrada del país.
 Colombia   | arabica | Variedad compuesta resistente a la roya, antecesora de Castillo.
 Cenicafé 1 | arabica | Variedad de porte bajo con resistencia a la roya.
 Tabi       | arabica | Variedad de porte alto resistente a la roya.
 Robusta    | robusta | Especie Coffea canephora, de mayor contenido de cafeína.
(5 filas)

**/