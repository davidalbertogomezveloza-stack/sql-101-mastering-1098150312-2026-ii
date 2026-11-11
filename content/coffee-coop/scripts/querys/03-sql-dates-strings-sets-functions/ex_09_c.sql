-- Exercise 09 - c
-- Create a function to generate short names and list male farmers of Pamplona
CREATE OR REPLACE FUNCTION farm.fn_short_name(p_first_name VARCHAR, p_last_name VARCHAR) 
RETURNS VARCHAR 
LANGUAGE plpgsql
AS 
$$
DECLARE
name_short VARCHAR;
BEGIN
 SELECT CONCAT(SUBSTRING(p_first_name,1,1),'.',p_last_name) INTO name_short;

    RETURN name_short;
END;
$$;

SELECT
farm.fn_short_name(first_name,last_name) AS short_name,
phone_number AS phone
from  farm.farmers
WHERE gender = 'M' AND municipality_code='54518'
ORDER BY first_name ASC,last_name ASC;
/**
      short_name      |   phone
----------------------+------------
 A.Pérez Castro       | 3245612074
 A.Álvarez Villamizar | 3025342853
 A.Bastidas Rodríguez | 3145736315
 A.Ortiz Lasso        | 3228095091
 A.Narváez Polanía    | 3189266165
 Á.Correa Ríos        | 3125462491
 Á.Valencia Rivera    | 3218112033
 A.Arango Silva       | 3053453318
 A.Polanía Delgado    | 3028825809
 A.Valencia Parra     | 3177768578
 A.Silva Villamizar   | 3196176936
 A.Bastidas Rodríguez | 3508682050
 A.Díaz Vélez         | 3013067467
 A.Contreras Peña     | 3116255536
 A.Hernández Uribe    | 3058169707
 A.Tovar Calderón     | 3023121990
 C.Arias Mora         | 3045535545
 C.Calderón Trujillo  | 3167509635
 C.Castillo Torres    | 3197585250
 C.Gutiérrez Pabón    | 3223406765
 C.Herrera Zuluaga    | 3242295228
 D.Bonilla Duarte     | 3234592947
 D.Duque Ruiz         | 3242698476
 D.Jaimes Ruiz        | 3132431627
 D.Perdomo Mosquera   | 3007586507
 D.Zapata Arias       | 3013691068
 D.Romero Bonilla     | 3018117176
 D.Niño Hernández     | 3103428954
 D.Rivera Jiménez     | 3508307641
 É.Burbano Arango     | 3203780826
 E.Ortega Correa      | 3504175536
 E.Pinzón Cabrera     | 3216450755
 E.Contreras Ospina   | 3147500823
 E.Bermúdez Rojas     | 3142064892
 E.Carrillo Perdomo   | 3135267851
 E.Delgado Molina     | 3118015821
 E.Salazar Parra      | 3162718294
 F.Díaz Cuéllar       | 3004527998
 F.Hernández Lasso    | 3246919070
 F.Valencia Ramírez   | 3007371586
 F.Ríos Ospina        | 3243938067
 F.Burbano Flórez     | 3028675754
 F.Galvis Duarte      | 3126767373
 F.Rojas Cárdenas     | 3235672830
 F.Ramírez Sandoval   | 3051595847
 F.Restrepo Perdomo   | 3158258103
 G.Pérez Pérez        | 3015741336
 G.Arias Rodríguez    | 3131845672
 G.Ibarra Agudelo     | 3506003684
 G.Marín Sandoval     | 3205233566
 G.Moreno López       | 3026442670
 G.Mosquera López     | 3119000149
 G.Parra Ortiz        | 3218747954
 G.Torres Guerrero    | 3225736942
 G.Romero Pinzón      | 3108757369
 H.Jiménez Cáceres    | 3164266457
 H.Cuéllar Romero     | 3506087296
 H.Montoya Agudelo    | 3218003724
 H.Jiménez Restrepo   | 3048547264
 H.Jiménez Parra      | 3244209117
 I.Bermúdez Flórez    | 3139698870
 I.Zapata Ortiz       | 3143905175
 I.Cáceres Galvis     | 3047673614
 J.Marín Hernández    | 3114778905
 J.Cuéllar Cáceres    | 3019841594
 J.Ortiz Vargas       | 3233745261
 J.Molina Pabón       | 3018237329
 J.Romero Gutiérrez   | 3209752935
 J.Burbano Molina     | 3158636721
 J.González Zuluaga   | 3504451578
 J.Pinzón Jiménez     | 3132924855
 J.Ortega Zapata      | 3217129169
 J.Peña Betancur      | 3239120208
 J.Delgado Villamizar | 3225663039
 J.Valencia Narváez   | 3202082759
 L.Lasso Serrano      | 3113250445
 L.Trujillo Torres    | 3162889357
 L.Jaimes Salazar     | 3116927952
 L.Mosquera Perdomo   | 3135244980
 M.Agudelo Jiménez    | 3219718862
 M.Quintero Arias     | 3201475349
 M.Rincón Suárez      | 3135034800
 M.Ríos Ibarra        | 3188497714
 M.Uribe Cuéllar      | 3104008873
 M.Peña Bastidas      | 3156616125
 M.Villamizar Correa  | 3104065619
 N.Bedoya Vélez       | 3194564518
 N.Chamorro Vera      | 3001185317
 N.Mejía Vera         | 3022063857
 N.González Rodríguez | 3023800384
 N.Rivera Duque       | 3029310183
 N.Sánchez Rodríguez  | 3114761362
 O.Salazar Bermúdez   | 3141904023
 Ó.Ospina González    | 3153244524
 Ó.Rivera Tovar       | 3112576000
 P.Ramírez Barrera    | 3236105041
 R.Rincón Romero      | 3235869676
 R.Barrera Villamizar | 3056539829
 R.Parra Trujillo     | 3207383618
 R.Zuluaga Duque      | 3143338682
 R.Romero Agudelo     | 3028845789
 R.Suárez Polanía     | 3128378640
 R.Sánchez Agudelo    | 3007420608
 R.Castro Contreras   | 3197205687
 R.Bermúdez Muñoz     | 3051351571
 R.Cabrera Villamizar | 3502554241
 R.Ramos Chamorro     | 3244273375
 R.Villamizar Mejía   | 3167701408
 S.Bermúdez Ruiz      | 3003993000
 W.Montoya Rodríguez  | 3217677705
 W.Pérez Chamorro     | 3124455023
 W.López Villamizar   | 3055094275
 W.Parra Prada        | 3217256211
 W.Díaz Ramírez       | 3227044397
 Y.Medina Londoño     | 3501426840
(115 filas)
**/