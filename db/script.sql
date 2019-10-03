---Create country table----
create table country
(
    id        serial      not null
        constraint country_pk
            primary key,
    iso       varchar(2)  not null,
    name      varchar(80) not null,
    iso3      varchar(3)  not null,
    phonecode integer     not null
);

alter table country
    owner to postgres;

---Create stadium table---

create table stadium
(
    id         serial       not null
        constraint stadium_pk
            primary key,
    name       varchar(100) not null,
    country_id integer      not null
        constraint stadium_country_id_fk
            references country
            on update cascade on delete cascade,
    coating    varchar(100) not null
);

alter table stadium
    owner to postgres;

create unique index stadium_id_uindex
    on stadium (id);

--Create prize_found table---

create table prize_found
(
    id          serial  not null
        constraint prize_found_pk
            primary key,
    round       integer not null,
    points      integer not null,
    prize_money money   not null
);

alter table prize_found
    owner to postgres;

create unique index prize_found_id_uindex
    on prize_found (id);

--Create tournament table---

create table tournament
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
    "gender "      varchar(5)   not null,
    stadium_id     integer      not null
        constraint tournament_stadium_id_fk
            references stadium
            on update cascade on delete cascade
);

alter table tournament
    owner to postgres;

create unique index tournament_name_uindex
    on tournament (name);

---Create sportsmen_name table---

create table sportsmen_name
(
    id          serial      not null
        constraint sportsmen_name_pk
            primary key,
    first_name  varchar(35) not null,
    last_name   varchar(35) not null,
    middle_name varchar(35) not null
);

alter table sportsmen_name
    owner to postgres;

create unique index name_id_uindex
    on sportsmen_name (id);

---Create personal_info table---

create table personal_info
(
    id                serial  not null
        constraint personal_info_pk
            primary key,
    country_id        integer not null
        constraint personal_info_country_id_fk
            references country
            on update cascade on delete cascade,
    birthday          date    not null,
    high              integer not null,
    weight            integer not null,
    sportsmen_name_id integer not null
        constraint personal_info_sportsmen_name_id_fk
            references sportsmen_name
            on update cascade on delete cascade
);

alter table personal_info
    owner to postgres;

create unique index personal_info_id_uindex
    on personal_info (id);

---Create team table---

create table team
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

---Create sportsmen table---

create table sportsmen
(
    id               serial  not null
        constraint sportsmen_pk
            primary key,
    points_amount    integer,
    rating_number    integer,
    team_id          integer not null
        constraint sportsmen_team_id_fk
            references team,
    personal_info_id integer not null
        constraint sportsmen_personal_info_id_fk
            references personal_info
            on update cascade on delete cascade
);

alter table sportsmen
    owner to postgres;

create unique index sportsmen_id_uindex
    on sportsmen (id);

---Create statistic table---

create table statistic
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
    break_points_impl       integer,
    sportsmen_id            integer
        constraint statistic_sportsmen_id_fk
            references sportsmen
            on update cascade on delete cascade
);

alter table statistic
    owner to postgres;

create unique index statistic_id_uindex
    on statistic (id);

---Crate statistic table---

create table statistic
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
    break_points_impl       integer,
    sportsmen_id            integer
        constraint statistic_sportsmen_id_fk
            references sportsmen
            on update cascade on delete cascade
);

alter table statistic
    owner to postgres;

create unique index statistic_id_uindex
    on statistic (id);

---Create game table---

create table game
(
    id           serial  not null
        constraint game_pk
            primary key,
    sportsmen_id integer not null
        constraint game_sportsmen_id_fk
            references sportsmen
            on update cascade on delete cascade,
    statistic_id integer not null,
    duration     time
);

alter table game
    owner to postgres;

create unique index game_id_uindex
    on game (id);

---Create set table---

create table set
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