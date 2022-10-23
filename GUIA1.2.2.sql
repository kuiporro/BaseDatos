--caso 1 informe 2
SELECT fecini_arriendo "FECHA INICIO ARRIENDO" 
FROM PROPIEDAD_ARRENDADA 
WHERE EXTRACT(Year FROM fecini_arriendo) = 2022
ORDER BY EXTRACT(Month FROM fecini_arriendo);

--caso 1 informe 1
SELECT fecter_arriendo "FECHA ENTREGA PROPIEDAD"
FROM PROPIEDAD_ARRENDADA
WHERE EXTRACT(Year FROM fecter_arriendo) = &fecha
ORDER BY EXTRACT(Month FROM fecter_arriendo);

select * from cliente;


SELECT NUMRUT_CLI ||'-'|| DVRUT_CLI as "RUT CLIENTE",
nombre_cli ||' '|| appaterno_cli||' '||apmaterno_cli as "nombre cliente",
renta_cli AS "RENTA",
fonofijo_cli AS "TELEFONO FIJO", celular_cli "CELULAR"

FROM cliente
WHERE ID_ESTCIVIL = 1 OR ID_ESTCIVIL = 3 OR ID_ESTCIVIL =4 AND RENTA_CLI >= 800000
    ORDER BY APPATERNO_CLI , NOMBRE_CLI;
    
    
    
    
--CASO 3  SIMULACION 1
select * from empleado;

select nombre_emp||' '||appaterno_emp||' '||apmaterno_emp as "NOMBRE EMPLEADO",
sueldo_emp as "Sueldo actual",sueldo_emp + (sueldo_emp * 0.085) as "SUELDO REAJUSTADO", sueldo_emp * (&PORCENTAJE /100 ) AS  "AUMENTO"
from empleado
ORDER BY AUMENTO DESC;

-- SUMALACION 2
select nombre_emp||' '||appaterno_emp||' '||apmaterno_emp as "NOMBRE EMPLEADO",
sueldo_emp as "Sueldo actual",sueldo_emp + (sueldo_emp * 0.20) as "SUELDO REAJUSTADO", sueldo_emp * (&VALORAUMENTO /100) AS  "AUMENTO"
from empleado
where sueldo_emp >= &VALOR1 and sueldo_emp <= &VALOR2 
ORDER BY AUMENTO DESC;

--caso4
select NUMRUT_EMP ||'-'||DVRUT_EMP "Rut empleado ", 
nombre_emp ||' '|| appaterno_emp||' '|| apmaterno_emp "nombre empleado" , 
sueldo_emp "salario actual",
(sueldo_emp * &porcentaje /100) "bono extra "  
from EMPLEADO
order by appaterno_emp ;

--caso5
--prueba 1
select * from propiedad;

select nro_propiedad "nro propiedad" , fecha_entrega_propiedad "fecha entrega de propiedad",
direccion_propiedad "direccion", superficie, nro_dormitorios "cantidad de dormitorios ",
nro_banos "cantidad baños", valor_arriendo "valor del arriendo"
from propiedad
where EXTRACT(YEAR FROM  fecha_entrega_propiedad)= 2022 ;

--prueba2
CREATE TABLE DET_PROPIEDADES_ARRIENDO_VENTA AS (
select nro_propiedad "nro propiedad" , fecha_entrega_propiedad "fecha entrega de propiedad",
direccion_propiedad "direccion", superficie, nro_dormitorios "cantidad de dormitorios ",
nro_banos "cantidad baños", valor_arriendo "valor del arriendo"
from propiedad
where EXTRACT(MONTH FROM  fecha_entrega_propiedad)= 02 AND  EXTRACT(YEAR FROM FECHA_ENTREGA_PROPIEDAD)=2010) ;

SELECT * FROM DET_PROPIEDADES_ARRIENDO_VENTA;
