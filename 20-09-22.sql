-- JOIN / ON
select emp.first_name,
        dep.department_name
from employees emp
join departments dep
on emp.department_id = dep.department_id;

select emp.first_name, emp.salary, jbs.min_salary, jbs.max_salary, jbs.job_title
from employees emp
join jobs jbs
on emp.job_id = jbs.job_id;

-- JOIN / USING
select emp.first_name,
        dep.department_name
from employees emp
join departments dep
using(department_id);
-- on emp.department_id = dep.department_id;

select emp.first_name, emp.salary, jbs.min_salary, jbs.max_salary, jbs.job_title
from employees emp
join jobs jbs
using(job_id);
-- on emp.job_id = jbs.job_id;

-- JOIN / NATURAL
select street_address, country_name
from locations
natural join countries;

select * 
from employees
natural join departments;

-- Filtros
select emp.first_name,
        dep.department_name
from employees emp
join departments dep
on emp.department_id = dep.department_id
where dep.department_id in (20,40,60);
-- where dep.department_name in ('Marketing','Human Resources','IT');

















