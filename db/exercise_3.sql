--Exercise_3. Create 3 query with multiple tables using subqueries

--Query returns tournament name, stadium from Russia
SELECT t.name AS tournament_name, s.name AS stadium_name FROM tournament t INNER JOIN stadium s ON stadium_id = s.id where s.country_id in (select country.id from country where country.name like '%Russia%');

--Query returns sportsmen statistic from games
SELECT * FROM game INNER JOIN statistic s ON game.statistic_id = s.id WHERE sportsmen_id IN (SELECT id FROM sportsmen WHERE first_name = 'Daniil' AND last_name ='Medvedev');

--Query returns team name and tournament players from Russia#
SELECT t.name as tournament_name, team.name as team_name FROM team INNER JOIN tournament t on team.tournament_id = t.id WHERE country_id in (select country.id from country where country.name like '%Russia%');
