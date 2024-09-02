
create database library_managment_system;
use library_managment_system;
CREATE TABLE Publisher (
    publisher_id INT PRIMARY KEY,
    publisher_name VARCHAR(100),
    email_id VARCHAR(100),
    year_of_book INT
);
CREATE TABLE author (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100),
   author_email_id VARCHAR(100)
);
CREATE TABLE library (
    library_id INT PRIMARY KEY,
    library_address VARCHAR(100),
    library_number INT,
 library_name VARCHAR(100)
);
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_email_id VARCHAR(100),
    customer_gender VARCHAR(100),
    customer_number INT
);
CREATE TABLE manager (
    manager_id INT PRIMARY KEY,
    manager_name VARCHAR(100),
      manager_email_id VARCHAR(100),
    manager_contact_number INT
);
CREATE TABLE staff (
    staff_id INT PRIMARY KEY,
    staf_name VARCHAR(100),
	staf_email_id VARCHAR(100),
    staf_contact_number INT,
     staf_shift VARCHAR(100)
);
CREATE TABLE staff_authentication (
    login_id INT PRIMARY KEY,
    staff_id INT,
    staff_password VARCHAR(100),
    otp_verification INT,
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);
CREATE TABLE transaction (
    transaction_id INT PRIMARY KEY,
    transaction_name VARCHAR(100),
    transaction_date DATE,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);
CREATE TABLE genre (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(100),
    description VARCHAR(100),
    rating DECIMAL(5, 2),
    number_of_books INT
);
CREATE TABLE fiction (
    f_book_id INT PRIMARY KEY,
    f_book_name VARCHAR(100),
    instock BOOLEAN,
    edition_of_books INT,
    genre_id INT,
    FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
);
CREATE TABLE nonfiction (
   n_book_id INT PRIMARY KEY,
    n_book_name VARCHAR(100),
    instock BOOLEAN,
    edition_of_books INT,
    genre_id INT,
    FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
);
CREATE TABLE history (
    h_book_id INT PRIMARY KEY,
    h_book_name VARCHAR(100),
    instock BOOLEAN,
    edition_of_books INT,
    genre_id INT,
    FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
);
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    book_name VARCHAR(100),
    author_id INT,
    publisher_id INT,
    genre_id INT,
    FOREIGN KEY (author_id) REFERENCES Author(author_id),
    FOREIGN KEY (publisher_id) REFERENCES Publisher(publisher_id),
    FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
);
INSERT INTO Publisher (publisher_id, publisher_name, email_id, year_of_book)
VALUES
    (1, 'Penguin Random House', 'prh@gmail.com', 2013),
    (2, 'HarperCollins Publishers', 'hcp@gmail.com', 1989),
    (3, 'Simon & Schuster', 'simon@gmail.com', 1924),
    (4, 'Hachette Book Group', 'hbg@gmail.com', 1837),
    (5, 'Macmillan Publishers', 'macmillan@gmail.com', 1843),
    (6, 'Crown Publishing Group', 'crown@gmail.com', 1935),
    (7, 'Knopf Doubleday Publishing Group', 'knopf@gmail', 1915),
    (8, 'William Morrow and Company', 'morrow@gmail', 1926),
    (9, 'Avon Books', 'avon@gmail.com', 1941),
    (10, 'Atria Books', 'atria@gmail.com', 2002);
    INSERT INTO author (author_id, author_name, author_email_id)
VALUES
    (1, 'J.K. Rowling', 'jk@gmail.com'),
    (2, 'George R.R. Martin', 'gr@gmail.com'),
    (3, 'Stephen King', 'sk@gmail.com'),
    (4, 'John Grisham', 'jg@gmail.com'),
    (5, 'Dan Brown', 'db@gmail.com'),
    (6, 'James Patterson', 'jp@gmail.com'),
    (7, 'Nora Roberts', 'nb@gmail.com'),
    (8, 'Tom Clancy', 'tc@gmail.com'),
    (9, 'Dean Koontz', 'dk@gmail.com'),
    (10, 'Michael Crichton', 'mc@gmail.com');
    INSERT INTO library (library_id, library_address, library_number, library_name)
