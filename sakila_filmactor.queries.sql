SELECT * FROM sakila.film_actor;

SELECT actor.actor_id, actor.first_name, actor.last_name, film.title, film.description, film.release_year FROM film_actor
LEFT JOIN film ON film_actor.film_id = film.film_id
LEFT JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE actor.actor_id = 5;

SELECT film.film_id, film.title, actor.actor_id, actor.first_name, actor.last_name FROM film_actor
LEFT JOIN actor ON film_actor.actor_id = actor.actor_id
LEFT JOIN film ON film_actor.film_id = film.film_id
WHERE film.film_id = 369;

SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name AS 'category', actor.first_name, actor.last_name FROM film_actor
LEFT JOIN actor ON film_actor.actor_id = actor.actor_id
LEFT JOIN film_category ON film_actor.film_id = film_category.film_id
LEFT JOIN film ON film_actor.film_id = film.film_id
LEFT JOIN category ON film_category.category_id = category.category_id
WHERE category.name LIKE 'Action' AND (actor.first_name LIKE 'SANDRA' AND actor.last_name LIKE 'KILMER');