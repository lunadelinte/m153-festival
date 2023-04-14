-- query 1 --

SELECT Name
FROM tbl_kuenstler;


-- query 2 --

SELECT k.Name
FROM tbl_kuenstler k
JOIN tbl_zeitplan z ON k.Kuenstler_ID = z.Kuenstler_ID
WHERE z.Datum = '2023-07-15';


-- query 3 --

SELECT Startzeit, Endzeit
FROM tbl_zeitplan
WHERE Kuenstler_ID = 1 AND Datum = '2023-07-15';

-- query 4 --

SELECT b.Name
FROM tbl_buehne b
JOIN tbl_zeitplan z ON b.Buehne_ID = z.Buehne_ID
WHERE z.Kuenstler_ID = 1 AND z.Datum = '2023-07-15';


-- query 5 --

SELECT k.Name, z.Datum, z.Startzeit, z.Endzeit
FROM tbl_kuenstler k
JOIN tbl_zeitplan z ON k.Kuenstler_ID = z.Kuenstler_ID
JOIN tbl_buehne b ON z.Buehne_ID = b.Buehne_ID
WHERE b.Name = 'Main Stage';
