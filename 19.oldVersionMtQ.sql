-- New script in localhost.
-- Date: Mar 27, 2022
-- Time: 5:24:16 PM

-- understand sql92 version style

-- 查询员工的编号、姓名、薪水、部门编号、部门名称、薪水 < 2000
select e.EMPNO, e.ENAME, e.SAL, e.DEPTNO, d.DNAME
from EMP e, DEPT d
where e.DEPTNO = d.DEPTNO and e.SAL < 2000;

-- 查询员工的编号、姓名、薪水、部门编号、部门名称、薪水等级、薪水 < 2000
select e.EMPNO, e.ENAME, e.SAL, e.DEPTNO, d.DNAME, s.GRADE
from EMP e, DEPT d, SALGRADE s
where e.DEPTNO = d.DEPTNO and e.SAL < 2000 and (e.SAL between s.LOSAL and s.HISAL);

-- 缺点：连接条件和筛选条件没有分开，都写在了where子句之中
