CREATE DATABASE Student_Grades

-- Create Table
CREATE TABLE MX_3101(
SR_Code char,
Program varchar(20),
Year_Level varchar(30),
Section int,
Real_Grade int,
Final_Grade int,
Remarks varchar(10)
)

drop table MX_3101

-- Alter Table
alter table MX_3101
drop column Remarks

alter table MX_3101
add Remarks varchar(10)

alter table MX_3101
alter column Year_Level varchar(50)

alter table MX_3101
alter column SR_Code nvarchar(50)

-- Constraints 
alter table MX_3101
alter column SR_Code int Not Null

alter table MX_3101
add unique (SR_Code) 

-- Insert values to table
alter table MX_3101-- alter Section to char
alter column Section char(50)

delete from MX_3101 -- Delete 1st row
where SR_Code = -4497

alter table MX_3101 --alter SR_Code to int
alter column SR_Code int 

alter table MX_3101-- alter Final_Grade to char
alter column Final_Grade char(50)

insert into MX_3101 (
SR_Code,Program,Year_Level,Section,Real_Grade,Final_Grade,Remarks)
values
(2004517,'BS MEXE','Third Year','MEXE-3101',83,2.25,'PASS')

insert into MX_3101 (
SR_Code,Program,Year_Level,Section,Real_Grade,Final_Grade,Remarks)
values
(2005419,'BS MEXE','Third Year','MEXE-3101',76,3,'PASS'),
(2004172,'BS MEXE','Third Year','MEXE-3101',75,3,'PASS'),
(2067706,'BS MEXE','Third Year','MEXE-3101',85,2,'PASS'),
(2000622,'BS MEXE','Third Year','MEXE-3101',73,4,'REM')

update MX_3101
set Final_Grade = 'INC' 
where SR_Code = 2000622

delete from MX_3101 -- Delete 1st row
where SR_Code = 2000621

select * from MX_3101

-- Create MX_3102 table
create table MX_3102(
SR_Code char not null,
Program varchar(20),
Year_Level varchar(30),
Section char,
Real_Grade int,
Final_Grade char(50),
Remarks varchar(10)
)

alter table MX_3102
alter column Section char(50)

alter table MX_3102
alter column SR_Code int

insert into MX_3102 (
SR_Code,Program,Year_Level,Section,Real_Grade,Final_Grade,Remarks)
values
(2009169,'BS MEXE','Third Year','MEXE-3102',85,2,'PASS'),
(2005200,'BS MEXE','Third Year','MEXE-3102',81,2.5,'PASS'),
(2005764,'BS MEXE','Third Year','MEXE-3102',89,21.75,'PASS'),
(2005118,'BS MEXE','Third Year','MEXE-3102',83,2.25,'PASS'),
(2005419,'BS MEXE','Third Year','MEXE-3102',93,1.5,'PASS')

--drop table MX_3102
truncate table MX_3102

select * from MX_3102

alter table MX_3102
alter column SR_Code nvarchar(50)

-- Create MX_3103 table
create table MX_3103(
SR_Code int unique not null,
Program varchar(20),
Year_Level varchar(30),
Section char(50),
Real_Grade int,
Final_Grade char(50),
Remarks varchar(10)
)

insert into MX_3103 (
SR_Code,Program,Year_Level,Section,Real_Grade,Final_Grade,Remarks)
values
(2001826,'BS MEXE','Third Year','MEXE-3102',83,2.25,'PASS'),
(2044159,'BS MEXE','Third Year','MEXE-3102',87,2,'PASS'),
(2001193,'BS MEXE','Third Year','MEXE-3102',80,2.5,'PASS'),
(1859884,'BS MEXE','Third Year','MEXE-3102',69,5,'FAIL'),
(2007672,'BS MEXE','Third Year','MEXE-3102',78,2.75,'PASS')

truncate table MX_3103

select * from MX_3103