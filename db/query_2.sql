--Exercise_2. Create 3 query with multiple tables
--Queries must have the following statements: JOIN's, and logic operators: AND, OR, NOT, LIKE, IN

--Query returns sportsmens name, surname from Russia or Argentine Republic
SELECT first_name, last_name, country.name AS country FROM sportsmen INNER JOIN country ON sportsmen.country_id = country.id WHERE country.name = 'The Russian Federation' or country.name = 'Argentine Republic';

--Query returns stadium name and country from The Federal Republic of Germany or The Russian Federation
SELECT * FROM stadium INNER JOIN country ON stadium.country_id = country.id WHERE country.name = 'The Federal Republic of Germany' or country.name = 'The Russian Federation';

--Query returns tournament name and prize found that bigger than 100_000 and less 300_000
SELECT tournament.name, prize_found.prize_money FROM tournament INNER JOIN prize_found on tournament.prize_found_id = prize_found.id where (prize_found.prize_money > cast(100000 as money) and prize_found.prize_money < cast(300000 as money));
