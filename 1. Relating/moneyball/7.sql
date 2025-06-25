--  Find the name of the player who’s been paid the highest salary of all time

SELECT first_name, last_name
FROM players 
JOIN salaries ON players.id = salaries.player_id
ORDER BY salaries.salary DESC
LIMIT 1;

