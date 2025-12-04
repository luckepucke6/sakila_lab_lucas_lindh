-- TASK 1
--a)
SELECT
    length,
    title
FROM
    film
WHERE
    length > 180;

-- b)
SELECT
    title,
    rating,
    length,
    description
FROM
    film
WHERE
    LIKE 'love' IN title;

-- c)
SELECT
    title,
    length
FROM
    film
WHERE
    length <= 46
ORDER BY
    length;

SELECT
    AVG(length) AS average_length,
    MEDIAN (length) AS median_length
FROM
    film;

SELECT
    title,
    length
FROM
    film
WHERE
    length >= 185
ORDER BY
    length DESC;

-- d)
SELECT
    title,
    rental_rate,
    rental_duration,
    rental_rate / rental_duration AS cost_per_day
FROM
    film
ORDER BY
    cost_per_day DESC
LIMIT
    10;

-- e)
SELECT
    DISTINCT(first_name || ' ' || last_name) AS name,
    fa.actor_id
FROM
    actor a
JOIN
    film_actor fa ON a.actor_id = fa.actor_id;