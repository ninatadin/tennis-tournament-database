-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2023 at 08:40 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teniskiturnir`
--

-- --------------------------------------------------------

--
-- Table structure for table `drzava`
--

CREATE TABLE `drzava` (
  `idDrzave` int(10) UNSIGNED NOT NULL,
  `naziv` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

--
-- Dumping data for table `drzava`
--

INSERT INTO `drzava` (`idDrzave`, `naziv`) VALUES
(1, 'Grcka'),
(2, 'Italija'),
(3, 'Spanija'),
(4, 'Rusija'),
(5, 'Norveska'),
(6, 'SAD'),
(7, 'Srbija'),
(8, 'Kanada'),
(9, 'Austrija'),
(10, 'Bugarska'),
(11, 'Nemacka');

-- --------------------------------------------------------

--
-- Table structure for table `igra`
--

CREATE TABLE `igra` (
  `brojLegitimacije` varchar(10) NOT NULL,
  `rbMeca` tinyint(3) UNSIGNED NOT NULL,
  `asevi` tinyint(3) UNSIGNED DEFAULT NULL,
  `dupleGreske` tinyint(3) UNSIGNED DEFAULT NULL,
  `prviServisPogodjen` decimal(10,0) NOT NULL,
  `spaseneBreakLopte` tinyint(3) UNSIGNED DEFAULT NULL,
  `osvojeneBreakLopte` tinyint(3) UNSIGNED DEFAULT NULL,
  `winneri` tinyint(3) UNSIGNED DEFAULT NULL,
  `neprisiljeneGreske` tinyint(3) UNSIGNED NOT NULL,
  `poeniSaMreze` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

--
-- Dumping data for table `igra`
--

INSERT INTO `igra` (`brojLegitimacije`, `rbMeca`, `asevi`, `dupleGreske`, `prviServisPogodjen`, `spaseneBreakLopte`, `osvojeneBreakLopte`, `winneri`, `neprisiljeneGreske`, `poeniSaMreze`) VALUES
('can1', 1, 11, 3, '58', 9, 5, 29, 41, 14),
('rus1', 1, 9, 6, '63', 1, 5, 37, 46, 20),
('aut1', 2, 2, 2, '73', 8, 2, 25, 41, 11),
('bul1', 2, 10, 1, '68', 5, 7, 25, 18, 10),
('srb1', 3, 1, 2, '70', 10, 2, 30, 32, 14),
('ger1', 3, 15, 3, '72', 1, 4, 44, 33, 23),
('srb2', 4, 10, 3, '68', 2, 3, 41, 25, 11),
('can2', 4, 26, 3, '61', 8, 1, 50, 35, 12),
('sad1', 5, 1, 2, '60', 1, 1, 21, 23, 16),
('rus2', 5, 7, 2, '65', NULL, 6, 29, 15, 7),
('rus3', 6, 4, NULL, '77', 1, 4, 22, 17, 9),
('nor1', 6, 5, 2, '61', 6, 2, 20, 21, 5),
('ita1', 7, 7, 3, '56', 13, 2, 32, 35, 5),
('esp1', 7, 6, 3, '60', 4, 6, 24, 20, 12),
('gre1', 8, 8, 5, '72', 2, 3, 39, 26, 7),
('ita2', 8, NULL, 6, '65', 5, 2, 38, 49, 7),
('bul1', 9, 9, 7, '64', 3, 4, 21, 34, 5),
('rus1', 9, 9, 6, '55', 10, 8, 34, 44, 10),
('srb2', 10, 23, 5, '73', 9, 6, 48, 56, 20),
('ger1', 10, 21, 5, '64', 3, 3, 45, 38, 16),
('rus3', 11, 8, 3, '47', 6, 1, 20, 39, 9),
('rus2', 11, 14, 4, '60', 4, 5, 30, 33, 6),
('gre1', 12, 17, NULL, '62', 1, 2, 49, 38, 23),
('esp1', 12, 15, 2, '78', 3, 3, 58, 42, 21),
('srb2', 13, 17, 2, '68', 3, 6, 30, 14, 7),
('rus1', 13, 6, 2, '52', 1, 2, 24, 30, 14),
('rus2', 14, 17, 2, '68', 2, 5, 46, 21, 7),
('gre1', 14, 3, 3, '69', 4, 1, 19, 30, 24),
('srb2', 15, 3, 2, '67', 2, 7, 20, 17, 16),
('rus2', 15, 6, 4, '64', 4, 2, 24, 30, 8);

-- --------------------------------------------------------

--
-- Table structure for table `mec`
--

CREATE TABLE `mec` (
  `rbMeca` tinyint(3) UNSIGNED NOT NULL,
  `datum` date NOT NULL,
  `vreme` time NOT NULL,
  `fazaTakmicenja` varchar(30) NOT NULL,
  `domacin` varchar(10) NOT NULL,
  `gost` varchar(10) NOT NULL,
  `setDomacin` tinyint(3) UNSIGNED NOT NULL,
  `setGost` tinyint(3) UNSIGNED NOT NULL,
  `brSudije` int(10) UNSIGNED NOT NULL,
  `idTerena` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

--
-- Dumping data for table `mec`
--

INSERT INTO `mec` (`rbMeca`, `datum`, `vreme`, `fazaTakmicenja`, `domacin`, `gost`, `setDomacin`, `setGost`, `brSudije`, `idTerena`) VALUES
(1, '2021-02-14', '02:40:00', 'osmina finala', 'can1', 'rus1', 2, 3, 1, 33),
(2, '2021-02-14', '06:05:00', 'osmina finala', 'aut1', 'bul1', 0, 3, 4, 11),
(3, '2021-02-14', '08:45:00', 'osmina finala', 'srb1', 'ger1', 0, 3, 3, 33),
(4, '2021-02-14', '11:30:00', 'osmina finala', 'srb2', 'can2', 3, 1, 2, 11),
(5, '2021-02-15', '03:05:00', 'osmina finala', 'sad1', 'rus2', 0, 3, 2, 22),
(6, '2021-02-15', '04:55:00', 'osmina finala', 'rus3', 'nor1', 2, 0, 3, 33),
(7, '2021-02-15', '05:25:00', 'osmina finala', 'ita1', 'esp1', 0, 3, 1, 11),
(8, '2021-02-15', '10:30:00', 'osmina finala', 'gre1', 'ita2', 3, 0, 4, 22),
(9, '2021-02-16', '05:15:00', 'cetvrtina finala', 'bul1', 'rus1', 1, 3, 3, 11),
(10, '2021-02-16', '11:05:00', 'cetvrtina finala', 'srb2', 'ger1', 3, 1, 2, 11),
(11, '2021-02-17', '05:30:00', 'cetvrtina finala', 'rus3', 'rus2', 0, 3, 1, 11),
(12, '2021-02-17', '09:45:00', 'cetvrtina finala', 'gre1', 'esp1', 3, 2, 4, 11),
(13, '2021-02-18', '09:45:00', 'polufinale', 'srb2', 'rus1', 3, 0, 2, 11),
(14, '2021-02-19', '09:45:00', 'polufinale', 'rus2', 'gre1', 3, 0, 4, 11),
(15, '2021-02-21', '09:45:00', 'finale', 'srb2', 'rus2', 3, 0, 3, 11);

-- --------------------------------------------------------

--
-- Table structure for table `sudija`
--

CREATE TABLE `sudija` (
  `brSudije` int(10) UNSIGNED NOT NULL,
  `imeSudije` varchar(20) NOT NULL,
  `prezimeSudije` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

--
-- Dumping data for table `sudija`
--

INSERT INTO `sudija` (`brSudije`, `imeSudije`, `prezimeSudije`) VALUES
(1, 'Jack', 'Gardner'),
(2, 'Carlos', 'Bernandes'),
(3, 'Mohamed', 'Lajani'),
(4, 'Lars', 'Graf');

-- --------------------------------------------------------

--
-- Table structure for table `teniser`
--

CREATE TABLE `teniser` (
  `brojLegitimacije` varchar(10) NOT NULL,
  `ime` varchar(20) NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `drzavljanstvo` int(10) UNSIGNED NOT NULL,
  `trenutnaPozicija` smallint(5) UNSIGNED NOT NULL,
  `najboljaPozicija` smallint(5) UNSIGNED NOT NULL,
  `ukupnoPobeda` smallint(5) UNSIGNED NOT NULL,
  `ukupnoPoraza` smallint(5) UNSIGNED NOT NULL,
  `grendSlemTitule` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

--
-- Dumping data for table `teniser`
--

INSERT INTO `teniser` (`brojLegitimacije`, `ime`, `prezime`, `drzavljanstvo`, `trenutnaPozicija`, `najboljaPozicija`, `ukupnoPobeda`, `ukupnoPoraza`, `grendSlemTitule`) VALUES
('aut1', 'Dominic', 'Thiem', 9, 15, 3, 300, 157, 1),
('bul1', 'Grigor', 'Dimitrov', 10, 28, 3, 322, 212, NULL),
('can1', 'Felix', 'Auger-Aliassime', 8, 11, 11, 95, 71, NULL),
('can2', 'Milos', 'Raonic', 8, 70, 3, 365, 170, NULL),
('esp1', 'Rafael', 'Nadal', 3, 6, 1, 1028, 209, 20),
('ger1', 'Alexander', 'Zverev', 11, 3, 3, 310, 140, NULL),
('gre1', 'Stefanos', 'Tsitsipas', 1, 4, 3, 188, 95, NULL),
('ita1', 'Fabio', 'Fognini', 2, 37, 9, 364, 315, NULL),
('ita2', 'Mateo', 'Berettini', 2, 7, 7, 112, 63, NULL),
('nor1', 'Casper', 'Ruud', 5, 8, 8, 117, 70, NULL),
('rus1', 'Aslan', 'Karatsev', 4, 18, 16, 37, 29, NULL),
('rus2', 'Danil', 'Medvedev', 4, 2, 2, 217, 99, 1),
('rus3', 'Andrey', 'Rublev', 4, 5, 5, 181, 111, NULL),
('sad1', 'Mackenzie', 'McDonald', 6, 55, 54, 42, 57, NULL),
('srb1', 'Dusan', 'Lajovic', 7, 33, 23, 149, 188, NULL),
('srb2', 'Novak', 'Djokovic', 7, 1, 1, 989, 199, 20);

-- --------------------------------------------------------

--
-- Table structure for table `teren`
--

CREATE TABLE `teren` (
  `idTerena` smallint(5) UNSIGNED NOT NULL,
  `nazivTerena` varchar(30) NOT NULL,
  `kapacitet` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

--
-- Dumping data for table `teren`
--

INSERT INTO `teren` (`idTerena`, `nazivTerena`, `kapacitet`) VALUES
(11, 'Rod Laver Arena', 14820),
(22, 'Margaret Kort Arena', 7500),
(33, 'Melburn Arena', 10500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drzava`
--
ALTER TABLE `drzava`
  ADD PRIMARY KEY (`idDrzave`);

