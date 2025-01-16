/*
Exercise 32: List categories with more than 50 films
Difficulty: Intermediate
Description: Write a query to list categories with more than 50 films.
Expected Output: A result set containing categories with more than 50 films.
*/

select category.name as category,
count(film.film_id) as total_films
from film_category
inner join category
on film_category.category_id = category.category_id
inner join film
on film_category.film_id = film.film_id
group by category
having count(film.film_id) > 50
order by category;


