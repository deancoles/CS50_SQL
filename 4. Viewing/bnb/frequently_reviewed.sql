-- Write a SQL statement to create a view named frequently_reviewed. 
-- This view should contain the 100 most frequently reviewed listings, sorted from most to least frequently reviewed. Ensure the view contains id, property_type, host_name and reviews 

CREATE VIEW frequently_reviewed AS
SELECT listings.id, property_type, host_name, COUNT(listing_id) AS reviews
FROM listings
JOIN reviews on listings.id = reviews.listing_id
GROUP BY reviews.listing_id
ORDER BY reviews DESC, property_type, host_name
LIMIT 100;

-- Used during testing
drop view frequently_reviewed