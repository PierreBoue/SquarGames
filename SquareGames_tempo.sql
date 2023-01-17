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
    ('boué','mdp','piero','1967-05-14'),
    ('toto','mdp','totoegalzero','1912-12-12');

-- Initialisation table boards
INSERT INTO square_games.boards (size,display_size,game_id)
VALUES
    (3,300,1),
    (12,400,2),
    (10,350,3);

-- creation gameplay
DROP TABLE IF EXISTS square_games.players;
CREATE TABLE square_games.players
(   id INTEGER(12) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    user_id INTEGER(10),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);





