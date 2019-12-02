-- Insert into countries table
INSERT INTO "public"."country" ("id", "iso2", "iso3", "name") VALUES (DEFAULT, 'BY', 'BLR', 'Belarus');
INSERT INTO "public"."country" ("id", "iso2", "iso3", "name") VALUES (DEFAULT, 'BG', 'BGR', 'The Republic of Bulgaria');
INSERT INTO "public"."country" ("id", "iso2", "iso3", "name") VALUES (DEFAULT, 'CA', 'CAN', 'Canada');
INSERT INTO "public"."country" ("id", "iso2", "iso3", "name") VALUES (DEFAULT, 'CN', 'CHN', 'The Peoples Republic of China');
INSERT INTO "public"."country" ("id", "iso2", "iso3", "name") VALUES (DEFAULT, 'FR', 'FRA', 'The French Republic');
INSERT INTO "public"."country" ("id", "iso2", "iso3", "name") VALUES (DEFAULT, 'DE', 'DEU', 'The Federal Republic of Germany');
INSERT INTO "public"."country" ("id", "iso2", "iso3", "name") VALUES (DEFAULT, 'JP', 'JPN', 'Japan');
INSERT INTO "public"."country" ("id", "iso2", "iso3", "name") VALUES (DEFAULT, 'RU', 'RUS', 'The Russian Federation');
INSERT INTO "public"."country" ("id", "iso2", "iso3", "name") VALUES (DEFAULT, 'PL', 'POL', 'The Republic of Poland');
INSERT INTO "public"."country" ("id", "iso2", "iso3", "name") VALUES (DEFAULT, 'SC', 'SYC', 'The Republic of Seychelles');
INSERT INTO "public"."country" ("id", "iso2", "iso3", "name") VALUES (DEFAULT, 'SG', 'SGP', 'The Republic of Singapore');
INSERT INTO "public"."country" ("id", "iso2", "iso3", "name") VALUES (DEFAULT, 'US', 'USA', 'The United States of America');
INSERT INTO "public"."country" ("id", "iso2", "iso3", "name") VALUES (DEFAULT, 'SP', 'SPN', 'Kingdom of Spain');
INSERT INTO "public"."country" ("id", "iso2", "iso3", "name") VALUES (DEFAULT, 'IT', 'ITN', 'Italian Republic');
INSERT INTO "public"."country" ("id", "iso2", "iso3", "name") VALUES (DEFAULT, 'AR', 'ARN', 'Argentine Republic');

-- Insert into stadium table
INSERT INTO "public"."stadium" ("id", "name", "country_id", "surface") VALUES (DEFAULT, 'Republic Olympic center of Tennis for preparing to Tennis', 1, 'hard');
INSERT INTO "public"."stadium" ("id", "name", "country_id", "surface") VALUES (DEFAULT, 'Armeets Arena', 2, 'hard');
INSERT INTO "public"."stadium" ("id", "name", "country_id", "surface") VALUES (DEFAULT, 'Aviva Centre', 3, 'hard');
INSERT INTO "public"."stadium" ("id", "name", "country_id", "surface") VALUES (DEFAULT, 'Lotus Court', 4, 'hard');
INSERT INTO "public"."stadium" ("id", "name", "country_id", "surface") VALUES (DEFAULT, 'Roland Garros No. 1 Court', 5, 'clay');
INSERT INTO "public"."stadium" ("id", "name", "country_id", "surface") VALUES (DEFAULT, 'Am Rothenbaum', 6, 'clay');
INSERT INTO "public"."stadium" ("id", "name", "country_id", "surface") VALUES (DEFAULT, 'Ariake Coliseum', 7, 'hard');
INSERT INTO "public"."stadium" ("id", "name", "country_id", "surface") VALUES (DEFAULT, 'Sibur Arena', 8, 'hard');
INSERT INTO "public"."stadium" ("id", "name", "country_id", "surface") VALUES (DEFAULT, 'Tauron Arena Lrakow', 9, 'hard');
INSERT INTO "public"."stadium" ("id", "name", "country_id", "surface") VALUES (DEFAULT, 'Seychelles Stadium', 10, 'hard');
INSERT INTO "public"."stadium" ("id", "name", "country_id", "surface") VALUES (DEFAULT, 'Singapore Indoor Stadium', 11, 'hard');
INSERT INTO "public"."stadium" ("id", "name", "country_id", "surface") VALUES (DEFAULT, 'Arthur Ashe Stadium', 12, 'hard');

