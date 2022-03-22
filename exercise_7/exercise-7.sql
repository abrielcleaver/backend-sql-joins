-- find all film titles rented out by customers who live in the city of Dundee
-- Similar to exercise 6 but you need a few more joins to get the city name

SELECT title

FROM film

LEFT OUTER JOIN inventory

ON film.film_id = inventory.film_id

LEFT OUTER JOIN rental

ON inventory.inventory_id = rental.inventory_id

LEFT OUTER JOIN customer

ON rental.customer_id = customer.customer_id

LEFT  OUTER JOIN address

ON customer.address_id = address.address_id

 LEFT OUTER JOIN city

ON address.city_id = city.city_id

WHERE city = 'Dundee';