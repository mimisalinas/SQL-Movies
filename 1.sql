-- SQL query to list the titles of all movies released in 2008.
-- Output a table with a single column for the title of each movie.

SELECT title
FROM movies
WHERE movies.year = 2008;
