CREATE TRIGGER Updatetime
         AFTER UPDATE OF dateBack
            ON loan
      FOR EACH ROW
BEGIN
    UPDATE bookCopy
       SET daysloaned = julianday(new.dateBack) - julianday(old.dateOut) + 1
     WHERE (old.ISBN = bookcopy.ISBN AND 
            old.copyNumber = bookcopy.copyNumber);
END;