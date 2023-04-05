INSERT INTO Matches (matchid,FK_playerOne, FK_playerTwo, resultSets, matchdate, winnerID) 
VALUES ( (SELECT MAX(matchid) FROM Matches)+1,(SELECT playerid FROM Player INNER JOIN Ranking ON Player.playerid = Ranking.FK_playerid ORDER BY rank LIMIT 1),
        (SELECT playerid FROM Player INNER JOIN Ranking ON Player.playerid = Ranking.FK_playerid ORDER BY rank DESC LIMIT 1),
        '0-0', 'unplayed', 0);
