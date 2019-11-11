--Create country table
create table if not exists country
(
    id        serial      not null
        constraint country_pk
            primary key,
    iso2      varchar(2)  not null,
    iso3      varchar(3)  not null,
    name      varchar(80) not null
);

alter table country
    owner to postgres;

--Create stadium table

create table if not exists stadium
(
    id         serial       not null
        constraint stadium_pk
            primary key,
    name       varchar(100) not null,
    country_id integer      not null
        constraint stadium_country_id_fk
            references country
            on update cascade on delete cascade,
    surface    varchar(100) not null
);

alter table stadium
    owner to postgres;

create unique index stadium_id_uindex
    on stadium (id);

--Create prize_found table

create table if not exists prize_found
(
    id          serial  not null
        constraint prize_found_pk
            primary key,
    round       varchar(10) not null,
    points      integer not null,
    prize_money money   not null
);

alter table prize_found
    owner to postgres;

create unique index prize_found_id_uindex
    on prize_found (id);

--Create tournament table

create table if not exists tournament
(
    id             serial       not null
        constraint tournament_pk
            primary key,
    prize_found_id integer      not null
        constraint tournament_prize_found_id_fk
            references prize_found
            on update cascade on delete cascade,
    name           varchar(100) not null,
    date_start     date         not null,
    date_end       date,
    type           varchar(100),
    gender         varchar(5)   not null,
    stadium_id     integer      not null
        constraint tournament_stadium_id_fk
            references stadium
            on update cascade on delete cascade
);

alter table tournament
    owner to postgres;

create unique index tournament_name_uindex
    on tournament (name);

--Create team table

create table if not exists team
(
    id            serial       not null
        constraint team_pk
            primary key,
    name          varchar(100) not null,
    tournament_id integer
        constraint team_tournament_id_fk
            references tournament
            on update cascade on delete cascade,
    country_id    integer      not null
);

alter table team
    owner to postgres;

create unique index team_id_uindex
    on team (id);

--Create sportsmen table

create table if not exists sportsmen
(
    id            serial      not null
        constraint sportsmen_pk
            primary key,
    points_amount integer,
    rating_number integer,
    first_name    varchar(35) not null,
    last_name     varchar(35),
    country_id    integer     not null
        constraint sportsmen_country_id_fk
            references country
            on update cascade on delete cascade
);

alter table sportsmen
    owner to postgres;

create unique index sportsmen_id_uindex
    on sportsmen (id);

--Create statistic table

create table if not exists statistic
(
    id                      serial not null
        constraint statistic_pk
            primary key,
    first_serve_hit         integer,
    first_serve_win         integer,
    win_set_amount          integer,
    ace                     integer,
    amount_points           integer,
    double_mistake          integer,
    points_amount_reception integer,
    break_points_impl       integer
);

alter table statistic
    owner to postgres;

create unique index statistic_id_uindex
    on statistic (id);

--Create game table

create table if not exists game
(
    id           serial  not null
        constraint game_pk
            primary key,
    sportsmen_id integer not null
        constraint game_sportsmen_id_fk
            references sportsmen
            on update cascade on delete cascade,
    statistic_id integer not null
        constraint game_statistic_id_fk
            references statistic
            on update cascade on delete cascade,
    duration     time
);

alter table game
    owner to postgres;

create unique index game_id_uindex
    on game (id);

--Create set table

create table if not exists set
(
    id           serial  not null
        constraint set_pk
            primary key,
    number       integer not null,
    points       integer not null,
    statistic_id integer not null
        constraint set_statistic_id_fk
            references statistic
            on update cascade on delete cascade
);

alter table set
    owner to postgres;

create unique index set_id_uindex
    on set (id);

--Create sportsmen_rating table

create table if not exists sportsmen_rating
(
    id            serial  not null
        constraint sportsmen_rating_pk
            primary key,
    points_amount integer not null,
    rating_number integer not null,
    sportsmen_id  integer
        constraint sportsmen_rating_sportsmen_id_fk
            references sportsmen
            on update cascade on delete cascade
);

alter table sportsmen_rating
    owner to postgres;

create unique index sportsmen_rating_id_uindex
    on sportsmen_rating (id);

--Create team_member table

create table if not exists team_member
(
    id           serial  not null
        constraint team_member_pk
            primary key,
    team_id      integer not null
        constraint team_member_team_id_fk
            references team
            on update cascade on delete cascade,
    sportsmen_id integer not null
        constraint team_member_sportsmen_id_fk
            references sportsmen
            on update cascade on delete cascade
);

alter table team_member
    owner to postgres;

create unique index team_member_id_uindex
    on team_member (id);

--Create stage table

create table if not exists stage
(
    id      serial  not null
        constraint stage_pk
            primary key,
    number  integer not null,
    game_id integer not null
        constraint stage_game_id_fk
            references game
            on update cascade on delete cascade
);

alter table stage
    owner to postgres;

create unique index stage_id_uindex
    on stage (id);