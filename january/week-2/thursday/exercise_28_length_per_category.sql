/*
Exercise 28: Find average film length by category
Difficulty: Intermediate
Description: Write a query to find average film length by category.
Expected Output: A result set containing average film length by category.
*/

select category.name as category, avg(film.length) from film_category
inner join category
on film_category.category_id = category.category_id
inner join film
on film.film_id = film_category.film_id
group by category
order by category;