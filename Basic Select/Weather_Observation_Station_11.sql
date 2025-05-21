-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels.
-- Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(CITY) NOT LIKE 'a%'
   OR LOWER(CITY) NOT LIKE '%a'
   OR LOWER(CITY) NOT LIKE 'e%'
   OR LOWER(CITY) NOT LIKE '%e'
   OR LOWER(CITY) NOT LIKE 'i%'
   OR LOWER(CITY) NOT LIKE '%i'
   OR LOWER(CITY) NOT LIKE 'o%'
   OR LOWER(CITY) NOT LIKE '%o'
   OR LOWER(CITY) NOT LIKE 'u%'
   OR LOWER(CITY) NOT LIKE '%u';
