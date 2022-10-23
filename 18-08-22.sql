-- OPERADORES: > < = <>
SELECT first_name,
        last_name
FROM employees
WHERE last_name =  'Taylor';

SELECT  department_id,
        department_name        
FROM departments
WHERE department_id <> 40; -- RECUPERA TODOS LOS DEPARTAMENTOS CON ID DISTINTO A 40

SELECT first_name,
        last_name,
        salary
FROM employees
WHERE salary > 17000;

SELECT first_name,
        last_name,
        salary
FROM employees
WHERE salary >= 17000;

SELECT first_name,
        last_name,
        salary,
        hire_date
FROM employees
WHERE hire_date > '01-01-2005';

--OPERADOR: BETWEEN
SELECT first_name,
        last_name,
        salary
FROM employees
WHERE salary BETWEEN 5000 AND 6000;

SELECT first_name,
        last_name,
        salary,
        hire_date
FROM employees
WHERE hire_date BETWEEN '01-01-2003' AND '31-08-2003';

-- OPERADOR: IN
SELECT first_name,
        last_name,
        salary
FROM employees
WHERE salary IN (3000,4000,6000);

SELECT first_name,
        last_name,
        salary
FROM employees
WHERE first_name IN ('Jennifer', 'Peter');

-- OPERADOR: LIKE
SELECT first_name,
        last_name,
        salary
FROM employees
WHERE first_name LIKE 'A%';
-- Recupera empleados cuyo nombre COMIENZA con la letra "A" (mayúscula)

SELECT first_name,
        last_name,
        salary
FROM employees
WHERE last_name LIKE '%ng';
-- Recupera empleados cuyo apellido TERMINA con los caracteres "ng" (minúscula)

SELECT first_name,
        last_name,
        salary
FROM employees
WHERE last_name LIKE '%ae%';
-- Recupera empleados cuyo apellido contiene los caracteres "ae" (minúscula)

SELECT first_name,
        last_name,
        salary
FROM employees
WHERE last_name LIKE '__h%';
-- Recupera empleados cuyo apellido contiene la letra "h" en el tercer caracter (minúscula)

-- OPERADORES: NOT, AND, OR
SELECT first_name,
        last_name,
        salary,
        commission_pct
FROM employees
WHERE commission_pct IS NOT NULL;
-- Recupera empleados cuya comisión no es NULL

SELECT first_name,
        last_name,
        salary
FROM employees
WHERE first_name NOT IN('Steven', 'Neena', 'Lex');
-- Recupera empleados cuya nombre no es 'Steven', 'Neena', 'Lex'

SELECT first_name,
        last_name,
        salary,
        commission_pct
FROM employees
WHERE commission_pct IS NOT NULL 
AND salary = 9500;

SELECT first_name,
        last_name,
        salary,
        commission_pct
FROM employees
WHERE last_name = 'King'
OR salary = 9500;

-- Reglas de precedencia para los Operadores
-- https://docs.oracle.com/cd/E49933_01/server.770/es_eql/src/ceql_expr_precedence_rules.html

-- Crear tablas con consultas
CREATE TABLE employees_copia
    AS SELECT *  FROM employees;

CREATE TABLE dept80 
    AS SELECT employee_id,
            first_name,
            last_name,
            salary
        FROM employees
        WHERE department_id = 80;

CREATE TABLE emp_depto_30(cod_empleado  NOT NULL PRIMARY KEY,
                     salario_anual NOT NULL,
                     fecha_contrato NOT NULL)
    AS  SELECT  employee_id, 
                salary*12, 
                hire_date
           FROM employees
          WHERE department_id = 30;

-- Variables de sustitución
SELECT employee_id, 
        last_name, 
        salary, 
        department_id
 FROM   employees
WHERE  employee_id = &id_emp;

SELECT last_name, department_id, salary*12
FROM   employees
WHERE  job_id = '&job_title' ;

SELECT employee_id, last_name, job_id, &column_name
 FROM   employees
WHERE  &condition
ORDER BY &order_column DESC;
```		
-- Guardar y reutilizar variables de sustitución
SELECT employee_id, last_name, job_id, &&nombre
 FROM  employees
ORDER BY &nombre;

-- Eliminar variable de sustitución guardada: UNDEFINE nombre;
