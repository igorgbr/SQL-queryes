use HR;

select * from countries;
select * from country_new;

insert into countries
values('XL', 'Xablaulandia', 3);

insert into countries(country_id, country_name)
values('SL', 'Saralandia');

create table if not exists country_new
AS SELECT * FROM countries;

insert into countries
values('IG', 'Igorlandia', null);

insert into countries
values
('GZ', 'Gazila', null),
('LD', 'Lordinha', null),
('PTN', 'Portuguera do Norte', null);

insert into countries
select * from country_new;

delete from countries;

insert into jobs