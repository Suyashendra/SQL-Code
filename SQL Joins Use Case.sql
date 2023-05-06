-- Joins Use Case 

-- Use Case 1
-- Find highest paid employee beside Michael Scott 

select employeedemographics.employeeid, firstname, lastname, salary
from employeedemographics 
inner join employeesalary 
on employeedemographics.employeeid = employeesalary.employeeid
where firstname <> 'Michael'
order by Salary desc
limit 1;

-- Use Case 2
-- Calculate average salary of Salesman

select jobtitle, round(avg(salary)) as "Avg Salary"
from employeedemographics 
inner join employeesalary
on employeedemographics.employeeid = employeesalary.employeeid
where jobtitle = 'Salesman'
group by jobtitle;
