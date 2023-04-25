-- SQL query to list the names of all people who starred in a movie in which Kevin Bacon also starred.
-- Output a table with a single column for the name of each person.
-- There may be multiple people named Kevin Bacon in the database. Be sure to only select the Kevin Bacon born in 1958.
-- Kevin Bacon himself should not be included in the resulting list.

SELECT DISTINCT people.name
FROM people
INNER JOIN stars ON stars.person_id = people.id
INNER JOIN movies ON movies.id = stars.movie_id
INNER JOIN stars s2 ON s2.movie_id = movies.id
INNER JOIN people p2 ON p2.id = s2.person_id
WHERE p2.name = 'Kevin Bacon' AND p2.birth = 1958 AND people.id != p2.id;
