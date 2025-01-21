/*
Exercise 40: Display films costlier than average
Difficulty: Intermediate
Description: Write a query to show display films costlier than average.
Expected Output: A result set containing display films costlier than average.
*/

select film_id, title, rental_rate from film
where rental_rate > (select avg(rental_rate) from film)
order by film_id;