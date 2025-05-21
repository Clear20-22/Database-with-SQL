-- Query the list of CITY names from STATION which have vowels (a, e, i, o, u)
-- as both their first and last characters.
-- Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(CITY) LIKE 'a%' AND LOWER(CITY) LIKE '%a'
   OR LOWER(CITY) LIKE 'e%' AND LOWER(CITY) LIKE '%e'
   OR LOWER(CITY) LIKE 'i%' AND LOWER(CITY) LIKE '%i'
   OR LOWER(CITY) LIKE 'o%' AND LOWER(CITY) LIKE '%o'
   OR LOWER(CITY) LIKE 'u%' AND LOWER(CITY) LIKE '%u';



-- SELECT DISTINCT CITY
-- FROM STATION
-- WHERE LOWER(CITY) REGEXP '^[aeiou].*[aeiou]$';
