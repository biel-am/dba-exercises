/*
Exercise 25: List actors and their film appearances
Difficulty: Intermediate
Description: Write a query to list actors and their film appearances.
Expected Output: A result set containing actors and their film appearances Group By Operations.
*/

select concat(actor.first_name, ' ', actor.last_name) as name, title from film_actor
inner join actor
on film_actor.actor_id = actor.actor_id
inner join film
on film_actor.film_id = film.film_id