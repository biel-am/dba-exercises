/*
Exercise 44: Calculate customer lifetime value
Difficulty: Advanced
Description: Write a query to calculate customer lifetime value.
Expected Output: A result set containing customer lifetime value.
*/

select payment.customer_id,
customer.first_name,
customer.last_name,
count(payment.payment_id) as total_transactions,
sum(payment.amount) as total_spent,
max(payment.payment_date) as last_transaction
from payment
inner join customer
on payment.customer_id = customer.customer_id
group by payment.customer_id, customer.first_name, customer.last_name
order by payment.customer_id, customer.first_name, customer.last_name