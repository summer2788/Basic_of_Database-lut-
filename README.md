# Basic_of_Database-lut-
this is the basic of database what I learned from LUT University in Finland
The Book World database is a database developed for a platform/game manager who manages a book share platform/game that users can make their own books and take notes into them. Users can read other user’s books by making friendship. They should have each of their own house and can buy books from the shop or even borrow books from the library.

The database stores User and Book information. The User information is stored in the User table, which includes user ID, password, and nickname. The Book information is related to other information such as store, library, and review board. The Book entity includes book name, book type, and book ID. The database also stores the possession status between users and books.

There are six entities in the Book World database: User, Book, Store, Library, ReviewBoard, and House. There are also six relationships between these entities. The Has relation is created between User and Book entities to show the possession relationship between users and books. The Friendship relation shows the recursive relationship of each user. The multivalued attribute ‘BookTopic’ was separated into an additional entity to show the possession relationship between books and library. The OnBoard relation shows which books are on the review board. Finally, the House relation shows the relationship between a user and their house.

The Book World database can perform five database queries. The first query lists the information of a specific book ID, book name, and book type. The second query lists all books, their review, and ranking up to the 10th place. The third query lists all book IDs, book names, book types, and prices that are sold in the store for less than $10. The fourth query shows the nickname, book name, and book type according to the possession relation between a user and a book and orders the information by user. The fifth query lists all users that have friendship with other users and orders those by user.

During implementation, integrity constraints are created for the relations, such as NOT NULL, UNIQUE KEY, FOREIGN KEY, ON UPDATE CASCADE, and ON DELETE SET DEFAULT. Additionally, two indices are created to allow quick search of book names and house names.


