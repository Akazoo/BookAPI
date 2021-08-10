INSERT INTO books
VALUES (null,'Paweł', '12211', 'BooksCorp', 'JAVA', 'online');
INSERT INTO books
VALUES (null, 'Adam', '199765756475', 'BooksInc', 'Python', 'nie istnieje');
CREATE TABLE books
(
    id        bigint auto_increment,
    author    varchar(255)        NOT NULL,
    isbn      varchar(255) UNIQUE NOT NULL,
    publisher varchar(255)        NOT NULL,
    title     varchar(255)        NOT NULL,
    type      varchar(255)        NOT NULL,
    PRIMARY KEY (id)
);
DROP TABLE books;