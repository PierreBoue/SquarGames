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
-- creation pieces
DROP TABLE IF EXISTS pieces;
CREATE TABLE pieces (
    id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    pattern INT(3) NOT NULL,
    picture VARCHAR(255),
    color VARCHAR(6) DEFAULT '000000');
-- creation games
DROP TABLE IF EXISTS games;
CREATE TABLE games (
    id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(32) NOT NULL ,
    age_mini_authorization INT(3) NOT NULL,
    age_maxi_authorization INT(3) NOT NULL,
    age_mini_against_human INT(3) NOT NULL,
    age_maxi_against_human INT(3) NOT NULL
);
