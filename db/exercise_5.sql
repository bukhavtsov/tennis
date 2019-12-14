--Exercise_5. Create 3 query with Views

--View returns tournament name, stadium from Russia
create view tournament_and_stadiums_form_russia as SELECT t.name AS tournament_name, s.name AS stadium_name FROM tournament t INNER JOIN stadium s ON stadium_id = s.id where s.country_id in (select country.id from country where country.name like '%Russia%');

--Select view tournament_and_stadiums_form_russia
select * from tournament_and_stadiums_form_russia;

--View returns players from the faster game
create view players_from_the_faster_game as select first_name, last_name from sportsmen where sportsmen.id in (select sportsmen_id from game where game.duration in (SELECT MIN(game.duration) from game));

--Select view players_from_the_faster_game
select * from players_from_the_faster_game;

--View return players number from each country
create view people_number_form_each_country as select country_id, count(s.country_id) as people_number, c.name as country_name from sportsmen s inner join country c on s.country_id = c.id group by country_id, country_name;

--Select view people_number_form_each_country
select * from people_number_form_each_country;