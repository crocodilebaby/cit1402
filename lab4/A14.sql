select title, count(crewmembers.title_id)
from titles
left join
crewmembers
on titles.title_id= crewmembers.title_id
group by title;

