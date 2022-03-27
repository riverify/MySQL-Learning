-- DML : insert update delete 

-- 查询表的数据
SELECT * FROM  student


-- insert
insert into student values(1, "张三", "男", 23, '1999-10-1', 'English', 'halo@ahnu.cn')
insert into student values(1, "张三", "男", 23, '1999-10-1', 'English', 'halo@ahnu.cn')
insert into student values(2, "李日天", "男", 23, '1997-1-21', 'English', 'shit@ahnu.cn')
insert into student (sno, sname, sex, classname)values(3, "朝活", "女", "P.E.")

-- update
update student set sex = "女" where sno = 2
update student set sex = "男", age = 25, classname = NULL where sname = '朝活' 

-- delete
delete from student where classname = "English"