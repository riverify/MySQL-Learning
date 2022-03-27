-- select

select * from DEPT;

select * from EMP;

-- 显示部分列 select
select empno, ename, sal, comm, deptno from EMP;

-- 显示部分行 where
select empno, ename, sal, comm, deptno from EMP where sal < 2500;

-- 别名
select empno 编号, ename 姓名, sal 工资, comm 补助, deptno 部门 from EMP where sal < 2500;

select empno as 编号, ename as 姓名, sal as 工资, comm as 补助, deptno as 部门 from EMP where sal < 2500; -- as : alias

select empno '编 号', ename "姓 名", sal Salary, comm 补助, deptno 部门 from EMP where sal < 2500;

-- 算术运算
select empno, ename, sal * 1.1, comm, deptno, SAL + COMM from EMP where sal < 2500; -- WRONG TODO

-- 去重 distinct
select distinct job from EMP;
select distinct job, deptno from EMP;

-- 排序 order by
select * from EMP order by EMPNO; -- 按照主键排序
select * from EMP order by EMPNO asc; -- 升序排列（默认）
select * from EMP order by SAL desc; -- 降序排列
select * from EMP order by HIREDATE desc; -- 按时间的大小值降序
select * from EMP order by SAL desc, HIREDATE; -- 降序排列sal，如果一样，升序排列日期





