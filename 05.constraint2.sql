-- constraint

-- CREATE 
CREATE table student(
	sno int(6) auto_increment,  
	sname varchar(10) not null,
	sex char(1) default "男",
	age int(3),
	enterdate date,
	classname varchar(10),
	email varchar(15), -- can be null, but should be unique 
	constraint pk_stu primary key(sno),
	constraint ck_stu_sex check(sex = "男" or sex = "女"),
	constraint ck_stu_age check(age >= 18 and age <= 50),
	constraint uk_stu_email unique(email)
)

-- INSERT 
INSERT INTO student values(1, "zhangsan", "男", 23, "1923-12-21", "mysql", "2212@da.com")

-- SELECT 
SELECT * FROM student

drop table student 

-- 列级约束的方法 
CREATE table student(
	sno int(6),  
	sname varchar(10) not null,
	sex char(1) default "男",
	age int(3),
	enterdate date,
	classname varchar(10),
	email varchar(15)  -- can be null, but should be unique 
)

-- alter table
alter table student add constraint pk_stu primary key(sno);
alter table student add constraint ck_stu_sex check(sex = '男' or sex = '女');
alter table student add constraint ck_stu_age check(age >= 18 and age <= 50);
alter table student add constraint uk_stu_email unique(email);
alter table student modify sno int(6) auto_increment;

desc student 

