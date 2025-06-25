-- Find public school districts with above-average per-pupil expenditures and an above-average percentage of teachers rated exemplary

SELECT districts.name, expenditures.per_pupil_expenditure, staff_evaluations.exemplary
FROM expenditures
JOIN districts ON districts.id = expenditures.district_id
JOIN staff_evaluations ON staff_evaluations.district_id = expenditures.district_id

-- Only include districts where the percentage of exemplary teachers is above average
WHERE staff_evaluations.exemplary > (SELECT AVG(exemplary) from staff_evaluations)

-- Only include districts where the per-pupil expenditure is above average
AND expenditures.per_pupil_expenditure > (SELECT AVG(per_pupil_expenditure) from expenditures)

-- Ensure that only Public School Districts are included
AND districts.id IN (SELECT districts.id FROM districts WHERE type = "Public School District")

ORDER BY exemplary DESC, per_pupil_expenditure DESC;