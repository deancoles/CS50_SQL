-- Write a SQL statement to create a view named available. This view should contain all dates that are available at all listings. 
-- Ensure the view contains id, property_type, host_name and date

CREATE VIEW available AS
SELECT listings.id, property_type, host_name, availabilities.date
FROM listings
JOIN availabilities ON listings.id = availabilities.listing_id
WHERE available = 'TRUE';

-- Used during testing
DROP VIEW available