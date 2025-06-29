-- In most_populated.sql, write a SQL statement to create a view named most_populated. 
-- This view should contain, in order from greatest to least, the most populated districts in Nepal. Ensure the view contains district, families, households, population, male and female

CREATE VIEW most_populated AS
SELECT district, sum(families) AS families, sum(households) AS households, sum(population) AS population, sum(male) AS male, sum(female) AS female
FROM census
GROUP BY district
ORDER BY population DESC;

-- Used during testing
drop view most_populated