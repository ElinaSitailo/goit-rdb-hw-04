USE LibraryManagement;

-- authors
INSERT INTO authors (author_name) VALUES
('J.K. Rowling'),
('George Orwell'),
('J.R.R. Tolkien'),
('Agatha Christie'),
('Stephen King');

-- genres
INSERT INTO genres (genre_name) VALUES
('Fantasy'),
('Dystopian'),
('Adventure'),
('Detective'),
('Horror');

-- users
INSERT INTO users (username, email) VALUES
('john_doe', 'john@example.com'),
('alice_smith', 'alice@example.com'),
('bob_jones', 'bob@example.com'),
('emma_white', 'emma@example.com'),
('mike_brown', 'mike@example.com');

-- books (author_id і genre_id мають існувати!)
INSERT INTO books (title, publication_year, author_id, genre_id) VALUES
('Harry Potter and the Sorcerer''s Stone', 1997, 1, 1),
('1984', 1949, 2, 2),
('The Hobbit', 1937, 3, 3),
('Murder on the Orient Express', 1934, 4, 4),
('The Shining', 1977, 5, 5);

-- borrowed_books
INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date) VALUES
(1, 1, '2024-01-10', '2024-01-20'),
(2, 2, '2024-02-01', '2024-02-15'),
(3, 3, '2024-03-05', '2024-03-18'),
(4, 4, '2024-04-12', '2024-04-25'),
(5, 5, '2024-05-20', NULL);