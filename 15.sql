SELECT t1.coluna, t2.coluna
FROM tabela1 AS t1
INNER JOIN tabela2 AS t2
ON t1.coluna_em_comum = t2.coluna_em_comum;

select * from film_actor;
select * from actor;
select * from film;
select * from staff;
select * from address;
select * from customer;
select * from payment;

select fa.actor_id, a.first_name, fa.film_id, f.title
from actor a 
inner join film_actor fa on a.actor_id = fa.actor_id
inner join film f on f.film_id = fa.film_id;


select concat(s.first_name, ' ', s.last_name) funcionario, round(avg(p.amount), 2) media_valor
from staff s
inner join payment p
on  s.staff_id = p.staff_id
group by funcionario;

select c.first_name nome, count(a.address) qtd_end, IF(active is true, 'ativo', 'inativos') Status
from customer c
inner join address a
on c.address_id = a.address_id
where c.active = 1
group by nome
order by nome desc;

select concat(c.first_name, ' ', c.last_name) as nome_cliente, c.email, a.address, a.district
from customer c
inner join address a
on c.address_id = a.address_id
where a.district = 'California' and concat(c.first_name, ' ', c.last_name) like '%rene%';

select c.customer_id, concat(c.first_name, ' ', c.last_name) as nome_cliente, c.email, a.address_id, a.address
from customer c
inner join address a
on c.address_id = a.address_id
order by nome_cliente desc
limit 100;


select concat(s.first_name, ' ', s.last_name) as nome_funcionario, a.address
from staff s
inner join address a
on s.address_id = a.address_id;

select fa.actor_id, film_id, concat(a.first_name, ' ', a.last_name) as 'nome do ator'
from film_actor fa
inner join actor  a
on fa.actor_id = a.actor_id;



