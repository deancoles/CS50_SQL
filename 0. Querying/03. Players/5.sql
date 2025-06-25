-- Return the first and last names of all right-handed batters

select first_name, last_name
from players
where bats = 'R'
order by first_name, last_name;