SELECT 
    rating, round(AVG(length) / 60, 2) as 'Media Horas'
FROM
    sakila.film
GROUP BY rating
HAVING AVG(length) BETWEEN 115 AND 121.50
ORDER BY AVG(length) desc;

SELECT rating, concat('$ ', ROUND(SUM(replacement_cost), 2)) AS 'total de custos'
FROM sakila.film
GROUP by rating
HAVING SUM(replacement_cost) > 3950.50;
