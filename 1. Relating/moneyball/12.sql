-- Find the players among the 10 least expensive players per hit and among the 10 least expensive players per RBI in 2001.

SELECT players.first_name, players.last_name
FROM players

-- 2001 Least Expensive Per Hit
WHERE ID IN (SELECT players.id 
			 FROM players 	
			 JOIN salaries ON players.id = salaries.player_id
			 JOIN performances ON players.id = performances.player_id
			 WHERE performances.h > 0 AND performances.year = 2001 AND performances.year = salaries.year
			 ORDER BY salaries.salary / performances.h, first_name, last_name
			 LIMIT 10)
			 
-- 2001 Least Expensive Per RBI
AND ID IN (SELECT players.id 
			 FROM players 	
			 JOIN salaries ON players.id = salaries.player_id
			 JOIN performances ON players.id = performances.player_id
			 WHERE performances.rbi > 0 AND performances.year = 2001 AND performances.year = salaries.year
			 ORDER BY salaries.salary / performances.rbi, first_name, last_name
			 LIMIT 10)
			 
ORDER BY players.id;