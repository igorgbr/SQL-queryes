select * from sakila.payment
where amount = 0.99 OR amount = 2.99 AND staff_id = 2;

SELECT * FROM sakila.payment
WHERE (amount = 0.99 OR amount = 2.99) AND staff_id = 2;

# -- Exercicio de fixação --
select * from sakila.customer;
select * from sakila.customer where email = 'LEONARD.SCHOFIELD@sakilacustomer.org';
select first_name, last_name from sakila.customer where active is true and first_name <> 'KENNETH' order by first_name;
select * from sakila.film;
select title, description, release_year from sakila.film 
where (rating = 'PG' or rating = 'G' or rating = 'PG-13') and replacement_cost <= 18 order by rental_rate desc limit 100;
select count(*) from sakila.customer where active is true and store_id = 1;
select * from sakila.film where (rating = 'R' or rating = 'NC-17') order by rental_rate limit 50 ;