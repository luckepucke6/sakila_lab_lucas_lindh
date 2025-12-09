SELECT
    first_name || ' ' || last_name AS name,
    SUM(p.amount) AS total_spent,
    c.customer_id
FROM
    customer c
JOIN payment p ON p.customer_id = c.customer_id
GROUP BY name, c.customer_id
ORDER BY total_spent DESC
LIMIT 5;