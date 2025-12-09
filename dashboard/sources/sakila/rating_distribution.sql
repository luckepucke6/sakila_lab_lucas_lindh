SELECT
    rating,
    COUNT(rating) AS amount
FROM
    film
GROUP BY
    rating
ORDER BY
    amount DESC;