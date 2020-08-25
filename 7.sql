-- consulta DATA
SELECT * FROM sakila.payment;

-- Encontra todos os pagamentos deste dia, ignorando horas, minutos e segundos
SELECT * FROM sakila.payment
WHERE DATE(payment_date) = '2005-07-31';

-- Encontra todos pagamentos deste dia, ignorando horas, minutos e segundos
SELECT * FROM sakila.payment
WHERE payment_date LIKE '2005-07-31%';

-- Encontra pagamentos especificando um valor mínimo e um valor máximo para a data
SELECT *
FROM sakila.payment
WHERE payment_date BETWEEN '2005-05-26 00:00:00' AND '2005-05-27 23:59:59';

SELECT * FROM sakila.rental
where date(return_date) = '2005-08-29';

SELECT count(*) as 'QTD filmes Alugados' FROM sakila.rental
where date(rental_date) between '2005-07-01' and '2005-07-22';

SELECT rental_date FROM sakila.rental
where rental_id = 10330;

SELECT rental_id, rental_date FROM sakila.rental
where rental_date like '2005-08-18 00:14:03';
