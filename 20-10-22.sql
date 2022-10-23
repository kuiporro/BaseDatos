select * from departments;

-- commit;
-- alter session disable parallel dml;

-- UPDATE
update departments
set department_name = 'Tecnologías';

update departments
set department_name = 'Tecnologías'
where department_id = 60;

update departments
set department_name = 'Tecnologías',
    manager_id = null
where department_id = 60;

rollback;

desc departments;

select * from employees;

update employees set department_id = 60
where employee_id = 119;

update employees set department_id = 890
where employee_id = 119;

update employees set email = 'COLSEN'
where employee_id = 119;

-- DELETE
DELETE FROM departments;

delete from departments
where department_id = 130;

-- delete from cuentas;

create table cargos
    as select * from jobs;

select * from cargos;

-- Forma 1
delete from cargos;

-- Forma 2
truncate table cargos;

-- Poblar tabla existente
insert into cargos
    select * from jobs;










