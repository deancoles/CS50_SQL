-- Find the 10 public school districts with the highest per-pupil expenditures

SELECT name, per_pupil_expenditure
FROM districts
JOIN expenditures ON expenditures.district_id = districts.id
WHERE districts.type = "Public School District"
ORDER BY per_pupil_expenditure DESC
LIMIT 10;