SELECT
    rating,
    COUNT(rating) AS amount
FROM
    sakila.staging.film
GROUP BY
    rating
ORDER BY
    amount DESC;