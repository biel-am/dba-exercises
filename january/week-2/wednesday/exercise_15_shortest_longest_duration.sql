/*
Exercise 15: Find the shortest and longest film durations
Difficulty: Basic
Description: Write a query to find the shortest and longest film durations.
Expected Output: A result set containing the shortest and longest film durations.
*/

select min(length) as shortest_duration, max(length) as longest_duration from film;