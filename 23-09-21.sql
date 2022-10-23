select MAX(salary) AS salario_maximo,
        MIN(salary) AS salario_minimo,
        SUM(salary) AS suma_salarios,
        COUNT(salary) AS total_salarios,
        ROUND(AVG(salary),2) AS salario_promedio
from employees 
where salary between 5000 and 9000;


select max(hire_date) as "M�S RECIENTE",
        min(hire_date) as "M�S ANTIGUA",
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
--�CU�NTAS PERSONAS TRABAJAN POR DEPTO?
--DETERMINAR SALARIO M�NIMO Y M�XIMO POR DEPTO

select department_id, 
        sum(salary),
        trunc(avg(salary),2),
        count(employee_id),
        max(salary) as "salario m�ximo",
        min(salary) as "salario m�nimo"
from employees
group by department_id;


--DETERMINAR EL SALARIO PROMEDIO POR CARGO (JOB_ID)
--DETERMINAR SALARIO M�NIMO Y M�XIMO POR CARGO (JOB_ID)

select job_id as cargo,
    avg(salary) as "promedio salario",
    min(salary) as "salario m�nimo",
    max(salary) as "salario m�ximo"
from employees
group by job_id
order by "promedio salario" desc







