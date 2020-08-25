#Union e Union ALL
select first_name, last_name from staff
union all
select first_name, last_name from actor;

select first_name from customer where first_name like '%tracy%'
union
select first_name from actor where first_name like '%je%';

(select first_name from staff limit 1)
union
(select first_name from actor order by first_name desc limit 5)
union
(select first_name from customer limit 6 offset 15);



(select concat(first_name, ' ', last_name) todos from actor)
union
(select concat(first_name, ' ', last_name) todos from customer)
order by todos limit 15 offset 60;