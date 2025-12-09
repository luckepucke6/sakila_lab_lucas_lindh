SELECT
    c.name AS category,
    SUM(p.amount) AS total_revenue
FROM
    category c
JOIN film_category fc ON fc.category_id = c.category_id
JOIN film f ON f.film_id = fc.film_id
JOIN inventory i ON i.film_id = f.film_id
JOIN rental r ON r.inventory_id = i.inventory_id
JOIN payment p ON r.rental_id = p.rental_id
GROUP BY
    c.name
ORDER BY
    total_revenue DESC;