use master 
 create database Jaradat_Tech

 CREATE TABLE Author (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(100),
    Birthdate DATE,
    Nationality VARCHAR(50)
);

CREATE TABLE Section (
    SectionID INT PRIMARY KEY,
    SectionName VARCHAR(100),
    Description TEXT
);
CREATE TABLE Category (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100),
    Description TEXT
);
CREATE TABLE Book (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255),
    ISBN VARCHAR(50),
    PublicationYear INT,
    AuthorID INT,
    SectionID INT,
    CategoryID INT,

);

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    HireDate DATE
);

CREATE TABLE Userss (
    UserID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(255)
);
CREATE TABLE BooksAuthor (
    BookID INT,
    AuthorID INT,
    PRIMARY KEY (BookID, AuthorID),
 
);


INSERT INTO Author
VALUES
    (1, 'J', '1965', 'B'),
    (2, 'G', '1948', 'A'),
    (3, 'H', '1949', 'Ja'),
    (4, 'S', '1947', 'S'),
    (5, 'J', '1775', 'T');
	SELECT * FROM Author


DROP TABLE IF EXISTS Section;
DROP TABLE IF EXISTS BooksAuthor;
DROP TABLE IF EXISTS Book;
DROP TABLE IF EXISTS Author;
DROP TABLE IF EXISTS Section;
DROP TABLE IF EXISTS Category;
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Userss;





CREATE TABLE Author (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(100),
    Birthdate DATE,
    Nationality VARCHAR(50)
);

CREATE TABLE Section (
    SectionID INT PRIMARY KEY,
    SectionName VARCHAR(100),
    Location VARCHAR(100),
    Description TEXT
);

CREATE TABLE Category (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100),
    Description TEXT
);

CREATE TABLE Book (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255),
    ISBN VARCHAR(50),
    PublicationYear INT,
    AuthorID INT,
    SectionID INT,
    CategoryID INT,
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID),
    FOREIGN KEY (SectionID) REFERENCES Section(SectionID),
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    HireDate DATE
);

CREATE TABLE Userss (
    UserID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(255)
);

CREATE TABLE BooksAuthors (
    BookID INT,
    AuthorID INT,
    PRIMARY KEY (BookID, AuthorID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)
);

INSERT INTO Author
VALUES
    (1, 'J', '1965-07-31', 'B'),
    (2, 'G', '1948-09-20', 'X'),
    (3, 'H', '1949-01-12', 'Y'),
    (4, 'S', '1947-09-21', 'Z'),
    (5, 'Jn', '1775-12-16', 'A');

INSERT INTO Section 
VALUES
    (1, 'Fiction', 'First Floor', 'H'),
    (2, 'Non-Fiction', 'First Floor', 'N'),
    (3, 'Science Fiction', 'Second Floor', 'BV'),
    (4, 'Mystery', 'Second Floor', 'Bo');

INSERT INTO Category 
VALUES
    (1, 'Fantasy', 'Magic and imaginary worlds.'),
    (2, 'Thriller', 'Feelings of excitement, suspense.'),
    (3, 'Romance', 'Romantic .'),
    (4, 'Biography', 'Story of a person''s life .'),
    (5, 'History', 'Study past events.');

INSERT INTO Book 
VALUES
    (1, 'Harry Potter and the Philosopher''s Stone', '9780747532743', 1997, 1, 1, 1),
    (2, 'A Game of Thrones', '9780553103540', 1996, 2, 1, 1),
    (3, 'Norwegian Wood', '9780375704024', 1987, 3, 1, 2),
    (4, 'It', '9780451169518', 1986, 4, 2, 2),
    (5, 'Pride and Prejudice', '9780141439518', 1813, 5, 2, 3);

INSERT INTO Employees 
VALUES
    (1, 'X', 'S', 'X@email.com', '123-456-7890', '2015-03-20'),
    (2, 'K', 'Y', 'K@email.com', '987-654-3210', '2018-01-10'),
    (3, 'M', 'I', 'M@email.com', '555-123-4567', '2017-06-15'),
    (4, 'E', 'O', 'E@email.com', '777-888-9999', '2019-02-28'),
    (5, 'D', 'W', 'D@email.com', '444-555-6666', '2016-09-05');

INSERT INTO Userss 
VALUES
    (1, 'Sarah', 'J', 'sarah@email.com', '111-222-3333', 'E'),
    (2, 'M', 'W', 'M@email.com', '333-444-5555', 'R'),
    (3, 'Em', 'G', 'EM@email.com', '666-777-8888', 'T'),
    (4, 'Ja', 'M', 'JA@email.com', '888-999-0000', 'Y'),
    (5, 'Ol', 'S', 'ol@email.com', '222-333-4444', 'U');

INSERT INTO BooksAuthors (BookID, AuthorID)
VALUES
    (1, 1), 
    (2, 2), 
    (3, 3), 
    (4, 4), 
    (5, 5); 
	
	 SELECT * FROM Employee;
	 	 SELECT * FROM Userss;
		 	 SELECT * FROM Book;
	 	 SELECT * FROM Category;
		 SELECT * FROM Section ;
		 		 SELECT * FROM  Author;

 SELECT b.Title, a.AuthorName
FROM Book b
INNER JOIN Author a ON b.AuthorID = a.AuthorID;

SELECT b.Title, a.AuthorName
FROM Book b
RIGHT JOIN Author a ON b.AuthorID = a.AuthorID;



SELECT b.Title, c.CategoryName
FROM Book b
INNER JOIN BooksAuthors ba ON b.BookID = ba.BookID
INNER JOIN Category c ON b.CategoryID = c.CategoryID;

SELECT b.Title, c.CategoryName
FROM Book b
RIGHT JOIN BooksAuthors ba ON b.BookID = ba.BookID
RIGHT JOIN Category c ON b.CategoryID = c.CategoryID;