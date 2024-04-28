use  SD

declare @x int --تعريف varible

set @x=10 --or select @x=10 
select @x 

declare @x int=(select avg (st_age) from student)
select @x 

declare @y int
select @y=st_age from student where st_id =6
select @y


declare @y int , @name varchar(20)
select @y=st_age,@name=st_name from student where st_id =6
select @y,@name

declare @z int 
update student set st_fname='ail',@z=dept_id
where st_id=7
select @z

declare @t table (x int) -- انشاء جدول لنضع في اكثر من قيمه   
insert into @t 
select st_id,st_name from student where st_address ='alex'
select * from @t

declare @m int=5 --هيعرض اعل عدد قيم في المتغير 
select top(@m)
from student


--انشان متغير و جزنه في 
declare @col varchar(20) '+', @tab varchar(20) 'studen'
execute('selec'+ @com' from' @tab) -- execute بتحول النص   



