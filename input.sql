USE `festival_db`;

INSERT INTO tbl_rolle (Rolle)
VALUES ('Sicherheitspersonal'), ('Reinigungspersonal');

INSERT INTO tbl_ort (Wohnort, Strasse, PLZ)
VALUES ('Hamburg', 'Hafenstraße 5', '20457'), ('Frankfurt', 'Bankenviertel 77', '60311');

INSERT INTO tbl_person (Nachname, Vorname, ort_id)
VALUES ('Schneider', 'Klaus', 3), ('Meier', 'Maria', 4);

INSERT INTO tbl_mitarbeiter (primaerrolle_id, sekundaerrolle_id, person_id)
VALUES (3, 4, 3), (4, 3, 4);

INSERT INTO tbl_schicht (Schicht)
VALUES ('Nacht');

INSERT INTO tbl_arbeitsplan (Datum, primaermitarbeiter_id, sekundaermitarbeiter_id, schicht_id, anwesenheit_id)
VALUES ('2023-04-16', 3, 4, 3, 2), ('2023-04-17', 4, 3, 1, 2);

INSERT INTO tbl_kuenstler (Name, Genre, Land, Auftrittstyp)
VALUES ('The Poppers', 'Pop', 'UK', 'Hauptact'), ('The Bluesers', 'Blues', 'Frankreich', 'Vorband');

INSERT INTO tbl_buehne (Buehne)
VALUES ('Buehne_fuer_die_irrelevanten');

INSERT INTO tbl_timeslot (timeslot_id, Anfangszeit, Endzeit)
VALUES (3, '2023-04-14 23:00:00', '2023-04-15 01:00:00'), (4, '2023-04-15 21:00:00', '2023-04-15 23:00:00');

INSERT INTO tbl_zeitplan (kuenstler_id, timeslot_id, buehne_id)
VALUES (3, 3, 3), (4, 4, 2);

INSERT INTO tbl_besucher (person_id)
VALUES (3), (4);

INSERT INTO tbl_ticketberechtigungen (Berechtigung)
VALUES ('Familie'), ('Student');

INSERT INTO tbl_tage (Tag)
VALUES ('Samstag'), ('Sonntag');

INSERT INTO tbl_ticket (besucher_id)
VALUES (3), (4);

INSERT INTO tbl_ticket_ticketberechtigungen (ticket_id, ticketberechtigungen_id)
VALUES (3, 3), (4, 4);

INSERT INTO tbl_tage_ticket (tage_id, ticket_id)
VALUES (3, 3), (4, 4);

INSERT INTO tbl_person_kuenstler (kuenstler_id, person_id)
VALUES (3, 3), (4, 4);

