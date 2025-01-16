/*
Exercise 29: Count films per language
Difficulty: Intermediate
Description: Write a query to count films per language.
Expected Output: A result set containing total films per language.
*/

select language.name as language, count(film.film_id) from film
inner join language
on film.language_id = language.language_id
group by language;