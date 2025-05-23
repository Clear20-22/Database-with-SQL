-- Query the sum of the populations for all Japanese cities in CITY
-- The COUNTRYCODE for Japan is 'JPN'

SELECT SUM(Population) AS TotalJapanesePopulation
FROM CITY
WHERE CountryCode = 'JPN';
