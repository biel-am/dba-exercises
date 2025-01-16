/*
Exercise 30: Calculate total revenue per store
Difficulty: Intermediate
Description: Write a query to calculate total revenue per store.
Expected Output: A result set containing total revenue per store.
*/

select staff.store_id as store, sum(amount) as revenue from store
inner join staff
on store.store_id = staff.store_id
inner join payment
on store.store_id = payment.staff_id
group by store
