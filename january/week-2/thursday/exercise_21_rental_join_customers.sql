/*
Exercise 21: List all rentals with customer names
Difficulty: Intermediate
Description: Write a query to list all rentals with customer names.
Expected Output: A result set containing all rentals with customer names.
*/

select * from rental
inner join customer
on rental.customer_id = customer.customer_id;
