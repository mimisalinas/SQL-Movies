-- SQL query to list the names of all people who starred in Toy Story.
-- Output a table with a single column for the name of each person.
-- Assume that there is only one movie in the database with the title Toy Story.

SELECT people.name
FROM people
INNER JOIN stars ON stars.person_id = people.id
INNER JOIN movies ON stars.movie_id = movies.id
WHERE movies.title = 'Toy Story';