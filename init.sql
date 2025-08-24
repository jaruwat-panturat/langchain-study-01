CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    isbn VARCHAR(13),
    published_year INTEGER,
    genre VARCHAR(100)
);

INSERT INTO books (title, author, isbn, published_year, genre) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', '9780743273565', 1925, 'Fiction'),
('To Kill a Mockingbird', 'Harper Lee', '9780061120084', 1960, 'Fiction'),
('1984', 'George Orwell', '9780451524935', 1949, 'Dystopian'),
('Pride and Prejudice', 'Jane Austen', '9780141439518', 1813, 'Romance'),
('The Catcher in the Rye', 'J.D. Salinger', '9780316769174', 1951, 'Fiction');