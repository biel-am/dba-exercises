/*
Exercise 39: Find most active customer in each store
Difficulty: Intermediate
Description: Write a query to show find most active customer in each store.
Expected Output: A result set containing most active customer in each store.
*/

select distinct customer.customer_id,
customer.first_name,
customer.last_name,
store.store_id,
count(rental.rental_id) over (partition by customer.customer_id, store.store_id) as total_rental
from customer
inner join rental
on customer.customer_id = rental.customer_id
inner join store
on rental.staff_id = store.store_id
order by total_rental desc