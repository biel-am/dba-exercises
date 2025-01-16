/*
Exercise 14: Calculate total films in inventory
Difficulty: Basic
Description: Write a query to calculate total films in inventory.
Expected Output: A result set containing total films in inventory.
*/

select count(distinct film_id) as total_movies from inventory;