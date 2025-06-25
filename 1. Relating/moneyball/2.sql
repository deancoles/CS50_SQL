-- Find Cal Ripken Jr.’s salary history.

SELECT year, salary
FROM salaries

-- Only use player id of 'Cal Ripken'
WHERE player_id IN (SELECT id FROM players WHERE first_name = 'Cal' AND last_name = 'Ripken')

ORDER BY year DESC;