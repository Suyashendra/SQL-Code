-- SQL GROUP BY Clause

-- The GROUP BY is an optional clause of the SELECT statement. 
-- The GROUP BY clause allows you to group rows based on values of one or more columns.
-- It returns one row for each group.
-- The GROUP BY clause will be more useful when you use it with an aggregate function.
-- In practice, we often use the GROUP BY clause with an aggregate function such as MIN, MAX, AVG, SUM, or COUNT to calculate a measure that provides the information for each group.
-- The columns that appear in the GROUP BY clause are called grouping columns. 
-- If a grouping column contains NULL values, all NULL values are summarized into a single group because the GROUP BY clause considers all NULL values equal.

-- GROUP BY Syntax
select col1, col2, aggregate_function(col3)
from table_name
group by col1, col2;

-- Query1:
select Gender, count(gender) as Gender_count
from employeedemographics
group by gender;

-- SQL ORDER BY Clause
-- The ORDER BY is an optional clause of the SELECT statement.
-- The ORDER BY clause allows you to sort the rows returned by the SELECT clause by one or more sort expressions in ascending or descending order.

-- Syntax
select col1
from table_name
order by col1 [ASC | DESC]

-- Query2:
select * 
from employeedemographics
order by age asc;

-- Query3:
select * 
from employeedemographics
order by age desc;
