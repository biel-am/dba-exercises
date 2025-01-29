/*
Exercise 42: Find customers who rented all movies in a category
Difficulty: Advanced
Description: Write a query to find customers who rented all movies in a category.
Expected Output: A result set containing customers who rented all movies in a category.
*/

select customer_id,
category_name_film,
total_rental,
total_film
from (select rental.customer_id,
category.name as category_name_film,
count(rental.rental_id) as total_rental
from film
inner join film_category
on film.film_id = film_category.film_id
inner join category
on film_category.category_id = category.category_id
inner join inventory
on film.film_id = inventory.film_id
inner join rental
on inventory.inventory_id = rental.inventory_id
inner join customer
on rental.customer_id = customer.customer_id
group by rental.customer_id, category_name_film
order by rental.customer_id)
inner join (select category.name as category_name_group,
count(film.film_id) as total_film
from film
inner join film_category
on film.film_id = film_category.film_id
inner join category
on film_category.category_id = category.category_id
group by category_name_group
order by category_name_group)
on category_name_film = category_name_group
and total_rental = total_film;



