CREATE TABLE employees_copia
    AS SELECT * FROM employees;


CREATE TABLE dept80
    AS SELECT employee_id, 
              salary*12 salario_anual,
              hire_date
        FROM employees
        WHERE department_id = 80;


CREATE TABLE DEPT30 (cod_empleado NOT NULL CONSTRAINTS PK_DEPT30 PRIMARY KEY,
                     salario_anual NOT NULL,
                     fecha_contrato NOT NULL)
    AS SELECT employee_id, salary*12, hire_date
        FROM employees
        WHERE department_id = 30;


SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE employee_id = &id_empleado;


SELECT last_name, department_id, salary*12, job_id
FROM employees
WHERE job_id = '&id_cargo';
--Se incluyen comillas simples

SELECT last_name, department_id, salary*12, job_id
FROM employees
WHERE job_id = &id_cargo;
--No se incluyen comillas simples (el usuario es quien debe ingresarlas)


SELECT employee_id, last_name, job_id, &cuarta_columna
FROM employees
WHERE &condicion
ORDER BY &nombre_columna DESC;


--Variable de sustitución reutilizable
SELECT employee_id, last_name, job_id, &&columna
FROM employees
ORDER BY &columna;

UNDEFINE columna;







