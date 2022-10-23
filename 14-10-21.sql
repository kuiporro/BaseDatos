--SELF JOIN
select emp.employee_id id_empleado,
        emp.first_name||' '||emp.last_name nombre_empleado,
        jef.employee_id id_jefe,
        jef.first_name||' '||jef.last_name nombre_jefe
from employees emp
join employees jef on emp.manager_id = jef.employee_id;

--Determinar nombre y apellido de jefe(a), y cuántos empleados(as) tienen a su cargo
select jef.first_name||' '||jef.last_name nombre_jefe,
        count(emp.employee_id) empleados_a_cargo
from employees emp
join employees jef on emp.manager_id = jef.employee_id
group by jef.first_name||' '||jef.last_name;


select e.first_name, e.last_name, e.job_id, e.salary, j.job_title, j.max_salary
from employees e
join jobs j on e.salary > j.max_salary
order by e.first_name;


--left join
select e.first_name, e.last_name, nvl(d.department_name,'Sin departamento')
from employees e
left outer join departments d
on e.department_id = d.department_id;

SELECT emp.employee_id, 
        dep.department_id, 
        dep.department_name
FROM employees emp RIGHT JOIN departments dep
ON(emp.department_id = dep.department_id)
ORDER BY emp.employee_id;


SELECT emp.employee_id, 
        emp.first_name,
        dep.department_id, 
        dep.department_name
FROM employees emp FULL JOIN departments dep
ON(emp.department_id = dep.department_id)
ORDER BY emp.employee_id;


SELECT emp.employee_id, dep.department_id, dep.department_name
FROM employees emp CROSS JOIN departments dep
ORDER BY emp.employee_id;





