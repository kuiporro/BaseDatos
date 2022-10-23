SELECT MONTHS_BETWEEN('11/SEP/2021','11/JUN/2020') "MONTHS_BETWEEN",
        ADD_MONTHS('20/SEP/2019',3) "ADD_MONTHS",
        NEXT_DAY('15/SEP/2021','SUNDAY') "NEXT_DAY",
        LAST_DAY('20/FEB/2020') "LAST_DAY"
FROM dual;

SELECT employee_id "ID EMPLEADO", 
        first_name || ' ' || last_name "NOMBRE EMPLEADO",
        hire_date,
        MONTHS_BETWEEN(SYSDATE,hire_date)/12,
        ROUND(MONTHS_BETWEEN(SYSDATE,hire_date)/12) "AÑOS TRABAJADOS"
FROM HR.employees;

SELECT last_name, hire_date, 
        round((sysdate - hire_date)/7, 2),
        ROUND((SYSDATE - hire_date) / 7 ) "SEMANAS CONTRATADO",
        hire_date - 2 "FECHA CONTRATO MENOS 2 DIAS",
        hire_date + 10 "FECHA CONTRATO MAS 10 DIAS"
FROM hr.employees
WHERE department_id = 90;


SELECT EXTRACT(YEAR FROM SYSDATE) AS "AÑO ACTUAL",
        EXTRACT(DAY FROM SYSDATE) AS "DÍA",
        EXTRACT(MONTH FROM SYSDATE) AS "MES"
FROM DUAL;
