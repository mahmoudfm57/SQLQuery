
-- physical tables
create table exam
(id int primary key ,
name varchar(20),
age int 
)

drop table exam
-- local table -session based tables
--  tempdb بتعمل في  
--runtime
create table #exam
(id int primary key ,
name varchar(20),
age int 
)

drop table #exam

-- global table -shareda tbles
create table ##exam -- اي حد يقدر يشوفه 
(id int primary key ,
name varchar(20),
age int 
)

-- table variable

declare @t table 
(id int primary key ,
name varchar(20),
age int 
)


