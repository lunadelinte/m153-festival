USE festival_db;

-- query 1 --

SELECT p.Nachname, p.Vorname, r1.Rolle AS primaerrolle, r2.Rolle AS sekundaerrolle
FROM tbl_mitarbeiter m
JOIN tbl_person p ON m.person_id = p.person_id
JOIN tbl_rolle r1 ON m.primaerrolle_id = r1.rolle_id
JOIN tbl_rolle r2 ON m.sekundaerrolle_id = r2.rolle_id;

-- query 2 --


SELECT p.Nachname, p.Vorname, r1.Rolle AS primaerrolle, r2.Rolle AS sekundaerrolle, o.Strasse, o.PLZ, o.Wohnort
FROM tbl_mitarbeiter m
JOIN tbl_person p ON m.person_id = p.person_id
JOIN tbl_rolle r1 ON m.primaerrolle_id = r1.rolle_id
JOIN tbl_rolle r2 ON m.sekundaerrolle_id = r2.rolle_id
JOIN tbl_ort o ON p.ort_id = o.ort_id;


-- query 3 ---

SELECT p.Nachname, p.Vorname, r1.Rolle AS primaerrolle, r2.Rolle AS sekundaerrolle, s.Schicht, a.Datum
FROM tbl_arbeitsplan a
JOIN tbl_mitarbeiter m1 ON a.primaermitarbeiter_id = m1.mitarbeiter_id
JOIN tbl_mitarbeiter m2 ON a.sekundaermitarbeiter_id = m2.mitarbeiter_id
JOIN tbl_person p ON m1.person_id = p.person_id
JOIN tbl_rolle r1 ON m1.primaerrolle_id = r1.rolle_id
JOIN tbl_rolle r2 ON m1.sekundaerrolle_id = r2.rolle_id
JOIN tbl_schicht s ON a.schicht_id = s.schicht_id;



-- query 4 --

SELECT s.Schicht, COUNT(*) AS Anzahl_Mitarbeiter
FROM tbl_arbeitsplan a
JOIN tbl_schicht s ON a.schicht_id = s.schicht_id
GROUP BY s.Schicht;

-- query 5 --


SELECT s.Schicht, an.Anwesenheit, COUNT(*) AS Anzahl_Mitarbeiter
FROM tbl_arbeitsplan a
JOIN tbl_schicht s ON a.schicht_id = s.schicht_id
JOIN tbl_anwesenheit an ON a.anwesenheit_id = an.anwesenheit_id
GROUP BY s.Schicht, an.Anwesenheit;
