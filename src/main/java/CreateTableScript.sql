/* CREATE TABLE */
create table PERSONS
(
    name           text not null,
    surname        text not null,
    age            int  not null,
    phone_number   text not null,
    city_of_living text not null,
    primary key (name, surname, age)
);

/* INSERT DATA */
insert into PERSONS (name, surname, age, phone_number, city_of_living)
values ('Sidor', 'Sidorov', 18, '+79065748392', 'Perm'),
       ('Ivan', 'Ivanov', 26, '+79166342301', 'Moscow'),
       ('Petr', 'Petrov', 30, '+79251564392', 'Vologda'),
       ('Grisha', 'Grishin', 30, '+79995748390', 'Moscow'),
       ('Misha', 'Sidorov', 18, '+79065700000', 'Ryzan');

/* SELECT PERSONS NAME AND SURNAME FROM MOSCOW ONLY */
select name, surname
from PERSONS
where city_of_living = 'Moscow';

/* SELECT PERSONS OVER AGE 27 AND SORT BY DESC ORDER THEM */
select * from PERSONS
where age > 27
order by age desc;