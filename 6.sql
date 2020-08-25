# -- Exercicios de fixação like --

select * from sakila.film
where title like '%ace';

select * from sakila.film
where description like '%china';

select * from sakila.film
where description like '%girl%' and title like '%lord';

select * from sakila.film
where title like '___gon%';

select * from sakila.film
where title like '%academy' or title like 'mosquito%';

select * from sakila.film
where description like '%amonkey%' and description like '%mosquito%';
