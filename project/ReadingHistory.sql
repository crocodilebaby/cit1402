CREATE VIEW ReadingHistory AS
    SELECT loan.clientId AS clientId,
           CAST (substr(loan.dateOut, 1, 4) AS INTEGER) AS yr,
           bookedition.genre,
           count(genre) AS numLoans
      FROM loan
           INNER JOIN
           bookedition ON loan.ISBN = bookedition.ISBN
     GROUP BY genre,
              yr,
              clientId;
