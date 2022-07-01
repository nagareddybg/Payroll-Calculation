create database Payroll_Calculation;
use Payroll_Calculation;

#1. Write a query to create the employee and department tables

create table employee ( 
empid int not null,
 fname varchar(40) null,
 lname varchar(40) not null,
 jobid varchar(40) not null,
 salary decimal(8,2) not null,
 managerid int not null,
 deptid varchar(40) not null,
primary key(empid));

create table department ( 
 deptid int not null,
 deptname varchar(40) not null,
 location varchar(40) null,
 managerid varchar(40) null,
 primary key(deptid));

#2. Write a query to insert values into the employee and department tables

# Employee table

select*from employee;

#Department table

select*from department;

#3. Write a query to create a view of the employee and department tables

create view emp as select fname,lname,salary ,deptname,location,empid
from employee, department;

/*4. Write a query to display the first and last names of every employee in the employee
table whose salary is greater than the 150000*/

select fname,lname from employee e
where salary>150000;
 
5. Write a query to change the delimiter to //

delimiter //

/*6. Write a query to create a stored procedure in the employee table for every 
employee whose salary is greater than or equal to 250,000*/

use Payroll_Calculation;
select*from employee
delimiter &&
create procedure topsalary()
begin
select fname,lname,jobid,salary from employee
where salary>=25000;
end &&
delimiter ;;

#7. Write a query to execute the stored procedure

call topsalary();

/*8. Write a query to create and execute a stored procedure with one parameter using 
the order by function in descending order of the salary earned*/

use Payroll_Calculation;
select*from employee
delimiter &&
create procedure sort_salarys(in var int)
begin
select fname,lname,jobid,salary from employee
order by salary desc limit var;
end &&
delimiter ;;

call sort_salarys(5)


