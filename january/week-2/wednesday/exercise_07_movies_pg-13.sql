/*
Exercise 7: List movies with rating 'PG-13'
Difficulty: Basic
Description: Write a query to List movies with rating 'PG-13'.
Expected Output: A result set containing a list of movies with rating 'PG-13'.
*/

select * from film
where rating = 'PG-13';