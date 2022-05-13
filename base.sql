-- phpMyAdmin SQL Dump
-- version 5.0.4deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Erstellungszeit: 12. Mai 2022 um 13:33
-- Server-Version: 10.5.15-MariaDB-0+deb11u1
-- PHP-Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `bewerbung`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tbl_bewerber`
--

CREATE TABLE `tbl_bewerber` (
  `ID_nummer` int(11) NOT NULL,
  `name_nach` varchar(20) DEFAULT NULL,
  `name_vor` varchar(30) DEFAULT NULL,
  `stellung` int(11) DEFAULT NULL,
  `datum_start` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `tbl_bewerber`
--

INSERT INTO `tbl_bewerber` (`ID_nummer`, `name_nach`, `name_vor`, `stellung`, `datum_start`) VALUES
(1, 'Pfrang', 'Peter', 1, '2022-08-02'),
(2, 'Wurst', 'Hans', 2, '2022-07-02'),
(3, 'Piel', 'Emma', 2, '2023-07-02'),
(4, 'Doe', 'John', 3, '2023-08-02');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tbl_offene_stellen`
--

CREATE TABLE `tbl_offene_stellen` (
  `ID_nummer` int(11) NOT NULL,
  `art` varchar(20) DEFAULT NULL,
  `stellung` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `tbl_offene_stellen`
--

INSERT INTO `tbl_offene_stellen` (`ID_nummer`, `art`, `stellung`) VALUES
(1, 'Praktikum', 'Fachinformatiker Anwendungsentwicklung'),
(2, 'Werkstudent', 'Fachinformatiker Daten- und Prozessanalyse'),
(3, 'Ausbildung', 'Fachinformatiker Anwendungsentwicklung');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `tbl_bewerber`
--
ALTER TABLE `tbl_bewerber`
  ADD PRIMARY KEY (`ID_nummer`),
  ADD KEY `FK_tbl_bewerber_tbl_offene_stellen` (`stellung`);

--
-- Indizes für die Tabelle `tbl_offene_stellen`
--
ALTER TABLE `tbl_offene_stellen`
  ADD PRIMARY KEY (`ID_nummer`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `tbl_bewerber`
--
ALTER TABLE `tbl_bewerber`
  MODIFY `ID_nummer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `tbl_offene_stellen`
--
ALTER TABLE `tbl_offene_stellen`
  MODIFY `ID_nummer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `tbl_bewerber`
--
ALTER TABLE `tbl_bewerber`
  ADD CONSTRAINT `FK_tbl_bewerber_tbl_offene_stellen` FOREIGN KEY (`stellung`) REFERENCES `tbl_offene_stellen` (`ID_nummer`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




