-- where子句
 
-- 最简单的条件? 关系运算符
select * from EMP;
select * from EMP where deptno = 10;
select * from EMP where deptno < 10;
select * from EMP where deptno <= 10;
select * from EMP where deptno <> 10;
select * from EMP where deptno != 10;
select * from EMP where job = 'CLERK';
select * from EMP where job = 'clerk';
select * from EMP where binary job = 'clerk';  -- binary 区分大小写
select * from EMP where hiredate < '1981-12-25';
 
--  逻辑运算符  and
select * from EMP where sal > 1500 and sal < 3000;
select * from EMP where sal > 1500 and sal < 3000  order by sal;
select * from EMP where sal >= 1500 and sal <= 3000;

select * from EMP where sal between 1500 and 3000;  -- [1500,3000]
 
select * from EMP where job = 'CLERK' and deptno = 20;
select * from EMP where job = 'CLERK' &&  deptno = 20;
-- 逻辑运算符  or
select * from EMP where deptno = 10 or deptno = 20;
select * from EMP where deptno = 10 || deptno = 20;  
 
select * from EMP where deptno in (10, 20);
select * from EMP where job in ('CLERK', 'MANAGER', 'ANALYST') order by job;
select * from EMP where job = 'CLERK' or  deptno = 20;
 
-- 模糊匹配  %  _
-- % 代表任意多个字符 0，1，2 ....
select * from EMP where ename like '%A%';  -- like 
--  _ 任意一个字符
select * from EMP where ename like '_A%';
select * from EMP where ename not like '__A%';
 
-- null
select * from EMP where comm is null;
 
select * from EMP where comm is not null;

-- 小括号 ()
select * from EMP where job= 'SALESMAN' or job = 'CLERK' and sal >= 1280;  -- 优先级别 先and 再or
select * from EMP where (job= 'SALESMAN' or job = 'CLERK') and sal >= 1280; -- 改变运算顺序
select * from EMP where job= 'SALESMAN' or (job = 'CLERK' and sal >= 1280); -- 提高可读性