-- SQL query to list the titles of all movies in which both Johnny Depp and Helena Bonham Carter starred.
-- Output a table with a single column for the title of each movie.
-- Assume that there is only one person in the database with the name Johnny Depp.
-- Assume that there is only one person in the database with the name Helena Bonham Carter.

SELECT movies.title
FROM movies
INNER JOIN stars s1 ON s1.movie_id = movies.id
INNER JOIN people p1 ON p1.id = s1.person_id
INNER JOIN stars s2 ON s2.movie_id = movies.id
INNER JOIN people p2 ON p2.id = s2.person_id
WHERE p1.name = 'Johnny Depp' AND p2.name = 'Helena Bonham Carter';

