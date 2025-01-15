/*
Exercise 5: List all rental dates in ascending order
Difficulty: Basic
Description: Write a query to List all rental dates in ascending order.
Expected Output: A result set containing a list of all rental dates in ascending order.
*/

select * from rental
order by rental_date asc;