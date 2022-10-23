select * from alumno;
-- caso 1
SELECT carreraid "Identificacion de la carrera", count(carreraid)"total alumno matriculado",'Le corresponden'||to_char(count(carreraid)*30200,'L999G999')||'del precupuesto total asignado para publicicdad'"Monto por publicidad"
from alumno 
group by carreraid
order by count(alumnoid) desc, carreraid;
--caso 2

select carreraid "carrera",  count(alumnoid) "total alumnos"
from alumno
group by carreraid
having count (alumnoid)>4
order by (carreraid) asc;
--caso3
select * from empleado;
select to_char(run_jefe,'99G999G999' )AS "RUT JEFE SIN DV", COUNT(dv_run)"TOTAL EMPLEADOS A SU CARGO", to_char(max(salario),'L999G999G999')"SALARIO MAXIMO",
CASE WHEN COUNT(dv_run)> 0  then  (count(dv_run)*10)||'% del salario maximo' end as"Porcentaje de bonificacion", TO_CHAR((max(salario) * (count(dv_run)*10))/100,'L999G999G999') AS "BONIFICACION"
FROM empleado
GROUP BY (run_jefe) 
HAVING run_jefe IS NOT NULL
ORDER BY RUN_JEFE ASC;
--CAS4


SELECT * FROM  escolaridad_emp, empleado;

select id_escolaridad "escolaridad",
Case when id_escolaridad = 10 then 'basica' 
else case when id_escolaridad = 20 then 'MEDIA CIENTÍFICA HUMANISTA'
else case when id_escolaridad = 30 then 'MEDIA TÉCNICO PROFESIONAL'
else case when id_escolaridad = 40 then 'SUPERIOR CENTRO DE FORMACIÓN TÉCNICA'
else case when id_escolaridad = 50 then 'SUPERIOR INSTITUTO PROFESIONAL'
else case when id_escolaridad = 60 then 'SUPERIOR UNIVERSIDAD' end end end end end end as " descripcion escolaridad",
count(empleado.dv_run)"total empleados",
to_char(max(salario),'L999G999G999')"salario maximo",
to_char(mIN(salario),'L999G999G999')"salario minimo",
to_char(Sum(round(salario)),'L999G999G999')"salario total",
to_char(avg(round(salario)),'L999G999G999')"salario promedio"
from  empleado
group by id_escolaridad
order by COUNT(dv_run) desc;

--CASO 5
SELECT TITULOID "CODIGO DEL LIBRO", 
COUNT(TITULOID) "TOTAL DE VECES SOLICITADO",
 (CASE WHEN COUNT(TITULOID) = 1 THEN 'No se requiere nuevos ejemplares' WHEN COUNT(TITULOID) >= 2 AND COUNT(TITULOID) < 4 THEN 'Se requiere comprar 1 nuevos ejemplares' WHEN COUNT(TITULOID) >=4 AND COUNT(TITULOID) < 5 THEN 'Se requiere comprar 2 nuevos ejemplares' WHEN COUNT(TITULOID) >= 5 THEN 'Se requiere comprar 4 nuevos ejemplares' END) 
FROM PRESTAMO 
WHERE TO_CHAR(FECHA_INI_PRESTAMO, 'YYYY') = &AÑOACTUAL-1 
GROUP BY TITULOID 
ORDER BY COUNT(TITULOID) DESC;

--CASO 6 
SELECT TO_CHAR(RUN_EMP, '09G999G999') "RUN EMPLEADO", 
TO_CHAR(FECHA_INI_PRESTAMO, 'MM/YYYY') "MES PRESTAMOS LIBROS", 
COUNT(RUN_EMP) "TOTAL PRESTAMOS ATENDIDOS",
 TO_CHAR(COUNT(FECHA_INI_PRESTAMO) * 10000,'L99,999') "ASIGNACION POR PRESTAMOS" 
FROM PRESTAMO WHERE TO_CHAR(FECHA_INI_PRESTAMO, 'YYYY') = &AÑOACTUAL-1 
GROUP BY RUN_EMP, TO_CHAR(FECHA_INI_PRESTAMO, 'MM/YYYY') 
ORDER BY TO_CHAR(FECHA_INI_PRESTAMO, 'MM/YYYY') ASC, COUNT(RUN_EMP) DESC, RUN_EMP DESC;

