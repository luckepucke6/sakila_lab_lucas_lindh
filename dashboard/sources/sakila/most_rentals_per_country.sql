SELECT
    co.country,
    COUNT(r.rental_id) AS amount
FROM
    sakila.staging.rental r
JOIN customer c ON c.customer_id = r.customer_id
JOIN address a ON c.address_id = a.address_id
JOIN city ci ON ci.city_id = a.city_id
JOIN country co ON ci.country_id = co.country_id
GROUP BY
    country
ORDER BY
    amount DESC
LIMIT 10;