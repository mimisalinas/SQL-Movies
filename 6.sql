-- SQL query to determine the average rating of all movies released in 2012.
-- Output a table with a single column and a single row (not counting the header) containing the average rating.

SELECT AVG(ratings.rating)
FROM ratings
INNER JOIN movies ON movies.id = ratings.movie_id
WHERE movies.year = 2012;
