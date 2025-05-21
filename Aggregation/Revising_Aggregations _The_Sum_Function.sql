-- Query the total population of all cities in CITY where District is California

SELECT SUM(Population) AS TotalPopulation
FROM CITY
WHERE District = 'California';
