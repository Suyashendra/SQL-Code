-- Set Operators

-- Union 

-- The Union operator combines result sets of two or more Select statement into single result set.
-- To use Union operator, you write the individual Select statement and join them by the keyword union.
-- The column returned by the Select Statements must have the same or convertible data type, size, same number of columns and be the same order.
-- The database system processes the query by executing two SELECT statements first. Then, it combines two individual result sets into one and eliminates duplicate rows. 
-- To eliminate the duplicate rows, the database system sorts the combined result set by every column and scans it for the matching rows located next to one another.

-- Syntax:
select col1, col2
from table_name1
union 
select col3, col4
from table_name2;

-- Query:
select employeeid 
from employeedemographics
union 
select employeeid
from employeesalary;

-- Union All
-- To retain the duplicate rows in the result set, we can use the Union All operator.

-- Syntax:
select col1, col2
from table_name1
union all
select col3, col4
from table_name2;

-- Query:
select employeeid 
from employeedemographics
union all
select employeeid
from employeesalary;

-- Intersect 
-- The Intersect operator is a set operator that returns distinct rows of two or more result sets from Select Statement.
-- The Intersect operator removes the duplicate rows from the final result set.

-- Syntax:
select col1, col2
from table_name1
intersect
select col3, col4
from table_name2;

-- Query:
select employeeid 
from employeedemographics
intersect
select employeeid
from employeesalary;
 
-- Minus
-- MINUS operator that allows you to subtract one result set from another result set.
-- The MINUS operator returns the unique rows produced by the first query but not by the second one.

-- Syntax:
select col1, col2
from table_name1
minus
select col3, col4
from table_name2;

-- Query:
select employeeid 
from employeedemographics
minus
select employeeid
from employeesalary;

