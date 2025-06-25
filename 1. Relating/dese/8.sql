-- Display all school districts and the number of pupils enrolled in each

SELECT districts.name, expenditures.pupils
FROM expenditures
JOIN districts ON expenditures.district_id = districts.id;