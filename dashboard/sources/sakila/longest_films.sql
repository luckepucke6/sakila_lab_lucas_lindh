SELECT
    title,
    length
FROM
    sakila.staging.film
WHERE
    length >= 185
ORDER BY
    length DESC;