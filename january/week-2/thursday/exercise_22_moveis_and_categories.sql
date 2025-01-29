/*
Exercise 22: Find films and their categories
Difficulty: Intermediate
Description: Write a query to find films and their categories.
Expected Output: A result set containing films and their categories.
*/

select title, name as category from film_category
inner join category
on film_category.category_id = category.category_id
inner join film
on film_category.film_id = film.film_id