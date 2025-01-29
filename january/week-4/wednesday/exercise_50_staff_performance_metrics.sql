/*
Exercise 50: Calculate staff performance metrics
Difficulty: Advanced
Description: Write a query to calculate staff performance metrics.
Expected Output: A result set containing staff performance metrics.
*/

select payment.staff_id,
total_rental,
sum(amount) as total_earning
from (select rental.staff_id as staff_id_rental,
count(rental.rental_id) as total_rental
from rental
group by rental.staff_id)
inner join payment
on staff_id_rental = payment.staff_id
group by payment.staff_id, total_rental
order by staff_id;