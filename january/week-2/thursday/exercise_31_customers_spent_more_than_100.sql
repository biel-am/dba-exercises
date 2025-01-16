/*
Exercise 31: Find customers who spent more than $100
Difficulty: Intermediate
Description: Write a query to find customers who spent more than $100.
Expected Output: A result set containing customers who spent more than $100.
*/

select concat(customer.first_name, ' ', customer.last_name) as name,
sum(amount) as total_spent
from customer
inner join payment
on customer.customer_id = payment.customer_id
group by name
having sum(amount) > 100
order by name


