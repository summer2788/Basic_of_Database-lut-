SELECT case when k.playerid=winnerID then  k.first_name ||' ' ||k.last_name else p.first_name ||' ' ||p.last_name end AS 'Winner name',
case when e.FK_playerid=winnerID then  e.rank else f.rank end AS "Winner rank",
 case when k.playerid!=winnerID then  k.first_name ||' ' ||k.last_name else p.first_name ||' ' ||p.last_name end AS 'Loser name' ,
 case when e.FK_playerid!=winnerID then  e.rank else f.rank end AS 'Loser rank',
 matchdate AS Matchdate 
 FROM Matches JOIN Player p ON Matches.FK_playerOne=p.playerid Join Player k ON Matches.FK_playerTwo=k.playerid Join Ranking e ON Matches.FK_playerOne=e.FK_playerid JOIN Ranking f ON Matches.FK_playerTwo=f.FK_playerid 
WHERE ((FK_playerOne IN
(SELECT FK_playerid FROM Ranking WHERE rank<=5) AND FK_playerOne != winnerID )
OR (FK_playerTwo IN (SELECT FK_playerid FROM Ranking WHERE rank<=5) AND FK_playerTwo != winnerID))
ORDER BY "Winner rank"