--
-- Indexes for table `igra`
--
ALTER TABLE `igra`
  ADD KEY `fkbrLegitimacijeigra` (`brojLegitimacije`),
  ADD KEY `fkrbMecaigra` (`rbMeca`);

--
-- Indexes for table `mec`
--
ALTER TABLE `mec`
  ADD PRIMARY KEY (`rbMeca`),
  ADD KEY `fkbrsudijemec` (`brSudije`),
  ADD KEY `fkidterenamec` (`idTerena`);

--
-- Indexes for table `sudija`
--
ALTER TABLE `sudija`
  ADD PRIMARY KEY (`brSudije`);

--
-- Indexes for table `teniser`
--
ALTER TABLE `teniser`
  ADD PRIMARY KEY (`brojLegitimacije`),
  ADD KEY `fkdrzavljanstvoteniser` (`drzavljanstvo`);

--
-- Indexes for table `teren`
--
ALTER TABLE `teren`
  ADD PRIMARY KEY (`idTerena`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `igra`
--
ALTER TABLE `igra`
  ADD CONSTRAINT `fkbrLegitimacijeigra` FOREIGN KEY (`brojLegitimacije`) REFERENCES `teniser` (`brojLegitimacije`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fkrbMecaigra` FOREIGN KEY (`rbMeca`) REFERENCES `mec` (`rbMeca`) ON UPDATE CASCADE;

--
-- Constraints for table `mec`
--
ALTER TABLE `mec`
  ADD CONSTRAINT `fkbrsudijemec` FOREIGN KEY (`brSudije`) REFERENCES `sudija` (`brSudije`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fkidterenamec` FOREIGN KEY (`idTerena`) REFERENCES `teren` (`idTerena`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `teniser`
--
ALTER TABLE `teniser`
  ADD CONSTRAINT `fkdrzavljanstvoteniser` FOREIGN KEY (`drzavljanstvo`) REFERENCES `drzava` (`idDrzave`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
