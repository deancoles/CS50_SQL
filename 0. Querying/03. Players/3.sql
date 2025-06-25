-- Find the ids of rows for which a value in the column 'debut' is missing

select id
from players
where debut is null;