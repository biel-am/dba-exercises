/*
Exercise 45: Find films rented together most often
Difficulty: Advanced
Description: Write a query to find films rented together most often.
Expected Output: A result set containing films rented together most often.
*/

select film.title as film_title,
film.film_id,
count(rental.rental_id) as total_rental
from film
inner join inventory
on film.film_id = inventory.film_id
inner join rental
on inventory.inventory_id = rental.inventory_id
group by film.title, film.film_id
order by film.title