-- Insert into prize found table
INSERT INTO "public"."prize_found" ("id", "round", "points", "prize_money") VALUES (DEFAULT, 1, 10, 58000);
INSERT INTO "public"."prize_found" ("id", "round", "points", "prize_money") VALUES (DEFAULT, 1, 45, 100000);
INSERT INTO "public"."prize_found" ("id", "round", "points", "prize_money") VALUES (DEFAULT, 1, 90, 163000);
INSERT INTO "public"."prize_found" ("id", "round", "points", "prize_money") VALUES (DEFAULT, 1, 180, 280000);
INSERT INTO "public"."prize_found" ("id", "round", "points", "prize_money") VALUES (DEFAULT, 1, 360, 380000);

--Insert into tournament table
INSERT INTO "public"."tournament" ("id", "prize_found_id", "name", "date_start", "date_end", "type", "gender", "stadium_id") VALUES (DEFAULT, 3, 'Belarus championship', '2010-04-05', '2010-10-12', 'Team Tournament', 'man', 1);
INSERT INTO "public"."tournament" ("id", "prize_found_id", "name", "date_start", "date_end", "type", "gender", "stadium_id") VALUES (DEFAULT, 1, 'WTA Tournament of Champions', '2019-11-05', '2019-11-21', 'Team Tournament', 'man', 2);
INSERT INTO "public"."tournament" ("id", "prize_found_id", "name", "date_start", "date_end", "type", "gender", "stadium_id") VALUES (DEFAULT, 2, 'Canada Masters', '2018-10-05', '2019-02-13', 'Team Tournament', 'man', 3);
INSERT INTO "public"."tournament" ("id", "prize_found_id", "name", "date_start", "date_end", "type", "gender", "stadium_id") VALUES (DEFAULT, 5, 'WTA Tournament of Champions-a', '2008-07-05', '2008-12-19', 'Team Tournament', 'man', 4);
INSERT INTO "public"."tournament" ("id", "prize_found_id", "name", "date_start", "date_end", "type", "gender", "stadium_id") VALUES (DEFAULT, 4, 'French Open', '2008-07-05', '2008-12-19', 'Team Tournament', 'man', 5);
INSERT INTO "public"."tournament" ("id", "prize_found_id", "name", "date_start", "date_end", "type", "gender", "stadium_id") VALUES (DEFAULT, 2, 'German Open Tennis Championship', '2008-07-05', '2008-12-19', 'Team Tournament', 'man', 6);
INSERT INTO "public"."tournament" ("id", "prize_found_id", "name", "date_start", "date_end", "type", "gender", "stadium_id") VALUES (DEFAULT, 1, 'Japan Open of Champions', '2012-02-04', '2012-12-10', 'Team Tournament', 'woman', 7);
INSERT INTO "public"."tournament" ("id", "prize_found_id", "name", "date_start", "date_end", "type", "gender", "stadium_id") VALUES (DEFAULT, 1, 'St. Petersburg Open', '2015-10-24', '2012-01-20', 'Team Tournament', 'men', 8);
INSERT INTO "public"."tournament" ("id", "prize_found_id", "name", "date_start", "date_end", "type", "gender", "stadium_id") VALUES (DEFAULT, 1, 'Fed Cup', '2015-02-01', '2015-06-20', 'Team Tournament', 'woman', 9);
INSERT INTO "public"."tournament" ("id", "prize_found_id", "name", "date_start", "date_end", "type", "gender", "stadium_id") VALUES (DEFAULT, 1, 'Seychelles Stadium Open of Championship', '2010-02-01', '2010-06-20', 'Team Tournament', 'woman', 10);
INSERT INTO "public"."tournament" ("id", "prize_found_id", "name", "date_start", "date_end", "type", "gender", "stadium_id") VALUES (DEFAULT, 1, 'WTA Finals', '2017-10-01', '2010-12-22', 'Team Tournament', 'woman', 11);
INSERT INTO "public"."tournament" ("id", "prize_found_id", "name", "date_start", "date_end", "type", "gender", "stadium_id") VALUES (DEFAULT, 1, 'US Open', '2018-10-01', '2019-01-15', 'Team Tournament', 'man', 11);

