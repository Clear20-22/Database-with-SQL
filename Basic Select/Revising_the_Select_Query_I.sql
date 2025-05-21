-- Query all columns for American cities with population > 100000
-- The CountryCode for America is 'USA'
SELECT * 
FROM CITY 
WHERE CountryCode = 'USA' 
  AND Population > 100000;
