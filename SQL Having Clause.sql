-- Having Clause 

-- We use the Group By clause to summarize rows into groups and apply the aggregate function.
-- To specify a condition for groups, we use the Having clause.
-- The Having clause if often used with Group By clause in the Select Statement. 
-- If you use a Having clause without a Group By clause, the Having clause behaves like the Where clause.

-- Syntax:
select col1, col2, aggregate_function(col3)
from table_name
group by col1, col2
having group_condition;

-- Query1:
select jobtitle, count(jobtitle)
from employeedemographics 
inner join employeesalary 
on employeedemographics.employeeid = employeesalary.employeeid
group by jobtitle
having count(jobtitle) > 1;

-- Query2:
select jobtitle, round(avg(salary))
from employeedemographics 
inner join employeesalary 
on employeedemographics.employeeid = employeesalary.employeeid
group by jobtitle
having avg(salary) > 45000
order by avg(salary);