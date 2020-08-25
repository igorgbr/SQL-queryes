DELIMITER $$
CREATE function ReturnPaymentCount(customer_id int)
RETURNS INT READS SQL DATA

BEGIN
	DECLARE payment_total INT;
    SELECT COUNT(*)
    FROM payment
    WHERE payment.customer_id = customer_id INTO payment_total;
    RETURN payment_total;
END $$

DELIMITER ;

SELECT ReturnPaymentCount(1);
-- ------------------------------------------------------------------------------------------
SELECT F.title
FROM film F
inner JOIN inventory I on F.film_id = I.film_id
WHERE I.inventory_id = 1;
DROP FUNCTION ReturnTitleByID;
DELIMITER $$
CREATE FUNCTION ReturnTitleByID(inventory_ID int)
RETURNS VARCHAR(300) READS SQL DATA

BEGIN
	DECLARE movie_title VARCHAR(300);
    SELECT F.title
	FROM film F
	inner JOIN inventory I on F.film_id = I.film_id
	WHERE I.inventory_id = inventory_ID INTO movie_title;
    RETURN movie_title;
END $$

DELIMITER ;
SELECT ReturnTitleByID(20);

-- ------------------------------------------------------------------------------------
select * from film; select * from category; select * from film_category;
drop function ReturnMovieCountByCategory;
DELIMITER $$
CREATE function ReturnMovieCountByCategory(name VARCHAR(100))
RETURNS INT READS SQL DATA

BEGIN
	DECLARE movie_total INT;
	SELECT COUNT(FC.film_id) as QTD_FILMES
	from film_category FC
	inner JOIN category C on C.category_id = FC.category_id
	WHERE C.NAME = name
	GROUP BY FC.category_id
    INTO movie_total;
    RETURN movie_total;
END $$

DELIMITER ;

SELECT ReturnMovieCountByCategory('Action')