--Insert into sportsmen table
INSERT INTO "public"."sportsmen" ("id", "points_amount", "rating_number", "first_name", "last_name", "country_id") VALUES (DEFAULT, 0, 4, 'Daniil', 'Medvedev', 8);
INSERT INTO "public"."sportsmen" ("id", "points_amount", "rating_number", "first_name", "last_name", "country_id") VALUES (DEFAULT, 0, 1, 'Rafael', 'Nadal', 13);
INSERT INTO "public"."sportsmen" ("id", "points_amount", "rating_number", "first_name", "last_name", "country_id") VALUES (DEFAULT, 0, 8, 'Matteo', 'Berrettini', 14);
INSERT INTO "public"."sportsmen" ("id", "points_amount", "rating_number", "first_name", "last_name", "country_id") VALUES (DEFAULT, 0, 20, 'Grigor', 'Dimitrov', 2);
INSERT INTO "public"."sportsmen" ("id", "points_amount", "rating_number", "first_name", "last_name", "country_id") VALUES (DEFAULT, 0, 14, 'Diego', 'Sebastian', 15);
INSERT INTO "public"."sportsmen" ("id", "points_amount", "rating_number", "first_name", "last_name", "country_id") VALUES (DEFAULT, 0, 10, 'Gael', 'Monfils', 5);
INSERT INTO "public"."sportsmen" ("id", "points_amount", "rating_number", "first_name", "last_name", "country_id") VALUES (DEFAULT, 0, 57, 'Pablo', 'Andujar', 13);
INSERT INTO "public"."sportsmen" ("id", "points_amount", "rating_number", "first_name", "last_name", "country_id") VALUES (DEFAULT, 0, 8, 'Andrey', 'Rublev', 13);


--Insert into statistic table
INSERT INTO "public"."statistic" ("id", "first_serve_hit", "first_serve_win", "win_set_amount", "ace", "amount_points", "double_mistake", "points_amount_reception", "break_points_impl") VALUES (DEFAULT, 64, 65, 0, 14, 33, 4, 33, 33);
INSERT INTO "public"."statistic" ("id", "first_serve_hit", "first_serve_win", "win_set_amount", "ace", "amount_points", "double_mistake", "points_amount_reception", "break_points_impl") VALUES (DEFAULT, 58, 77, 0, 5, 39, 5, 39, 29);
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO "public"."statistic" ("id", "first_serve_hit", "first_serve_win", "win_set_amount", "ace", "amount_points", "double_mistake", "points_amount_reception", "break_points_impl") VALUES (DEFAULT, 54, 55, 0, 71, 32, 6, 42, 31);
INSERT INTO "public"."statistic" ("id", "first_serve_hit", "first_serve_win", "win_set_amount", "ace", "amount_points", "double_mistake", "points_amount_reception", "break_points_impl") VALUES (DEFAULT, 21, 35, 0, 72, 12, 10, 32, 29);
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO "public"."statistic" ("id", "first_serve_hit", "first_serve_win", "win_set_amount", "ace", "amount_points", "double_mistake", "points_amount_reception", "break_points_impl") VALUES (DEFAULT, 55, 54, 0, 32, 71, 7, 32, 34);
INSERT INTO "public"."statistic" ("id", "first_serve_hit", "first_serve_win", "win_set_amount", "ace", "amount_points", "double_mistake", "points_amount_reception", "break_points_impl") VALUES (DEFAULT, 25, 29, 0, 68, 11, 8, 37, 25);

--Insert into set table
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 1, 2, 1);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 2, 5, 1);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 3, 3, 1);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 4, 7, 1);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 5, 6, 1);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 6, 4, 1);
------------------------------------------------------------------------------------------------
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 1, 3, 2);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 2, 7, 2);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 3, 6, 2);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 4, 5, 2);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 5, 4, 2);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 6, 6, 2);
------------------------------------------------------------------------------------------------
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 2, 2, 3);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 1, 5, 3);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 4, 5, 3);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 3, 6, 3);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 6, 6, 3);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 5, 4, 3);
------------------------------------------------------------------------------------------------
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 1, 5, 4);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 2, 2, 4);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 4, 1, 4);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 6, 2, 4);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 4, 5, 4);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 5, 2, 4);
------------------------------------------------------------------------------------------------
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 3, 3, 5);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 2, 4, 5);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 3, 2, 5);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 5, 3, 5);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 4, 2, 5);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 4, 5, 5);
------------------------------------------------------------------------------------------------
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 2, 4, 6);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 1, 5, 6);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 3, 6, 6);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 5, 2, 6);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 2, 5, 6);
INSERT INTO "public"."set" ("id", "number", "points", "statistic_id") VALUES (DEFAULT, 5, 1, 6);

--Insert into game table
INSERT INTO "public"."game" ("id", "sportsmen_id", "statistic_id", "duration") VALUES (DEFAULT, 1, 1, '04:11:00');
INSERT INTO "public"."game" ("id", "sportsmen_id", "statistic_id", "duration") VALUES (DEFAULT, 2, 2, '04:11:00');
------------------------------------------------------------------------------------------------------------------
INSERT INTO "public"."game" ("id", "sportsmen_id", "statistic_id", "duration") VALUES (DEFAULT, 3, 3, '04:22:13');
INSERT INTO "public"."game" ("id", "sportsmen_id", "statistic_id", "duration") VALUES (DEFAULT, 4, 4, '04:22:13');
------------------------------------------------------------------------------------------------------------------
INSERT INTO "public"."game" ("id", "sportsmen_id", "statistic_id", "duration") VALUES (DEFAULT, 5, 5, '05:12:42');
INSERT INTO "public"."game" ("id", "sportsmen_id", "statistic_id", "duration") VALUES (DEFAULT, 6, 6, '05:12:42');


