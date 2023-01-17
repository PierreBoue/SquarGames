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
INSERT INTO pieces (  patttern ) VALUES ( 1 ),( 2 );
-- INSERT GAMES
INSERT INTO games( name, age_mini_authorization , age_maxi_authorization , age_mini_against_human, age_maxi_against_human )
VALUES ('TicTacToe', 18, 99, 18, 99), ('Gomoku', 18, 99, 18, 99 ), ('Puissance 4', 18, 99, 18, 99 );