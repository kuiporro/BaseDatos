select employee_id id_empleado, first_name, last_name, manager_id as id_jefe
from employees;

select * from departments;
select * from locations;
select * from countries;
select * from regions;

SELECT department_id, 
        department_name, 
        location_id, 
        city,
        street_address
FROM departments 
NATURAL INNER JOIN locations;

SELECT department_id, 
        department_name, 
        location_id, 
        city,
        street_address
FROM departments JOIN locations
USING(location_id);


select departments.location_id
from departments join locations
on departments.location_id = locations.location_id;


select dep.department_name,
        loc.street_address
from departments dep join locations loc
on dep.location_id = loc.location_id;


--Construir una consulta que permita mostrar el nombre del departamento al que pertenece un empleado.
--Mostrar los siguientes campos: id de empleado, nombre empleado, apellido empleado, y nombre del departamento.
--Construir un ejemplo utilizando USING
--Construir un ejemplo utilizando ON

select emp.employee_id,
        emp.first_name,
        emp.last_name,
        dep.department_name
from employees emp
join departments dep
using(department_id);

select emp.employee_id,
        emp.first_name,
        emp.last_name,
        dep.department_name
from employees emp
join departments dep
on emp.department_id = dep.department_id;








