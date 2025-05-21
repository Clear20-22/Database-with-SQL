-- Calculate the maximum total earnings and the number of employees who earn that amount
SELECT 
  Salary * Months AS TotalEarnings,
  COUNT(*) 
FROM Employee
GROUP BY TotalEarnings
ORDER BY TotalEarnings DESC
LIMIT 1;
