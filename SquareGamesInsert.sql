-- Initialisation table users
INSERT INTO square_games.users (login, password, pseudo)
VALUES
    ('admin','admin','admin');
INSERT INTO square_games.users (login, password, pseudo, birthdate)
VALUES
    ('chevrier','mdp','betov','1967-08-22'),
    ('boué','mdp','Piero','1967-05-14'),
    ('toto','mdp','totoegalzero','1912-12-12');
-- INSERT PIECES
INSERT INTO square_games.pieces (  pattern ) VALUES ( 1 ),( 2 );
-- INSERT GAMES
INSERT INTO square_games.games( name, age_mini_authorization , age_maxi_authorization , age_mini_against_human, age_maxi_against_human )
VALUES ('TicTacToe', 18, 99, 18, 99), ('Gomoku', 18, 99, 18, 99 ), ('Echecs', 18, 99, 18, 99 );
-- Initialisation table boards
INSERT INTO square_games.boards (size,display_size, game_id)
VALUES
    (3,300,1),
    (12,400,2),
    (10,350,3);
-- INSERT PLAYERS
INSERT INTO square_games.players( user_id ) VALUES (2),(3);

-- INSERT GAMEPLAY
INSERT INTO square_games.gameplay( player1_id, player2_id,  boards_id) VALUES ( 1, 2, 1 );

-- INSERT MOVES

INSERT INTO square_games.moves( col, line, gameplay_id, piece_id , player_id ) VALUES ( 1, 1, 1, 1),(0,1,2,2);