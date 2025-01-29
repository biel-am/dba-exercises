/*
Exercise 46: Show rental duration patterns
Difficulty: Advanced
Description: Write a query to show rental duration patterns.
Expected Output: A result set containing rental duration patterns.
*/

select rental_duration,
count(film_id)
from film
group by rental_duration
order by rental_duration desc;