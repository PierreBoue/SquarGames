CREATE DATABASE IF NOT EXISTS square_games;
-- Création table users
DROP TABLE IF EXISTS square_games.users;
CREATE TABLE square_games.users
(
    id                int(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
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
DROP TABLE IF EXISTS square_games.pieces;
CREATE TABLE square_games.pieces (

    id INTEGER(10) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    pattern INT(3) NOT NULL,
    picture VARCHAR(255),
    color VARCHAR(6) DEFAULT '000000');
-- creation boards
DROP TABLE IF EXISTS square_games.boards;
CREATE TABLE square_games.boards
(
    id INTEGER(12) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    size INT(2),
    display_size INT(4),
    dark_color CHAR(6) DEFAULT '333333',
    light_color CHAR(6) DEFAULT 'DDDDDD',
    game_id INT(10) NOT NULL
    -- ,FOREIGN KEY (game_id) REFERENCES games(id) ON DELETE CASCADE
);
-- creation games
DROP TABLE IF EXISTS square_games.games;
CREATE TABLE square_games.games (
                                    id INTEGER(10) PRIMARY KEY AUTO_INCREMENT NOT NULL,
                                    name VARCHAR(32) NOT NULL ,
                                    age_mini_authorization INT(3) NOT NULL,
                                    age_maxi_authorization INT(3) NOT NULL,
                                    age_mini_against_human INT(3) NOT NULL,
                                    age_maxi_against_human INT(3) NOT NULL,
                                    default_board_id INT(10),
                                    FOREIGN KEY ( default_board_id ) REFERENCES boards(id) ON DELETE CASCADE

);
ALTER TABLE square_games.boards ADD CONSTRAINT FOREIGN KEY (game_id) REFERENCES games(id) ON DELETE CASCADE;
-- creation players
DROP TABLE IF EXISTS square_games.players;
CREATE TABLE square_games.players
(
    id INTEGER(12) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    user_id INTEGER(10),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- creation gameplay
DROP TABLE IF EXISTS square_games.gameplay;
CREATE TABLE square_games.gameplay
(   id INTEGER(14) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    player1_id INTEGER(12),
    FOREIGN KEY (player1_id) REFERENCES players(id) ON DELETE CASCADE,
    player2_id INTEGER(12),
    FOREIGN KEY (player2_id) REFERENCES players(id) ON DELETE CASCADE,
    boards_id INTEGER(12),
    FOREIGN KEY (boards_id) REFERENCES boards(id) ON DELETE CASCADE
);

-- creation Move
DROP TABLE IF EXISTS square_games.moves;
CREATE TABLE square_games.moves
(
    id INTEGER(10) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    date DATETIME DEFAULT NOW(),
    col INT(2) NOT NULL,
    line INT(2) NOT NULL,
    gameplay_id INT(10),
    piece_id INT(10),
    player_id INT(10),
    FOREIGN KEY ( gameplay_id ) REFERENCES gameplay(id),
    FOREIGN KEY ( piece_id ) REFERENCES pieces(id),
    FOREIGN KEY ( player_id ) REFERENCES players(id)
);