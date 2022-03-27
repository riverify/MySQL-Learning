-- New script in localhost.
-- Date: Mar 26, 2022
-- Time: 4:58:04 PM

-- 统计各个部门的平均工资（只显示大于２０００的）
select avg(sal) from EMP e;; -- 1
select DEPTNO from EMP e; -- 14
-- 字段、多行函数不能共存
select avg(sal), DEPTNO 
from EMP e;
--
select deptno, avg(sal), COUNT(1)
from EMP e
group by DEPTNO
having avg(SAL) >= 2000
order by avg(sal) desc;


-- 统计各个岗位的平均工资（除了manager）
select JOB, AVG(SAL), COUNT(1)
from EMP e
where job != 'manager'
group by job
order by AVG(sal) desc;
-- where 子句中不能出现多行	函数

select job, AVG(sal), COUNT(1)
from EMP e
group by JOB
having job != 'manager'
order by AVG(sal) desc;

select * from EMP e2;
-- 列出最低工资小于２０００
select JOB, MIN(SAL)
from EMP e
group by JOB
having min(sal) <= 2000;

-- 列出平均工资大于１２００的部门和工作搭配组合
select job, DEPTNO, avg(sal), COUNT(1 )
from EMP e
group by JOB, DEPTNO
having AVG(SAL) >= 1200
order by AVG(SAL) desc;

-- 统计人数小于４的部门的平均工资
select DEPTNO, AVG(SAL), COUNT(1) as '人数'
from EMP e
group by DEPTNO
having count(1) < 4;

-- 统计各部门的最高工资，排除最高工资小于３０００的部门
select DEPTNO, MAX(sal)
from EMP e
group by DEPTNO
having MAX(SAL) >= 3000
order by MAX(SAL) desc;










