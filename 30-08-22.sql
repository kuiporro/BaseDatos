SELECT NVL('A', 'B'),
        NVL(NULL, 'B')
FROM DUAL;

SELECT commission_pct + 50, 
        NVL(commission_pct,0) + 50,
        NVL(TO_CHAR(commission_pct),'ES NULA')
FROM employees;

select nvl2(null,'a','b'),
        nvl2('hola','a','b'),
        nvl2('caracol','no es nulo','es nulo')
from dual;

select NULLIF(0,1),
        nvl2(NULLIF('abcd','abcd'),'no son iguales','son iguales')
from dual;

select COALESCE(null, null, null, null),
        COALESCE(null, null, 8),
        COALESCE(null, 'hola', null),
        COALESCE('hola', null, null, null)
from dual;

select first_name, nvl(to_char(department_id))
from employees;