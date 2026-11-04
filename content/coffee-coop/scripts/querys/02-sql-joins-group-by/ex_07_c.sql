SELECT 
COUNT(*) AS total_farmers,
COUNT(email) AS farmers_with_email
FROM farm.farmers 
WHERE municipality_code = '54518';
/**
el total de farmers son diferentes al total de farmers with email porque el count no cuenta los espacios null de la columna de email.
 total_farmers | farmers_with_email
---------------+--------------------
           230 |                165
(1 fila)
**/
