-- 外键策略

select * from t_class;
select * from t_student;

delete from t_class where cno = 2; -- cannot do that directly
update t_class set cno = 4 where cno = 2; -- as well

-- foreign key strategy 1 : No Action : make sure classno that want change has no student
update t_student set classno = null where classno = 2;
update t_class set cno = 4 where cno = 2;
delete from t_class where cno = 4;

-- foreign key strategy 2 : cascade 级联
alter table t_student add constraint fk_stu_classno foreign key(classno) references t_class(cno);
alter table t_student drop foreign key fk_stu_classno;
alter table t_student add constraint fk_stu_classno foreign key(classno) references t_class(cno) on update cascade on delete cascade;
delete from t_class where cno = 9;
update t_class set cno = 9 where cno = 1;

-- foreign key strategy 3 : set null
alter table t_student add constraint fk_stu_classno foreign key(classno) references t_class(cno) on update set null on delete set null;
alter table t_student drop foreign key fk_stu_classno;
update t_class set cno = 50 where cno = 1;
delete from t_class where cno = 50; 



-- use which strategy?
-- it depends
