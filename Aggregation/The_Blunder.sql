-- Samantha's miscalculation removed all 0s from the salary before averaging.
-- Calculate the difference between the actual average salary and the miscalculated one.
-- Round the result up to the nearest integer.

SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary, '0', ''))) AS SalaryError
FROM EMPLOYEES;
