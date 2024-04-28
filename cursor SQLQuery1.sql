
declare c3 cursor ---erro
for select SSN,FirsN
	from Employee
	where Gender='m'
for read only -- update

declare @id int , @name varchar(20)
open c3
fetch c3 into @id, @name
while @@FETCH_STATUS=0
	begin
		select @id,@name
		fetch c1 into @id ,@name 
	end
close c3