/*
Exercise 43: Display monthly revenue trends
Difficulty: Advanced
Description: Write a query to display monthly revenue trends.
Expected Output: A result set containing monthly revenue trends.
*/

select date_trunc('month', payment_date) as month,
sum(amount) as total_amount 
from payment
group by month
order by month;