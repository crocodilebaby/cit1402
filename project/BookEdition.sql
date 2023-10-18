CREATE TABLE BookEdition (
    ISBN           TEXT   PRIMARY KEY  
                            NOT NULL,
    title           TEXT,
    author          TEXT,
    publicationDate INTEGER,
    genre           TEXT,
    CHECK (abs(isbn) <> 0.0)
    CHECK(ISBN GLOB '[0-9][0-9][0-9][0-9][0-9]')
    CHECK(length(isbn) == 5)
    check (SUBSTR(ISBN, 5, 1) + 0 = ( 
     3*SUBSTR(ISBN, 1, 1) + 7 * SUBSTR(ISBN, 2, 1) +
      3*SUBSTR(ISBN, 3, 1) + 7 * SUBSTR(ISBN, 4, 1)
    ) % 10));