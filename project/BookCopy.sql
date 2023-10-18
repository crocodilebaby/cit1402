CREATE TABLE BookCopy (
    ISBN       TEXT    NOT NULL,
    copyNumber INTEGER NOT NULL,
    daysLoaned INTEGER,
    FOREIGN KEY (
        ISBN
    )
    REFERENCES BookEdition (ISBN),
    PRIMARY KEY (
        copyNumber,
        ISBN
    )
);