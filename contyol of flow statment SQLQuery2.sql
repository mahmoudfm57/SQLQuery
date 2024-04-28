

-------- contyol of flow statment 
-- if
declare @x int
update student
	set st_age+=1
select @x=@@ROWCOUNT

if @x >0
	begin  --begin  اذ كان اكثر من سطر      البديه
	select  'multi rows affected'
	end --end     اذ كان اكثر من سطر   النهايه
else 
	select 'no rows affected'

--if exists if not exists
-- لا يهتم بمعرفت بالناتج

if exists (select * from sys.tables where name ='student')
	select 'table is existed'
else
	create table student 
	(id int,
	name varchar(20)
	)
	 
-- while 
	declare @x int =10
	 while @x <=20
		begin 
			set @x+=1
			if @x=14
				continue
			if @x=16
				break
			select @x
		end
		--- 11 12 13 15 
-- constinue

-- break 
-- case 
-- iif
-- waitfor
-- choose





