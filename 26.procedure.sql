-- New script in localhost.
-- Date: Apr 3, 2022
-- Time: 6:39:33 PM

-- store procedure

-- 定义一个没有返回值的存储过程
create procedure myproc1(name varchar(20))
begin
	if name is null or name = ' ' then 
		select * from EMP;
	else
		select * from EMP e where e.ENAME like CONCAT('%', name,'%');
	end if;
end

drop procedure myproc1;

-- 调用存储过程
call myproc1(null);
call myproc1('AR');

-- 定义一个有返回值的储存过程
create procedure myproc2(in name varchar(20), out num int(3))
begin
	if name is null or name = ' ' then
		select * from EMP;
	else 
		select * from EMP e where e.ENAME like CONCAT('%', name,'%');
	end if;
	select FOUND_ROWS() into num;  -- 返回查询结果的条数
end


-- 调用存储过程
call myproc2(null, @num);
select @num;
