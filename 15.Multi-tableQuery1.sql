-- New script in localhost.
-- Date: Mar 27, 2022
-- Time: 1:21:52 AM

-- 多表连接查询 join
-- 查询员工编号、姓名、和部门编号
select * from EMP e;
select EMPNO, ENAME, DEPTNO from EMP e;

-- 查询员工编号、姓名、和部门编号
select * from DEPT d;
-- 交叉连接 cross join
select *
from EMP e
cross join DEPT d; -- 笛卡尔积，无世纪意义


-- 自然连接 natural join
-- 简单，自动匹配所有的重名列
-- 缺点：没有直接指明字段所属数据库表，效率低
select EMPNO, ENAME, DEPTNO, DNAME
from EMP e
natural join DEPT d;
-- 指定表名
select e.EMPNO, e.ENAME, e.DEPTNO, d.DNAME
from EMP e
natural join DEPT d;
-- 缺点２：无法手动选择匹配的同名列

-- using子句
select e.EMPNO, e.ENAME, e.DEPTNO, d.DNAME
from EMP e
join DEPT d
using (deptno);
-- 缺点：有关联列外键字段，但不同名

-- on子句
select e.EMPNO, e.ENAME, e.DEPTNO, d.DNAME
from EMP e
join DEPT d
on (d.DEPTNO = e.DEPTNO)
where sal >= 1500;

-- 'on' is widly used
