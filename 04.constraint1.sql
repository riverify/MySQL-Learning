-- constraint

-- 创建数据库表
CREATE table student(
	sno int(6) primary key auto_increment,  
	sname varchar(10) not null,
	sex char(1) default "男" check(sex = "男" or sex = "女"),
	age int(3) check(age >= 18 and age <= 50),
	enterdate date,
	classname varchar(10),
	email varchar(15) unique -- can be null, but should be unique 
)

-- INSERT 
INSERT INTO student value(1, "ZhangSan", "男", "21", "1999-10-1", "Java", "sick@rool.cn")

-- select
SELECT * FROM student
 
-- DROP 
DROP TABLE student 
