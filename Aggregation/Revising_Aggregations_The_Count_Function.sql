-- Query a count of the number of cities in CITY having a Population larger than 100000

SELECT COUNT(*) AS CityCount
FROM CITY
WHERE Population > 100000;
