select * from
(select people.died,titles.title, people.name
from titles
left join
castmembers, people
on titles.title_id= castmembers.title_id and people.person_id= castmembers.person_id
where people.died is null);