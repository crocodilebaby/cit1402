SELECT titles.title, people.name
FROM titles
INNER JOIN ratings ON titles.title_id = ratings.title_id
INNER JOIN castmembers ON titles.title_id = castmembers.title_id
INNER JOIN people ON castmembers.person_id = people.person_id
WHERE ratings.rating >= 9;