--Insert into sportsmen_rating table
INSERT INTO "public"."sportsmen_rating" ("id", "points_amount", "rating_number", "sportsmen_id") VALUES (DEFAULT, 10, 1, 1);
INSERT INTO "public"."sportsmen_rating" ("id", "points_amount", "rating_number", "sportsmen_id") VALUES (DEFAULT, 9, 2, 2);
INSERT INTO "public"."sportsmen_rating" ("id", "points_amount", "rating_number", "sportsmen_id") VALUES (DEFAULT, 8, 3, 3);
INSERT INTO "public"."sportsmen_rating" ("id", "points_amount", "rating_number", "sportsmen_id") VALUES (DEFAULT, 7, 4, 4);
INSERT INTO "public"."sportsmen_rating" ("id", "points_amount", "rating_number", "sportsmen_id") VALUES (DEFAULT, 6, 5, 5);
INSERT INTO "public"."sportsmen_rating" ("id", "points_amount", "rating_number", "sportsmen_id") VALUES (DEFAULT, 5, 6, 6);
INSERT INTO "public"."sportsmen_rating" ("id", "points_amount", "rating_number", "sportsmen_id") VALUES (DEFAULT, 4, 7, 7);


--Insert into team table
INSERT INTO "public"."team" ("id", "name", "tournament_id", "country_id") VALUES (DEFAULT, 'The Russian Federation team', 1, 8);
INSERT INTO "public"."team" ("id", "name", "tournament_id", "country_id") VALUES (DEFAULT, 'Spain Team', 1, 13);
INSERT INTO "public"."team" ("id", "name", "tournament_id", "country_id") VALUES (DEFAULT, 'Italian Team', 1, 14);
INSERT INTO "public"."team" ("id", "name", "tournament_id", "country_id") VALUES (DEFAULT, 'Bulgaria Team', 2, 2);
INSERT INTO "public"."team" ("id", "name", "tournament_id", "country_id") VALUES (DEFAULT, 'Argentine Team', 2, 15);

--Insert into team_member table
INSERT INTO "public"."team_member" ("id", "team_id", "sportsmen_id") VALUES (DEFAULT, 1, 1);
INSERT INTO "public"."team_member" ("id", "team_id", "sportsmen_id") VALUES (DEFAULT, 2, 2);
INSERT INTO "public"."team_member" ("id", "team_id", "sportsmen_id") VALUES (DEFAULT, 3, 3);
INSERT INTO "public"."team_member" ("id", "team_id", "sportsmen_id") VALUES (DEFAULT, 4, 4);

--Insert into stage table
INSERT INTO "public"."stage" ("id", "number", game_id) VALUES (DEFAULT, 1, 1);
INSERT INTO "public"."stage" ("id", "number", game_id) VALUES (DEFAULT, 2, 1);
INSERT INTO "public"."stage" ("id", "number", game_id) VALUES (DEFAULT, 3, 1);
-------------------------------------------------------------------------------
INSERT INTO "public"."stage" ("id", "number", game_id) VALUES (DEFAULT, 1, 2);
INSERT INTO "public"."stage" ("id", "number", game_id) VALUES (DEFAULT, 2, 2);
INSERT INTO "public"."stage" ("id", "number", game_id) VALUES (DEFAULT, 3, 2);
-------------------------------------------------------------------------------
INSERT INTO "public"."stage" ("id", "number", game_id) VALUES (DEFAULT, 1, 2);
INSERT INTO "public"."stage" ("id", "number", game_id) VALUES (DEFAULT, 2, 2);
INSERT INTO "public"."stage" ("id", "number", game_id) VALUES (DEFAULT, 3, 2);
-------------------------------------------------------------------------------
INSERT INTO "public"."stage" ("id", "number", game_id) VALUES (DEFAULT, 1, 3);
INSERT INTO "public"."stage" ("id", "number", game_id) VALUES (DEFAULT, 2, 3);
INSERT INTO "public"."stage" ("id", "number", game_id) VALUES (DEFAULT, 3, 3);
-------------------------------------------------------------------------------
INSERT INTO "public"."stage" ("id", "number", game_id) VALUES (DEFAULT, 1, 4);
INSERT INTO "public"."stage" ("id", "number", game_id) VALUES (DEFAULT, 2, 4);
INSERT INTO "public"."stage" ("id", "number", game_id) VALUES (DEFAULT, 3, 4);
------------------------------------------------------------------------------