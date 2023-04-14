-- query 1 --

SELECT Name, Genre FROM tbl_kuenstler;


-- query 2 --

SELECT t.Anfangszeit, t.Endzeit, k.Name, b.Buehne 
FROM tbl_zeitplan z
JOIN tbl_timeslot t ON t.timeslot_id = z.timeslot_id
JOIN tbl_kuenstler k ON k.kuenstler_id = z.kuenstler_id
JOIN tbl_buehne b ON b.buehne_id = z.buehne_id
JOIN tbl_tage_ticket tt ON tt.ticket_id = z.ticket_id
JOIN tbl_tage ta ON ta.tage_id = tt.tage_id
WHERE ta.Tag = 'Friday';


-- query 3 --

SELECT ta.Tag, k.Name
FROM tbl_zeitplan z
JOIN tbl_kuenstler k ON k.kuenstler_id = z.kuenstler_id
JOIN tbl_buehne b ON b.buehne_id = z.buehne_id
JOIN tbl_tage_ticket tt ON tt.ticket_id = z.ticket_id
JOIN tbl_tage ta ON ta.tage_id = tt.tage_id
WHERE k.Auftrittstyp = 'Hauptact';


-- query 4 --

SELECT b.Buehne, k.Name
FROM tbl_zeitplan z
JOIN tbl_kuenstler k ON k.kuenstler_id = z.kuenstler_id
JOIN tbl_buehne b ON b.buehne_id = z.buehne_id;



-- query 5 --

SELECT Land, COUNT(*) AS Number_of_artists 
FROM tbl_kuenstler
GROUP BY Land;
