--  Find the 5 lowest paying teams (by average salary) in 2001.

SELECT name, ROUND (AVG(salary),2) AS "average salary"
FROM teams
JOIN salaries on teams.id = salaries.team_id
WHERE salaries.year = 2001
GROUP BY name
ORDER BY "average salary"
LIMIT 5;