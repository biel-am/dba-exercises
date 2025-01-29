/*
Exercise 34: Display stores with over 100 customers
Difficulty: Intermediate
Description: Write a query to display stores with over 100 customers.
Expected Output: A result set containing stores with over 100 customers.
*/

select store.store_id as store,
count(customer.customer_id) as total_customer
from store
inner join customer
on store.store_id = customer.store_id
group by store
having count(customer.customer_id) > 100