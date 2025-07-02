-- For any two users, the app needs to quickly show a list of the friends they have in common. 
-- Given two usernames, lovelytrust487 and exceptionalinspiration482, find the user IDs of their mutual friends. 
-- A mutual friend is a user that both lovelytrust487 and exceptionalinspiration482 count among their friends

-- Create Query 
SELECT user_id FROM friends
WHERE friend_id = (SELECT "id" FROM "users" WHERE "username" = 'lovelytrust487')
INTERSECT
SELECT user_id FROM friends
WHERE friend_id = (SELECT id FROM users WHERE username = 'exceptionalinspiration482');

-- Explain Query Plan 
EXPLAIN QUERY PLAN
SELECT user_id FROM friends
WHERE friend_id = (SELECT "id" FROM "users" WHERE "username" = 'lovelytrust487')
INTERSECT
SELECT user_id FROM friends
WHERE friend_id = (SELECT id FROM users WHERE username = 'exceptionalinspiration482');