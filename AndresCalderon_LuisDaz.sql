--CASO 1

select rut_cliente, UPPER (nombre)||' '|| upper(apellido_p) ||' '|| upper(apellido_m) "NOMBRE", 
    fecha_baja "FECHA DE BAJA",
    ((TO_CHAR(SYSDATE, 'YYYY') - TO_CHAR(FECHA_BAJA, 'YYYY')) + trunc(((months_between(sysdate, fecha_baja))/12), 2)) "A?OS",
    '+56' || TELEFONO "TELEFONO"
from cliente
where fecha_baja is not null;
--------------------------
-- CASO 2
select UPPER(NOMBRE) ||' '||  UPPER(apellido_p) ||' '|| UPPER(apellido_m) "NOMBRE",
TO_CHAR(SYSDATE,( 'day dd "de" Month')) "REUNION",

LOWER (substr(NOMBRE,0,2))||'.'||LOWER (APELLIDO_P)||''|| substr(LOWER (APELLIDO_M),(LENGTH(apellido_m))) "USUARIO", 
replace( substr(rut_ejecutivo,0,9),'.','') "CLAVE" 

FROM EJECUTIVO
ORDER BY apellido_p ASC ;


--CASO 3

SELECT RUT_EJECUTIVO, NOMBRE, APELLIDO_P, APELLIDO_M, FECHA_CONTRATO,
TRUNC(((TO_CHAR(SYSDATE,'YYYY') - TO_CHAR(FECHA_CONTRATO,'YYYY')) + (TO_CHAR(SYSDATE,'MM') - TO_CHAR(FECHA_CONTRATO,'MM'))/12), 2) ANIOS ,
CASE WHEN NIVEL = 1 THEN TO_CHAR(700000, '$999G999') 
eLSE CASE WHEN NIVEL = 2 THEN TO_CHAR(900000,'$999G999')
ELSE CASE WHEN NIVEL = 3 THEN TO_CHAR(1200000,'$9G999G999')
END END END "SUELDO", 
CASE WHEN round(((TO_CHAR(SYSDATE,'YYYY') - TO_CHAR(FECHA_CONTRATO,'YYYY')) + (TO_CHAR(SYSDATE,'MM') - TO_CHAR(FECHA_CONTRATO,'MM'))/12), 2) BETWEEN 1 and 8.4 THEN 'Medio Sueldo' 
eLSE CASE WHEN ROUND(((TO_CHAR(SYSDATE,'YYYY') - TO_CHAR(FECHA_CONTRATO,'YYYY')) + (TO_CHAR(SYSDATE,'MM') - TO_CHAR(FECHA_CONTRATO,'MM'))/12), 2) BETWEEN 8.5 and 11.49 THEN 'UN SUELDO'
ELSE CASE WHEN ROUND(((TO_CHAR(SYSDATE,'YYYY') - TO_CHAR(FECHA_CONTRATO,'YYYY')) + (TO_CHAR(SYSDATE,'MM') - TO_CHAR(FECHA_CONTRATO,'MM'))/12), 2) BETWEEN 11.5 and 14.49   THEN 'DOS SUELDOS'
ELSE CASE WHEN ROUND(((TO_CHAR(SYSDATE,'YYYY') - TO_CHAR(FECHA_CONTRATO,'YYYY')) + (TO_CHAR(SYSDATE,'MM') - TO_CHAR(FECHA_CONTRATO,'MM'))/12), 2) >=14.5   THEN 'TRES SUELDOS'
END END END end "AGUINALDO", lower(substr(nombre, 0,2)) || '.' || lower (apellido_p)|| lower(substr(apellido_m,0,1)) || '@bvvo.cl' "CORREO"
FROM EJECUTIVO
WHERE TRUNC(((TO_CHAR(SYSDATE,'YYYY') - TO_CHAR(FECHA_CONTRATO,'YYYY')) + (TO_CHAR(SYSDATE,'MM') - TO_CHAR(FECHA_CONTRATO,'MM'))/12), 2) BETWEEN '&ANIOMIN' AND '&ANIOMAX'
ORDER BY NOMBRE DESC;



        

        