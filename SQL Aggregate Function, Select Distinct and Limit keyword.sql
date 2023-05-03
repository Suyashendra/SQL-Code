-- SQL Aggregate Functions

-- SQL Aggregate Functions calculates on a set of values and returns a single value.
-- AVG(), COUNT(), MAX(), MIN(), SUM() are Aggregate Functions

-- 1. AVG()
select avg(salary) as "Average Salary" 
from employeesalary;

-- 2. COUNT()
select count(firstname) as "Total Employee"
from employeedemographics;

-- 3. MAX()
select max(salary) as "Highest Salary"
from employeesalary;

-- 4. MIN()
select min(salary) as "Lowest Salary"
from employeesalary;

-- 5. SUM()
select sum(salary) as "Sum of Salary"
from employeesalary;

-- SQL Limit and Distinct Keyword

-- Query1:
select *
from employeedemographics
limit 5;

-- Query2:
select distinct jobtitle
from employeesalary;