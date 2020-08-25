-- Usando a coluna replacement_cost (valor de substituição) vamos encontrar:
SELECT AVG(replacement_cost) FROM sakila.film; -- 19.984000 (Média entre todos registros)
SELECT MIN(replacement_cost) FROM sakila.film; -- 9.99 (Menor valor encontrado)
SELECT MAX(replacement_cost) FROM sakila.film; -- 29.99 (Maior valor encontrado)
SELECT SUM(replacement_cost) FROM sakila.film; -- 19984.00 (Soma de todos registros)
SELECT COUNT(replacement_cost) FROM sakila.film; -- 1000 registros encontrados (Quantidade)

select * from film;
select avg(length) as 'Média de duração' from film;
select min(length) as 'duração minima' from film;
select sum(length) as 'tempo de exb total' from film;
select count(length) as 'filmes registrados' from film;

SELECT first_name, count(*) FROM sakila.actor
GROUP BY first_name;

-- Média de duração de filmes agrupados por classificação indicativa
SELECT rating, AVG(length)
FROM sakila.film
GROUP BY rating;

-- Valor mínimo de substituição dos filmes agrupados por classificação indicativa
SELECT rating, MIN(replacement_cost)
FROM sakila.film
GROUP BY rating;

-- Valor máximo de substituição dos filmes agrupados por classificação indicativa
SELECT rating, MAX(replacement_cost)
FROM sakila.film
GROUP BY rating;

-- Custo total de substituição de filmes agrupados por classificação indicativa
SELECT rating, SUM(replacement_cost)
FROM sakila.film
GROUP by rating;

select * from customer;

select IF(active is true, 'ativos', 'inativos') as Status, count(*) as Usuarios
from customer
group by active;

SELECT 
    IF(store_id = 1,
        'Loja Campo Limpo',
        'Loja Capão Redondo') AS lojas,
    COUNT(*) AS Usuarios,
    IF(active IS TRUE, 'ativos', 'inativos') AS Status
FROM
    customer
GROUP BY active , store_id
ORDER BY store_id;

select * from film;

select rating, round(avg(length) / 60, 2) as horas
from film
group by rating
order by avg(length) desc;

select * from address;

select district, count(*) as 'QTD de endereços'
from address
group by district
order by count(*) desc;