-- Find the players who played their final game in the MLB in 2022

select first_name, last_name
from players
where final_game like '2022%'
order by first_name asc, last_name