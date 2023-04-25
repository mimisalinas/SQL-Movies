-- SQL query to list the names of all people who have directed a movie that received a rating of at least 9.0.
-- Output a table with a single column for the name of each person.
-- If a person directed more than one movie that received a rating of at least 9.0, they should only appear in your results once.

SELECT DISTINCT people.name
FROM people
INNER JOIN directors ON directors.person_id = people.id
INNER JOIN movies ON directors.movie_id = movies.id
INNER JOIN ratings ON ratings.movie_id = movies.id
WHERE ratings.rating >= 9;