/*
Exercise 41: Calculate rental frequency per film category
Difficulty: Advanced
Description: Write a query to calculate rental frequency per film category.
Expected Output: A result set containing rental frequency per film category.
*/

select category.name as category_name,
sum(total_rental) as total_rental
from film
inner join film_category
on film.film_id = film_category.film_id
inner join category
on film_category.category_id = category.category_id
inner join (select film_id as film_id_rental,
count(rental_id) as total_rental
from (select film.film_id,
film.title,
inventory.inventory_id,
rental.rental_id
from film
inner join inventory
on film.film_id = inventory.film_id
inner join rental
on inventory.inventory_id = rental.inventory_id)
group by film_id)
on film.film_id = film_id_rental
group by category_name
order by total_rental desc




