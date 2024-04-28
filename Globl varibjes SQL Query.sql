

--Globl var
select @@SERVERNAME

select @@VERSION

update student
	set st_age+=1
select @@ROWCOUNT --  اخر quer run
select @@ROWCOUNT


select *from stud
go
select @@ERROR -- عرض رقم Error 

select @@IDENTITY -- بترجع اخر انسرت 