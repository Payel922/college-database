create database if not exists college;
use college;
create table teacher(
id int unique primary key,
name varchar(25),
subject varchar(30),
salary int default 0
);
insert into teacher
(id,name,subject,salary)
values
(23,"ajay","math",50000),
(47,"bharat","english",60000),
(18,"chetan","chemistry",45000),
(9,"divya","physics",75000);

alter table teacher
change column id id int unique primary key;

-- to select everything in the table and show

select * from teacher;


-- select teacher whose salary is more  than 55k
select * from teacher
where salary>55000;

-- rename the salary column of teacher table to ctc
alter table teacher
change column salary ctc int;


-- update salary of all teacher by giving them an increment of 25 percent;
update teacher 
set ctc = ctc + ctc *0.25;

-- to remove safe mode from the sql
SET SQL_SAFE_UPDATES = 0;



-- add a new column for teacher called city. the default city should be "gurgaon"

alter table teacher
add column city varchar(30) default  "gurgaon";


-- delete the city column for teacher table;
alter table teacher
drop column city;


-- new database for student 

create database student ;


-- using student database

use  student;

-- create a table for student database
create table student(
rollno int primary key, 
name varchar(30),
city Varchar(30),
marks int

);
-- insert data to student table

insert into student
(rollno,name,city,marks)
values
(110,"adam","delhi",76),
(108,"bob" , "Mumbai ",65),
(124,"casey","pune",94),
(112,"duke","pune",80);

-- show all content on student table

select * from student;

-- find all student who scored 75+
select * from student 
where marks>75;

-- find names of all cities and name  but not the two same city at a time;
select distinct city,name
from student;

--  another way is grouping
select city
from student 
group by city

-- find the maximum marks of students from each city
select city , max(marks)
from student 
group by city;

-- find the avg marks of the class
select avg(marks)
from student;

-- add a new column ,assign a grade such that 
-- marks>80 grade = 0;
-- marks 70-80 grade = A;
-- marks 60-70 grade = B:

alter table student 
add column grade varchar (2) ;

update student 
set grade = "0"
Where marks>=80;

update student 
set grade = "A"
Where marks>70 and marks<80;


update student 
set grade = "B"
Where marks>60 and marks<70;



