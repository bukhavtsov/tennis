--Queries for exercise_1. Need to create 3 query with following logic statements: AND, OR, NOT

--Query returns sportsmens that rating is bigger then 2 and less then 10
SELECT * FROM sportsmen where sportsmen.rating_number > 2 and sportsmen.rating_number < 10;

--Query returns countries where name begin from 'A' or from 'B'
SELECT * FROM country where name like 'A%' OR name like 'B%';

--Query returns competitions for mans
SELECT * FROM tournament where gender not like 'woman';
