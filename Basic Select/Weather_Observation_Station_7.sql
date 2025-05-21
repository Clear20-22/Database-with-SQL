-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION.
-- Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(CITY) LIKE '%a'
   OR LOWER(CITY) LIKE '%e'
   OR LOWER(CITY) LIKE '%i'
   OR LOWER(CITY) LIKE '%o'
   OR LOWER(CITY) LIKE '%u';
