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
INSERT INTO "public"."tournament" ("id", "prize_found_id", "name", "date_start", "date_end", "type", "gender", "stadium_id") VALUES (DEFAULT, 5, 'WTA Tournament of Champions', '2008-07-05', '2008-12-19', 'Team Tournament', 'man', 4);
INSERT INTO "public"."tournament" ("id", "prize_found_id", "name", "date_start", "date_end", "type", "gender", "stadium_id") VALUES (DEFAULT, 4, 'French Open', '2008-07-05', '2008-12-19', 'Team Tournament', 'man', 5);
INSERT INTO "public"."tournament" ("id", "prize_found_id", "name", "date_start", "date_end", "type", "gender", "stadium_id") VALUES (DEFAULT, 2, 'German Open Tennis Championship', '2008-07-05', '2008-12-19', 'Team Tournament', 'man', 6);
INSERT INTO "public"."tournament" ("id", "prize_found_id", "name", "date_start", "date_end", "type", "gender", "stadium_id") VALUES (DEFAULT, 1, 'Japan Open of Champions', '2012-02-04', '2012-12-10', 'Team Tournament', 'woman', 7);
INSERT INTO "public"."tournament" ("id", "prize_found_id", "name", "date_start", "date_end", "type", "gender", "stadium_id") VALUES (DEFAULT, 1, 'St. Petersburg Open', '2015-10-24', '2012-01-20', 'Team Tournament', 'men', 8);
INSERT INTO "public"."tournament" ("id", "prize_found_id", "name", "date_start", "date_end", "type", "gender", "stadium_id") VALUES (DEFAULT, 1, 'Fed Cup', '2015-02-01', '2015-06-20', 'Team Tournament', 'woman', 9);
INSERT INTO "public"."tournament" ("id", "prize_found_id", "name", "date_start", "date_end", "type", "gender", "stadium_id") VALUES (DEFAULT, 1, 'Seychelles Stadium Open of Championship', '2010-02-01', '2010-06-20', 'Team Tournament', 'woman', 10);
INSERT INTO "public"."tournament" ("id", "prize_found_id", "name", "date_start", "date_end", "type", "gender", "stadium_id") VALUES (DEFAULT, 1, 'WTA Finals', '2017-10-01', '2010-12-22', 'Team Tournament', 'woman', 11);
INSERT INTO "public"."tournament" ("id", "prize_found_id", "name", "date_start", "date_end", "type", "gender", "stadium_id") VALUES (DEFAULT, 1, 'US Open', '2018-10-01', '2019-01-15', 'Team Tournament', 'man', 11);

--Insert
