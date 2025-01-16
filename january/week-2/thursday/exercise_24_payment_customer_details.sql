/*
Exercise 24: Show payments with customer details
Difficulty: Intermediate
Description: Write a query to show payments with customer details.
Expected Output: A result set containing payments with customer details.
*/

select * from payment
inner join customer
on payment.customer_id = customer.customer_id;