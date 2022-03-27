select * from t_student;
select * from t_student2;

-- create table quickly

-- keep data
create table t_student2
as
select * from t_student;
select * from t_student2;
-- do not keep data : where 1 = 2
create table t_student3
as
select * from t_student where 1 = 2;
select * from t_student3;
-- keep some parts : replace \* into others
create table t_student4
as
select sno, sname, age from t_student where age = 19;
drop table t_student4;
select * from t_student4;

-- insert
insert into t_student4 values(9, 'wangba', 23);
insert into t_student4 set sno = 10, sname = 'laoba';

-- delete
delete from t_student4; -- can roll back 
-- truncate is DDL statement
truncate table t_student4; -- fast, can not roll back





