-- Count how many prints by Hokusai include “Fuji” in the English title

SELECT COUNT(english_title)
FROM views
WHERE artist = 'Hokusai' AND english_title LIKE '%Fuji%';