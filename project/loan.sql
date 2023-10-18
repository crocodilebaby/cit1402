CREATE TABLE loan (
    clientId   INTEGERY,
    ISBN       TEXT,
    copyNumber INTEGER,
    dateOut    TEXT,
    dateBack   TEXT,
    FOREIGN KEY (
        clientId
    )
    REFERENCES Client (clientId) ON DELETE SET NULL,
    FOREIGN KEY (
        ISBN,
        copyNumber
    )
    REFERENCES BookCopy (ISBN,
    copyNumber) 
);
