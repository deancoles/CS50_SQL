-- Find episodes from season seven teaching math

SELECT season, title, topic
FROM episodes
WHERE season = 7 AND topic LIKE '%Math%';