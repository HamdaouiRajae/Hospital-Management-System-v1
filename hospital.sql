-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  lun. 11 mai 2020 à 15:52
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `hospital`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin'),
('BOUJRAF', 'BOUJRAF'),
('HAMDAOUI', 'HAMDAOUI');

-- --------------------------------------------------------

--
-- Structure de la table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `dName` varchar(255) NOT NULL,
  `pName` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `appointment`
--

INSERT INTO `appointment` (`dName`, `pName`, `room`) VALUES
('ali', 'kosof', '900'),
('samir', 'hamim', '902');

-- --------------------------------------------------------

--
-- Structure de la table `covids`
--

DROP TABLE IF EXISTS `covids`;
CREATE TABLE IF NOT EXISTS `covids` (
  `count` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(10) NOT NULL,
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `disease` varchar(20) NOT NULL,
  `room` int(11) NOT NULL,
  PRIMARY KEY (`count`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `covids`
--

INSERT INTO `covids` (`count`, `date`, `id`, `name`, `age`, `gender`, `address`, `phone`, `status`, `disease`, `room`) VALUES
(1, '22-12-2019', 'sjb0HMSr3', 'ali', 50, 'Male', 'China', '+212 66543 2187', 'Married', 'Covid-19', 100);

-- --------------------------------------------------------

--
-- Structure de la table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `count` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(10) NOT NULL,
  `id` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `age` int(5) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `blood` varchar(4) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `room` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`count`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `doctor`
--

INSERT INTO `doctor` (`count`, `date`, `id`, `name`, `age`, `gender`, `blood`, `dept`, `phone`, `email`, `status`, `address`, `room`, `username`, `password`) VALUES
(1, '02-04-2020', 'sjb0HMSd1', 'ahmed Islam', 20, 'Male', 'A-', 'Medecine', '+212 64523 4556', 'ahmed88,@gmail.com', 'Single', 'jrada', 806, 'ahmed', 'ahmed'),
(2, '31-01-2020', 'sjb0HMSd2', 'ali Islam', 32, 'Male', 'A+', 'Dental', '+212 66655 4677', 'ali77@gmail.com', 'Married', 'oujda', 202, 'ali', 'ali'),
(3, '12-12-2019', 'sjb0HMSd3', 'hamid alam', 34, 'Male', 'AB-', 'Neurology', '+212 63425 3425', 'hamid@gmail.com', 'Divorced', 'oujda ', 809, 'hamid', 'hamid'),
(4, '21-08-2019', 'sjb0HMSd4', 'layla Jamil', 43, 'Female', 'B+', 'Nutrition', '+212 65432 3454', 'layla@gmail.com', 'Single', 'hucima', 44, 'layla', 'layla'),
(5, '09-08-2019', 'sjb0HMSd4', 'khalid Jamal', 23, 'Male', 'O-', 'Gynaecology', '+212 66543 2187', 'khalid90@gmail.com', 'Single', 'sela', 909, 'khalid', 'khalid'),
(6, '06-03-2019', 'sjb0HMSd6', 'Farah Ali', 37, 'Female', 'B-', 'Cardiology', '+212 65432 1678', 'farah1@gmail.com', 'Married', 'meknes', 545, 'Farah', 'Farah'),
(7, '05-03-2020', 'sjb0HMSd7', 'yassin Sultan', 28, 'Male', 'O+', 'Haematology', '+212 66543 2134', 'yassin77@gmail.com', 'Married', 'fes', 23, 'yassin', 'yassin'),
(8, '20-12-2018', 'sjb0HMSd8', 'youness Rabby', 44, 'Male', 'B-', 'Microbiology', '+212 64532 1376', 'rabby79@gmail.com', 'Married', 'mohamadia', 777, 'Rabby', 'Rabby'),
(9, '27-09-2019', 'sjb0HMSd9', 'yasser Marina', 22, 'Male', 'O+', 'Gynaecology', '+212 65678 9006', 'yasser20@gmail.com', 'Single', 'berkan', 555, 'yasser', 'yasser'),
(12, '12-23-2019', 'sjb0HMSd9', 'samir alaoui', 21, 'Male', 'O+', 'Microbiology', '+212 65643 2156', 'sajeeb@gmail.com', 'Single', 'laayoun', 987, 'samir', 'samir');

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `count` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(10) NOT NULL,
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(5) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `disease` varchar(20) NOT NULL,
  `room` int(11) NOT NULL,
  PRIMARY KEY (`count`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `patient`
--

INSERT INTO `patient` (`count`, `date`, `id`, `name`, `age`, `gender`, `address`, `phone`, `status`, `disease`, `room`) VALUES
(2, '08-03-2019', 'sjb0HMS2', 'samira Shahira', 20, 'Female', 'hikma', '+212 65700 9622', 'Single', 'Feaver', 504),
(3, '09-06-2020', 'sjb0HMS3', 'kosof', 21, 'Male', 'Quds', '+212 67654 3237', 'Single', 'Dengue', 900),
(4, '03-05-2019', 'sjb0HMS4', 'Farid Mondo', 78, 'Male', 'andalous', '+212 68976 5426', 'Married', 'Jondish', 653),
(5, '09-03-2019', 'sjb0HMS5', 'Faiza Rabby', 24, 'Female', 'Quds', '+212 66543 2124', 'Divorced', 'Malaria', 806),
(6, '22-12-2020', 'sjb0HMS6', 'Jamil hmidi', 27, 'Male', 'bni mlal', '+212 62245 6657', 'Married', 'Tyfoyed', 122),
(8, '22-12-2018', 'sjb0HMS7', 'hamim', 22, 'Male', 'maafa', '+212 65467 8907', 'Single', 'Feaver', 902);

-- --------------------------------------------------------

--
-- Structure de la table `receptionist`
--

DROP TABLE IF EXISTS `receptionist`;
CREATE TABLE IF NOT EXISTS `receptionist` (
  `count` int(11) NOT NULL AUTO_INCREMENT,
  `joining` varchar(15) NOT NULL,
  `id` varchar(15) NOT NULL,
  `name` varchar(30) NOT NULL,
  `age` int(5) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `blood` varchar(4) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(17) NOT NULL,
  `address` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`count`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `receptionist`
--

INSERT INTO `receptionist` (`count`, `joining`, `id`, `name`, `age`, `gender`, `blood`, `email`, `phone`, `address`, `status`, `username`, `password`) VALUES
(3, '23-04-2013', 'sjb0HMSd3', 'brahim Sajeer', 21, 'Male', 'O+', 'brahim93@gmail.com', '+212 65700 9622', 'oujda,acdal', 'Single', 'brahim', 'brahim'),
(4, '23-06-2018', 'sjb0HMSr3', 'samira Islam', 24, 'Female', 'A-', 'samira1@gmail.com', '+212 65432 1234', 'andalous', 'Married', 'samira', 'samira'),
(6, '12-06-2018', 'sjb0HMSr4', 'hamid nafs', 24, 'Male', 'AB-', 'nafs99@gmail.com', '+212 66757 5658', 'hikma', 'Single', 'hamid', 'hamid'),
(9, '07-12-2018', 'sjb0HMSr7', 'ali Sifat', 34, 'Male', 'O+', 'sifat@gmail.com', '+212 66656 5676', 'jrada', 'Married', 'ali', 'ali'),
(10, '23-12-2018', 'sjb0HMSr9', 'Jamil chafik', 44, 'Male', 'AB-', 'shafayat@gmail.com', '+212 66577 4323', 'laayoun', 'Single', 'jamil', 'jamil');

-- --------------------------------------------------------

--
-- Structure de la table `test`
--

DROP TABLE IF EXISTS `test`;
CREATE TABLE IF NOT EXISTS `test` (
  `a` varchar(255) NOT NULL,
  `b` varchar(255) NOT NULL,
  `c` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
