--Exercise_4. Create 3 query with multiple tables using aggregate functions. Two Queries must have GROUP_BY statement

--Query returns players from the faster game
select first_name, last_name from sportsmen where sportsmen.id in (select sportsmen_id from game where game.duration in (SELECT MIN(game.duration) from game));

--Query returns number of Team Tournament type on stadium
select stadium.name as stadium_name, count(tournament.type) as type_number from tournament inner join stadium on tournament.stadium_id = stadium.id where tournament.type = 'Team Tournament' group by stadium.name;

--Query return count of hard surface for each country
select c.name as country_name, count(stadium.surface) as surface_number, stadium.surface as stadium_surface from stadium inner join country c on stadium.country_id = c.id where stadium.surface = 'hard' group by stadium.surface, c.name;