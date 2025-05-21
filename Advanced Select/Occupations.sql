-- Pivot the Occupation column so each Name appears under its corresponding Occupation.
-- Names should be sorted alphabetically within each occupation.
-- Output must have columns: Doctor, Professor, Singer, Actor.

SELECT
  MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,
  MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
  MAX(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,
  MAX(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
FROM (
  SELECT Name, Occupation,
         ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) AS RowNum
  FROM OCCUPATIONS
) AS Ordered
GROUP BY RowNum
ORDER BY RowNum;
