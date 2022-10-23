SELECT employee_id, 
        salary, 
        e.manager_id, 
        department_id, 
        d.department_name
FROM employees e JOIN departments d
USING(department_id)
WHERE e.manager_id IN(149,100)
AND salary < 10000;


SELECT employee_id, salary, e.manager_id, department_id, d.department_name
FROM employees e JOIN departments d
USING(department_id)
WHERE e.manager_id IN(149,100)
OR salary > 15000;


SELECT e.employee_id, e.salary, e.manager_id, e.department_id, d.department_name
FROM employees e JOIN departments d
ON (e.department_id = d.department_id)
AND e.manager_id IN(149,100)
AND salary < 10000;


SELECT d.department_name "NOMBRE DEPARTAMENTO",
    COUNT(e.employee_id) "TOTAL DE EMPLEADOS"
FROM employees e JOIN departments d
ON (e.department_id = d.department_id)
WHERE e.manager_id IN(149,100)
GROUP BY d.department_name
HAVING COUNT(e.employee_id) > 1;




