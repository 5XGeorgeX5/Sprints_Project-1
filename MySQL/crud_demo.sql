START TRANSACTION;

INSERT INTO books(title,author_id,category_id,price,published_year)
VALUES ('The Silent Patient', 3, 2, 15.99, 2019);

COMMIT;
ROLLBACK;

--------------------------

START TRANSACTION;

SELECT * FROM books WHERE book_id = 6; 
SELECT * FROM books;

COMMIT;
ROLLBACK;

--------------------------

START TRANSACTION;

UPDATE books
SET category_id =3, title="The Quiet Witness"
WHERE book_id=6;

COMMIT;
ROLLBACK;

--------------------------

START TRANSACTION;

DELETE FROM books 
WHERE book_id=6;

COMMIT;
ROLLBACK;