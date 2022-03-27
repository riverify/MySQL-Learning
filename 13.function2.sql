-- New script in localhost.
-- Date: Mar 26, 2022
-- Time: 3:44:20 PM

-- function2

-- 流程函数

-- case的等值判断 ~ switch
select * from EMP e;
select empno, ename, job,
case job
	when 'clerk' then '店员'
	when 'salesman' then '销售'
	when 'manager' then '经理'
	else '其他'
end as '岗位',
sal from EMP e;

-- case的区间判断
select empno, ename, sal,
case
	when sal <= 1000 then 'A'
	when sal <= 2000 then 'B'
	when sal <= 3000 then 'C'
	else 'D'
end as grade
from EMP e;

-- 其它函数
select database(), user(), version();
select PASSWORD(''); -- no more support

-- 多行函数
select max(sal), min(sal), AVG(sal), COUNT(sal), SUM(sal) from EMP e; 
select max(COMM), min(COMM), AVG(COMM), COUNT(COMM), SUM(COMM) from EMP e;
select max(ENAME), min(ENAME), AVG(ENAME), COUNT(ENAME), SUM(ENAME) from EMP e; 
select COUNT(*) from EMP e;
select COUNT(1) from EMP e2; -- 统计记录数
select MAX(*), MIN(*), COUNT(*), SUM(*), AVG(*) from EMP e; -- oonly count support


