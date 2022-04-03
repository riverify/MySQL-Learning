-- New script in localhost.
-- Date: Apr 2, 2022
-- Time: 10:25:08 PM

select @@transaction_isolation;

set session transaction isolation level read uncommitted;
set session transaction isolation level read committed;
set session transaction isolation level repeatable read;
