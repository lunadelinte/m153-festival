-- query 1 --


SELECT p.Vorname, p.Nachname, o.Strasse, o.PLZ, o.Wohnort
FROM tbl_besucher b
JOIN tbl_person p ON b.person_id = p.person_id
JOIN tbl_ort o ON p.ort_id = o.ort_id;

-- query 2 --

SELECT p.Vorname, p.Nachname
FROM tbl_ticket t
JOIN tbl_besucher b ON t.besucher_id = b.besucher_id
JOIN tbl_person p ON b.person_id = p.person_id;

-- query 3 --

SELECT Berechtigung
FROM tbl_ticketberechtigungen;

-- query 4 --

SELECT tbl_ticket.ticket_id, tbl_ticketberechtigungen.Berechtigung
FROM tbl_ticket
JOIN tbl_ticket_ticketberechtigungen ON tbl_ticket.ticket_id = tbl_ticket_ticketberechtigungen.ticket_id
JOIN tbl_ticketberechtigungen ON tbl_ticket_ticketberechtigungen.ticketberechtigungen_id = tbl_ticketberechtigungen.ticketberechtigungen_id;

-- query 5 --

SELECT p.Vorname, p.Nachname
FROM tbl_person p
JOIN tbl_besucher b ON p.person_id = b.person_id
JOIN tbl_ticket t ON b.besucher_id = t.besucher_id
JOIN tbl_ticket_ticketberechtigungen tt ON t.ticket_id = tt.ticket_id
JOIN tbl_ticketberechtigungen tb ON tt.ticketberechtigungen_id = tb.ticketberechtigungen_id
WHERE tb.Berechtigung = 'VIP' OR tb.Berechtigung = 'Backstage';




