-- Find the salary of the player who hit the most home runs in 2001

SELECT salary
FROM salaries
WHERE player_id = (SELECT player_id FROM performances ORDER BY hr DESC)
AND year = 2001
ORDER BY salary DESC
LIMIT 1;