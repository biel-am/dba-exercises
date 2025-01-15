/*
Exercise 3: Count the total of customers
Difficulty: Basic
Description: Write a query to count all the customers.
Expected Output: A result set containing the total of customers.
*/

select count(customer_id) as total_customers from customer;