/*
Exercise 8: Find customers from specific districts
Difficulty: Basic
Description: Write a query to find customers from specific districts
Expected Output: A result set containing customers from specific districts.
*/

select customer_id, first_name, last_name, district from customer
inner join address
on customer.address_id = address.address_id
where district = 'Hubei';