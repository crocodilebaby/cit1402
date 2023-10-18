SELECT titles.title, ratings.rating, ratings.votes
FROM titles
JOIN ratings ON titles.title_id = ratings.title_id
WHERE ratings.votes > 1000000
ORDER BY ratings.rating DESC;
