-- Find the titles and topics of all episodes teaching fractions

SELECT title, topic
FROM episodes
WHERE topic LIKE '%Fractions%';