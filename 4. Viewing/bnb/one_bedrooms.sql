-- Write a SQL statement to create a view named one_bedrooms. This view should contain all listings that have exactly one bedroom. 
-- Ensure the view contains id, property_type, host_name and accommodates

CREATE VIEW one_bedrooms AS
SELECT id, property_type, host_name, accommodates
FROM listings
WHERE bedrooms = 1;

-- Used for testing
DROP VIEW one_bedrooms