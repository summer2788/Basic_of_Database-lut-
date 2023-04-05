SELECT bookID, bookName, bookType FROM Book
SELECT * FROM OnBoard WHERE rank <10;
SELECT bookID, bookName, bookType,price  FROM Book  INNER JOIN Store ON StoreID=1 WHERE price<10;
SELECT nickname, bookName, bookType FROM User INNER JOIN Has ON User.userID=Has.FK_userID INNER JOIN Book ON Has.FK_bookID=Book.bookID 
ORDER by nickname;
SELECT a.nickname as username, b.nickname as freindname FROM User a INNER JOIN FriendShip ON a.userID=FriendShip.FK_userID INNER JOIN User b ON FriendShip.FK_friendID=b.userID ORDER by username;
