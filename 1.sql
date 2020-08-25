SELECT * from sakila.film;
select title, release_year, rating from sakila.film;
select * from sakila.actor;
select distinct last_name from sakila.actor;
select distinct last_name from sakila.customer;


select count(*) from sakila.film;
select name from sakila.language where name != 'English';

select title, release_year, rental_duration, rental_rate, replacement_cost from sakila.film 
order by rental_duration DESC, replacement_cost ASC  limit 20 ;