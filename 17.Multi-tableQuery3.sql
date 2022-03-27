-- New script in localhost.
-- Date: Mar 27, 2022
-- Time: 2:23:57 AM

-- Three table query

-- 查询员工的编号、姓名、薪水、部门编号、部门名称、薪水等级
select * from EMP e;
select * from DEPT d;
select * from SALGRADE s;

select e.EMPNO, e.ENAME, e.SAL, e.DEPTNO, d.DNAME, s.GRADE 
from EMP e
left join DEPT d
on (e.DEPTNO = d.DEPTNO)
join SALGRADE s
on (e.SAL >= s.LOSAL and e.SAL <= s.HISAL); -- or use 'between..and..'



