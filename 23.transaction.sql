-- New script in localhost.
-- Date: Apr 2, 2022
-- Time: 9:33:04 PM

-- transaction

-- 创建account账户表  
create table account(  
    id int primary key auto_increment,  
    username varchar(30) not null,  
    balance double 
);  
-- 为account账户表同时插入两条数据  
insert into account (username, balance) values('张三', 2000), ('李四', 2000);  
-- 查看account账户表中的数据  
select * from account;

-- 转账操作
-- 默认事物自动提交，一个dml语句一个事务
update account set balance = balance - 1000 where id = 1;

update account set balance = balance + 1000 where id = 2;

-- 如果多个操作是一个事务，事务需要手动提交
-- 事务开始，成功不会自动提交，失败了也不会自动回滚
start transaction;
update account set balance = balance - 1000 where id = 1;
update account set balance = balance + 1000 where id = 2;
-- 手动提交
commit;
-- 手动回滚
rollback;







