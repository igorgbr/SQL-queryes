select * from sakila.staff;
select * from sakila.store;
select * from sakila.customer;
select * from sakila.actor;
select * from sakila.category;
select * from sakila.rental; 
select * from sakila.film; 
select * from sakila.film_text; 
select * from sakila.film_actor;

truncate sakila.film_category;

select * from sakila.film_text
where description like '%saga%';

delete from sakila.film_text
where description like '%saga%';

select * from sakila.actor
where first_name = 'matthew';

delete from sakila.actor
where first_name = 'matthew';

delete from sakila.actor
where first_name = 'karl';

delete from sakila.film_actor
where actor_id = '12';

delete from sakila.film_actor
where actor_id in(8, 103, 181);

SET SQL_SAFE_UPDATES = 0;

insert into sakila.category(name) values
('comedia romantica'),
('comedia sem graça'),
('fillmes do Adam Sandler');

insert into sakila.actor (first_name, last_name)
values ('igor', 'giamoniano');

insert into sakila.actor (first_name, last_name)
select first_name, last_name from sakila.staff;

insert into sakila.staff (first_name, last_name, store_id, address_id, active, username)
values ('mark', 'zuckembergh', 1, 5, 3, 'igor');

insert into sakila.actor(first_name, last_name)
select first_name, last_name from sakila.customer limit 5;

insert into sakila.store (manager_staff_id, address_id)
values (3, 3);

SET SQL_SAFE_UPDATES = 0;


update sakila.actor
set first_name = 'tiririca'
where actor_id in (1, 2, 3);

select * from sakila.actor
where first_name = 'Julia';

update sakila.actor
set first_name = 'JULES'
where first_name = 'JULIA';

update sakila.category
set name = 'Science-Fiction'
where name = 'Sci-Fi';

update sakila.film
set rental_rate = 25
where (rating in ('PG', 'G', 'PG-13') and replacement_cost > 20) and rental_duration > 100;

update sakila.film
set rental_rate = (
case when length < 100 then 10
else 20
end);

update sakila.film
set rental_rate = (
case when length between 1 and 100 then 10
else 20
end);

update sakila.film
set rental_rate = 2;