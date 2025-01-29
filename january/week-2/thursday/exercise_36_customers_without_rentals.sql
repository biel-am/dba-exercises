/*
Exercise 36: Find customers who never rented
Difficulty: Intermediate
Description: Write a query to find customers who never rented.
Expected Output: A result set containing customers who never rented.
*/

select customer.customer_id, 
count(rental.rental_id)
from customer
left join rental
on customer.customer_id = rental.customer_id
group by customer.customer_id
having count(rental.rental_id) = 0
order by customer.customer_id




