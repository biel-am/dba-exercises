/*
Exercise 38: Show customers who spent above average
Difficulty: Intermediate
Description: Write a query to show customers who spent above average.
Expected Output: A result set containing customers who spent above average.
*/

select customer_id, total_spent
from (select customer.customer_id, sum(payment.amount) as total_spent from customer
inner join payment
on customer.customer_id = payment.customer_id
group by customer.customer_id
order by customer.customer_id) as subquery
where total_spent > (select avg(total_spent)
from (select customer.customer_id, sum(payment.amount) as total_spent from customer
inner join payment
on customer.customer_id = payment.customer_id
group by customer.customer_id
order by customer.customer_id) as avg_subquery)
order by customer_id;


