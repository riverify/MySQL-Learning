-- New script in localhost.
-- Date: Mar 27, 2022
-- Time: 7:25:21 PM


-- 查询所有比“CLARK”工资高的员工的信息
select sal from EMP where ename = 'CLARK';
select * from EMP where sal > 245;
select * from EMP where sal > (select sal from EMP where ename = 'CLARK');

 
--  单行子查询
	-- 查询[工资高于平均工资的]雇员名字和工资
    select ename, sal from EMP where sal > (select avg(sal) from EMP)  order by sal;
    
   	-- 查询[和CLARK同一部门且比他工资低的]雇员名字和工资。
    select ename,sal,deptno from EMP ;
    where deptno = (select deptno from EMP where ename = 'CLARK');
    and sal < (select sal from EMP where ename ='CLARK');
 
    -- 查询[职务和SCOTT相同，比SCOTT雇佣时间早的]雇员信息
    select * from EMP;
    where job = (select job from EMP where ename ='SCOTT');
    and hiredate < (select hiredate from EMP where ename = 'SCOTT');

-- 多行子查询
	-- 查询[工资低于任意一个“CLERK”的工资的]雇员信息。 -- ANY?
	SELECT * FROM EMP WHERE SAL <  ANY (SELECT SAL FROM EMP WHERE JOB ='CLERK') AND JOB !='CLERK';
	select * from EMP where sal < (select max(sal) from EMP where job='CLERK') AND JOB !='CLERK';
		 
	-- 查询[工资比所有的“SALESMAN”都高的]雇员的编号、名字和工资。-- ALL
	select EMPno,ename,sal from EMP  where sal > all (select sal from EMP where job ='SALESMAN');
	select EMPno,ename,sal from EMP  where sal > (select max(sal) from EMP where job ='SALESMAN');
		 
		 
	--  查询[部门20中职务同部门10的雇员一样的]雇员信息。  IN  
	select * from EMP;  -- 查询雇员信息
	select * from EMP where deptno = 20;  -- 查询部门20中的雇员信息  CLERK  MANAGER  ANALYST
	select job from EMP where deptno = 10; -- MANAGER  CLERK  PRESIDENT
	--  > Subquery returns more than 1 row
	select * from EMP where deptno = 20  and job in(select job from EMP where deptno = 10);
	select * from EMP where deptno = 20  and job = any(select job from EMP where deptno = 10);      