create table emp
( 
eid int  identity (1,1) ,
ename varchar(20) ,
eadd varchar(20),
hiredate date default getdate() ,
sal int ,
overtime int ,
nesal  as (isnull(sal,0)+ isnull(overtime,0))persisted ,
BD date ,
age  as (year(getdate())-year(BD)),
gender varchar(1) ,
hour_rete int not null ,
did int ,
constraint c1 primary key (eid,ename),
constraint c2 unique (sal),
constraint c3 unique (overtime),
constraint c4 check (sal>1000),
constraint c5 check (eadd in ('cairo','mansoura','alex')),
constraint c6 check (gender='f' or gender ='m'),
constraint c7 check (overtime between 100 and 500 )

)


create table Dept(
Dept_id int  ,
dname varchar(20),
constraint c primary key (Dept_id),

)