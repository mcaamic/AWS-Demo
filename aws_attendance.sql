SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `aws_attendance` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `aws_attendance`;

CREATE TABLE `attendance` (
  `regisID` int(11) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `regisType` varchar(25) NOT NULL,
  `isMonday` tinyint(1) NOT NULL DEFAULT 0,
  `isTuesday` tinyint(1) NOT NULL DEFAULT 0,
  `isWednesday` tinyint(1) NOT NULL DEFAULT 0,
  `isThursday` tinyint(1) NOT NULL DEFAULT 0,
  `isFriday` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `attendance` (`regisID`, `lname`, `fname`, `regisType`, `isMonday`, `isTuesday`, `isWednesday`, `isThursday`, `isFriday`) VALUES
(1, 'Banaag', 'Ian Clark', 'Facilitator', 0, 0, 0, 0, 0),
(2, 'Caamic', 'Marjorie', 'Facilitator', 0, 0, 0, 0, 0),
(3, 'Escape', 'Mark Louie', 'Facilitator', 0, 0, 0, 0, 0),
(4, 'Jacob', 'Rafael Evans', 'Facilitator', 0, 0, 0, 0, 0),
(5, 'Matic', 'Micah Mae', 'Facilitator', 0, 0, 0, 0, 0);


ALTER TABLE `attendance`
  ADD PRIMARY KEY (`regisID`),
  ADD UNIQUE KEY `regisID` (`regisID`);


ALTER TABLE `attendance`
  MODIFY `regisID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
