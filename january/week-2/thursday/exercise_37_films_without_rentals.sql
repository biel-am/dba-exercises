/*
Exercise 37: List films never been rented
Difficulty: Intermediate
Description: Write a query to list films never been rented.
Expected Output: A result set containing list films never been rented.
*/

select film.title,
count(inventory.inventory_id) as total_rentals
from inventory
inner join rental
on inventory.inventory_id = rental.inventory_id 
left join film
on inventory.film_id = film.film_id
group by title
having count(inventory.inventory_id) = 0
order by title;

