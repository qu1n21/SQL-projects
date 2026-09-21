create table clubs (
    club_id     serial primary key,
    club_name   text not null,
    stadium     text,
    city        text
);
 
create table players (
    player_id   serial primary key,
    player_name text not null,
    position    text,
    age         int,
    club_id     bigint references clubs (club_id)
);
 
create table matches (
    match_id      serial primary key,
    match_date    date,
    home_club_id  bigint references clubs (club_id),
    away_club_id  bigint references clubs (club_id),
    home_goals    int,
    away_goals    int
);

insert into clubs (club_name, stadium, city) values
    ('Manchester United', 'Old Trafford', 'Manchester'),
    ('Liverpool FC', 'Anfield', 'Liverpool'),
    ('Arsenal', 'Emirates Stadium', 'London'),
    ('Chelsea', 'Stamford Bridge', 'London'),
    ('Manchester City', 'Etihad Stadium', 'Manchester');
 
insert into players (player_name, position, age, club_id) values
    ('Marcus Rashford', 'Forward', 27, 1),
    ('Bruno Fernandes', 'Midfielder', 30, 1),
    ('Mohamed Salah', 'Forward', 32, 2),
    ('Virgil van Dijk', 'Defender', 33, 2),
    ('Bukayo Saka', 'Forward', 22, 3),
    ('Martin Odegaard', 'Midfielder', 25, 3),
    ('Cole Palmer', 'Forward', 22, 4),
    ('Reece James', 'Defender', 25, 4),
    ('Erling Haaland', 'Forward', 24, 5),
    ('Kevin De Bruyne', 'Midfielder', 33, 5);
 
insert into matches (match_date, home_club_id, away_club_id, home_goals, away_goals) values
    ('2025-08-16', 1, 2, 2, 1),
    ('2025-08-23', 3, 4, 1, 1),
    ('2025-08-30', 5, 1, 3, 0),
    ('2025-09-06', 2, 3, 2, 2),
    ('2025-09-13', 4, 5, 0, 2);


