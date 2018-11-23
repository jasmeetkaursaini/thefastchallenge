-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 18, 2018 at 02:29 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fast`
--

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driverId` int(4) NOT NULL,
  `image` varchar(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `number` int(4) NOT NULL,
  `team` varchar(40) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `points` int(4) NOT NULL,
  `grand_prix` int(4) NOT NULL,
  `high_race` varchar(4) NOT NULL,
  `d_birth` date NOT NULL,
  `p_birth` varchar(20) NOT NULL,
  `biography` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driverId`, `image`, `name`, `number`, `team`, `Country`, `points`, `grand_prix`, `high_race`, `d_birth`, `p_birth`, `biography`) VALUES
(1, '1.jpg', 'Lewis Hamilton', 44, 'Mercedes', 'United Kingdom', 2941, 225, '1x71', '1985-01-07', 'Stevenage, England', 'Few drivers have entered Formula 1 racing with as big a bang as Lewis Hamilton, whose sensational maiden season in 2007 - in which he lost out on the world championship by a single point - remains one of the most remarkable rookie campaigns in history.'),
(2, '2.jpg', 'Sebastian Vettel', 5, 'Ferrari', 'Germany', 2689, 216, '1x52', '1987-07-03', 'Heppenheim, Germany', 'A tour de force as he swept to four straight world championship crowns and countless Formula 1 records, Sebastian Vettel’s relentless hunger for victory, as much as his outstanding talent, secure his place as one of the sport’s greats.'),
(3, '3.jpg', 'Valtteri Bottas', 77, 'Mercedes', 'Finland', 953, 118, '1x3', '1989-08-28', 'Nastola, Finland', 'Valtteri is quite simply one of the most talented young racing drivers I have come across and we expect great things from him in the future.These were the words of Sir Frank Williams as he announced that the young man from Nastola in southern Finland would make his F1 debut as a Williams race driver for the 2013 season. Williams’ expectations were high, but Bottas did not disappoint.'),
(4, '4.jpg', 'Kimi Raikkonen', 7, 'Ferrari', 'Finland', 1816, 293, '1x21', '1979-10-17', 'Espoo, Finland', 'He is a man of few words, Jenson Button once said of Kimi Raikkonen, but he\'s all about racing. Never the most loquacious out of the car, the mercurially-talented 2007 world champion has always preferred to let his driving do the talking, be that in a rally car, on a snowmobile, or, most successfully, in Formula 1 machinery. '),
(5, '5.jpg', 'Max Verstappen', 33, 'Red Bull Racing ', 'Netherlands', 655, 80, '1x5', '1997-09-30', 'Hasselt, Belgium', 'By any measure, Max Verstappen’s rise has been unprecedented. After just one - extremely successful - season in single-seaters, Red Bull shocked the Formula 1 paddock by placing him with Toro Rosso for 2015. Never had one so young, and so inexperienced, lined up on an F1 grid.'),
(6, '6.jpg', 'Daniel Ricciardo', 3, 'Red Bull Racing	', 'Australia', 974, 149, '1x7', '1989-07-01', 'Perth, Australia', 'If you want to be successful at anything in life the primary thing is you have to enjoy it. Those were the words of the ever-smiling Daniel Ricciardo as he reflected on his breakthrough 2014 season with Red Bull Racing - a season which saw the affable Australian not only win his first Grand Prix (and two more) but also leave four-time world champion team mate Sebastian Vettel trailing in his wake.'),
(7, '7.jpg', 'Sergio Perez', 11, 'Force India', 'Maxico', 525, 156, '2x2', '1990-01-29', 'Guadalajara, Mexico', 'On his 2011 race debut, Sergio Perez Mendoza became only the fifth Mexican to make it into Formula 1racing. Seven seasons and two team moves later, he is a firmly established Formula 1 star who also flies the flag for his nation, Mexico City have returned to the F1 calendar in 2015.'),
(8, '8.jpg', 'Esteban Ocon', 31, 'Force India', 'France', 136, 49, '5x2', '1996-09-17', 'Evreux, Normandy', 'Esteban Ocon may have landed his F1 seat midseason in 2016, following the departure of Rio Haryanto from Manor, but the Frenchman arrived on the grid with plenty of relevant experience, having tested both that season’s Renault and Mercedes F1 machinery.');

-- --------------------------------------------------------

--
-- Table structure for table `duration`
--

CREATE TABLE `duration` (
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `duration`
--

INSERT INTO `duration` (`time`) VALUES
('45');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` varchar(10) NOT NULL,
  `image` text NOT NULL,
  `name` text NOT NULL,
  `driver1` text NOT NULL,
  `driver2` text NOT NULL,
  `team_chief` text NOT NULL,
  `tech_chief` text NOT NULL,
  `base` text NOT NULL,
  `world_c` text NOT NULL,
  `info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `image`, `name`, `driver1`, `driver2`, `team_chief`, `tech_chief`, `base`, `world_c`, `info`) VALUES
('t1', 't1.jpg', 'Mercedes', 'Lewis Hamilton', 'Valtteri Bottas', 'Toto Wolff', 'James Allison', 'Brackley, United Kingdom', '4', 'Mercedes\' revival of their Formula 1 tradition through the creation of a works team for the 2010 championship was also the platform for a meteoric rise up the Grand Prix order. Already the team had generated huge excitement by securing the sensational return of Michael Schumacher, but headlines began to follow on track: three podiums came in their debut season, all via Nico Rosberg - who then claimed a breakthrough pole/victory double at China in 2012. The following season he would be paired with Lewis Hamilton, with the duo going on to stage some epic title battles as Mercedes swept all before them to become one of the most dominant forces of the modern F1 era...'),
('t2', 't2.jpg', 'Ferrari', 'Sebastian Vettel', 'Kimi Raikkonen', 'Maurizio Arrivabene', 'Mattia Binotto', 'Maranello, Italy', '16', 'For many, Ferrari and Formula 1 racing have become inseparable. The only team to have competed in every season since the world championship began, the Prancing Horse has grown from the humble dream of founder Enzo Ferrari to become one of the most iconic and recognised brands in the world. Success came quickly through the likes of Alberto Ascari and John Surtees, and continued – in amongst leaner times – with Niki Lauda in the 1970s and then Michael Schumacher in the 2000s, when Ferrari claimed an unprecedented five consecutive title doubles, securing their status as the most successful and decorated team in F1 history...'),
('t3', 't3.jpg', 'Force India', 'Sergio Perez', 'Esteban Ocon', 'Otmar Szafnauer', 'Andrew Green', 'Silverstone, United Kingdom', 'N/A', 'Having won races under former guise Jordan, the Silverstone-based team became Force India in 2007 and steadily established themselves as a midfield force. A move to new owners – and hence a new championship entry – may have seen their points reset to zero in mid-2018, but a bright future is predicted for a team already well renowned for their ability to punch above their weight...'),
('t4', 't4.jpg', 'Renault', 'Nico Hulkenberg', 'Carlos Sainaz', 'Cyril Abiteboul', 'Bob Bell', 'Enstone, United Kingdom', '2', 'The 2016 season saw Renault return as an F1 works entry following their takeover of the Lotus team - the Enstone-based squad which the French automaker previously ran from 2002 to 2011. It wasn\'t just the team name that changed: Mercedes engines inevitably made way for Renault’s eponymous power unit, as the new management embarked on a long-term restructuring programme aimed at returning the famous marque to race-winning glory…');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(4) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(0, 'xyz@gmail.com', 'xyz'),
(1, 'marcos@gmail.com', '123'),
(10, 'a@gmail.com', 'abc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driverId`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
