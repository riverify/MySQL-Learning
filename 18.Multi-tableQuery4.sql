-- New script in localhost.
-- Date: Mar 27, 2022
-- Time: 8:21:22 AM

-- 自连接查询

-- 查询员工的编号、姓名、上级编号、上级姓名
select * from EMP e;
select e.EMPNO, e.ENAME, e.MGR, e2.EMPNO, e2.ENAME as MGRName
from EMP e 
left join EMP e2
on (e.MGR = e2.EMPNO);
