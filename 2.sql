-- SQL query to determine the birth year of Emma Stone.
-- Output a table with a single column and a single row (not counting the header) containing Emma Stone’s birth year.
-- Assume that there is only one person in the database with the name Emma Stone.

SELECT people.birth
FROM people
WHERE name = 'Emma Stone';
