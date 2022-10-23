
SELECT  emp.employee_id "ID EMPLEADO", emp.first_name || ' ' || emp.last_name "NOMBRE EMPLEADO", 
        emp.manager_id "ID JEFE",  jefe.first_name || ' '  || jefe.last_name "NOMBRE JEFE"
 FROM   employees emp JOIN employees jefe
      ON (emp.manager_id = jefe.employee_id)
ORDER BY emp.employee_id;

-- Determinar nombre de jefe(a), y cantidad de empleados(as) a cargo
SELECT man.first_name || ' '  || man.last_name "NOMBRE JEFE", 
       COUNT(emp.employee_id) "EMPLEADOS A SU CARGO"
 FROM  employees emp JOIN employees man
      ON (emp.manager_id = man.employee_id)
GROUP BY man.first_name, man.last_name
ORDER BY "EMPLEADOS A SU CARGO" DESC, man.last_name;

select * 
from employees e
join jobs j
on e.salary between j.min_salary and j.max_salary;

-- left outer join
select emp.first_name, dep.department_name
from employees emp left outer join departments dep
on emp.department_id = dep.department_id;

-- right outer join
-- department_id 10-110
select emp.first_name, dep.department_name
from employees emp right outer join departments dep
on emp.department_id = dep.department_id;

-- full outer join
select emp.first_name, dep.department_name
from employees emp full outer join departments dep
on emp.department_id = dep.department_id;

-- Si empleado(a) no tiene departamento, mostrar texto "sin departamento"
-- Si departamento no tiene empleado(a), mostrar texto "sin empleado(a)"
-- full outer join
select nvl(emp.first_name,'sin empleado(a)'), nvl(dep.department_name,'sin departamento')
from employees emp full outer join departments dep
on emp.department_id = dep.department_id;

SELECT emp.employee_id, dep.department_id, dep.department_name 
FROM employees emp CROSS JOIN departments dep
ORDER BY emp.employee_id;

-- JOIN Más de 2 tablas utilizando ON
select emp.first_name, dep.department_name, loc.street_address, loc.city, cou.country_name
from employees emp 
join departments dep on emp.department_id = dep.department_id
join locations loc on dep.location_id = loc.location_id
join countries cou on loc.country_id = cou.country_id;

-- JOIN Más de 2 tablas utilizando USING
select emp.first_name, dep.department_name, loc.street_address, loc.city, cou.country_name
from employees emp 
join departments dep using(department_id)
join locations loc using(location_id)
join countries cou using(country_id);
















