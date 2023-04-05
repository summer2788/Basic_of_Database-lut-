CREATE VIEW Tweets_and_tags AS
SELECT Username as User, Content as Comment, FK_CommentID as 'Commented on'
FROM User INNER JOIN Comments ON User.UserID = Comments.UserlD
WHERE Comments.FK_CommentID IS NOT NULL
ORDER BY User;