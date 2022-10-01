SELECT * FROM sakila.address;

SELECT customer.first_name, customer.last_name, customer.email, address FROM address
JOIN customer ON customer.address_id = address.address_id
WHERE city_id = 312;