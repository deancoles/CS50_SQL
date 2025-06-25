-- Find the twenty brightest prints by Hokusai

SELECT english_title AS 'Hokusai Top Twenty Brightness'
FROM views
WHERE artist = 'Hokusai'
ORDER BY brightness DESC LIMIT 20;