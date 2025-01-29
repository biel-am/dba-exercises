/*
Exercise 20: Concatenate customer first and last names
Difficulty: Basic
Description: Write a query to concatenate customer first and last names.
Expected Output: A result set containing concatenated customer first and last names.
*/

select concat(first_name, ' ', last_name) as name from customer;