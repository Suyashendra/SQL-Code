-- Joins
-- The SELECT statement is not limited to query data from a single table. 
-- The Select statement can link multiple tables together.
-- The process of linking tables is called joining. 
-- For Joins one column should be common in joining tables.
-- SQL provides many kinds of joins such as inner join, left join, right join, full outer join, etc.

-- Inner Join
-- When we join two or more table using inner join, we get the intersection of the tables.
-- The Inner Join Keyword selects records that have matching values in both tables.

-- Inner Join Syntax:
select *
from table_name1
inner join table_name2
on table_name1.col_name = table_name2.col_name;

-- Three table Inner Join syntax:
select table1.col1
from table1
inner join table2 on table2.col1 = table1.col1
inner join table3 on table3.col1 = table1.col1;

-- Query1:
select * 
from employeedemographics 
inner join employeesalary 
on employeedemographics.employeeid = employeesalary.employeeid;

-- Full Outer Join 
-- The full outer join includes all rows from the joined tables whether or not the other table has the matching row.
-- If the rows in the joined tables do not match, the result set contains NULL values for every column of the table that lacks a matching row.

-- Full Outer Join Syntax: 
select * 
from table_name1
full outer join table_name2 
on table_name1.col1 = table_name2.col1;

-- Query2:
select * 
from employeedemographics 
full outer join employeesalary 
on employeedemographics.employeeid = employeesalary.employeeid;

-- Left Outer Join
-- Returns all records from the left table(table1), and the matching records from the right table(table2).
-- The Left Outer Join eliminates the rows that do not match with rows of right table. 

-- Left Outer Join Syntax: 
select * 
from table_name1
Left outer join table_name2 
on table_name1.col1 = table_name2.col1;

-- Query3:
select * 
from employeedemographics 
Left outer join employeesalary 
on employeedemographics.employeeid = employeesalary.employeeid;

-- Right Outer Join 
-- Returns all records from the Right table(table2), and the matching records from the left table(table1).
-- The Right Outer Join eliminates the rows that do not match with rows of left table. 

-- Right Outer Join Syntax: 
select * 
from table_name1
Right outer join table_name2 
on table_name1.col1 = table_name2.col1;

-- Query4:
select * 
from employeedemographics 
Right outer join employeesalary 
on employeedemographics.employeeid = employeesalary.employeeid; 

-- Query5:
select employeedemographics.employeeid, firstname, lastname, jobtitle, salary
from employeedemographics
inner join employeesalary 
on employeedemographics.employeeid = employeesalary.employeeid;

-- Query6:
select employeedemographics.employeeid, firstname, lastname, jobtitle, salary
from employeedemographics
left outer join employeesalary 
on employeedemographics.employeeid = employeesalary.employeeid;

-- Query7:
select employeedemographics.employeeid, firstname, lastname, jobtitle, salary
from employeedemographics
right outer join employeesalary 
on employeedemographics.employeeid = employeesalary.employeeid;
