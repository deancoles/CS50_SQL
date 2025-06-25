-- Find the first and last names of players who were not born in the United States

select first_name, last_name
from players
where birth_country != 'USA'
order by first_name asc, last_name;