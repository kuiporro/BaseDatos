
--caso1
SELECT * FROM CLIENTE;

SELECT NUMRUN_CLI ||'-'|| DVRUN_CLI "RUN CLIENTE",
INITCAP(APPATERNO_CLI)||' '||SUBSTR(APMATERNO_CLI,1,1)||'.'||' '|| INITCAP(PNOMBRE_CLI)||' '||UPPER(SNOMBRE_CLI)"NOMBRE CLIENTE ",
DIRECCION , NVL(TO_CHAR(fono_fijo_cli), ('NO POSEE TELEFONO FIJO')) "TELEFONO FIJO",
NVL(TO_CHAR(celular_cli), 'NO POSEE CELULAR ') "CELULAR ", ID_COMUNA "COMUNA"
FROM CLIENTE
ORDER BY &VALOR1 &ASCoDESC , &VALOR2 &ASCoDESC; 

--caso2 
select * from empleado;
select 'El empleado '||upper(pnombre_emp)||' '||upper(appaterno_emp)||' '|| upper(apmaterno_emp)|| ' estuvo de cumpleaños el '|| 
extract (day from fecha_nac ) ||' de '|| extract(month from fecha_nac)from empleado;

--caso3
select a.nombre_tipo_camion  "tipo de camion" , a2.nro_patente "nro patente", a2.ANIO "AÑO",
a2.valor_arriendo_dia "valor arriendo dia" , NVL(a2.valor_garantia_dia,0) "valor garantia dia ", a2.valor_arriendo_dia + NVL(a2.valor_garantia_dia, 0) "valor total dia"
from tipo_camion a,  camion a2
ORDER BY a.nombre_tipo_camion, a2.valor_arriendo_dia desc , a2.valor_garantia_dia asc, a2.nro_patente asc;

--caso4 
select * from empleado;
select substr(numrun_emp,0,2)||'.'||substr(numrun_emp,3,3)||'.'|| substr(numrun_emp,6,6)||'-'|| dvrun_emp "rut empleado", pnombre_emp ||' '||snombre_emp ||' '||
appaterno_emp ||' '|| apmaterno_emp "nombre empleado ", sueldo_base

from empleado;

