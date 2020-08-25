SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    a.actor_id,
    a.first_name,
    a.last_name
FROM customer c
inner JOIN actor a
ON c.last_name = a.last_name
ORDER BY c.last_name;

# Inner Join's

select a.film_id, a.replacement_cost, b.film_id, b.replacement_cost
from film a, film b
where a.replacement_cost = b.replacement_cost;

select a.title, a.rental_duration, b.title, b.rental_duration
from film a, film b
where a.rental_duration = b.rental_duration and a.rental_duration between 2 and 4;