-- New script in localhost.
-- Date: Mar 27, 2022
-- Time: 8:41:22 PM

-- 相关子查询 子查询不可独立运行

-- 查询最高工资的员工
select * from EMP e where e.SAL = (select MAX(e2.SAL) from EMP e2);  -- 使用不相关子查询

-- 查询本部门最高工资的员工
-- 多条不相关子查询
select * from EMP e where e.DEPTNO = 10 and e.SAL = (select MAX(e2.SAL) from EMP e2 where e2.DEPTNO = 10) -- 10号部门的最高工资
union
select * from EMP e where e.DEPTNO = 20 and e.SAL = (select MAX(e2.SAL) from EMP e2 where e2.DEPTNO = 20) -- 20号部门的最高工资
union
select * from EMP e where e.DEPTNO = 30 and e.SAL = (select MAX(e2.SAL) from EMP e2 where e2.DEPTNO = 30); -- 30号部门的最高工资
-- 相关子查询
select * from EMP e where e.SAL = (select MAX(e2.SAL) from EMP e2 where e2.DEPTNO = e.DEPTNO);

-- 查询工资高于所在部门的平均工资的那些员工


-- 查询每个部门的平均薪水的等级
