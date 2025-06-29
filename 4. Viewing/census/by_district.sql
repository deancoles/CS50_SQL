-- In by_district.sql, write a SQL statement to create a view named by_district. 
-- This view should contain the sums for each numeric column in census, grouped by district. Ensure the view contains district, families, households, population, male and female

CREATE VIEW by_district AS
SELECT district, sum(families) AS families, sum(households) AS households, sum(population) AS population, sum(male) AS male, sum(female) AS female
FROM census
GROUP BY district;

-- Used during testing
drop view by_district;