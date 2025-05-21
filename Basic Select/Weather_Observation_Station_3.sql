-- Query a list of CITY names from STATION for cities with an even ID number.
-- Exclude duplicates and print results in any order.

SELECT DISTINCT CITY
FROM STATION
WHERE MOD(ID, 2) = 0;
-- WHERE ID % 2 = 0
