--caso 1

select substr(numrun_cli,0,2)||'.'||substr(numrun_cli,3,3)||'.'||substr(numrun_cli,6,10)|| '-'|| dvrun_cli as "RUT Cliente",
    initcap (appaterno_cli || ' '||upper(substr(apmaterno_cli,1,1)||'. '||pnombre_cli||' '||snombre_cli))as "Nombre empleado",
    direccion, NVL(to_char(fono_fijo_cli),'No posee telefono fijo') as "Telefono fijo", NVL(to_char(celular_cli),'No posee celular')as "CELULAR",
    id_comuna as "Comuna"
from cliente
order by &columna, '&desoasc';

--caso2

SELECT 'EL EMPLEADO ' || PNOMBRE_EMP || ' ' || APPATERNO_EMP || ' ' || APMATERNO_EMP || ' ' || 'ESTUVO DE CUMPLEAÑOS EL ' || extract(day from fecha_nac) || ' de ' || TO_CHAR(fecha_nac,'MONTH') || '.' || 'Cumplió ' || (TO_CHAR(SYSDATE,'yyyy') - TO_CHAR(fecha_nac,'yyyy')) || ' Años' "Listado de cumpleaños"
FROM EMPLEADO
where extract(month from fecha_nac) = 7
order by extract(day from fecha_nac) asc,appaterno_emp asc, extract(year from fecha_nac) asc, (extract(year from fecha_nac)-extract(year from sysdate)) asc;

--caso3


select nombre_tipo_camion as "tipio de camion", camion.nro_patente AS "PATENTE", 
(camion.anio)+1 as "ANIO", 
TO_CHAR(camion.valor_arriendo_dia,'L999G999')AS "VALOR ARRIENDO DIA",
TO_CHAR(NVL2(valor_garantia_dia,TO_CHAR(camion.valor_garantia_dia,'L999G999') ,'$0')) AS "VALOR GARANTIA DIA",
TO_CHAR(NVL2((camion.valor_arriendo_dia+camion.valor_garantia_dia),TO_CHAR((camion.valor_arriendo_dia+camion.valor_garantia_dia),'$9999G999'),'$0'))AS "VALOR TOTAL DIA"

from camion, tipo_camion
ORDER BY tipo_camion.nombre_tipo_camion, camion.valor_arriendo_dia desc, camion.valor_garantia_dia , camion.nro_patente;
--caso 4

select to_char(SYSDATE, 'MM/YYYY') "FECHA PROCESO"  , substr(numrun_emp,0,2)||'.'||substr(numrun_emp,3,3)||'.'||substr(numrun_emp,6,10)|| '-'|| dvrun_emp as "RUN EMPLEADO", pnombre_emp || ' ' || snombre_emp || ' ' || appaterno_emp || ' ' || apmaterno_emp "NOMBRE EMPLEADO", to_char(SUELDO_BASE, '$9G999G999') "SUELDO BASE",
case when sueldo_base >= 320000 and sueldo_base <= 450000 then TO_CHAR(200000000*0.005, '$9G999G999')
else case when sueldo_base >= 450001 and sueldo_base <= 600000 then TO_CHAR(200000000*0.0035, '$999G999')
else case when sueldo_base >= 600001 and sueldo_base <= 900000 then  TO_CHAR(200000000*0.0025, '$999G999')
else case when sueldo_base >= 900001 and sueldo_base <= 1800000 then TO_CHAR(200000000*0.0015, '$999G999')
else case when sueldo_base >= 1800000 then TO_CHAR(200000000*0.001, '$999G999')end end end end end as "bonificacion por utilidades"
FROM empleado
order by appaterno_emp;


--caso5

select numrun_emp ||'-'||dvrun_emp as "rut empleado", pnombre_emp ||' '||snombre_emp||' '||appaterno_emp||' '||apmaterno_emp as "Nombre empleado",
TO_CHAR(SYSDATE,'YYYY')-to_char(fecha_contrato, 'YYYY') as "anios trabajados ",
TO_CHAR(sueldo_base,'L99G999G999') as "Sueldo base",
TO_CHAR((((TO_CHAR(SYSDATE,'YYYY')-to_char(fecha_contrato, 'YYYY'))/100)*sueldo_base),'L9999G999') AS "VALOR MOVILIZACION",
CASE WHEN sueldo_base <= 450000 THEN TO_CHAR(((SUBSTR(sueldo_base,1,2)/100)*SUELDO_BASE),'L999G999')
   ELSE TO_CHAR(((SUBSTR(SUELDO_BASE,1,1)/100)*SUELDO_BASE),'L999G999') END AS "BONIF. EXTRA MOVILIZACION",
  TO_CHAR(((((TO_CHAR(SYSDATE,'YYYY')-to_char(fecha_contrato, 'YYYY'))/100)*sueldo_base)+ ((SUBSTR(sueldo_base,1,2)/100)*SUELDO_BASE )),'L999G999G999') as "valor movilizacion total"
  
from empleado;
