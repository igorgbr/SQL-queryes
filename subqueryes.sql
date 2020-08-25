select * from language; select * from film; select * from staff; select * from address; select * from payment;

#- exercicio 5
select distinct p.payment_id, max(p.amount)
from (select distinct * from payment order by amount desc, payment_date desc limit 5) as p
group by p.payment_id;

#- exercicio 4
select f.title, f.language_id, l.name as idioma
from film f
inner join language l
on f.language_id = f.language_id;

#- exercicio 3
select s.first_name, s.last_name, a.address_id, a.address
from staff s
inner join address a
on s.address_id = a.address_id;

# -exercicio 2
SELECT 
    first_name,
    last_name,
    address_id,
    (SELECT 
            address
        FROM
            address
        WHERE
            address_id = extern.address_id) AS endereço
FROM
    staff AS extern;

# -exercicio 1
SELECT 
    title,
    language_id,
    (SELECT 
            name
        FROM
            language
        WHERE
            language_id = extern.language_id) idioma
FROM
    film AS extern;
    