VALUES
    (1, 'model town', 123456789, 'readers'),
    (2, 'iqbal town', 987654321, 'moeez library'),
    (3, 'DHA', 456789123, 'omer library'),
    (4, 'davis road', 789123456, 'hashim library'),
    (5, 'askari', 123456987, 'bakar library'),
    (6, 'gaju mata', 987651234, 'saad library'),
    (7, 'township', 456123789, 'shamoon library'),
    (8, 'faisal town', 789123654, 'books ada'),
    (9, 'muslim town', 123789456, 'kitab gah'),
    (10, 'johar town', 987456123, 'ahad library');
    INSERT INTO Manager (manager_id, manager_name, manager_email_id, manager_contact_number)
VALUES 
(1, 'abdul moeez', 'moeez@gmail.com', 123),
(2, 'omer farooq', 'omer@gmail.com', 987),
(3, 'abu bakar zahid', 'abubakar@gmail.com', 456),
(4, 'shamoon khan', 'shamoonkhan@gmail.com', 789),
(5, 'hashim sultan', 'hashim@gmail.com', 111),
(6, 'saad ahmad ', 'saadahamd@gmail.com', 222),
(7, 'noor rizwan', 'noor@gmail.com', 333),
(8, 'ahad arain', 'ahad@gmail.com', 444),
(9, 'aban fida', 'aban@gmail.com', 555),
(10, 'mutahir ahmad', 'mutahir@gmail.com', 666);
INSERT INTO staff (staff_id, staf_name, staf_email_id, staf_contact_number, staf_shift)
VALUES 
(1, 'abdullah john', 'abdullahjohn@gmail.com', 12345, 'Morning'),
(2, 'adeel john', 'adeeljohn@gmail.com', 9876, 'Afternoon'),
(3, 'bob marley', 'bobmarley@gmail.com', 4567, 'Evening'),
(4, 'snoop dogg', 'snoopdogg@gmail.com', 78912, 'Morning'),
(5, 'Chris brown', 'chrisbrown@gmail.com', 1231, 'Afternoon'),
(6, 'kendrick lamar', 'kendricklamar@gmail.com', 9879, 'Evening'),
(7, 'j cole', 'jcole@gmail.com', 4564, 'Morning'),
(8, 'drake', 'drake@gmail.com', 7897, 'Afternoon'),
(9, 'weeknd', 'weeknd@gmail.com', 1231, 'Evening'),
(10, 'travis scott', 'traviscott@gmail.com', 9870, 'Morning');

INSERT INTO staff_authentication (login_id, staff_id, staff_password, otp_verification) 
VALUES 
(1, 1, 'password123', 123456),
(2, 2, 'password69', 789012),
(3, 3, 'password321', 654321),
(4, 4, 'password721', 456789),
(5, 5, 'password555', 987654),
(6, 6, 'password666', 654987),
(7, 7, 'password777', 321456),
(8, 8, 'password888', 654321),
(9, 9, 'password999', 987654),
(10, 10, 'password1010', 123456);
INSERT INTO Customer (customer_id, customer_name, customer_email_id, customer_gender, customer_number)
VALUES 
(1, 'molana tariq jameel', 'molanatariq@gmail.com', 'Male', 1001),
(2, 'aleena', 'aleena@gmail.com', 'Female', 1002),
(3, 'molana deisel', 'molanadeisel@gmail.com', 'Male', 1003),
(4, 'manahil', 'manahil@gmail.com', 'Female', 1004),
(5, 'shazy', 'shazy@gmail.com', 'Male', 1005),
(6, 'maryam nawaz shareef', 'maryam@gmail.com', 'Female', 1006),
(7, 'osama bin ladin', 'osama911@gmail.com', 'Male', 1007),
(8, 'hania', 'hania@gmail.com', 'Female', 1008),
(9, 'hitler', 'hitler@gmail.com', 'Male', 1009),
(10, 'billie elish', 'billieelish@gmail.com', 'Female', 1010);


