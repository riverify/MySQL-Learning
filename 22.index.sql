-- New script in localhost.
-- Date: Mar 29, 2022
-- Time: 5:57:10 PM

-- index

-- 此时是要获取所有的数据，是否有索引作用不大
select * from EMP e;
-- 因为数据库已经自动给主键列empno创建了索引，查询条件中出现empno，自动使用了索引
-- 是否使用索引，语句没有区别
select * from EMP e where e.EMPNO = 7654;

-- 因为没有给ename列创建索引，此时需要逐个比较，效率低下
select * from EMP e where e.ENAME = 'BLAKE';
-- 创建一个索引，然后升序排列
create index index_emp_ename on EMP(ENAME);
-- 显示索引
show index from EMP;
-- 删除索引
drop index index_emp_ename on EMP;
alter table EMP drop index index_emp_ename;

-- 没有给sal, hiredate创建索引，效率地下
select * from EMP e order by e.SAL, e.HIREDATE;
-- 创建索引
create index index_emp_sal_hiredate on EMP(SAL, HIREDATE desc);
-- 使用索引，效率提升
select * from EMP e order by SAL, HIREDATE;




