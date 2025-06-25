-- Find the 10 cities with the most public schools

SELECT COUNT(*) AS "number", city
FROM schools
WHERE type = 'Public School'
GROUP BY city
ORDER BY "number" DESC, city ASC 
LIMIT 10;