# exercicios de fixação IN e BETWEEN
SELECT * FROM sakila.actor
WHERE first_name IN ('PENELOPE','NICK','ED','JENNIFER');

select * from sakila.customer
where customer_id in (269, 239, 126, 399, 142);

select * from sakila.address
where district in ('QLD', 'Nagasaki', 'California', 'Attika', 'Mandalay', 'Nantou', 'Texas');

select first_name, last_name, email from sakila.customer
where last_name in ('hicks', 'crawford', 'boyd', 'mason', 'morales', 'kennedy') order by first_name;

select email from sakila.customer
where address_id between 172 and 176;


select * from sakila.payment
where payment_date between '2005-05-01' and '2005-08-01';

select title, release_year, rental_duration from sakila.film
where rental_duration between 3 and 6 order by rental_duration desc;

select title, rating from sakila.film
where rating in ('PG', 'G', 'PG-13') order by rating limit 500;