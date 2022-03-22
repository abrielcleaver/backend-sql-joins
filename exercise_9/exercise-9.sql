-- find the film title of all inventory items that have never been rented
-- LEFT JOIN FROM inventory to film and to rental
-- use WHERE IS NULL

SELECT title

FROM inventory

LEFT OUTER JOIN rental

ON inventory.inventory_id = rental.inventory_id

LEFT OUTER JOIN film

ON inventory.film_id = film.film_id


WHERE rental_id IS NULL