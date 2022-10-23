select * from departments;

insert into departments values (280,'Testing',null,null);
insert into departments values (290,'Desarrollo',null,null);
savepoint svp_2_inserts;

update departments set department_name = 'Pruebas' where department_id = 280;
savepoint svp_1_update;

delete from departments where department_id = 280;
savepoint svp_2_delete;

rollback to svp_2_inserts;
rollback to svp_1_update;

commit;

rollback;

-- Insertar un empleado(a) / Tabla employees
desc employees;
select * FROM employees;

insert into employees 
values (207,'Anita','Fuentes','a.fuentes','3336658',sysdate,'IT_PROG',25000,0.1,null,null);

create table tabla1
    as select * from departments;

create table tabla2
    as select * from departments;

-- delete from tabla1;
-- delete from tabla2;

/*
    INSERT ALL
    INTO tabla_1(col1,col2,col3, …) VALUES(valor1,valor2, valor3, …)
    INTO tabla_2(col1,col2,col3, …) VALUES(valor4,valor5, valor6, …)
    INTO tabla_3(col1,col2,col3, …) VALUES(valor7,valor8, valor9, …)
    Subconsulta;
*/

insert all
    into tabla1 (department_id, department_name, location_id, manager_id)
         values  (department_id, department_name, location_id, manager_id)
    into tabla2 (department_id, department_name, location_id, manager_id)
         values  (department_id, department_name, location_id, manager_id)
select * from departments;

commit;

-- alter session disable parallel dml;

select * from tabla1;
select * from tabla2;

CREATE TABLE TABLA_PRUEBA1
(ID_AUTO NUMBER(10) GENERATED ALWAYS AS IDENTITY 
MINVALUE 1
MAXVALUE 9999999999
INCREMENT BY 1 START WITH 1,
NOMBRE_DEPTO VARCHAR2(30) NOT NULL,
TOTAL_EMPLEADOS NUMBER(4));

-- Ojo: Usted no lo haga
-- insert into TABLA_PRUEBA1 values (1,'Calzado',8);
-- insert into TABLA_PRUEBA1 values ('Calzado',8);
-- insert into TABLA_PRUEBA1 (id_auto,nombre_depto,total_empleados) values (1,'Calzado',8);
-- insert into TABLA_PRUEBA1 (id_auto,nombre_depto,total_empleados) values ('Calzado',8);

insert into TABLA_PRUEBA1 (nombre_depto,total_empleados) values ('Calzado',8);

desc departments;
                    
-- Ojo: Usted no lo haga
-- insert into departments values (null,'Cocina',null,null);
-- insert into departments (department_name,location_id_manager_id) values ('Cocina',null,null);
-- insert into departments values (20,'Cocina',null,null);
-- insert into departments values (300,'Cocina',sysdate,null);
-- insert into departments values (300,'Cocinaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',null,null);