INSERT INTO transaction (transaction_id, transaction_name, transaction_date, customer_id) 
VALUES 
(1, 'Book Issue', '2023-05-14', 1),
(2, 'Book Return', '2023-05-15', 2),
(3, 'Book Issue', '2023-05-16', 3),
(4, 'Book Return', '2023-05-17', 4),
(5, 'Book Issue', '2023-05-18', 5),
(6, 'Book Return', '2023-05-19', 6),
(7, 'Book Issue', '2023-05-20', 7),
(8, 'Book Return', '2023-05-21', 8),
(9, 'Book Issue', '2023-05-22', 9),
(10, 'Book Return', '2023-05-23', 10);
INSERT INTO books (book_id, book_name, author_id, publisher_id, genre_id)
VALUES 
(1, 'The Great Gatsby', 1, 1, 1),
(2, 'To Kill a Mockingbird', 2, 2, 1),
(3, 'The Catcher in the Rye', 3, 3, 1),
(4, 'The Da Vinci Code', 4, 4, 2),
(5, 'The Girl with the Dragon Tattoo', 5, 5, 2),
(6, 'The Hunger Games', 6, 6, 3),
(7, 'Harry Potter and the Philosopher''s Stone', 7, 7, 3),
(8, 'The Hobbit', 8, 8, 3),
(9, 'The Lord of the Rings', 9, 9, 3),
(10, 'The Alchemist', 10, 10, 4);

INSERT INTO genre (genre_id, genre_name, description, rating, number_of_books) 
VALUES 
(1, 'Fiction', 'Books that are not based on true events', 4.5, 1000),
(2, 'Non-Fiction', 'Books that are based on true events', 4.2, 800),
(3, 'Mystery', 'Books that involve mysterious events or crime', 4.3, 600),
(4, 'Biography', 'Books that narrate a persons life story', 4.1, 500),
(5, 'Science Fiction', 'Books that explore futuristic or speculative concepts', 4.4, 700),
(6, 'History', 'Books that describe historical events or periods', 4.0, 400),
(7, 'Romance', 'Books that focus on romantic relationships', 4.6, 300),
(8, 'Self-Help', 'Books that offer guidance for personal improvement', 4.7, 200),
(9, 'Thriller', 'Books that evoke feelings of excitement or suspense', 4.8, 100),
(10, 'Poetry', 'Books that contain poetic compositions', 4.9, 50);

INSERT INTO fiction (f_book_id, f_book_name, instock, edition_of_books, genre_id) 
VALUES 
(1, 'The Great Gatsby', TRUE, 1, 1),
(2, 'To Kill a Mockingbird', TRUE, 1, 1),
(3, 'Pride and Prejudice', TRUE, 1, 1),
(4, '1984', TRUE, 1, 1),
(5, 'The Catcher in the Rye', TRUE, 1, 1),
(6, 'Harry Potter and the Sorcerer\'s Stone', TRUE, 1, 1),
(7, 'The Hobbit', TRUE, 1, 1),
(8, 'The Lord of the Rings', TRUE, 1, 1),
(9, 'The Hunger Games', TRUE, 1, 1),
(10, 'The Chronicles of Narnia', TRUE, 1, 1);

INSERT INTO nonfiction (n_book_id, n_book_name, instock, edition_of_books, genre_id) 
VALUES 
(1, 'Educated', TRUE, 1, 2),
(2, 'Becoming', TRUE, 1, 2),
(3, 'Sapiens: A Brief History of Humankind', TRUE, 1, 2),
(4, 'The Immortal Life of Henrietta Lacks', TRUE, 1, 2),
(5, 'The Diary of a Young Girl', TRUE, 1, 2),
(6, 'The Boys in the Boat', TRUE, 1, 2),
(7, 'Hidden Figures', TRUE, 1, 2),
(8, 'The Glass Castle', TRUE, 1, 2),
(9, 'Into the Wild', TRUE, 1, 2),
(10, 'Born a Crime', TRUE, 1, 2);

INSERT INTO history (h_book_id, h_book_name, instock, edition_of_books, genre_id) 
VALUES 
(1, 'A People\'s History of the United States', TRUE, 1, 6),
(2, 'The Rise and Fall of the Third Reich', TRUE, 1, 6),
(3, 'Guns, Germs, and Steel', TRUE, 1, 6),
(4, 'The Devil in the White City', TRUE, 1, 6),
(5, 'Team of Rivals: The Political Genius of Abraham Lincoln', TRUE, 1, 6),
(6, 'SPQR: A History of Ancient Rome', TRUE, 1, 6),
(7, 'The Warmth of Other Suns', TRUE, 1, 6),
(8, 'A Short History of Nearly Everything', TRUE, 1, 6),
(9, '1491: New Revelations of the Americas Before Columbus', TRUE, 1, 6),
(10, 'The Guns of August', TRUE, 1, 6);
SELECT author_name 
FROM author 
WHERE author_name LIKE 'J%';

