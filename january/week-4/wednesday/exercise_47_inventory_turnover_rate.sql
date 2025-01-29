/*
Exercise 47: Calculate inventory turnover rate
Difficulty: Advanced
Description: Write a query to calculate inventory turnover rate.
Expected Output: A result set containing inventory turnover rate.
*/

select sum(replacement_cost) as total_replacement_cost
from film;