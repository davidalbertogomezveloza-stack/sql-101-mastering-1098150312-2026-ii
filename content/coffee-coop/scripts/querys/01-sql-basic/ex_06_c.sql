SELECT 
document_number AS document,
last_name,
first_name ,
phone_number AS phone,
membership_date,
is_active
from farm.farmers
WHERE municipality_code='54518' AND is_active='f'
ORDER BY membership_date;
/**
  document  |     last_name      |    first_name    |   phone    | membership_date | is_active
------------+--------------------+------------------+------------+-----------------+-----------
 230971064  | Agudelo Jiménez    | Manuel           | 3219718862 | 1997-03-29      | f
 534023693  | Valencia Moreno    | Myriam           | 3241389451 | 1998-11-03      | f
 33787285   | Ramos Chamorro     | Rubén            | 3244273375 | 1999-03-02      | f
 1135293825 | Pérez Castro       | Abelardo         | 3245612074 | 2003-06-19      | f
 478755763  | Rivera Duque       | Nicolás          | 3029310183 | 2003-08-11      | f
 160538872  | Mosquera Uribe     | Liliana          | 3119365364 | 2007-09-27      | f
 223974138  | Cabrera Villamizar | Rodrigo Nelson   | 3502554241 | 2009-05-02      | f
 10424994   | Herrera Zuluaga    | Cristian         | 3242295228 | 2010-04-28      | f
 1015411133 | Bermúdez Ruiz      | Santiago         | 3003993000 | 2010-11-30      | f
 1090968710 | Rodríguez Pérez    | Ruth             | 3021808053 | 2010-12-11      | f
 974842644  | Hernández Uribe    | Arturo           | 3058169707 | 2012-06-16      | f
 1001030458 | Chamorro Vélez     | Liliana Luisa    | 3002682380 | 2013-01-09      | f
 870240973  | Molina Pabón       | Jairo            | 3018237329 | 2014-03-13      | f
 89157555   | Jiménez Cáceres    | Heriberto        | 3164266457 | 2014-07-17      | f
 333176982  | Rivera Rivera      | Edilma           | 3126087263 | 2014-12-20      | f
 587550249  | Mosquera López     | Gustavo          | 3119000149 | 2016-05-14      | f
 718906996  | Bedoya Vélez       | Nelson           | 3194564518 | 2016-12-09      | f
 1117597835 | Díaz García        | Cecilia Lorena   | 3207660684 | 2017-01-11      | f
 599185252  | Pinzón Cabrera     | Efraín           | 3216450755 | 2017-07-23      | f
 135734682  | Rivera Jiménez     | Diego            | 3508307641 | 2018-03-26      | f
 914044314  | Polanía Delgado    | Ancízar Cristian | 3028825809 | 2021-02-24      | f
(21 filas)
**/