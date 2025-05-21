-- Query the shortest and longest CITY names along with their lengths.
-- If there are ties, choose the one that comes first alphabetically.

(
  SELECT CITY, LENGTH(CITY) AS NAME_LENGTH
  FROM STATION
  ORDER BY LENGTH(CITY) ASC, CITY ASC
  LIMIT 1
)
UNION
(
  SELECT CITY, LENGTH(CITY) AS NAME_LENGTH
  FROM STATION
  ORDER BY LENGTH(CITY) DESC, CITY ASC
  LIMIT 1
);
