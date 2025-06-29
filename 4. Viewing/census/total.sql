-- In total.sql, write a SQL statement to create a view named total. This view should contain the sums for each numeric column in census, across all districts and localities. 
-- Ensure the view contains families, households, population, male and female

CREATE VIEW total AS
SELECT sum(families) AS families, sum(households) AS households, sum(population) AS population, sum(male) AS male, sum(female) AS female
FROM census;

-- Used during testing
drop view total;