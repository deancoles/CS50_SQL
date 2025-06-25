-- Find the titles of episodes from season 5

SELECT title
FROM episodes
WHERE season = 5
ORDER BY title DESC;