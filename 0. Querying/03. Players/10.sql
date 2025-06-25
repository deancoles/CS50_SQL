-- Find players who debuted in 1996

select debut AS '1996 Debut Players'
from players
where debut like '1996%'
order by debut asc;