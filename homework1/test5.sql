BEGIN TRANSACTION;

INSERT INTO Player (first_name, last_name, nationality, birthdate) 
VALUES ('Emil', 'Ruusuvuori', 'FIN', '02/04/1999');

INSERT INTO Ranking (points, rank, record, FK_playerid) 
VALUES (0, 31, 'W: 0 - L: 0', 
        (SELECT playerid FROM Player WHERE first_name = 'Emil' AND last_name = 'Ruusuvuori'));

COMMIT;
