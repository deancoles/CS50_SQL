-- Return player salary and home runs for each year

SELECT players.first_name, players.last_name, salaries.salary, performances.hr, salaries.year
FROM players
JOIN salaries ON players.id = salaries.player_id
JOIN performances ON players.id = performances.player_id
AND salaries.year = performances.year
ORDER BY players.id, salaries.year DESC, performances.hr DESC, salaries.salary DESC;
