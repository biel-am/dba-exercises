/*
Exercise 26: Count rentals per customer
Difficulty: Intermediate
Description: Write a query to count rentals per customer.
Expected Output: A result set containing rentals per customer.
*/

select concat(customer.first_name, ' ', customer.last_name) as customer_name,
count(rental_id) as total_rentals
from customer
inner join rental
on customer.customer_id = rental.customer_id
group by customer_name