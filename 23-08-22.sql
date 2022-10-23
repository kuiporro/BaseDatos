SELECT UPPER('hola'),
        LOWER('HOLA'),
        INITCAP('buenos días'),
        SUBSTR('caracol',6,2),
        LTRIM('            hola       ') remove_left,
        RTRIM('            hola       ') remove_right,
        TRIM('            hola       ') remove_left_right,
        LENGTH('hola')
FROM dual;

SELECT first_name,
        LENGTH(first_name) longitud,
        INSTR(first_name,'e') posicion,
        REPLACE(first_name,'a','x'),
        CONCAT('anita','fuentes'),
        'anita' || 'fuentes'
FROM employees;

/*
    Construir un reporte que permita visualizar un correo
    electrónico compuesto por el nombre (first_name) 
    y apellido (last_name) de cada empleado(a)
    Formato: anita.fuentes@hr.com
    
    Determinar el penúltimo caracter del nombre de cada
    empleado(a)
    ej: Anita => t
*/
SELECT first_name ||'.'|| last_name ||'@hr.com',
        concat(concat(first_name,'.'),concat(last_name,'@hr.com')),
        substr(first_name,-2,1),
        substr(first_name,length(first_name)-1,1)
FROM employees;


SELECT 700.456, ROUND(700.456), ROUND(700.556), ROUND(700.456,2),
    TRUNC(700.556), TRUNC(700.556,2),
    MOD(10,3) resto,
    10 / 3 cociente
FROM dual;

SELECT SYSDATE, 
        MONTHS_BETWEEN('31-07-22','01-01-22'),
        ADD_MONTHS('28-02-22',2),
        ADD_MONTHS('28-02-22',-2)
FROM dual;


/*
    Determinar cuántos años han transcurrido desde que un 
    empleado(a) fue contratado(a)
*/

SELECT first_name, hire_date FROM employees;



