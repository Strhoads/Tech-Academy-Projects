USE db_library
GO

CREATE TABLE tbl_pub (
	pubName VARCHAR(50) PRIMARY KEY,
	pubAddress VARCHAR(75) NOT NULL,
	pubPhone VARCHAR(20)
);

CREATE TABLE tbl_book (
	bookID INT PRIMARY KEY NOT NULL IDENTITY,
	bookTitle VARCHAR(50) NOT NULL,
	pubName VARCHAR(50), 
);

CREATE TABLE tbl_author (
	bookID INT NOT NULL,
	author VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_branch (
	branchID INT PRIMARY KEY NOT NULL IDENTITY (100, 1),
	branchName VARCHAR(50) NOT NULL,
	branchAddress VARCHAR(75) NOT NULL
);

CREATE TABLE tbl_borrower (
	cardNo INT PRIMARY KEY NOT NULL IDENTITY (1000,1),
	borrowName VARCHAR(50) NOT NULL,
	borrowAddress VARCHAR(75) NOT NULL,
	borrowPhone VARCHAR(20)
);

CREATE TABLE tbl_loans (
	bookID INT NOT NULL,
	branchID INT NOT NULL,
	cardNo INT NOT NULL,
	dateOut DATE NOT NULL,
	dueDate DATE NOT NULL
);

CREATE TABLE tbl_copies (
	bookID INT NOT NULL,
	branchID INT NOT NULL,
	no_of_Copies INT NOT NULL
);


INSERT INTO tbl_book
	(bookTitle, pubName)
	VALUES
	('IT', 'ThomsonReuters'),
	('Odd Thomas', 'Wolters Kluwer'),
	('The Lost Tribe', 'Random House'),
	('The Raven', 'Hachette Livre'),
	('Under the Banner of Heaven', 'Westinghouse'),
	('Harry Potter and the Sorceror''s stone', 'ThomsonReuters'),
	('Twilight', 'Wolters Kluwer'),
	('If Chins could Kill', 'Random House'),
	('World Wat Z', 'Hachette Livre'),
	('1984', 'Westinghouse'),
	('Oh, the Places I''d go', 'ThomsonReuters'),
	('Misery', 'Wolters Kluwer'),
	('Cask of Amatillado', 'Random House'),
	('Where Men Win Glory', 'Hachette Livre'),
	('Harry Potter and the Goblet of Fire', 'ThomsonReuters'),
	('New Moon', 'ThomsonReuters'),
	('Make Love the Bruce Campbell Way', 'Wolters Kluwer'),
	('The Zombie Survival Guide', 'Random House'),
	('Animal Farm', 'Hachette Livre'),
	('One Fish, Two Fish, Red Fish, Blue Fish', 'Westinghouse')
;

INSERT INTO tbl_author
	(bookID, author)
	Values
	(17,'Stephen King'),
	(18,'Dean Koontz'),
	(19,'Edgar Allen Poe'),
	(20,'Edgar Allen Poe'),
	(21,'Jon Krakauer'),
	(22,'J k Rowling'),
	(23,'Stephanie Meyer'),
	(24,'Bruce Campbell'),
	(25,'Max Brooks'),
	(26,'George Orwell'),
	(27,'Dr. Suess'),
	(28,'Stephen King'),
	(29,'Edgar Allen Poe'),
	(30,'Jon Krakauer'),
	(31,'J k Rowling'),
	(32,'Stephanie Meyer'),
	(33,'Bruce Campbell'),
	(34,'Max Brooks'),
	(35,'George Orwell'),
	(36,'Dr. Suess')
;

INSERT INTO tbl_borrower
	(borrowName, borrowAddress, borrowPhone)
	VALUES
	('James Jones','1234 Fake Street','521-562-3654'),
	('Leonardo Lemmings','125 Main Street','531-654-3248'),
	('Logan Inset','45 South Street','202-369-5241'),
	('Tammy Walker','63 1st Street','252-521-5651'),
	('Henry Banks','64 1st Street','200-878-9632'),
	('Bobbi James','43 W New Street','451-520-8641'),
	('Mark Kemper','235 Chestnut Ave','236-964-8769'),
	('Nick Dean','255 Sycamore Street','754-626-6301')
;

INSERT INTO tbl_branch
	(branchName, branchAddress)
	VALUES
	('Sharpstown','55 W. Birch Street'),
	('Central','310 5th Street'),
	('Springfield','3201 S Church Street'),
	('Midtown','142 Main Street')
;

INSERT INTO tbl_copies
	(bookID, branchID, no_of_Copies)
	VALUES
	(17, 100, 10),
	(18, 100, 10),
	(19, 100, 10),
	(20, 100, 10),
	(21, 100, 10),
	(22, 100, 10),
	(23, 100, 10),
	(24, 100, 10),
	(25, 100, 10),
	(26, 100, 10),
	(27, 100, 10),
	(28, 100, 10),
	(29, 100, 10),
	(30, 100, 10),
	(31, 100, 10),
	(32, 100, 10),
	(33, 100, 10),
	(34, 100, 10),
	(35, 100, 10),
	(36, 100, 10),
	(17, 100, 10),
	(18, 100, 10),
	(19, 100, 10),
	(20, 100, 10),
	(21, 100, 10),
	(22, 100, 10),
	(23, 100, 10),
	(24, 101, 10),
	(25, 101, 10),
	(26, 101, 10),
	(27, 101, 10),
	(28, 101, 10),
	(29, 101, 10),
	(30, 101, 10),
	(31, 101, 10),
	(32, 101, 10),
	(33, 101, 10),
	(34, 101, 10),
	(35, 101, 10),
	(36, 101, 10),
	(17, 102, 10),
	(18, 102, 10),
	(19, 102, 10),
	(20, 102, 10),
	(21, 102, 10),
	(22, 102, 10),
	(23, 102, 10),
	(24, 102, 10),
	(25, 102, 10),
	(26, 102, 10),
	(27, 102, 10),
	(28, 102, 10),
	(29, 102, 10),
	(30, 102, 10),
	(31, 102, 10),
	(32, 102, 10),
	(33, 102, 10),
	(34, 102, 10),
	(35, 102, 10),
	(36, 102, 10),
	(17, 103, 10),
	(18, 103, 10),
	(19, 103, 10),
	(20, 103, 10),
	(21, 103, 10),
	(22, 103, 10),
	(23, 103, 10),
	(24, 103, 10),
	(25, 103, 10),
	(26, 103, 10),
	(27, 103, 10),
	(28, 103, 10),
	(29, 103, 10),
	(30, 103, 10),
	(31, 103, 10),
	(32, 103, 10),
	(33, 103, 10),
	(34, 103, 10),
	(35, 103, 10),
	(36, 103, 10)
;

INSERT INTO tbl_loans
	(bookID, branchID, cardNo, dateOut, dueDate)
	VALUES
	(17, 100, 1001, '2017/8/30', '2017/9/4'),
	(36, 100, 1001, '2017/8/30', '2017/9/4'),
	(25, 100, 1001, '2017/8/30', '2017/9/4'),
	(26, 100, 1001, '2017/8/30', '2017/9/4'),
	(20, 100, 1001, '2017/8/30', '2017/9/4'),
	(25, 101, 1002, '2017/8/26', '2017/8/31'),
	(19, 102, 1003, '2017/8/20', '2017/8/25'),
	(22, 103, 1004, '2017/8/30', '2017/9/4'),
	(17, 102, 1005, '2017/8/29', '2017/9/3'),
	(18, 102, 1005, '2017/8/29', '2017/9/3'),
	(25, 102, 1005, '2017/8/29', '2017/9/3'),
	(26, 102, 1005, '2017/8/29', '2017/9/3'),
	(34, 102, 1005, '2017/8/29', '2017/9/3'),
	(31, 101, 1006, '2017/8/28', '2017/9/2'),
	(30, 100, 1007, '2017/8/25', '2017/8/30'),
	(29, 101, 1000, '2017/8/26', '2017/8/31')
;

INSERT INTO tbl_pub
	(pubName, pubAddress, pubPhone)
	VALUES
	('ThomsonReuters','124 Which Way','256-512-9865'),
	('Wolters Kluwer','568 Schoolhouse Road','368-631-5220'),
	('Random House','154 Overlook Drive','155-852-3265'),
	('Hachette Livre','781 Main Street','146-652-3267'),
	('Westinghouse','12 W House Lane','215-454-1155')
;


SELECT * FROM tbl_author
SELECT * FROM tbl_book
SELECT * FROM tbl_borrower
SELECT * FROM tbl_branch
SELECT * FROM tbl_copies
SELECT * FROM tbl_loans
SELECT * FROM tbl_pub

CREATE PROCEDURE dbo.getLOSTTRIBE 
AS
SELECT no_of_Copies FROM tbl_copies 
INNER JOIN tbl_book ON tbl_copies.bookID = tbl_book.bookID
INNER JOIN tbl_branch ON tbl_branch.branchID = tbl_copies.branchID
WHERE
bookTitle = 'The Lost Tribe' 
AND
branchName = 'Sharpstown'

EXEC dbo.getLOSTTRIBE

CREATE PROCEDURE dbo.getLOSTTRIBEcopies
AS
SELECT no_of_Copies FROM tbl_copies 
INNER JOIN tbl_book ON tbl_copies.bookID = tbl_book.bookID
INNER JOIN tbl_branch ON tbl_branch.branchID = tbl_copies.branchID
WHERE
bookTitle = 'The Lost Tribe' 


EXEC dbo.getLOSTTRIBEcopies

CREATE PROCEDURE dbo.getDueDate
AS
SELECT bookTitle, dueDate, borrowAddress  FROM tbl_book 
INNER JOIN tbl_loans ON tbl_loans.bookID = tbl_book.bookID
INNER JOIN tbl_branch ON tbl_branch.branchID = tbl_loans.branchID
INNER JOIN tbl_borrower ON tbl_borrower.cardNo = tbl_loans.cardNo
WHERE
dueDate = CONVERT (date, GETDATE())
AND
branchName= 'Sharpstown'

EXEC dbo.getDueDate


CREATE PROCEDURE dbo.getloans2
AS
SELECT COUNT (dateOut) AS Loans, branchName FROM tbl_loans 
INNER JOIN tbl_branch ON tbl_loans.branchID = tbl_branch.branchID
GROUP BY
branchName

EXEC dbo.getloans2


CREATE PROCEDURE dbo.getborrower2
AS
SELECT borrowName, borrowAddress, COUNT(duedate) AS NumberLoaned FROM tbl_borrower
INNER JOIN tbl_loans ON tbl_loans.cardNo = tbl_borrower.cardNo
GROUP BY
borrowName, borrowAddress
HAVING
COUNT(duedate) >=5

EXEC dbo.getborrower2

CREATE PROCEDURE dbo.getStephenKing
AS
SELECT bookTitle, no_of_Copies AS NumberofCopies FROM tbl_author
INNER JOIN tbl_book ON tbl_book.bookID = tbl_author.bookID
INNER JOIN tbl_copies ON tbl_copies.bookID = tbl_book.bookID
INNER JOIN tbl_branch ON tbl_branch.branchID = tbl_copies.branchID
WHERE
author = 'Stephen King'
AND
branchName = 'Central'

