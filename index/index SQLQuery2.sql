

-- PK -- constraint --> Clustered index
-- unique constraint --> nonclustrted

create table test22   -- 2 indexes
(id int primary key ,
name varchar(20),
age int unique
)

create unique index i4
on Employee(age)

-- SQL server profiler
-- SQL serve Tuning Advisor 

select *from Employee where age =21
--------------------------------------------
