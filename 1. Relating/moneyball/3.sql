--  Find Ken Griffey Jr.’s home run history

SELECT year, hr
FROM performances

-- player id is the Ken Griffey born in 1969
WHERE player_id = (SELECT id FROM players WHERE birth_year = 1969 AND first_name = 'Ken' AND last_name = 'Griffey')

ORDER BY year DESC;