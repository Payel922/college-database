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
