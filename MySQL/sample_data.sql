use bookbazaar;

-- populate with sample data --
-- Append INSERT statements that add ≥ 3 authors, ≥ 5 books, and ≥ 2 users. --
-- Extra: ≥ 3 categories --

INSERT INTO authors (name,bio)
VALUES 
  ('Agatha Cristie','English author known for her 66 detective novels and 14 short story collections'),
  ('Fyodor Dostoevsky', 'Russian novelist known for Crime and Punishment, The Brothers Karamazov, and other psychological novels.'),
  ('Jane Austen', 'English novelist known for her major works.'),
  ('Arthur Conan Doyle', 'British writer best known for creating the Sherlock Holmes detective series.');
  

INSERT INTO categories (name, description)
VALUES
  ('Detective Fiction', 'Fiction focusing on crime solving, often with a detective protagonist.'),
  ('Psychological Fiction', 'Novels that explore the inner workings of the human mind and psychology.'),
  ('Classic Literature', 'Timeless literary works that have had a profound impact on literature and culture.'),
  ('Mystery', 'Fiction centered around a mystery or puzzle to be solved, often with a twist.');


INSERT INTO books  (title, author_id, category_id, price, published_year)
VALUES 
 ('Murder on the Orient Express', 1, 1, 20.9, 1934),
 ('Crime and Punishment', 2, 2, 30.5, 1966),
 ('Pride and Prejudice', 3, 3, 19.9, 1913),
 ('A Study in Scarlet', 4, 4, 30.5, 1987),
 ('And Then There Were None', 1, 1, 12.9, 1939);
 
 
INSERT INTO users (username, email, password_hash) 
VALUES 
    ('Yasmine', 'yasmine@example.com', SHA2('yasmine21', 256)),
    ('Matthew', 'matthew@example.com', SHA2('mattheww', 256)),
    ('Ahmed', 'ahmed@example.com', SHA2('ahmedd', 256));

