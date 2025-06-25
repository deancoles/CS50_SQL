-- Find the school district with the single least number of pupils

SELECT name 
FROM districts
JOIN expenditures ON districts.id = expenditures.district_id
where expenditures.pupils = (SELECT min(pupils) FROM expenditures);