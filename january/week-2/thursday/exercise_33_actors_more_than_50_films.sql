/*
Exercise 33: Show actors in more than 20 films
Difficulty: Intermediate
Description: Write a query to show actors in more than 20 films.
Expected Output: A result set containing actors in more than 20 films.
*/

select concat(actor.first_name, ' ', actor.last_name) as actor_name,
count(film_actor.film_id) as total_films
from film_actor
inner join actor
on film_actor.actor_id = actor.actor_id
group by actor_name
having count(film_actor.film_id) > 20
order by actor_name