select * from Books_Lent; select * from Books; select * from CarSales; select * from Customers; select * from Cars;

SELECT C.NAME FROM Customers C
WHERE EXISTS (
SELECT * FROM CarSales WHERE C.CustomerID = CarID);

#- essa deu orgulho
SELECT C.NAME Cliente, IF(CA.NAME is NULL, 'Não Comprou', CA.NAME) Modelo, CONCAT('$ ', CA.Cost) as Valor FROM Customers C
left JOIN CarSales CS on C.Customerid = CS.CustomerID
left JOIN Cars CA on CA.id = CS.CarID
where exists (select * from CarSales CS where CS.CustomerID = C.customerid)
order by C.NAME;


SELECT B.title, B.id FROM Books B
WHERE NOT EXISTS (
SELECT * FROM Books_Lent WHERE B.id = book_id);

SELECT B.title, B.id FROM Books B
WHERE EXISTS (
SELECT * FROM Books_Lent WHERE B.id = book_id and returned is FALSE and title LIKE '%lost%');