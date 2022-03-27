
-- 创建数据库表
CREATE table student(
	sno int(6),
	sname varchar(10),
	sex char(1),
	age int(3),
	enterdate date,
	classname varchar(10),
	email varchar(15)
);

-- 查看表的结构
desc student

-- 查看表的数据
select * from student  

-- 查看建表语句
show create table student 