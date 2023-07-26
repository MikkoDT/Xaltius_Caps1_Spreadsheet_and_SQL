-- SQL Joins --

-- INNER JOINS
select 
e.SR_Code,e.Final_Grade,d.SR_Code,d.Final_Grade
from MeX_3101 e JOIN MeX_3102
ON (e.Final_Grade=d.Final_Grade)

select * from MeX_3101