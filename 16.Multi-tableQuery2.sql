-- New script in localhost.
-- Date: Mar 27, 2022
-- Time: 2:02:33 AM

-- 外连接:还显示不匹配的 outer join
select *
from EMP e
join DEPT d
on (e.DEPTNO = d.DEPTNO);
-- ４０号部门没有员工，没有出现在查询列表中
-- SCOTT没有部门编号，也不会出现在查询列表中
select * from EMP e;
select * from DEPT d;
-- 左外连接 left outer join
select *
from EMP e
left join DEPT d
on (e.DEPTNO = d.DEPTNO); -- 除了显示匹配的数据，还要显示左表的不匹配数据
-- 右外连接 right outer join
select *
from EMP e
right join DEPT d
on (e.DEPTNO = d.DEPTNO); -- 除了显示匹配的数据，还要显示右表的不匹配数据
-- 全部连接 full out join  MySQL尚不支持全部连接!!!
select *
from EMP e
full join DEPT d
on (e.DEPTNO = d.DEPTNO); -- 除了显示匹配的数据，还要显示所有不匹配数据
-- 但仍然可以通过集合运算实现全部连接
select *
from EMP e
left join DEPT d
on (e.DEPTNO = d.DEPTNO)
union -- 取并集 union all 不去重，但union已经去重了，效率地下。如果无去重需求，建议使用union all
select *
from EMP e
right join DEPT d
on (e.DEPTNO = d.DEPTNO); 

