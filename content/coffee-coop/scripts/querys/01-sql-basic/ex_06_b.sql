SELECT 
document_number AS document,
last_name,
first_name ,
phone_number AS phone
from farm.farmers
WHERE  municipality_code='54518' AND  email   IS NULL
ORDER BY last_name;
/**
 document  |     last_name      |    first_name    |   phone
------------+--------------------+------------------+------------
 768461420  | Agudelo Sandoval   | Marleny          | 3242280898
 939635303  | Álvarez Correa     | Marleny          | 3232410671
 302223305  | Arias Mora         | Camilo           | 3045535545
 550696749  | Arias Ramírez      | Viviana          | 3204850778
 797017145  | Barrera Cabrera    | Isabella         | 3041744702
 483692716  | Barrera Villamizar | Ramiro           | 3056539829
 718906996  | Bedoya Vélez       | Nelson           | 3194564518
 21358854   | Benavides Delgado  | Manuela Yolanda  | 3229418470
 737383707  | Bermúdez Henao     | Yesenia          | 3141005257
 1015411133 | Bermúdez Ruiz      | Santiago         | 3003993000
 141613744  | Burbano Arango     | Édgar            | 3203780826
 549054771  | Burbano Duarte     | María            | 3183590387
 716388403  | Carrillo Perdomo   | Emilio           | 3135267851
 1001674689 | Cuéllar Cáceres    | Jaime Santiago   | 3019841594
 749444168  | Delgado Molina     | Emilio           | 3118015821
 1117597835 | Díaz García        | Cecilia Lorena   | 3207660684
 932437698  | Duarte Duque       | Amparo           | 3059102841
 846209158  | Duque Ruiz         | Daniel Héctor    | 3242698476
 622024549  | González Molina    | Viviana          | 3213218779
 35147265   | Gutiérrez Pabón    | Carlos           | 3223406765
 343256743  | Hernández Correa   | Dora             | 3166719225
 525766302  | Ibarra Agudelo     | Gustavo          | 3506003684
 1185523747 | Ibarra Molina      | Elsa             | 3189660702
 1148351420 | Jiménez Jaimes     | Inés             | 3104090231
 860920785  | Jiménez Parra      | Hugo             | 3244209117
 232229735  | Lasso Serrano      | Libardo          | 3113250445
 712758473  | López Villamizar   | Wilson           | 3055094275
-- Más  --
 
**/