-- Find all teams that Satchel Paige played for.

SELECT name
FROM teams 

-- Return team id in performances table that include the player id associated with Satchel Paige
WHERE id IN (SELECT team_id 
			 FROM performances 
			 WHERE player_id = 
			(SELECT id FROM players WHERE first_name = 'Satchel' AND last_name = 'Paige'));