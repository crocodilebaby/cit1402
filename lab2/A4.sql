select people.name, castmembers.characters 
from people, castmembers
where castmembers.title_id ='tt0172495'
and people.person_id = castmembers.person_id;