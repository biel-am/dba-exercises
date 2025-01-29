/*
Exercise 13: Count movies in each rating category
Difficulty: Basic
Description: Write a query to count movies in each rating category.
Expected Output: A result set containing movies amount in each rating category.
*/

select rating, count(film_id) as total_movies from film
group by rating;