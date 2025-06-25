-- Find the 50 players paid the least in 2001

SELECT first_name, last_name, salary
FROM players
JOIN salaries ON players.id = salaries.player_id
WHERE year = 2001
ORDER BY salary, first_name, last_name, player_id
LIMIT 50;