-- find all film titles rented out by customers who live in the country of Peru
-- Similar to exercise 7 with an additional join to get country name
-- city.country_id = country.country_id


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

LEFT OUTER JOIN country

ON city.country_id = country.country_id

WHERE country = 'Peru';