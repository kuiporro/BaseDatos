--DETERMINAR LA CANTIDAD TOTAL DE CARGOS QUE EXISTEN PARA LOS EMPLEADOS (JOB_ID)
select count(DISTINCT job_id) from employees;
select count(job_id) from jobs;

--Sólo mostrar salarios máximos mayores que $10.000
SELECT department_id, MAX(salary)
FROM employees
GROUP BY department_id
HAVING MAX(salary) > 10000;

--Obtener salarios promedio mayores que 7000
SELECT department_id, ROUND(AVG(salary))
FROM employees
GROUP BY department_id
HAVING ROUND(AVG(salary)) > 7000
ORDER BY ROUND(AVG(salary)) ASC;



--Mostrar salarios mínimos por sobre los $5.000
--Mostrar salarios máximos por sobre los $7.000
--Orderar resultados de manera descendente por salario promedio
SELECT department_id, 
        min(salary), 
        max(salary), 
        round(avg(salary)) as salario_promedio
FROM employees
GROUP BY department_id
having min(salary) > 5000
and max(salary) > 7000
order by salario_promedio desc;



SELECT ROUND(MAX(AVG(salary))) "MÁXIMO SALARIO PROMEDIO"
FROM employees
GROUP BY department_id;










