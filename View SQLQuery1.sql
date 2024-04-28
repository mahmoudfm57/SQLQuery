-- ---  views  --- -- 
select * 
from Dept


create view VDept
as 
	select * from Dept

select * from VDept


create view Vcairo(id,name,edd)
as 
	select ename,eid,eadd
	from emp
	where eadd = 'cairo'

select * from Vcairo

create view Valex(id,name,edd)
as 
	select ename,eid,eadd
	from emp
	where eadd = 'alex'

select * from Valex

create view Vjoin(sid,fname,age,PU,PN)
with encryption -- 
as
select SSN,firstN,age,Punm,Pname
from Employee E inner join Porject P
on E.SSN=p.SSN

select * from Vjoin

select sid ,fname ,greade 
from Vjoin v inner join work W
on v.sid= w.SSN

--DML
-------view One table 

create view Vcairo(id,name,edd)
as 
	select ename,eid,eadd
	from emp
	where eadd = 'cairo'

insert into Vcairo
values(212,'ali','cairo')

--- Multi table 

create view Vjoin(sid,fname,age,PU,PN)
with encryption -- 
as
select SSN,firstN,age,Punm,Pname
from Employee E inner join Porject P
on E.SSN=p.SSN
---- Delete XXXXXXXX
-- insrt update

insert into Vcairo
values(212,'ali',700,'cairo') --X

insert into Vcairo(id,name)
values(212,'ali')