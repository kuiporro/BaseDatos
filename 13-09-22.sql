select max(salary), min(salary), avg(salary), sum(salary), count(salary)
from employees;

select min(first_name), max(first_name), min(hire_date), max(hire_date)
from employees;

/*
    COUNT(*): retorna el n�mero de filas que satisfacen el criterio de la sentencia SELECT 
    incluyendo filas duplicadas y filas que contengan valores Nulos en cualquiera de sus columnas.  
    
    COUNT(columna|expresi�n): retorna el n�mero de filas que poseen valores NO Nulos     en la columnade la tabla  o expresi�n.

*/
select count(*), count(commission_pct)
from employees;

select avg(commission_pct), avg(nvl(commission_pct,0))
from employees;

select count(department_id), count(distinct department_id), count(distinct nvl(department_id,0))
from employees;

-- GROUP BY

select department_id
from employees
group by department_id;

select department_id, round(avg(salary)) salario_promedio_x_depto
from employees
group by department_id
order by salario_promedio_x_depto;













