SELECT * FROM sakila.film;

SELECT title, description, release_year, rating, special_features FROM film
LEFT JOIN film_actor ON film.film_id = film_actor.film_id
LEFT JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE actor.actor_id = 15 AND rating LIKE 'G' AND (special_features LIKE '%Behind the Scenes');