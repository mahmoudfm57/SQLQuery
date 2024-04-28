
-- batch - transaction - scipt

--batch
insert 
update   batch ليس له علاق ببعض ولاكن بترن مع بعض query  مجموع من  
delete 

--scipt 
create table 
go
drop table 
go 
create rule 
go

--transaction 
create table parent(pid int primary key)

create table child (cid int foreign key references parent(pid) )
begin try
	begin transaction
		insert into child values(0)
		insert into child values(0)
		insert into child values(0)
	commit
end try
begin catch 
	rollback
end catch







