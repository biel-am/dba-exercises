/*
Exercise 49: Analyze customer rental patterns
Difficulty: Advanced
Description: Write a query to analyze customer rental patterns.
Expected Output: A result set containing customer rental patterns.
*/

select rental.customer_id,
customer.first_name,
customer.last_name,
film.film_id,
film.title,
category_name,
count(rental.rental_id) as times_rented
from film
inner join inventory
on film.film_id = inventory.film_id
inner join rental
on inventory.inventory_id = rental.inventory_id
inner join customer
on rental.customer_id = customer.customer_id
inner join (select film_category.film_id as film_id_category,
category.name as category_name
from film_category
inner join category
on film_category.category_id = category.category_id)
on film.film_id = film_id_category
group by rental.customer_id, customer.first_name, customer.last_name, film.film_id, category_name
order by rental.customer_id, times_rented, film.film_id