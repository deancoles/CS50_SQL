-- Find the highest contrast value of prints by Hokusai

SELECT MAX(CONTRAST) AS 'Maximum Contrast'
FROM views
WHERE artist = 'Hokusai';