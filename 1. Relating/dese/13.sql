-- Find schools with graduation rates below 50%

SELECT name, graduated
FROM schools
JOIN graduation_rates ON schools.id = graduation_rates.school_id
WHERE graduated < 50
ORDER BY graduated DESC;