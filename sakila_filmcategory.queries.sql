SELECT * FROM sakila.film_category;

SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name AS 'category' FROM film_category
LEFT JOIN category ON film_category.category_id = category.category_id
LEFT JOIN film ON film_category.film_id = film.film_id
WHERE category.name LIKE 'Comedy';

SELECT film.title AS 'film title', film.description, film.release_year, film.rating, film.special_features, category.name AS 'category' FROM film_category
LEFT JOIN category ON film_category.category_id = category.category_id
LEFT JOIN film ON film_category.film_id = film.film_id
WHERE category.name LIKE 'Drama' AND rental_rate = 2.99;