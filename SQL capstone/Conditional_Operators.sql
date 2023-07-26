-- Select Statements --

-- select & from
select * from MeX_3101 

select SR_Code, Final_Grade
from MeX_3101

-- INTO
select SR_Code, Homework_1, Homework_2 
into MeX_3101_Homework_Grades
from Mex_3101

select * from MeX_3101_Homework_Grades

-- WHERE
select SR_Code, Remarks
from MeX_3101
where Remarks = 'REM'

select SR_Code, Remarks
from MeX_3106
where Remarks = 'FAIL'

-- Arithmetic Expressions

select SR_Code,Final_Exam_Part_1,Final_Exam_Part_1 + 3
from MeX_3103

select SR_Code,Final_Exam_Part_1, Final_Exam_Part_2,
Final_Exam_Part_1 + Final_Exam_Part_2
from MeX_3103

-- Defining a Null Value
select SR_Code, Homework_1, Homework_2, Individual_Recitation_2
from MeX_3105

-- Using Column Aliases
select SR_Code, Final_Grade AS grade
from MeX_3105

select SR_Code, Midterm_Exam_Part_2 + 4 AS ILO_2
from MeX_3105

-- Duplicate Rows
select distinct SR_Code, SR_Code
from MeX_3105

-- Where *Character Strings and Dates
select SR_Code, Final_Grade, Section
from MeX_3105
where Section = 'MEXE-3104'

-- Using Comparison Conditions
select SR_Code, Final_Grade
from MeX_3103
where Final_Grade >= 88

-- Between Condition
select SR_Code, Final_Grade
from MeX_3102
where Final_Grade between 80 and 90

-- IN Condition
select SR_Code, Remarks, Where_are_you_staying_this_first_semester_AY_2020_2021
from MeX_3106
where Where_are_you_staying_this_first_semester_AY_2020_2021
IN ('at a boarding house')

-- LIKE Condition
select SR_Code, Device_s_that_will_be_used_during_online_classes_Check_all_that_applies
from MeX_3102
where Device_s_that_will_be_used_during_online_classes_Check_all_that_applies
LIKE 'Lap%'

-- NULL Conditions
select SR_Code, Homework_1, HomeWork_2
from MeX_3106
where Homework_1 IS NULL

-- Logical Conditions --
-- AND
select SR_Code, Final_Grade, Device_s_that_will_be_used_during_online_classes_Check_all_that_applies
from MeX_3106
where Final_Grade <= 75
and Device_s_that_will_be_used_during_online_classes_Check_all_that_applies
LIKE '%Laptop%'

-- OR
select SR_Code, Final_Grade, Device_s_that_will_be_used_during_online_classes_Check_all_that_applies
from MeX_3106
where Final_Grade <= 75
or Device_s_that_will_be_used_during_online_classes_Check_all_that_applies
LIKE '%Laptop%'

-- NOT
select SR_Code, Final_Grade, Device_s_that_will_be_used_during_online_classes_Check_all_that_applies
from MeX_3105
where Final_Grade
NOT IN (80)

-- Storing Data in SQL --

-- Order By
select SR_Code, Final_Grade
from MeX_3103
order by Final_Grade

select SR_Code, Final_Grade
from MeX_3103
order by Final_Grade DESC

select SR_Code, Final_Grade, Section AS Room
from MeX_3102
order by Room

select SR_Code, Final_Grade, Midterm_Exam_Part_2
from MeX_3103
order by Final_Grade, Midterm_Exam_Part_2 DESC

-- Top Clause
SELECT TOP 5
SR_Code, Final_Grade
from MeX_3101
order by Final_Grade DESC

select * from MeX_3105


