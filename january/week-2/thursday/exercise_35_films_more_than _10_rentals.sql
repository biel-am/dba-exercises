/*
Exercise 35: Find films rented more than 10 times
Difficulty: Intermediate
Description: Write a query to find films rented more than 10 times.
Expected Output: A result set containing films rented more than 10 times.
*/

select film.title,
count(inventory.inventory_id) as total_rentals
from inventory
inner join rental
on inventory.inventory_id = rental.inventory_id 
inner join film
on inventory.film_id = film.film_id
group by title
having count(inventory.inventory_id) > 10
order by title




