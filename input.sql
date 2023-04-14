USE `festival_db`;

INSERT INTO tbl_rolle (Rolle)
VALUES ('Manager'), ('Techniker');

INSERT INTO tbl_ort (Wohnort, Strasse, PLZ)
VALUES ('Berlin', 'Hauptstrasse 1', '10115'), ('München', 'Schlossallee 99', '80333');

INSERT INTO tbl_person (Nachname, Vorname, ort_id)
VALUES ('Schmidt', 'Max', 1), ('Müller', 'Lisa', 2);

INSERT INTO tbl_mitarbeiter (primaerrolle_id, sekundaerrolle_id, person_id)
VALUES (1, 2, 1), (2, 1, 2);

INSERT INTO tbl_schicht (Schicht)
VALUES ('Früh'), ('Spät');

INSERT INTO tbl_anwesenheit (Anwesenheit)
VALUES ('Anwesend'), ('Abwesend');

INSERT INTO tbl_arbeitsplan (Datum, primaermitarbeiter_id, sekundaermitarbeiter_id, schicht_id, anwesenheit_id)
VALUES ('2023-04-14', 1, 2, 1, 1), ('2023-04-15', 2, 1, 2, 1);

INSERT INTO tbl_kuenstler (Name, Genre, Land, Auftrittstyp)
VALUES ('The Rockers', 'Rock', 'USA', 'Hauptact'), ('The Jazzers', 'Jazz', 'Deutschland', 'Vorband');

INSERT INTO tbl_buehne (Buehne)
VALUES ('Hauptbuehne'), ('Mediumbuehne');

INSERT INTO tbl_timeslot (timeslot_id, Anfangszeit, Endzeit)
VALUES (1, '2023-04-14 20:00:00', '2023-04-14 22:00:00'), (2, '2023-04-15 18:00:00', '2023-04-15 20:00:00');

INSERT INTO tbl_zeitplan (kuenstler_id, timeslot_id, buehne_id)
VALUES (1, 1, 1), (2, 2, 2);

INSERT INTO tbl_besucher (person_id)
VALUES (1), (2);

INSERT INTO tbl_ticketberechtigungen (Berechtigung)
VALUES ('Eintritt'), ('VIP');

INSERT INTO tbl_tage (Tag)
VALUES ('Donnerstag'), ('Freitag');

INSERT INTO tbl_ticket (besucher_id)
VALUES (1), (2);

INSERT INTO tbl_ticket_ticketberechtigungen (ticket_id, ticketberechtigungen_id)
VALUES (1, 1), (2, 2);

INSERT INTO tbl_tage_ticket (tage_id, ticket_id)
VALUES (1, 1), (2, 2);

INSERT INTO tbl_person_kuenstler (kuenstler_id, person_id)
VALUES (1, 1), (2, 2);
