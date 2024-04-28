

alter table emp add constraint c100 check (hour_rate >100 )

alter table emp drop constraint c3

-- constraint --> new data
-- constraint --> shared
-- Datatypr
alter table instructor add constraint c200 check (salary >1000)


-- Rule  
-- علشان نعمل شرط علي البيانات الجديد او الي بتتعدل

create rule r1 as @x> 1000

sp_bindrule r1 ,'instrctor.salary'
sp_bindrule r1 ,'emp.overtime'

sp_unbindrule  ,'instrctor.salary'
sp_unbindrule  ,'emp.overtime'

drop rule r1

-- default نضع القيمه تلقاءي
create default def1 as 5000
sp_unbindefault defl 'emp.sal'

sp_unbindefault
drop default defl


--create Datatype ComplexDT (int > 100 default 500)
create rule r1 as @x> 1000
create default def1 as 5000

sp_addtype ComplexDT ,'int'
sp_bindrule r1 ,ComplexDT
sp_bindefault defl ,ComplexDT

create table test3 
(
id int,
name varchar(20),
salary ComplexDT )