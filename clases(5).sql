SELECT employee_id, 
        hire_date
FROM hr.employees
WHERE hire_date > '10/09/2002'
ORDER BY hire_date;


SELECT last_name "Apellido", 
        TO_CHAR(hire_date, 'yyyy.mm.dd') "Formato Fecha 1",
        TO_CHAR(hire_date, 'DD Month yy') "Formato Fecha 2",
        TO_CHAR(SYSDATE, 'dd "de" MONTH "del" yyyy hh24:mi:ss') "Fecha/Hora Sistema 1",
        TO_CHAR(SYSDATE, 'dd "de" MONTH "del" yyyy hh12:mi:ss AM') "Fecha/Hora Sistema 2"
FROM employees;

SELECT last_name "Apellido", 
        TO_CHAR(hire_date, 'dd/mm/yyyy') "Formato Fecha 1",
        TO_CHAR(hire_date, 'DD Month YYYY') "Formato Fecha 2",
        TO_CHAR(hire_date,'Q') "Trimestre",
        TO_CHAR(SYSDATE, 'dd "de" MONTH "del" yyyy hh24:mi:ss') "Fecha/Hora Sistema 1",
        TO_CHAR(SYSDATE, 'dd "de" MONTH "del" yyyy hh12:mi:ss AM') "Fecha/Hora Sistema 2",
        TO_CHAR(SYSDATE,'Q')
FROM employees;

SELECT salary, 
        TO_CHAR(salary, '999999') Formato1,
        TO_CHAR(salary, '000000') Formato2, 
        TO_CHAR(1000000, '$9G999G999') Formato3,
        TO_CHAR(salary, 'L99,999.00') Formato4,
        TO_CHAR(salary, 'L99G999G999') Formato4
FROM employees
WHERE last_name = 'Ernst';

ALTER SESSION SET NLS_TERRITORY = "CHILE";


SELECT salary, 
        TO_CHAR(salary, '$0099,999.00') Formato1,
        TO_CHAR(salary, '$99G999D00') Formato2, 
        TO_CHAR(salary, '99999V900') Formato3
FROM employees
WHERE last_name = 'King';

SELECT TO_CHAR(SYSDATE,'DL'),
        TO_CHAR(SYSDATE,'DDD')
FROM DUAL;


SELECT '2 + 5',
        TO_NUMBER('2') + TO_NUMBER('5') AS CONVERSION_EXPLICITA,
        '2' + '5' AS CONVERSION_IMPLICITA,
        '3' * '5'
FROM DUAL;

--NO SE PUEDE
SELECT to_date('2007/05/31') FROM dual;

SELECT to_date('2007/05/31','YYYY/MM/DD') FROM dual;

--NO SE PUEDE
SELECT TO_CHAR('01/08/2019','YYYY') "USO TO_DATE CON CARACTERES"
FROM dual;

SELECT TO_CHAR(TO_DATE('01/08/2021'),'YYYY') "USO TO_DATE CON CARACTERES"
FROM dual;



SELECT last_name, 
        manager_id,
        NVL(manager_id,7) JEFE
FROM employees;





























