-- New script in localhost.
-- Date: Apr 7, 2022
-- Time: 4:35:01 AM

create table t_user(
	userid varchar(10) primary key,
	realname varchar(3) not null,
	password varchar(6) not null,
	money double(10, 2)
);

insert into t_user values('zhangsan', '张三', 'zhangs', 5000);
insert into t_user values('lisi', '李四', '******', 5000);

select * from t_user;

update t_user set money = money + 2000 where userid = 'lisi';
update t_user set money = money - 2000 where userid = 'zhangsan';
