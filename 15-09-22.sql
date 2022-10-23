SELECT  department_id,  
        MAX(salary) AS salario_maximo,
        MIN(salary) AS salario_minimo
FROM employees
WHERE hire_date > '01-01-2005'
GROUP BY department_id
HAVING MIN(salary) > 2500 AND MAX(salary) > 5000
ORDER BY salario_maximo DESC;


SELECT ROUND(MAX(AVG(salary))) prom_max_salario
 FROM employees
GROUP BY department_id;


-- CASO 1 (Terminar...)
select carreraid identificacion_de_la_carrera, 
        count(alumnoid) total_alumnos_matriculados
from alumno
group by carreraid
order by total_alumnos_matriculados desc;










