SELECT 
document_number AS document,
last_name,
first_name ,
phone_number AS phone
from farm.farmers
WHERE  gender='F' AND municipality_code='54518'
ORDER BY last_name;
/**
  document  |     last_name     |    first_name     |   phone
------------+-------------------+-------------------+------------
 768461420  | Agudelo Sandoval  | Marleny           | 3242280898
 931079279  | Álvarez Bonilla   | Edilma            | 3236902029
 463842401  | Álvarez Cárdenas  | Rocío             | 3047898372
 788628125  | Álvarez Carrillo  | Mónica            | 3059237130
 939635303  | Álvarez Correa    | Marleny           | 3232410671
 1089620113 | Arango Narváez    | Myriam Yuliana    | 3178267449
 172555225  | Arias Álvarez     | Edilma Gabriela   | 3213658326
 550696749  | Arias Ramírez     | Viviana           | 3204850778
 797017145  | Barrera Cabrera   | Isabella          | 3041744702
 659942505  | Barrera Correa    | Mariana           | 3126485460
 1103932523 | Bastidas Chamorro | Amparo            | 3023807439
 1027436085 | Bastidas Medina   | Manuela           | 3508652479
 649244180  | Bastidas Suárez   | Rocío             | 3015208796
 21358854   | Benavides Delgado | Manuela Yolanda   | 3229418470
 737383707  | Bermúdez Henao    | Yesenia           | 3141005257
 549054771  | Burbano Duarte    | María             | 3183590387
 436957556  | Burbano Jaimes    | Jazmín            | 3202058604
 918053770  | Caicedo Medina    | Nubia Juliana     | 3183905612
 356207226  | Caicedo Restrepo  | Luisa             | 3232775188
 358946393  | Cárdenas Moreno   | Carmen            | 3149324862
 756369749  | Cardona Ruiz      | Andrea            | 3007467744
 65169775   | Castillo Henao    | Aura              | 3136723568
 1001030458 | Chamorro Vélez    | Liliana Luisa     | 3002682380
 977130251  | Díaz Cuéllar      | Inés Lucía        | 3507141858
 1117597835 | Díaz García       | Cecilia Lorena    | 3207660684
 828628976  | Díaz Medina       | Diana             | 3023178503
 932437698  | Duarte Duque      | Amparo            | 3059102841
-- Más  --
**/