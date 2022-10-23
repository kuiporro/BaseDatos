-- Determinar salario de Abel
select * from employees where last_name = 'Abel';
-- Determinar quién o quiénes tienen un salario mayor que el de Abel
select * from employees where salary > 11000;
-- Ejemplo con subconsulta
select * 
from employees
where salary > (select salary from employees where last_name = 'Abel');

-- Determinar quién o quiénes poseen el salario máximo
select * 
from employees
where salary = (select max(salary) from employees);

-- Determinar quiénes ganan un salario mayor que los empleados(as) del depto 30
-- select salary from employees where department_id = 30;
select *
from employees
where salary > (select salary from employees where department_id = 30);

-- IN / ANY / ALL / EXISTS

-- IN
select * 
from employees 
where salary in (select salary from employees where department_id = 30);

select * 
from employees 
where salary in (11000,3100,2900,2800,2600,2500);

-- ANY
select * 
from employees 
where salary > any (11000,3100,2900,2800,2600,2500);

select * 
from employees 
where salary > any (select salary from employees where department_id = 30);

-- ALL 
-- Respuesta a pregunta anterior
select * 
from employees 
where salary > all (select salary from employees where department_id = 30);

select * 
from employees 
where salary > all (11000,3100,2900,2800,2600,2500);

-- EXISTS
select * 
from departments 
where exists (select 'hola' from dual);

select * 
from departments
where exists (select * from employees where employee_id = 856);

select *
from employees emp
where exists (select * 
              from departments dep 
              where emp.department_id = dep.department_id);

--

SELECT deptos.id_depto, deptos.total_empleados
FROM (SELECT department_id id_depto, 
                           COUNT(employee_id) total_empleados
               FROM employees
               GROUP BY department_id
               HAVING COUNT(employee_id) > 3) deptos
ORDER BY deptos.id_depto;

create table employees_copia
    as select * from employees; 

create table depto_50
    as select * from employees where department_id = 50;











