/*
Exercise 18: Display customer emails ending with '.org'
Difficulty: Basic
Description: Write a query to display customer emails ending with '.org'.
Expected Output: A result set containing customer emails ending with '.org'.
*/

select * from customer
where email like '%.org';