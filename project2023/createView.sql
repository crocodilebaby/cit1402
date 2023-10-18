SELECT 
    rc.customerId,
   CASE 
        WHEN rc.IMEI IS NULL THEN NULL
        ELSE p.modelName
    END AS modelName,
    SUM(julianday(rc.dateBack) - julianday(rc.dateOut) + 1) AS daysRented,
    CASE 
        WHEN strftime('%m', rc.dateBack) BETWEEN '01' AND '06' THEN
            CAST(strftime('%Y', rc.dateBack) - 1 AS TEXT) || '/' || substr(strftime('%Y', rc.dateBack),3)
        ELSE
            strftime('%Y', rc.dateBack) || '/' || substr(CAST(strftime('%Y', rc.dateBack) + 1 AS TEXT),3)
    END AS taxYear,
    SUM(rc.rentalCost) AS rentalCost
FROM 
    rentalContract rc
    LEFT JOIN Phone p ON rc.IMEI = p.IMEI
WHERE 
    rc.dateBack IS NOT NULL
GROUP BY 
    rc.customerId, taxYear, p.modelName;