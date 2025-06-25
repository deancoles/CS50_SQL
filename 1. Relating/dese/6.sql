-- Find the names of schools reporting a 100% graduation rate

SELECT name 
FROM schools

-- Where school id has graduate rate of 100
WHERE id IN (SELECT school_id
			FROM graduation_rates
			WHERE graduated = 100);