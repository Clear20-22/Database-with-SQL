-- Write a query that prints a list of employee names (i.e.: the name attribute)
-- for employees in Employee having a salary greater than 2000 per month
-- and who have been employees for less than 10 months.
-- Sort the result by ascending employee_id.

SELECT name
FROM Employee
WHERE salary > 2000 AND months < 10
ORDER BY employee_id ASC;
