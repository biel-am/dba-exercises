/*
Exercise 48: Find peak rental periods
Difficulty: Advanced
Description: Write a query to find peak rental periods.
Expected Output: A result set containing peak rental periods.
*/

select date_trunc('day', rental_date) as day,
count(rental_id) as total_rental
from rental
group by day
order by total_rental desc