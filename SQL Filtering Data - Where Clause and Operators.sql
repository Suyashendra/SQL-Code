-- Filtering Data

-- WHERE Clause 
-- Filter data based on specified conditions.
-- Syntax - 
-- select col1, col2,...
-- from table_name
-- where condition

-- Query1:
select *
from employeedemographics
where firstname = 'Jim';

-- Comparison Operators:
-- =, <>(!=), <, >, <=, >=

-- Query2:
select *
from employeedemographics
where firstname <> 'Jim';

-- Query3:
select *
from employeedemographics
where age > 30;

-- Query4:
select *
from employeedemographics
where age < 30;

-- Query5:
select *
from employeedemographics
where age <= 30;

-- Query6:
select *
from employeedemographics
where age >= 30;

-- Logical Operators:
-- ALL, AND, IS NULL, IS NOT NULL, BETWEEN, IN, LIKE, EXISTS,  NOT, OR, SOME

-- Query7:
select * 
from employeedemographics
where age <= 32 AND gender = 'Male';

-- Query8:
select * 
from employeedemographics
where age <= 32 OR gender = 'Male';

-- Query9:
select *
from employeedemographics
where firstname IS NULL;

-- Query10:
select *
from employeedemographics
where firstname IS NOT NULL;

-- Query11:
select * 
from employeesalary
where salary between 40000 and 50000;

-- Query12:
select * 
from employeedemographics
where firstname IN ('Jim', 'Michael');

-- LIKE
-- The LIKE operator compares a value to similar values using a wildcard operator. 
-- SQL provides two wildcards used in conjunction with the LIKE operator:
-- 1. The percent sign ( %) represents zero, one, or multiple characters.
-- 2. The underscore sign ( _) represents a single character.

-- Query13:
select * 
from employeedemographics
where lastname like 'S%'; 

-- Query14:
select * 
from employeedemographics
where lastname like '%s%'; 

-- Query15:
select * 
from employeedemographics
where lastname like '_e%'; 

-- ALL 
-- The ALL operator compares a value to all values in another value set.
-- The ALL operator must be preceded by a comparison operator and followed by a subquery.
-- syntax -
-- comparison_operator ALL (subquery)

-- Query16:
select Firstname, Lastname 
from employeedemographics
where Salary >= ALL ( select salary from employeesalary where jobtitle = 'HR');

-- ANY
-- Similary to ALL operator
-- The ANY operator compares a value to any value in a set according to the condition.

-- EXISTS
-- The EXISTS operator tests if a subquery contains any rows.
