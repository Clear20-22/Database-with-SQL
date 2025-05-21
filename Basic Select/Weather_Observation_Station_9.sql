-- Query the list of CITY names from STATION that do not start with vowels.
-- Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(CITY) NOT LIKE 'a%'
  AND LOWER(CITY) NOT LIKE 'e%'
  AND LOWER(CITY) NOT LIKE 'i%'
  AND LOWER(CITY) NOT LIKE 'o%'
  AND LOWER(CITY) NOT LIKE 'u%';
