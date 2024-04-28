
---       لا يمكون عمل رن لالملف بالكمل بسب الكلمات العربيه
-- Function 
---------------------------------------
select GETDATE()

select ISNULL(ename,'')
from dbo.emp

select UPPER(ename),LOWER(ename)
from dbo.emp

select len(ename),ename
from dbo.emp


select max(ename)
from dbo.emp
  
  
select isnull(firsN,'')
from dbo.Employee

  
select isnull(firsN,'')
from dbo.Employee

select top(1) firsN
from dbo.Employee
order by len(firsN) desc

select POWER(sal,2)
from dbo.emp

select CONVERT (varchar(20),getdate(),101)-- بتحول

select FORMAT(getdate(),'dd-mm-yyyy')



-- create my own functions-------------------

create function getname(@id int)
returns varchar(20)
	begin
		declare @name varchar(20)
		select @name =FirsN from dbo.Employee where SSN=@id
		return @name -- varibles
	end
select dbo.getname(3)
----------------------------------------------------  

create function Getist(@did int)
returns table -- table
as 
return
(
	select ename , sal*12 as toralsal
	from dbo.emp
	where eid = @did
)
	
	
select*from dbo.Getist(7)
-----------------------------------------------
--multistarment
 create function getsttuds(@format varchar(20))
 returns @t table
			( 
			id int ,
			ename varchar(20)
			)
as
	begin
		if @format='first'
			insert into @t
			select SSN,FirsN from Employee
		else if @format='last'
			insert into @t
			select SSN,LastN from Employee

		else if @format='full'
			insert into @t
			select SSN,FirsN+' '+LastN from Employee
		return
	end


select * from getsttuds('full')
----------------------------------------------------

-------  windowing

-- lead  lag  بيعرض الي قبل ة الي بعد 
select ename ,overtime,
	z=lag(ename) over (order by overtime), -- الاسم الي قبل 
	m= lead (ename)over (order by overtime)--لاسم الي بعد  
	from dbo.emp



--first_value  last_value اكبر قيمه واصغر قيمه في العمود

select ename ,sal,
	first=first_value(sal) over (order by sal), -- اكبر قيمه
	last= last_value (sal)over (order by sal)--اصغر قيمه  
	from dbo.emp

































