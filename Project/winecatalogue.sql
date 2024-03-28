-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2024 at 11:53 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `winecatalogue`
--

-- --------------------------------------------------------

--
-- Table structure for table `sparklingwines`
--

CREATE TABLE `sparklingwines` (
  `Id` int(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Vintage` varchar(100) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `Region` varchar(100) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `user_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sparklingwines`
--

INSERT INTO `sparklingwines` (`Id`, `Name`, `Type`, `Vintage`, `Country`, `Region`, `Price`, `Description`, `user_id`) VALUES
(44, 'Moet and Chandon', 'Champagne', 'NV', 'France', 'Champagne', 79.99, 'Refreshing and crisp taste with notes of peach and earth.', 3),
(45, 'Cloudy Bay Pelorous NV', 'Sparkling Wine', 'NV', 'New Zealand', 'Marlborough', 49.99, 'The perfect amount of sweet and crispy, refreshing notes of plum and peach.', 1),
(46, 'MOET AND CHANDON CHAMPAGNE GRAND VINTAGE ROSE', 'Champagne', '2013', 'France', 'Champagne', 135.00, 'Creamy and detailed in texture, this finely meshed ros Champagne wraps the firm backbone of acidity and rich minerality with toasted almond and dried cherry flavors, showing hints of Grand Marnier liqueur, smoke and spice on the lingering finish. Disgorged November 2013. Drink now through 2026.', 1),
(47, 'ydrty', 'Sparkling Wine', 'tyt', 'tyft', 'tf', 54.36, 'ghjg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `stillwines`
--

CREATE TABLE `stillwines` (
  `Id` int(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Vintage` varchar(100) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `Region` varchar(100) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stillwines`
--

INSERT INTO `stillwines` (`Id`, `Name`, `Type`, `Vintage`, `Country`, `Region`, `Price`, `Description`) VALUES
(1, 'TK PINOT NOIR', 'Red Wine', '2022', 'New Zealand', 'Marlborough', 27.00, 'Plummy red, with hints of oak.'),
(2, 'RENACER PUNTO FINAL CABERNET SAUVIGNON', 'Red Wine', '2022', 'Argentina', 'Mendoza', 18.99, 'Fruit is 100% off the Renacer estate, matured for six months in French oak. One sniff, and you know you\'re definitely dealing with a singularly varietal Cabernet Sauvignon. A 10% introduction of Cabernet Franc fruit to the blend contributes a delightful lift to the aromatics and emphasises the fresh plum and cherry flavours.'),
(3, 'DOMAINE LAROCHE CHABLIS VIELLE VOYE', 'White Wine', '2018', 'France', 'Chablis', 64.99, 'Chablis Vieille Voye offers up aromas of citrus zest, paraffin wax, orange oil and white flowers. Medium to full-bodied, lively and layered, with bright acids and chalky grip, it has turned out nicely.'),
(4, 'CHATEAU LA TOUR BLANCHE PREMIER CRU CLASSE', 'White Wine', '2014', 'France', 'Bordeaux', 135.00, 'The Chateau La Tour Blanche 2014 is a blend of 82% Smillon, 12% Sauvignon Blanc and 5% Muscadelle that has 130 grams per liter residual sugar, a level that might be lower than what was expected, though still around average for the vintage. The Smillon is matured in wooden barrels, and the other two varieties are in stainless steel. The palate shows great potential with intense honeyed fruit, plenty of botrytis, veins of orange zest, and quince that seem to flow through the finish.'),
(5, 'JUSTINOS MADEIRA 10 YEARS SERCIAL', 'Port Wine', 'NV', 'Portugal', 'Madeira', 79.99, 'A dry style of Madeira made from the sercial grape variety grown in Estreito de Camara de Lobos (Jardim da Serra), Seixal, Porto Moniz, Ponta Delgada, Sao Vicente and Arco de Sao Jorge. Maturation in American and French oak cask in the traditional way in Maderia for an average of 10 years.'),
(6, 'PASQUA 11 MINUTES ROSE', 'Rosé', '2021', 'Italy', 'Veneto', 26.99, 'Pasqua set out to create the perfect ros. And, of course, to outdo the French. 11 minutes? Thats the time the grapes spent in contact with their skins, in the most exquisitely gentle of pressings, in order to produce the lovely luminous colour.'),
(7, 'GIESEN MOSEL RIESLING', 'White Wine', '2019', 'Germany', 'Mosel River', 27.99, 'Lusciously sweet and citrusy, with mandarin, clover honey and lemonade flavours flowing across the palate, before being cleaned up by that famous Riesling acid line. A great example of Riesling, it\'s best in its vibrant youth, but can be cellared for those who want to accentuate the honeyed characters.'),
(8, 'RAVENSWOOD VINTNERS BLEND ZINFANDEL', 'Red Wine', '2018', 'USA', 'California', 33.99, 'Off vines that are 80-100 years old, this is unashamedly big, bold and bathed in brightness, cascading its rich blackberry and cherry characters onto a bed of cinnamon, vanilla, and character-building tannins. You can drink it now, or you could give it five or so years.');

-- --------------------------------------------------------

--
-- Table structure for table `submit-review`
--

CREATE TABLE `submit-review` (
  `Id` int(10) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Rating` varchar(100) NOT NULL,
  `Comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `submit-review`
--

INSERT INTO `submit-review` (`Id`, `Name`, `Rating`, `Comment`) VALUES
(1, 'Satyam Bhatt', '⭐⭐⭐⭐', 'Wonderful cellar of the wine, 10/10, would definitely recommend it.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `Name`, `Password`) VALUES
(1, 'Satyam', '123'),
(2, 'Hem', '123'),
(3, 'ganeshan', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sparklingwines`
--
ALTER TABLE `sparklingwines`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `submit-review`
--
ALTER TABLE `submit-review`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sparklingwines`
--
ALTER TABLE `sparklingwines`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `submit-review`
--
ALTER TABLE `submit-review`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sparklingwines`
--
ALTER TABLE `sparklingwines`
  ADD CONSTRAINT `sparklingwines_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
