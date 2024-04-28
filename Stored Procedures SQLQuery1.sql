-- 3 types of SP
--built in SP -- هذكره 
--2) User Defined SP
	 Select *
	 from student

create proc Getst
as 
	select*from student

execute Getst

create proc GetStbyAdderess @add varchar(20)
as
	select st_id,st_fname , st_address
	from Student 
	where st_address =@add

	GetStbyAdderess 'alex'

	 
--3) Trigger
------------------
--can't call
-- can't send parameter
-- triggers on table 
-- insert update delete