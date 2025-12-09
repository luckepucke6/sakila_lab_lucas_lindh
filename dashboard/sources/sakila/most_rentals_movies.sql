SELECT
    f.title,
    COUNT(r.rental_id) AS sum_rental
FROM
    film f
JOIN inventory i ON i.film_id = f.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.film_id, f.title
ORDER BY sum_rental DESC
LIMIT 10;
