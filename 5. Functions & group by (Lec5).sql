
######    Functions


create table patients(pid int, pname Varchar(50), DOB date, DOA datetime);
insert into patients values ( 4,"xyz","2000-08-20","2023-5-23 10:00:00");
insert into patients values ( 5,"def","2002-06-12",now());


use excelr_session;
select * from patients;

select year(doa), time(doa) from patients;
select time(doa) from patients;


select * from office; 

## Group / Aggregate Functions

Select max(emp_salary) from office;

select sum(emp_salary) from office;

select min(emp_salary) from office;

select avg(emp_salary) from office;


use first;
select * from student1;
select count(*) as total_count from student1 ;
select count(s_name) as total_count from student1;

use excelr_session;
select count(*) from office;



## Do not run
select emp_name, emp_city, emp_salary from office 
where emp_salary = (Select max(emp_salary) from office);

## Group BY

select avg(emp_salary) from office group by sub_dept;



select sub_dept, avg(emp_salary) from office group by sub_dept;
select emp_dept, max(emp_salary) from office group by emp_dept;

select * from office;


##  find the max salary of employees as per city
## find the average salary of employees as per designation
## find the count of people where salary is greater than 50000.
## find the count of people where salary is between than 40000 and 80000.


select * from office order by emp_city;


select emp_city, max(emp_salary) from office group by emp_city;
select emp_des, avg(emp_salary) from office group by emp_des;
select count(*) from office where emp_salary >50000;

select count(*) from office 
where emp_salary>40000 and emp_salary <80000 ;

select sub_dept, count(*) as count_of_emp 
from office 
where emp_salary >50000 
group by sub_dept;


## Using grouping using 2 columns


select  emp_dept, emp_city, avg(emp_salary) 
from office 
group by   emp_dept, emp_city;

select  emp_dept, emp_city, Round(max(emp_salary) , 2) 
from office 
group by   emp_dept, emp_city;



select  emp_city, emp_dept, Round(max(emp_salary)) 
from office group by emp_city, emp_dept order by emp_city;


## grouping using specific departments

select sub_dept, avg(emp_salary) 
from office 
where sub_dept in (102,103,105) 
group by sub_dept;

## Another way using having

select sub_dept, avg(emp_salary) 
from office 
group by sub_dept having sub_dept in (102,103,105);

## Multiple functions

select sub_dept, avg(emp_salary), Max(emp_salary), min(emp_salary) 
from office 
where sub_dept in (102,103,105) 
group by sub_dept;



## Caution 

select sub_dept, sub_dept in (102,103,105), avg(emp_salary) 
from office 
group by Sub_dept;


select * from students;
