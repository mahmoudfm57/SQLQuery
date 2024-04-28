

--XML

select *from Employee
for xml raw ('emp'),ELEMENTS ,ROOT

select *from Employee
for xml raw ('emp'),ELEMENTS ,ROOT('STUDENTS')