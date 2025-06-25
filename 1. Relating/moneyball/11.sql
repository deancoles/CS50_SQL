-- Find the 10 least expensive players per hit in 2001

SELECT players.first_name, players.last_name, salaries.salary / performances.H AS "dollars per hit"
FROM players
JOIN performances ON players.id = performances.player_id
JOIN salaries ON players.id = salaries.player_id
AND performances.year = salaries.year
WHERE performances.H > 0 AND performances.year = 2001
ORDER BY "dollars per hit", first_name, last_name
LIMIT 10;