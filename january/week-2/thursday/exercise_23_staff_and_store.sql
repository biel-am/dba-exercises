/*
Exercise 23: Display staff members and their store information
Difficulty: Intermediate
Description: Write a query to display staff members and their store information.
Expected Output: A result set containing staff members and their store information.
*/

select * from staff
inner join store
on staff.store_id = store.store_id;