/*
Exercise 27: Calculate total payments per month
Difficulty: Intermediate
Description: Write a query to calculate total payments per month.
Expected Output: A result set containing total payments per month.
*/

select date_trunc('month', payment_date) as month, sum(amount) from payment
group by month
order by month;