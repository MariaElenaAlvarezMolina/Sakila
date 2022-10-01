SELECT * FROM sakila.customer;

SELECT customer.first_name, customer.last_name, customer.email, address FROM customer
LEFT JOIN store ON customer.store_id = store.store_id
LEFT JOIN address ON customer.address_id = address.address_id
WHERE store.store_id = 1 AND (city_id = 1 OR city_id = 42 OR city_id = 312 OR city_id = 459);