SELECT publisher_name, COUNT(book_id) as num_books 
FROM books 
JOIN publisher 
ON books.publisher_id = publisher.publisher_id 
GROUP BY publisher_name;
SELECT author_name, COUNT(book_id) as num_books 
FROM books 
JOIN author 
ON books.author_id = author.author_id 
GROUP BY author_name;
SELECT publisher_name 
FROM publisher 
WHERE publisher_name LIKE 'P%';
SELECT book_name 
FROM books 
JOIN publisher 
ON books.publisher_id = publisher.publisher_id 
WHERE year_of_book = 2013;
SELECT book_name 
FROM books 
WHERE book_name LIKE '%fiction%' 
OR genre_id IN (
    SELECT genre_id 
    FROM genre 
    WHERE genre_name = 'Fiction'
);
SELECT customer_email_id AS customer_email, customer_name
FROM Customer;
SELECT customer_name
FROM customer
LEFT JOIN transaction ON customer.customer_id = transaction.customer_id
;
SELECT publisher_name, COUNT(book_id) as num_books, AVG(rating) as avg_rating
FROM books
JOIN publisher ON books.publisher_id = publisher.publisher_id
JOIN genre ON books.genre_id = genre.genre_id
GROUP BY publisher_name;
SELECT COUNT(*) FROM transaction WHERE customer_id = (SELECT customer_id 
FROM customer WHERE
 customer_email_id = 'hitler@gmail.com' AND transaction_name = 'Book Issue'
 AND MONTH(transaction_date) = 5);
SELECT c.customer_id, c.customer_name, COUNT(t.transaction_id) AS total_books_issued
FROM customer c
LEFT JOIN transaction t ON c.customer_id = t.customer_id
GROUP BY c.customer_id, c.customer_name;
SELECT c.customer_id, c.customer_name, COUNT(t.transaction_id) AS total_books_issued
FROM customer c
LEFT JOIN transaction t ON c.customer_id = t.customer_id
GROUP BY c.customer_id, c.customer_name;
SELECT b.book_name, a.author_name, p.publisher_name
FROM books b
JOIN author a ON b.author_id = a.author_id
JOIN publisher p ON b.publisher_id = p.publisher_id;
SELECT b.book_name, g.genre_name,
       (SELECT AVG(rating) 
        FROM genre 
        WHERE genre_id = b.genre_id) AS avg_rating
FROM books b
JOIN genre g ON b.genre_id = g.genre_id;
UPDATE author
SET author_email_id = 'newemail@example.com'
WHERE author_id = 1;

UPDATE staff
SET staf_shift = 'Evening'
WHERE staff_id = 3;

UPDATE fiction
SET instock = FALSE
WHERE f_book_id = 2;

UPDATE library
SET library_address = '456 Elm St'
WHERE library_id = 2;

UPDATE staff_authentication
SET staff_password = 'newpassword'
WHERE staff_id = 1;

UPDATE customer
SET customer_name = 'New Name'
WHERE customer_id = 1;

UPDATE manager
SET manager_contact_number = 999999999
WHERE manager_id = 1;

UPDATE nonfiction
SET edition_of_books = 2
WHERE n_book_id = 1;

UPDATE books
SET genre_id = 3
WHERE book_id = 1;

UPDATE genre
SET number_of_books = 1500
WHERE genre_id = 1;
DELETE FROM nonfiction
WHERE n_book_id = 1;
DELETE FROM author
WHERE author_id = 1;
DELETE FROM staff
WHERE staff_id = 3;
DELETE FROM books
WHERE book_id = 2;
DELETE FROM library
WHERE library_id = 2;
DELETE FROM manager
WHERE manager_id = 1;
DELETE FROM customer
WHERE customer_id = 1;
DELETE FROM transaction
WHERE transaction_id = 1;
DELETE FROM genre
WHERE genre_id = 1;
DELETE FROM fiction
WHERE f_book_id = 1;























