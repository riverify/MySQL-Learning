-- Foreign Key Constraint

-- SELECT 
SELECT * FROM t_class;
drop table t_class;

-- create tables
-- first create class table
create table t_class(
	cno int(4) primary key auto_increment,
	cname varchar(10) not null,
	room char(4)
);

-- insert some values
insert into t_class values(null, 'sql', 'r501');
insert into t_class values(null, 'sql', 'r502');
insert into t_class values(null, 'bigdata', 'r301');

-- or use this:
insert into t_class values(null, 'sql', 'r501'), (null, 'sql', 'r502'), (null, 'bigdata', 'r301');

-- then create student table
create table t_student(
    sno int(6) primary key auto_increment,
    sname varchar(10) not null,
    age int(3),
    score double(4, 1),
    classno int(4) -- linked t_class
    -- constraint fk_stu_classno foreign key(classno) references t_class(cno)
);

alter table t_student add constraint fk_stu_classno foreign key(classno) references t_class(cno);

select * from t_student;
drop table t_student;

-- insert some 
insert into t_student values(null, 'zhangsan', 19, 98, 1);
insert into t_student values(null, 'lisi', 23, 91, 1);
insert into t_student values(null, 'wangwu', 29, 88, 2);

-- question1 : student can belongs to a class number that not existed
insert into t_student values(null, 'zhaoliu', 29, 88, 4);

-- question2 : can delete a class even if the class is not emtpy
delete from t_class where cno = 2;

-- reason : no foreign key constraint




