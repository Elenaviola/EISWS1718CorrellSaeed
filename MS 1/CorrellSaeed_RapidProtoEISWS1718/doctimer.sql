-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 10. Nov 2017 um 16:17
-- Server-Version: 10.1.16-MariaDB
-- PHP-Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `doctimer`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `vorname` varchar(50) NOT NULL,
  `geburtsdatum` date NOT NULL,
  `krankenkasse` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `patient`
--

INSERT INTO `patient` (`patient_id`, `name`, `vorname`, `geburtsdatum`, `krankenkasse`) VALUES
(31, 'Kamille', 'Kamilla', '0000-00-00', 'AOK'),
(32, 'Rose', 'Rosa', '0000-00-00', 'BARMER'),
(33, 'Salbei', 'Sam', '0000-00-00', 'TK');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `praxis`
--

CREATE TABLE `praxis` (
  `praxis_id` int(100) NOT NULL,
  `praxisname` varchar(50) NOT NULL,
  `praxisart` varchar(50) NOT NULL,
  `anschrift` varchar(100) NOT NULL,
  `PLZ` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `praxis`
--

INSERT INTO `praxis` (`praxis_id`, `praxisname`, `praxisart`, `anschrift`, `PLZ`) VALUES
(21, 'Dr. Doma', 'Hausarzt', 'Elfenstr.12 Gummersbach', 51643),
(22, 'Dr. Bear', 'Zahnarzt', 'Bärenstr. 2 Wasserburg', 83512),
(23, 'Dr. Michel', 'Zahnarzt', 'Feigenstr. 4 Göttingen', 34522);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `termin`
--

CREATE TABLE `termin` (
  `termin_id` int(100) NOT NULL,
  `terminart` varchar(50) NOT NULL,
  `dauer` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `termin`
--

INSERT INTO `termin` (`termin_id`, `terminart`, `dauer`) VALUES
(11, 'Sprechstunde', 15),
(12, 'Impfung', 20),
(13, 'Massage', 40);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

CREATE TABLE `slots` (
  `praxis_id` int(100) NOT NULL,
  `datum` date NOT NULL,
  `uhrzeit` time NOT NULL,
  `terminart` varchar(100) NOT NULL,
  `dauer` int(10) NOT NULL
  `name` varchar(50) NOT NULL,
  `start` timestamp NOT NULL,
  `ende` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
