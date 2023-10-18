select *
from people
where name in 
(select name 
from people
group by name
having count(name)>1);


