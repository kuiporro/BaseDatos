SELECT * FROM CLIENTE;

SELECT NUMRUN_CLI ||'-'|| DVRUN_CLI "RUN CLIENTE",
INITCAP(APPATERNO_CLI)||' '||SUBSTR(APMATERNO_CLI,1,1)||'.'||' '|| INITCAP(PNOMBRE_CLI)||' '||UPPER(SNOMBRE_CLI)"NOMBRE CLIENTE ",

DIRECCION , NVL(TO_CHAR(fono_fijo_cli), ('NO POSEE TELEFONO FIJO')) "TELEFONO FIJO",
NVL(TO_CHAR(celular_cli), 'NO POSEE CELULAR ') "CELULAR ", ID_COMUNA "COMUNA"
FROM CLIENTE
ORDER BY &VALOR1 &ASCoDESC , &VALOR2 &ASCoDESC; 


select * from empleado;
select 'El empleado '||upper(pnombre_emp)||' '||upper(appaterno_emp)||' '|| upper(apmaterno_emp)|| ' estuvo de cumpleaños el '|| 
extract (day from fecha_nac ) ||' de '|| extract(month from fecha_nac)from empleado;