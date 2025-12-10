SELECT
    city,
    country,
    COUNT(customer_id) AS customer_amount
FROM
    customer c
JOIN address a ON c.address_id = a.address_id
JOIN city ci ON ci.city_id = a.city_id
JOIN country co ON co.country_id = ci.country_id
GROUP BY
    city, country
ORDER BY customer_amount DESC
LIMIT 10;