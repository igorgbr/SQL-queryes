SELECT FLOOR(15 + (RAND() * 6));
select round(15.75, 5);
select floor(39.494);
select ceil(85.234);

#----------------------------------
-- 30, ou seja, a primeira data é 30 dias depois da segunda
SELECT DATEDIFF('2020-01-31', '2020-01-01');

-- -30, ou seja, a primeira data é 30 dias antes da segunda
SELECT DATEDIFF('2020-01-01', '2020-01-31');

-- -01:00:00, ou seja, há 1 hora de diferença entre os horários
SELECT TIMEDIFF('08:30:10', '09:30:10');

select current_date();
select now();
select DATEDIFF('2030-01-20', current_date());
SELECT TIMEDIFF('10:25:45', '11:00:00');


