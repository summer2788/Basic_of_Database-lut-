CREATE VIEW Tweets_and_tags  AS
SELECT Username as User, tw.Content as Tweet, GROUP_CONCAT(hw.Content,'') as Hashtag 
FROM User INNER JOIN Tweet as tw ON User.UserID = tw.UserID
INNER JOIN HashtagsinContent ON tw.TweetlD = HashtagsinContent.TweetlD
INNER JOIN Hashtag as hw ON HashtagsinContent.HashtagID=hw.HashtagID
GROUP BY User;