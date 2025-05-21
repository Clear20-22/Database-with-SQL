-- Query the average population of all cities in CITY where District is California

SELECT AVG(Population) AS AveragePopulation
FROM CITY
WHERE District = 'California';
