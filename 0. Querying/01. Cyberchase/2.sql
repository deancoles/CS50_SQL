-- Display the season number of, and title of, the first episode of each season

SELECT season, title
FROM episodes
WHERE episode_in_season = 1;
