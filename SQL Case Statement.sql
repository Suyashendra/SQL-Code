-- Case Statement 

-- Query1:
select firstname, Lastname, Age, 
case
	when age > 30 then 'Old'
	when age between 27 and 30 then 'young'
	else 'baby'
end as Age2
from employeedemographics
where Age is not null
order by age;

-- Write a query to raise salary of jobtitle Salesman by 10%, Accountant by 5%, HR by .000001 
-- and else by 3% 

-- Query2:
select firstname, lastname, jobtitle, salary,
case 
	when jobtitle = 'Salesman' then Salary + (Salary * .10)
	when jobtitle = 'Accountant' then Salary + (Salary * .05)
	when jobtitle = 'HR' then Salary + (Salary * .000001)
	else Salary + (Salary * .03)
end as SalaryAfterRaise
from employeedemographics 
inner join employeesalary
on employeedemographics.employeeid = employeesalary.employeeid;