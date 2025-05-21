-- 1. Query an alphabetically ordered list of all names in OCCUPATIONS,
-- followed by the first letter of their occupation in parentheses.

SELECT CONCAT(Name, '(', LEFT(Occupation, 1), ')') AS FormattedName
FROM OCCUPATIONS
ORDER BY Name;

-- 2. Query the number of occurrences of each occupation in OCCUPATIONS.
-- Output in the specified format, sorted by count ascending, then occupation name.

SELECT
  CONCAT('There are a total of ', COUNT(*), ' ', LOWER(Occupation), 's.') AS Summary
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(*), Occupation;
