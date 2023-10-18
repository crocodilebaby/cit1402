CREATE TRIGGER updateRentalCost
     AFTER UPDATE OF dateBack
        ON rentalContract
  FOR EACH ROW
      WHEN NEW.dateBack IS NOT NULL AND OLD.dateBack IS NULL AND julianday(NEW.dateBack) > julianday(OLD.dateOut)
BEGIN
    UPDATE rentalContract
       SET rentalCost = (
           SELECT round(baseCost + dailyCost * (julianday(NEW.dateBack) - julianday(NEW.dateOut) + 1))
             FROM Phone
                  LEFT JOIN
                  PhoneModel ON Phone.modelNumber = PhoneModel.modelNumber
            WHERE Phone.IMEI = NEW.IMEI
       )
     WHERE customerId = NEW.customerId AND 
           IMEI = NEW.IMEI AND 
           dateOut = NEW.dateOut;
END;