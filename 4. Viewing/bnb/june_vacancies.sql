-- Write a SQL statement to create a view named june_vacancies. This view should contain all listings and the number of days in June of 2023 that they remained vacant. 
-- Ensure the view contains id, property_type, host_name and days_vacant.

CREATE VIEW june_vacancies AS
SELECT listings.id, property_type, host_name, COUNT(availabilities.date) AS "days_vacant"
FROM listings
JOIN availabilities ON availabilities.listing_id = listings.id
WHERE date BETWEEN '2023-06-01' AND '2023-06-31' AND "available" = 'TRUE'
GROUP BY availabilities.listing_id;

-- Used during testing
DROP VIEW june_vacancies;