-- a.  Create the database homework_9
CREATE DATABASE homework_9;

-- USE statement to access database
USE homework_9;

-- b. Create library table
CREATE TABLE library (
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(80) NOT NULL,
    PRIMARY KEY (id)
);

-- c. Create books table
CREATE TABLE books (
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(80) NOT NULL,
    PRIMARY KEY (id)
);

-- d. Create libraryBook table
CREATE TABLE libraryBook (
    id INT(11) NOT NULL AUTO_INCREMENT,
    libraryID INT(11) NOT NULL,
    bookID INT(11) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (libraryID) REFERENCES library(id),
    FOREIGN KEY (bookID) REFERENCES books(id)
);

-- 7. Write statements to:
-- a. Insert data into library
INSERT INTO library (name) VALUES ('New York Library');
INSERT INTO library (name) VALUES ('Bronx Library');
INSERT INTO library (name) VALUES ('Montauk Library');

-- Insert data into books
INSERT INTO books (name) VALUES ('Slaughterhouse-Five');
INSERT INTO books (name) VALUES ('Catch-22');
INSERT INTO books (name) VALUES ('1984');
INSERT INTO books (name) VALUES ('Cats Cradle');

-- b. Insert data into the libraryBook table
INSERT INTO libraryBook (libraryID, bookID) VALUES (1, 1); -- New York Library/Slaughterhouse-Five
INSERT INTO libraryBook (libraryID, bookID) VALUES (1, 2); -- New York Library/Catch-22
INSERT INTO libraryBook (libraryID, bookID) VALUES (2, 3); -- Bronx/1984
INSERT INTO libraryBook (libraryID, bookID) VALUES (3, 4); -- Montauk/Cats Cradle

--  c. Select a library by id = 1
SELECT * FROM library WHERE id = 1;

-- d. Select a book using the LIKE keyword and % wildcards to search the name column
SELECT * FROM books WHERE name LIKE '%1984%';

-- e. Select all books and order them alphabetically by name
SELECT * FROM books ORDER BY name ASC;

-- 8. Query with a JOIN to return the name of all books that belong to libraries
SELECT b.name AS book_name, l.name AS library_name
FROM libraryBook lb
JOIN books b ON lb.bookID = b.id
JOIN library l ON lb.libraryID = l.id;

-- 9. Update statement to update the name of one of the books
UPDATE books
SET name = 'Diary of a Wimpy Kid'
WHERE id = 1;

-- 10. Delete statement to delete one of the books
DELETE FROM books WHERE id = 4;
