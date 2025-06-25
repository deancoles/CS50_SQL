-- Return the top 5 teams, sorted by the total number of hits by players in 2001.

SELECT name, SUM(h) AS "total hits"
FROM teams
JOIN performances on teams.id = performances.team_id
WHERE performances.year = 2001
GROUP BY teams.name
ORDER BY "Total Hits" DESC
LIMIT 5;