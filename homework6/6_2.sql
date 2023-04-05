SELECT p.first_name ||' ' ||p.last_name AS 'Player one', k.first_name ||' ' ||k.last_name AS 'Player two', matchdate AS Matchdate, case when k.playerid=winnerID then  k.first_name ||' ' ||k.last_name else p.first_name ||' ' ||p.last_name end AS Winner  FROM Matches JOIN Player p ON p.playerid = FK_playerOne JOIN Player k ON k.playerid = FK_playerTwo
WHERE matchid
IN (SELECT  DISTINCT e.matchid  FROM Matches e
JOIN Matches a 
WHERE (e.FK_playerOne = a.FK_playerTwo AND e.FK_playerTwo = a.FK_playerOne ) OR (e.FK_playerOne = a.FK_playerOne AND e.FK_playerTwo = a.FK_playerTwo AND e.matchid != a.matchid  )
)
ORDER BY Winner;
