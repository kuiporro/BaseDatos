SELECT employee_id, 
        job_id, 
        department_id, 
        salary,
        CASE  job_id  
                WHEN 'PR_REP' THEN 1.15*salary
                WHEN 'MK_MAN' THEN 1.20*salary
        ELSE salary 
        END "Salario Incrementado"
FROM employees
WHERE department_id IN(70, 20, 110);

SELECT last_name, 
                salary,  
                CASE 
                            WHEN salary >= 1000 AND salary <= 3000 THEN 'Bajo'
                            WHEN salary > 3000 AND salary <= 6000 THEN 'Medio'
                            WHEN salary > 6000 THEN 'Bueno'
                ELSE 'No aplica' 
                END calificacion
FROM employees
ORDER BY salary DESC;

-- UTILIZAR "BETWEEN"
SELECT last_name, 
                salary,  
                CASE 
                            WHEN salary BETWEEN 1000 AND 3000 THEN 'Bajo'
                            WHEN salary BETWEEN 3001 AND 6000 THEN 'Medio'
                            WHEN salary > 6000 THEN 'Bueno'
                ELSE 'No aplica' 
                END as calificacion
FROM employees
ORDER BY salary asc;




select first_name,
            case
                    when first_name = 'Peter' then 'Pedro'
                    when first_name = 'Louise' then 'Luisa'
                    when first_name = 'James' then 'Jaime'
            else
                'Sin traducir'
            end
from employees
order by first_name;

select * from departments;

select department_name,
            decode(
                        department_name, 
                        'Administration', 'Administración',
                        'Human Resources','Recursos Humanos',
                        'Sales', 'Ventas',
                        'No aplica'
                        ) as traduccion
from departments;


