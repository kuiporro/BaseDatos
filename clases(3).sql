SELECT last_name, UPPER(last_name), job_id, LOWER(job_id), INITCAP(job_id)
FROM hr.employees;

SELECT last_name apellido, 
        CONCAT('Su salario es ', salary),
        SUBSTR(last_name, 1,3), 
        LENGTH(last_name), 
        INSTR(last_name, 'a')
FROM employees;


SELECT last_name "Apellido", 
        INSTR(last_name,'e', 5, 3) "Resultado INSTR",
        SUBSTR(last_name, -1) "Resultado SUBSTR",
        TRIM('B' FROM last_name) "Resultado 1er. TRIM",
        salary, 
        TRIM('         hola                      '),
        TRIM(1 FROM salary) "Resultado 2do. TRIM"
FROM employees;



SELECT last_name apellido, 
        REPLACE(last_name, 'a', 'x'), 
        salary salario,
        LPAD(salary,10,'*'), 
        RPAD(salary,10,'%')
FROM employees
ORDER BY last_name;


SELECT employee_id "ID. EMPLEADO",
        first_name || ' ' || last_name "NOMBRE EMPLEADO",
        salary*.023, 
        salary*0.023, 
        ROUND(salary*.023), 
        TRUNC(salary*.023)
FROM employees;


SELECT employee_id, salary,
        salary*commission_pct*.763 "RESULTADO 1",
        ROUND((salary*commission_pct)*.763) "RESULTADO 2"
FROM employees
WHERE commission_pct IS NOT NULL;


SELECT last_name, salary, MOD(salary, 5000)
FROM employees
WHERE job_id='ST_MAN';


SELECT 'hola' as prueba, 2+3 as suma 
FROM dual;

select sysdate from dual;

--Elabore un nombre de usuario con el siguiente formato: ma.fuentes
--Columnas: first_name y last_name
--Pistas: SUBSTR, CONCAT, ||, LOWER

select lower(substr(first_name,1,2)||'.'||last_name) as usuario
from employees;





