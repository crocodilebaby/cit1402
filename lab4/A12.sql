select distinct titles.premiered, count(*)
from titles
group by premiered
order by count(*) desc, premiered desc;