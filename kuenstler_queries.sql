-- query 1 --

SELECT Name, Genre FROM tbl_kuenstler;


-- query 2 --

SELECT t.Anfangszeit, t.Endzeit, k.Name, b.Buehne 
FROM tbl_zeitplan z
JOIN tbl_timeslot t ON t.timeslot_id = z.timeslot_id
JOIN tbl_kuenstler k ON k.kuenstler_id = z.kuenstler_id
JOIN tbl_buehne b ON b.buehne_id = z.buehne_id

-- query 3 --

SELECT t.Anfangszeit,t.Endzeit, k.Name, b.Buehne
FROM tbl_zeitplan z
JOIN tbl_timeslot t ON t.timeslot_id = z.timeslot_id
JOIN tbl_kuenstler k ON k.kuenstler_id = z.kuenstler_id
JOIN tbl_buehne b ON b.buehne_id = z.buehne_id;


-- query 4 --

SELECT b.Buehne, k.Name
FROM tbl_zeitplan z
JOIN tbl_kuenstler k ON k.kuenstler_id = z.kuenstler_id
JOIN tbl_buehne b ON b.buehne_id = z.buehne_id;


-- query 5 --

SELECT Land, COUNT(*) AS Number_of_artists 
FROM tbl_kuenstler
GROUP BY Land;
