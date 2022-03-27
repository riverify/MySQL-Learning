-- DDL : create alter drop

-- 查询数据
SELECT * FROM student 

-- 查询表的结构
DESC student 

-- 修改表的结构
-- 增加一列
alter table student add score double(5, 2)			-- 123.45 
alter table student add score double(5, 2) first
alter table student add score double(5, 2) after enterdate
update student set score = 123.67 where sno = 3

-- 修改一列
alter table student modify score float(3, 1)
update student set score = 123.45 where sno = 3

alter table student change score score1 double(4, 1)

-- 删除一列
alter table student drop score1

-- 删除表
drop table student 
