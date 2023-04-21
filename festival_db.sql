-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 21, 2023 at 03:22 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `festival_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_anwesenheit`
--

CREATE TABLE `tbl_anwesenheit` (
  `anwesenheit_id` int(11) NOT NULL,
  `Anwesenheit` enum('Anwesend','Abwesend') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_anwesenheit`
--

INSERT INTO `tbl_anwesenheit` (`anwesenheit_id`, `Anwesenheit`) VALUES
(1, 'Anwesend'),
(2, 'Abwesend');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_arbeitsplan`
--

CREATE TABLE `tbl_arbeitsplan` (
  `arbeitsplan_id` int(11) NOT NULL,
  `Datum` date DEFAULT NULL,
  `primaermitarbeiter_id` int(11) NOT NULL,
  `sekundaermitarbeiter_id` int(11) NOT NULL,
  `schicht_id` int(11) NOT NULL,
  `anwesenheit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_arbeitsplan`
--

INSERT INTO `tbl_arbeitsplan` (`arbeitsplan_id`, `Datum`, `primaermitarbeiter_id`, `sekundaermitarbeiter_id`, `schicht_id`, `anwesenheit_id`) VALUES
(1, '2023-04-14', 1, 2, 1, 1),
(2, '2023-04-15', 2, 1, 2, 1),
(3, '2023-04-16', 3, 4, 3, 2),
(4, '2023-04-17', 4, 3, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_besucher`
--

CREATE TABLE `tbl_besucher` (
  `besucher_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_besucher`
--

INSERT INTO `tbl_besucher` (`besucher_id`, `person_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_buehne`
--

CREATE TABLE `tbl_buehne` (
  `buehne_id` int(11) NOT NULL,
  `Buehne` enum('Hauptbuehne','Mediumbuehne','Buehne_fuer_die_irrelevanten') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_buehne`
--

INSERT INTO `tbl_buehne` (`buehne_id`, `Buehne`) VALUES
(1, 'Hauptbuehne'),
(2, 'Mediumbuehne'),
(3, 'Buehne_fuer_die_irrelevanten');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kuenstler`
--

CREATE TABLE `tbl_kuenstler` (
  `kuenstler_id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Genre` varchar(45) NOT NULL,
  `Land` varchar(45) NOT NULL,
  `Auftrittstyp` enum('Hauptact','Vorband') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_kuenstler`
--

INSERT INTO `tbl_kuenstler` (`kuenstler_id`, `Name`, `Genre`, `Land`, `Auftrittstyp`) VALUES
(1, 'The Rockers', 'Rock', 'USA', 'Hauptact'),
(2, 'The Jazzers', 'Jazz', 'Deutschland', 'Vorband'),
(3, 'The Poppers', 'Pop', 'UK', 'Hauptact'),
(4, 'The Bluesers', 'Blues', 'Frankreich', 'Vorband');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mitarbeiter`
--

CREATE TABLE `tbl_mitarbeiter` (
  `mitarbeiter_id` int(11) NOT NULL,
  `primaerrolle_id` int(11) NOT NULL,
  `sekundaerrolle_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_mitarbeiter`
--

INSERT INTO `tbl_mitarbeiter` (`mitarbeiter_id`, `primaerrolle_id`, `sekundaerrolle_id`, `person_id`) VALUES
(1, 1, 2, 1),
(2, 2, 1, 2),
(3, 3, 4, 3),
(4, 4, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ort`
--

CREATE TABLE `tbl_ort` (
  `ort_id` int(11) NOT NULL,
  `Wohnort` varchar(45) DEFAULT NULL,
  `Strasse` varchar(45) DEFAULT NULL,
  `PLZ` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_ort`
--

INSERT INTO `tbl_ort` (`ort_id`, `Wohnort`, `Strasse`, `PLZ`) VALUES
(1, 'Berlin', 'Hauptstrasse 1', '10115'),
(2, 'München', 'Schlossallee 99', '80333'),
(3, 'Hamburg', 'Hafenstraße 5', '20457'),
(4, 'Frankfurt', 'Bankenviertel 77', '60311');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_person`
--

CREATE TABLE `tbl_person` (
  `person_id` int(11) NOT NULL,
  `Nachname` varchar(45) DEFAULT NULL,
  `Vorname` varchar(45) DEFAULT NULL,
  `ort_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_person`
--

INSERT INTO `tbl_person` (`person_id`, `Nachname`, `Vorname`, `ort_id`) VALUES
(1, 'Schmidt', 'Max', 1),
(2, 'Müller', 'Lisa', 2),
(3, 'Schneider', 'Klaus', 3),
(4, 'Meier', 'Maria', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_person_kuenstler`
--

CREATE TABLE `tbl_person_kuenstler` (
  `kuenstler_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_person_kuenstler`
--

INSERT INTO `tbl_person_kuenstler` (`kuenstler_id`, `person_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rolle`
--

CREATE TABLE `tbl_rolle` (
  `rolle_id` int(11) NOT NULL,
  `Rolle` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_rolle`
--

INSERT INTO `tbl_rolle` (`rolle_id`, `Rolle`) VALUES
(1, 'Manager'),
(4, 'Reinigungspersonal'),
(3, 'Sicherheitspersonal'),
(2, 'Techniker');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_schicht`
--

CREATE TABLE `tbl_schicht` (
  `schicht_id` int(11) NOT NULL,
  `Schicht` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_schicht`
--

INSERT INTO `tbl_schicht` (`schicht_id`, `Schicht`) VALUES
(1, 'Früh'),
(3, 'Nacht'),
(2, 'Spät');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tage`
--

CREATE TABLE `tbl_tage` (
  `tage_id` int(11) NOT NULL,
  `Tag` enum('Donnerstag','Freitag','Samstag','Sonntag') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_tage`
--

INSERT INTO `tbl_tage` (`tage_id`, `Tag`) VALUES
(1, 'Donnerstag'),
(2, 'Freitag'),
(3, 'Samstag'),
(4, 'Sonntag');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tage_ticket`
--

CREATE TABLE `tbl_tage_ticket` (
  `tage_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_tage_ticket`
--

INSERT INTO `tbl_tage_ticket` (`tage_id`, `ticket_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ticket`
--

CREATE TABLE `tbl_ticket` (
  `ticket_id` int(11) NOT NULL,
  `besucher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_ticket`
--

INSERT INTO `tbl_ticket` (`ticket_id`, `besucher_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ticketberechtigungen`
--

CREATE TABLE `tbl_ticketberechtigungen` (
  `ticketberechtigungen_id` int(11) NOT NULL,
  `Berechtigung` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_ticketberechtigungen`
--

INSERT INTO `tbl_ticketberechtigungen` (`ticketberechtigungen_id`, `Berechtigung`) VALUES
(1, 'Eintritt'),
(2, 'VIP'),
(3, 'Familie'),
(4, 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ticket_ticketberechtigungen`
--

CREATE TABLE `tbl_ticket_ticketberechtigungen` (
  `ticket_id` int(11) NOT NULL,
  `ticketberechtigungen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_ticket_ticketberechtigungen`
--

INSERT INTO `tbl_ticket_ticketberechtigungen` (`ticket_id`, `ticketberechtigungen_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_timeslot`
--

CREATE TABLE `tbl_timeslot` (
  `timeslot_id` int(11) NOT NULL,
  `Anfangszeit` datetime NOT NULL,
  `Endzeit` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_timeslot`
--

INSERT INTO `tbl_timeslot` (`timeslot_id`, `Anfangszeit`, `Endzeit`) VALUES
(1, '2023-04-14 20:00:00', '2023-04-14 22:00:00'),
(2, '2023-04-15 18:00:00', '2023-04-15 20:00:00'),
(3, '2023-04-14 23:00:00', '2023-04-15 01:00:00'),
(4, '2023-04-15 21:00:00', '2023-04-15 23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_zeitplan`
--

CREATE TABLE `tbl_zeitplan` (
  `zeitplan_id` int(11) NOT NULL,
  `kuenstler_id` int(11) NOT NULL,
  `timeslot_id` int(11) NOT NULL,
  `buehne_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_zeitplan`
--

INSERT INTO `tbl_zeitplan` (`zeitplan_id`, `kuenstler_id`, `timeslot_id`, `buehne_id`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_anwesenheit`
--
ALTER TABLE `tbl_anwesenheit`
  ADD PRIMARY KEY (`anwesenheit_id`),
  ADD UNIQUE KEY `Anwesenheit_UNIQUE` (`Anwesenheit`);

--
-- Indexes for table `tbl_arbeitsplan`
--
ALTER TABLE `tbl_arbeitsplan`
  ADD PRIMARY KEY (`arbeitsplan_id`),
  ADD KEY `fk_Arbeitsplan_tbl_mitarbeiter1_idx` (`primaermitarbeiter_id`),
  ADD KEY `fk_Arbeitsplan_Schicht1_idx` (`schicht_id`),
  ADD KEY `fk_Arbeitsplan_Anwesenheit1_idx` (`anwesenheit_id`),
  ADD KEY `fk_Arbeitsplan_tbl_mitarbeiter2_idx` (`sekundaermitarbeiter_id`);

--
-- Indexes for table `tbl_besucher`
--
ALTER TABLE `tbl_besucher`
  ADD PRIMARY KEY (`besucher_id`),
  ADD KEY `fk_tbl_besucher_tbl_person1_idx` (`person_id`);

--
-- Indexes for table `tbl_buehne`
--
ALTER TABLE `tbl_buehne`
  ADD PRIMARY KEY (`buehne_id`);

--
-- Indexes for table `tbl_kuenstler`
--
ALTER TABLE `tbl_kuenstler`
  ADD PRIMARY KEY (`kuenstler_id`);

--
-- Indexes for table `tbl_mitarbeiter`
--
ALTER TABLE `tbl_mitarbeiter`
  ADD PRIMARY KEY (`mitarbeiter_id`),
  ADD KEY `fk_Mitarbeiter_tbl_rolle_idx` (`primaerrolle_id`),
  ADD KEY `fk_Mitarbeiter_tbl_rolle1_idx` (`sekundaerrolle_id`),
  ADD KEY `fk_tbl_mitarbeiter_tbl_person1_idx` (`person_id`);

--
-- Indexes for table `tbl_ort`
--
ALTER TABLE `tbl_ort`
  ADD PRIMARY KEY (`ort_id`);

--
-- Indexes for table `tbl_person`
--
ALTER TABLE `tbl_person`
  ADD PRIMARY KEY (`person_id`),
  ADD KEY `fk_tbl_person_tbl_ort1_idx` (`ort_id`);

--
-- Indexes for table `tbl_person_kuenstler`
--
ALTER TABLE `tbl_person_kuenstler`
  ADD KEY `fk_tbl_person_has_tbl_kuenstler_tbl_kuenstler1_idx` (`kuenstler_id`),
  ADD KEY `fk_tbl_person_has_tbl_kuenstler_tbl_person1_idx` (`person_id`);

--
-- Indexes for table `tbl_rolle`
--
ALTER TABLE `tbl_rolle`
  ADD PRIMARY KEY (`rolle_id`),
  ADD UNIQUE KEY `Rolle_UNIQUE` (`Rolle`);

--
-- Indexes for table `tbl_schicht`
--
ALTER TABLE `tbl_schicht`
  ADD PRIMARY KEY (`schicht_id`),
  ADD UNIQUE KEY `Schicht_UNIQUE` (`Schicht`);

--
-- Indexes for table `tbl_tage`
--
ALTER TABLE `tbl_tage`
  ADD PRIMARY KEY (`tage_id`);

--
-- Indexes for table `tbl_tage_ticket`
--
ALTER TABLE `tbl_tage_ticket`
  ADD KEY `fk_tbl_tage_has_ticket_tbl_tage1_idx` (`tage_id`),
  ADD KEY `fk_tbl_tage_has_ticket_tbl_ticket1_idx` (`ticket_id`);

--
-- Indexes for table `tbl_ticket`
--
ALTER TABLE `tbl_ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `fk_Ticket_tbl_besucher1_idx` (`besucher_id`);

--
-- Indexes for table `tbl_ticketberechtigungen`
--
ALTER TABLE `tbl_ticketberechtigungen`
  ADD PRIMARY KEY (`ticketberechtigungen_id`);

--
-- Indexes for table `tbl_ticket_ticketberechtigungen`
--
ALTER TABLE `tbl_ticket_ticketberechtigungen`
  ADD KEY `fk_tbl_ticket_has_ticketberechtigungen_tbl_ticket1_idx` (`ticket_id`),
  ADD KEY `fk_tbl_ticket_has_ticketberechtigungen_tbl_ticketberechtigu_idx` (`ticketberechtigungen_id`);

--
-- Indexes for table `tbl_timeslot`
--
ALTER TABLE `tbl_timeslot`
  ADD PRIMARY KEY (`timeslot_id`);

--
-- Indexes for table `tbl_zeitplan`
--
ALTER TABLE `tbl_zeitplan`
  ADD PRIMARY KEY (`zeitplan_id`),
  ADD UNIQUE KEY `unique_buehne` (`timeslot_id`),
  ADD KEY `fk_tbl_zeitplan_tbl_kuenstler1_idx` (`kuenstler_id`),
  ADD KEY `fk_tbl_zeitplan_tbl_timeslot1_idx` (`timeslot_id`),
  ADD KEY `unique_kuenstler` (`kuenstler_id`,`timeslot_id`),
  ADD KEY `fk_tbl_zeitplan_tbl_buehne1_idx` (`buehne_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_anwesenheit`
--
ALTER TABLE `tbl_anwesenheit`
  MODIFY `anwesenheit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_arbeitsplan`
--
ALTER TABLE `tbl_arbeitsplan`
  MODIFY `arbeitsplan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_besucher`
--
ALTER TABLE `tbl_besucher`
  MODIFY `besucher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_buehne`
--
ALTER TABLE `tbl_buehne`
  MODIFY `buehne_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_kuenstler`
--
ALTER TABLE `tbl_kuenstler`
  MODIFY `kuenstler_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_mitarbeiter`
--
ALTER TABLE `tbl_mitarbeiter`
  MODIFY `mitarbeiter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_ort`
--
ALTER TABLE `tbl_ort`
  MODIFY `ort_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_person`
--
ALTER TABLE `tbl_person`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_rolle`
--
ALTER TABLE `tbl_rolle`
  MODIFY `rolle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_schicht`
--
ALTER TABLE `tbl_schicht`
  MODIFY `schicht_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_tage`
--
ALTER TABLE `tbl_tage`
  MODIFY `tage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_ticket`
--
ALTER TABLE `tbl_ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_ticketberechtigungen`
--
ALTER TABLE `tbl_ticketberechtigungen`
  MODIFY `ticketberechtigungen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_zeitplan`
--
ALTER TABLE `tbl_zeitplan`
  MODIFY `zeitplan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_arbeitsplan`
--
ALTER TABLE `tbl_arbeitsplan`
  ADD CONSTRAINT `fk_Arbeitsplan_Anwesenheit1` FOREIGN KEY (`anwesenheit_id`) REFERENCES `tbl_anwesenheit` (`anwesenheit_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Arbeitsplan_Schicht1` FOREIGN KEY (`schicht_id`) REFERENCES `tbl_schicht` (`schicht_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Arbeitsplan_tbl_mitarbeiter1` FOREIGN KEY (`primaermitarbeiter_id`) REFERENCES `tbl_mitarbeiter` (`mitarbeiter_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Arbeitsplan_tbl_mitarbeiter2` FOREIGN KEY (`sekundaermitarbeiter_id`) REFERENCES `tbl_mitarbeiter` (`mitarbeiter_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_besucher`
--
ALTER TABLE `tbl_besucher`
  ADD CONSTRAINT `fk_tbl_besucher_tbl_person1` FOREIGN KEY (`person_id`) REFERENCES `tbl_person` (`person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_mitarbeiter`
--
ALTER TABLE `tbl_mitarbeiter`
  ADD CONSTRAINT `fk_Mitarbeiter_tbl_rolle` FOREIGN KEY (`primaerrolle_id`) REFERENCES `tbl_rolle` (`rolle_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Mitarbeiter_tbl_rolle1` FOREIGN KEY (`sekundaerrolle_id`) REFERENCES `tbl_rolle` (`rolle_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_mitarbeiter_tbl_person1` FOREIGN KEY (`person_id`) REFERENCES `tbl_person` (`person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_person`
--
ALTER TABLE `tbl_person`
  ADD CONSTRAINT `fk_tbl_person_tbl_ort1` FOREIGN KEY (`ort_id`) REFERENCES `tbl_ort` (`ort_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_person_kuenstler`
--
ALTER TABLE `tbl_person_kuenstler`
  ADD CONSTRAINT `fk_tbl_person_has_tbl_kuenstler_tbl_kuenstler1` FOREIGN KEY (`kuenstler_id`) REFERENCES `tbl_kuenstler` (`kuenstler_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_person_has_tbl_kuenstler_tbl_person1` FOREIGN KEY (`person_id`) REFERENCES `tbl_person` (`person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_tage_ticket`
--
ALTER TABLE `tbl_tage_ticket`
  ADD CONSTRAINT `fk_tbl_tage_has_ticket_tbl_tage1` FOREIGN KEY (`tage_id`) REFERENCES `tbl_tage` (`tage_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_tage_has_ticket_tbl_ticket1` FOREIGN KEY (`ticket_id`) REFERENCES `tbl_ticket` (`ticket_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_ticket`
--
ALTER TABLE `tbl_ticket`
  ADD CONSTRAINT `fk_Ticket_tbl_besucher1` FOREIGN KEY (`besucher_id`) REFERENCES `tbl_besucher` (`besucher_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_ticket_ticketberechtigungen`
--
ALTER TABLE `tbl_ticket_ticketberechtigungen`
  ADD CONSTRAINT `fk_tbl_ticket_has_ticketberechtigungen_tbl_ticket1` FOREIGN KEY (`ticket_id`) REFERENCES `tbl_ticket` (`ticket_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_ticket_has_ticketberechtigungen_tbl_ticketberechtigung1` FOREIGN KEY (`ticketberechtigungen_id`) REFERENCES `tbl_ticketberechtigungen` (`ticketberechtigungen_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_zeitplan`
--
ALTER TABLE `tbl_zeitplan`
  ADD CONSTRAINT `fk_tbl_zeitplan_tbl_buehne1` FOREIGN KEY (`buehne_id`) REFERENCES `tbl_buehne` (`buehne_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_zeitplan_tbl_kuenstler1` FOREIGN KEY (`kuenstler_id`) REFERENCES `tbl_kuenstler` (`kuenstler_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_zeitplan_tbl_timeslot1` FOREIGN KEY (`timeslot_id`) REFERENCES `tbl_timeslot` (`timeslot_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
