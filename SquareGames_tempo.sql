-- Création Database
CREATE DATABASE IF NOT EXISTS square_games;

-- Création table users
DROP TABLE IF EXISTS square_games.users;
CREATE TABLE square_games.users
(
    id                int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    login             varchar(255),
    password          varchar(255),
    avatar            varchar(255) DEFAULT '',
    pseudo            varchar(32),
    is_connected      tinyint DEFAULT null,
    birthdate         DATE DEFAULT '1900-01-01',
    id_legal_guardian int DEFAULT null,
    coins_balance     int DEFAULT 0
);

-- Initialisation table users
INSERT INTO square_games.users (login, password, pseudo)
VALUES
    ('admin','admin','admin');
INSERT INTO square_games.users (login, password, pseudo, birthdate)
VALUES
    ('chevrier','mdp','betov','1967-08-22'),
    ('boué','mdp','toto','1967-05-14'),
    ('toto','mdp','totoegalzero','1912-12-12');

