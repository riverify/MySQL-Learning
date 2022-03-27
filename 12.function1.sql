-- use function

select DEPTNO, ENAME, lower(ENAME), UPPER(ENAME), SAL from EMP e;

select max(SAL), min(SAL), count(SAL), sum(SAL), avg(SAL) from EMP e;

-- function : 提高了select查询数据的能力，不会修改数据库数据

-- 函数的分类 : 
-- 单行函数(对单行数据操作) : lower(), upper()...
-- 多行函数(对多行数据操作) : max(), min(), count(), sun(), avg()
-- 除了多行函数，都是单行函数(多行的比较少)

-- 单行函数:
-- 字符串函数
select length(ename), ENAME, substring(ENAME, 1, 3) from EMP e;
-- 数值函数
select abs(-5), ceil(5.4), floor(5.6),round(3.14) from dual; -- dual 虚拟表，只是为了测试函数，亦可省略from
select abs(-5);
select 10 / 3, -10 % -3, mod(-10, 3);
-- 日期和时间函数
select * from student; -- '1999-12-13'
select current_date, current_time;
select curdate(), curtime();
select now(), sysdate(),sleep(3),now(), sysdate();
insert into student values(null, 'zhangsan', '男', 23, now(), 'sql001', 'zh@ri.com');
insert into student values(null, 'zhangsan', '男', 23, sysdate(), 'sql001', 'zh@ri.cn');
select * from student;
-- 流程函数
select EMPNO, ENAME, SAL, if(sal >= 2500, 'high', 'low') as grade from EMP e order by sal desc;
select EMPNO, ENAME, SAL, COMM, SAL + IFNULL(COMM, 0) as TOTAL from EMP e; -- 解决之前的问题
select nullif(1, 1), nullif(1, 2);
-- 其他函数




