-- New script in localhost.
-- Date: Apr 3, 2022
-- Time: 6:03:40 PM

-- 创建单表视图
select * from EMP e;

create or replace view myview1
as
select e.EMPNO, e.ENAME, e.JOB, e.MGR, e.HIREDATE, e.DEPTNO from EMP e
where e.HIREDATE <= '1981-09-28';
drop view myview1;

select * from myview1;
select ename, job  from myview1 where job = 'manager';
insert into myview1 values(9999, 'jiu', 'jiujiu', 9999, '1979-09-09', 30);
insert into myview1 values(9999, 'jiu', 'jiujiu', 9999, '9999-09-09', 30);

-- 创建多表视图
create or replace view myview2
as
select e.EMPNO, e.ENAME, e.SAL, e.COMM, e.DEPTNO, d.DNAME
from EMP e
join DEPT d
on (e.DEPTNO = d.DEPTNO)
where e.SAL > 2500;

select * from myview2 m;

-- 创建统计视图
create or replace view myview3
as
select e.DEPTNO, d.DNAME, AVG(SAL), MAX(SAL) 最高工资, COUNT(*)
from EMP e
join DEPT d
using(DEPTNO)
where DEPTNO is not null
group by e.DEPTNO;

select * from myview3;	

-- 创建基于视图的视图
create or replace view myview4
as
select * from myview3 where 最高工资 >= 3000;

select * from myview4;


