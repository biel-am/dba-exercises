/*
Exercise 16: List customer names starting with 'A'
Difficulty: Basic
Description: Write a query to list customer names starting with 'A'.
Expected Output: A result set containing customer names starting with 'A'.
*/

select * from customer
where first_name like 'A%';