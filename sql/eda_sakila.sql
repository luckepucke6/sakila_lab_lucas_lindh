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

-- f)
-- 1. Vilken film har hyrts flest gånger?
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


-- 2. Vilka kategorier hyr flest gånger?
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





-- 3. Hur många hyrningar i snitt görs varje månad?
-- 4. Vilket land hyr flest filmer?
-- 5. Vilka städer har flest kunder?