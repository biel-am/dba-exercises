/*
Exercise 17: Find films containing the word 'Love'
Difficulty: Basic
Description: Write a query to find films containing the word 'Love'.
Expected Output: A result set containing films containing the word 'Love'.
*/

select * from film
where title like '%Love%';