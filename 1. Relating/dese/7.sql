-- Find the names of schools in the Cambridge school district

SELECT name
FROM schools

-- Where district id name is Cambridge
WHERE district_id IN (SELECT id
			FROM districts
			WHERE name = "Cambridge");