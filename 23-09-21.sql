select MAX(salary) AS salario_maximo,
        MIN(salary) AS salario_minimo,
        SUM(salary) AS suma_salarios,
        COUNT(salary) AS total_salarios,
        ROUND(AVG(salary),2) AS salario_promedio
from employees 
where salary between 5000 and 9000;


select max(hire_date) as "MÁS RECIENTE",
        min(hire_date) as "MÁS ANTIGUA",
        count(hire_date) as total_fechas
from employees;


select count(*), 
        count(commission_pct),
        count(nvl(commission_pct,0))
from employees;

select  avg(commission_pct),
        avg(nvl(commission_pct,0))
from employees;

select job_id
from employees
group by job_id;

--CALCULAR EL SALARIO PROMEDIO POR DEPARTAMENTO
--¿CUÁNTAS PERSONAS TRABAJAN POR DEPTO?
--DETERMINAR SALARIO MÍNIMO Y MÁXIMO POR DEPTO

select department_id, 
        sum(salary),
        trunc(avg(salary),2),
        count(employee_id),
        max(salary) as "salario máximo",
        min(salary) as "salario mínimo"
from employees
group by department_id;


--DETERMINAR EL SALARIO PROMEDIO POR CARGO (JOB_ID)
--DETERMINAR SALARIO MÍNIMO Y MÁXIMO POR CARGO (JOB_ID)

select job_id as cargo,
    avg(salary) as "promedio salario",
    min(salary) as "salario mínimo",
    max(salary) as "salario máximo"
from employees
group by job_id
order by "promedio salario" desc







