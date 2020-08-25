SELECT 5 + 5;
SELECT 5 - 5;
SELECT 5 * 5;
SELECT 5 / 5;

SELECT rental_duration + rental_rate FROM sakila.film LIMIT 10;
SELECT rental_duration - rental_rate FROM sakila.film LIMIT 10;
SELECT rental_duration / rental_rate FROM sakila.film LIMIT 10;
SELECT rental_duration * rental_rate FROM sakila.film LIMIT 10;

SELECT 10 DIV 3;
SELECT 10 DIV 2;
SELECT 14 DIV 3;
SELECT 13 DIV 2;

SELECT 10 MOD 3;
SELECT 10 MOD 2;
SELECT 14 MOD 3;
SELECT 13 MOD 2;
SELECT 10.5 MOD 2;

#----------------------
-- Sintaxe:
SELECT IF(condicao, valor_se_verdadeiro, valor_se_falso);

SELECT IF(idade >= 18, 'Maior de idade', 'Menor de Idade')
FROM pessoas;

SELECT IF(aberto = true, 'Entrada permitida', 'Entrada não permitida')
FROM estabelecimentos;

select if(15 mod 2 = 0, 'par', 'impar') as 'Par ou Impar';
select 200 DIV 12 as Grupos, 200 MOD 12 as 'Lugares Sobrando';

