SELECT * from actor order by first_name; SELECT * from film_actor; SELECT * from film;

SELECT A.actor_id, CONCAT(A.first_name, ' ', A.last_name) Ator_Atriz, count(FA.actor_id) QTD
from actor A
inner JOIN film_actor FA on A.actor_id = FA.actor_id
group by A.actor_id
order by QTD desc
limit 10;

USE sakila;

SELECT * from actor;
-- -------------------------------------------------------------------------------------------------------
DELIMITER $$

CREATE PROCEDURE MostraAtoresPopulares()
BEGIN
	SELECT A.actor_id, CONCAT(A.first_name, ' ', A.last_name) Ator_Atriz, count(FA.actor_id) QTD
	from actor A
	inner JOIN film_actor FA on A.actor_id = FA.actor_id
	group by A.actor_id
	order by QTD desc
		limit 10;
END $$

DELIMITER ;

CALL MostraAtoresPopulares();
-- -----------------------------------------------------------------------------------------------------
SELECT * from actor order by first_name; SELECT * from film_actor; SELECT * from film; SELECT * from category; SELECT * from film_category;

DELIMITER $$

CREATE PROCEDURE RetornaTituloEcategoria(IN categoria VARCHAR(100))
BEGIN
	SELECT  F.film_id, F.title, C.category_id, C.NAME
	FROM film F
	inner JOIN film_category FC ON F.film_id = FC.film_id
	inner JOIN category C ON FC.category_id = C.category_id
    HAVING C.NAME = categoria;
END $$

DELIMITER ;

CALL RetornaTituloEcategoria('Sports');
-- -----------------------------------------------------------------------------------------------------
SELECT * from actor order by first_name; SELECT * from customer; SELECT * from film; SELECT * from category; SELECT * from film_category;

DROP PROCEDURE VerificaEmail;
DELIMITER $$

CREATE PROCEDURE VerificaEmail(
IN email_usuario VARCHAR(100),
OUT validador VARCHAR(10)
) 

BEGIN
	SELECT IF(active is TRUE, 'Ativo', 'Inativo') INTO validador
    from customer
    where email = email_usuario;
END $$

DELIMITER ;

CALL VerificaEmail('SANDRA.MARTIN@sakilacustomer.org', @resposta);
SELECT @resposta;