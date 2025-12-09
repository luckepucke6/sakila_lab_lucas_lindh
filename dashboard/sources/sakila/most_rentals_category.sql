SELECT
    c.name,
    COUNT(r.rental_id) AS sum_rental
FROM
    category c
JOIN film_category fc ON fc.category_id = c.category_id
JOIN film f ON f.film_id = fc.film_id
JOIN inventory i ON i.film_id = f.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
JOIN customer cu ON cu.customer_id = r.customer_id
GROUP BY c.category_id, c.name
ORDER BY sum_rental DESC;