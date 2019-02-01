-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 16, 2018 at 07:38 PM
-- Server version: 5.6.36-82.1-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arielr19_simsDatabase`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`arielr19`@`localhost` PROCEDURE `getNumOfEP` ()  BEGIN
    SELECT COUNT(*) AS numEPs FROM Content WHERE content_code LIKE 'EP%';
    
END$$

CREATE DEFINER=`arielr19`@`localhost` PROCEDURE `getNumOfSP` ()  BEGIN
    SELECT COUNT(*) AS numSP FROM Content WHERE content_code LIKE 'SP%';
    END$$

--
-- Functions
--
CREATE DEFINER=`arielr19`@`localhost` FUNCTION `lotsLeft` (`occupied_lots` INT, `total_lots` INT) RETURNS INT(11) BEGIN
    DECLARE lotsRem INT;
    SET lotsRem= total_lots-occupied_lots;
    Return lotsRem;
  END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `Aspiration`
--

CREATE TABLE `Aspiration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `reward_trait` varchar(255) NOT NULL,
  `bonus_trait` varchar(255) NOT NULL,
  `content_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Aspiration`
--

INSERT INTO `Aspiration` (`id`, `name`, `reward_trait`, `bonus_trait`, `content_id`) VALUES
(33, 'Athletic', 'Long Lived', 'High Metabolism', 25),
(34, 'Bestselling Autor', 'Poetic', 'Muser', 25),
(35, 'Musical Genius', 'Piper', 'Muser', 25),
(36, 'Painter Extraordinaire', 'Expressionistic', 'Muser', 25),
(37, 'Chief of Mischief', 'Tormentor', 'Dastardly', 25),
(38, 'Public Enemy', 'Mastermind', 'Dastardly', 25),
(39, 'Big Happy Family', 'Patriarch', 'Domestic', 25),
(40, 'Super Parent', 'Role Model', 'Domestic', 5),
(41, 'Successful Lineage', 'Vicarious', 'Domestic', 25),
(42, 'Grill Cheese', 'Melt Master', 'Essence of Flavor', 25),
(43, 'Master Chef', 'Fresh Chef', 'Essence of Flavor', 25),
(44, 'Master Mixologist', 'Potion Master', 'Essence of Flavor', 25),
(45, 'Fabulously Wealthy', 'Shrewd', 'Business Savy', 25),
(46, 'Mansion Baron', 'Thrifty', 'Business Savy', 25),
(47, 'Computer Whiz', 'Webmaster', 'Quick Learner', 25),
(48, 'Nerd Brain', 'Handy', 'Quick Learner', 25),
(49, 'Renaissance Sim', 'Professorial', 'Quick Learner', 25),
(50, 'City Native', 'In The Know', 'Home Turf', 25),
(51, 'Serial Romantic', 'Player', 'Alluring', 25),
(52, 'Soulmate', 'Companion', 'Alluring', 25),
(53, 'Angling Ace', 'Tranquility', 'Collector', 25),
(54, 'Freelance Botanist', 'Nautralist ', 'Collector', 25),
(55, 'Outdoor Enthusiast ', 'Survivalist', 'Collector', 1),
(56, 'The Curator', 'Appraiser', 'Collector', 25),
(57, 'Friend of the World', 'Beloved', 'Gregarious', 25),
(58, 'Joke Star', 'Hilarious', 'Gregarious', 25),
(59, 'Leader of the Pack', 'Natural Leader', 'Gregarious', 8),
(60, 'Party Animal', 'Pefect Host', 'Gregarious', 25);

-- --------------------------------------------------------

--
-- Table structure for table `Career`
--

CREATE TABLE `Career` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `skill` varchar(255) NOT NULL,
  `sec_skill` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `branch_sec` varchar(255) DEFAULT NULL,
  `content_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Career`
--

INSERT INTO `Career` (`id`, `name`, `skill`, `sec_skill`, `branch`, `branch_sec`, `content_id`) VALUES
(15, 'Astronaut', 'Logic', 'Fitness', 'Space Ranger ', 'Interstellar Smuggler', 25),
(16, 'Athlete', 'Fitness', 'Charisma', 'Professional Athlete ', 'Bodybuilder', 25),
(17, 'Business', 'Logic', 'Charisma', 'Management', 'Investor', 25),
(18, 'Criminal', 'Mischief', 'Handiness', 'Boss', 'Oracle', 25),
(19, 'Culinary', 'Cooking', 'Mixology', 'Chef', 'Mixologist', 25),
(20, 'Entertainer', 'Comedy', 'Guitar', 'Musician', 'Comedian', 25),
(21, 'Painter', 'Painting', 'Logic', 'Master of the Real', 'Patron of the Arts', 25),
(22, 'Secret Agent', 'Logic', 'Charisma', 'Diamond Agent', 'Villain', 25),
(23, 'Tech Guru', 'Programming', 'Video Gaming', 'eSport Gamer', 'Start-up Entrepreneur', 25),
(24, 'Writer', 'Writing', 'Logic', 'Author', 'Journalist', 25),
(25, 'Critic', 'Writing', 'Cooking', 'Food Critic', 'Art Critic', 9),
(26, 'Politician', 'Charisma', 'Charisma', 'Politician', 'Charity Organizer', 9),
(27, 'Social Media', 'Writing', 'Charisma', 'Internet Personality', 'Public Relations', 9);

-- --------------------------------------------------------

--
-- Table structure for table `Content`
--

CREATE TABLE `Content` (
  `id` int(11) NOT NULL,
  `content_code` varchar(6) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Content`
--

INSERT INTO `Content` (`id`, `content_code`, `name`, `month`, `year`) VALUES
(1, 'GP01', 'Outdoor Retreat', 'January', 2015),
(2, 'GP02', 'Spa Day', 'July', 2015),
(3, 'GP03', 'Dine Out', 'June', 2016),
(4, 'GP04', 'Vampires', 'January', 2017),
(5, 'GP05', 'Parenthood', 'May', 2017),
(6, 'GP06', 'Jungle Adventure', 'February', 2018),
(7, 'EP01', 'Get to Work', 'March', 2015),
(8, 'EP02', 'Get Together', 'December', 2015),
(9, 'EP03', 'City Living', 'November', 2016),
(10, 'EP04', 'Cats & Dogs', 'November', 2017),
(11, 'SP01', 'Luxury Party Stuff', 'May', 2015),
(12, 'SP02', 'Perfect Patio Stuff', 'June', 2015),
(13, 'SP03', 'Cool Kitchen Stuff', 'August', 2015),
(14, 'SP04', 'Spooky Stuff', 'September', 2015),
(15, 'SP05', 'Movie Hangout Stuff', 'January', 2016),
(16, 'SP06', 'Romantic Garden Stuff', 'February', 2016),
(17, 'SP07', 'Kids Room Stuff', 'June', 2016),
(18, 'SP08', 'Backyard Stuff', 'July', 2016),
(19, 'SP09', 'Vintage Glamour Stuff', 'December', 2016),
(20, 'SP10', 'Bowling Night Stuff', 'March', 2017),
(21, 'SP11', 'Fitness Stuff', 'June', 2017),
(22, 'SP12', 'Toddler Stuff', 'August', 2017),
(23, 'SP13', 'Laundry Day Stuff', 'January', 2018),
(24, 'SP14', 'My First Pet Stuff', 'March', 2018),
(25, 'BG00', 'Base Game', 'August', 2015);

-- --------------------------------------------------------

--
-- Stand-in structure for view `contentView`
-- (See below for the actual view)
--
CREATE TABLE `contentView` (
`world_content` varchar(255)
,`year` int(11)
,`month` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `Sim`
--

CREATE TABLE `Sim` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lifestage` varchar(255) NOT NULL,
  `career` varchar(255) NOT NULL,
  `world` varchar(255) NOT NULL,
  `aspiration` varchar(255) NOT NULL,
  `content_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Sim`
--

INSERT INTO `Sim` (`id`, `name`, `lifestage`, `career`, `world`, `aspiration`, `content_id`) VALUES
(176, 'Eric Lewis', 'Adult', 'Unemployed', 'Willow Creek', 'Mansion Baron', 25),
(177, 'Vivian Lewis', 'Elder', 'Unemployed', 'Willow Creek', 'Big Happy Family', 25),
(178, 'Alice Spencer-Kim', 'Young Adult', 'Unemployed', 'Willow Creek', 'Painter Extraordinaire', 25),
(179, 'Dennis Kim', 'Elder', 'Unemployed', 'Willow Creek', 'Successful Lineage', 25),
(180, 'Olivia Kim-Lewis', 'Child', 'Grade School', 'Willow Creek', 'Artistic Prodigy', 25),
(181, 'Travis Scott', 'Young Adult', 'Tech Guru', 'Willow Creek', 'Computer Whiz', 25),
(182, 'Liberty Lee', 'Young Adult', 'Astronaut', 'Willow Creek', 'Nerd Brain', 25),
(183, 'Summer Holiday', 'Young Adult', 'Culinary', 'Willow Creek', 'Friend of the World', 25),
(184, 'Bella Goth', 'Young Adult', 'Secret Agent', 'Willow Creek', 'Party Animal', 25),
(185, 'Cassandra Goth', 'Teenager', 'High School', 'Willow Creek', 'Musical Genius', 25),
(186, 'Alexander Goth', 'Child', 'Grade School', 'Willow Creek', 'Whiz Kid', 25),
(187, 'Mortimer Goth', 'Adult', 'Writer', 'Willow Creek', 'Renaissance Sim', 25),
(188, 'Bob Pancakes', 'Young Adult', 'Culinary', 'Willow Creek', 'Master Chef', 25),
(189, 'Eliza Pancakes', 'Young Adult', 'Unemployed', 'Willow Creek', 'Mansion Baron', 25),
(190, 'Katrina Caliente', 'Adult', 'Entertainer', 'Oasis Springs', 'Soulmate', 25),
(191, 'Don Lothario', 'Young Adult', 'Unemployed', 'Oasis Springs', 'Serial Romantic', 25),
(192, 'Nina Caliente', 'Young Adult', 'Unemployed', 'Oasis Springs', 'Chief of Mischief', 25),
(193, 'Dina Caliente', 'Young Adult', 'Culinary', 'Oasis Springs', 'Master Mixologist', 25),
(194, 'Geoffrey Landgraab', 'Adult', 'Secret Agent', 'Oasis Springs', 'Successful Lineage', 25),
(195, 'Nancy Landgraab', 'Adult', 'Criminal', 'Oasis Springs', 'Fabulously Wealthy', 25),
(196, 'Malcholm Landgraab', 'Teenager', 'High School', 'Oasis Springs', 'Public Enemy', 25),
(197, 'Johnny Zest', 'Young Adult', 'Entertainer', 'Oasis Springs', 'Joke Star', 25),
(198, 'J Huntington III', 'Young Adult', 'Tech Guru', 'Oasis Springs', 'Bodybuilder', 25),
(199, 'Mitchell Kalani', 'Young Adult', 'Culinary', 'Oasis Springs', 'Joke Star', 25),
(200, 'Gavin Richards', 'Young Adult', 'Writer', 'Oasis Springs', 'Bestselling Author', 25),
(202, 'Salim Benali', 'Young Adult', 'Writer', 'San Myshuno', 'Bestselling Author', 9),
(203, 'Arun Bheeda', 'Young Adult', 'Tech Guru', 'San Myshuno', 'Fabulously Wealthy', 9),
(204, 'Jesminder Bheeda', 'Young Adult', 'Culinary', 'San Myshuno', 'Master Mixologist', 9),
(205, 'Victor Feng', 'Adult', 'Politician', 'San Myshuno', 'Fabulously Wealthy', 9),
(206, 'Lily Feng', 'Adult', 'Business', 'San Myshuno', 'Mansion Baron', 9),
(207, 'Baako Jang', 'Adult', 'Entertainer', 'San Myshuno', 'Joke Star', 9),
(208, 'Anaya Jang', 'Adult', 'Painter', 'San Myshuno', 'Painter Extraordinaire', 9),
(209, 'Billie Jang', 'Child', 'Grade School', 'San Myshuno', 'Social Butterfly', 9),
(210, 'Miko Ojo', 'Young Adult', 'Politician', 'San Myshuno', 'Serial Romantic', 9),
(211, 'Darling Walsh', 'Teenager', 'High School', 'San Myshuno', 'Chief of Mischief', 9),
(212, 'Akira Kibo', 'Young Adult', 'Tech Guru', 'San Myshuno', 'The Curator', 9),
(213, 'Diego Lobo', 'Young Adult', 'Critic', 'San Myshuno', 'Fabulously Wealthy', 9),
(214, 'Penny Pizzazz', 'Young Adult', 'Social Media', 'San Myshuno', 'City Native', 9),
(215, 'Geeta Rasoya', 'Elder', 'Critic', 'San Myshuno', 'Successful Lineage', 9),
(216, 'Raj Rasoya', 'Young Adult', 'Culinary', 'San Myshuno', 'Big Happy Family', 9),
(217, 'Brant Hecking', 'Young Adult', 'Athlete', 'Brindleton Bay', 'The Curator', 10),
(218, 'Brent Hecking', 'Young Adult', 'Painter', 'Brindleton Bay', 'Painter Extraordinaire', 10),
(219, 'Catarina Lynx', 'Young Adult', 'Culinary', 'Brindleton Bay', 'Friend of the Animals', 10),
(220, 'Supriya Delgato', 'Young Adult', 'Unemployed', 'Brindleton Bay', 'Friend of the Animals', 10),
(221, 'Justin Delgato', 'Young Adult', 'Business', 'Brindleton Bay', 'Renaissance Sim', 10),
(222, 'Pierce Delgato', 'Child', 'Grade School', 'Brindleton Bay', 'Social Butterfly', 10),
(223, 'Evie Delgato', 'Toddler', 'None', 'Brindleton Bay', 'None', 10),
(224, 'Candy Behr', 'Young Adult', 'Entertainer', 'Windenburg', 'Party Animal', 8),
(225, 'Yuki Behr', 'Teenager', 'High School', 'Windenburg', 'Computer Whiz', 8),
(226, 'Bjorn Bjergsen', 'Adult', 'Secret Agent', 'Windenburg', 'Soulmate', 8),
(227, 'Clara Bjergsen', 'Adult', 'Culinary', 'Windenburg', 'Successful Lineage', 8),
(228, 'Sofia Bjergsen', 'Teenager', 'High School', 'Windenburg', 'Musical Genius', 8),
(229, 'Elsa Bjergsen', 'Child', 'Grade School', 'Windenburg', 'Whiz Kid', 8),
(230, 'Sergio Romeo', 'Young Adult', 'Tech Guru', 'Windenburg', 'Fabulously Wealthy', 8),
(231, 'Joaquin Le Chien', 'Young Adult', 'Entertainer', 'Windenburg', 'Fabulously Wealthy', 8);

--
-- Triggers `Sim`
--
DELIMITER $$
CREATE TRIGGER `lifestageCheck` BEFORE INSERT ON `Sim` FOR EACH ROW BEGIN
     IF (NEW.lifestage <> 'Baby') AND (NEW.lifestage <> 'Toddler') AND (NEW.lifestage <> 'Child') AND (NEW.lifestage <> 'Teenager') AND (NEW.lifestage <> 'Young Adult') AND (NEW.lifestage <> 'Adult' ) AND (NEW.lifestage <> 'Elder') THEN
       SET NEW.lifestage = 'Not Valid Lifestage';
     end if;
    IF
      (new.lifestage='Toddler') THEN
      SET NEW.career='None';
      SET NEW.aspiration='None';
      
      end if;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `Skill`
--

CREATE TABLE `Skill` (
  `id` int(3) NOT NULL,
  `name` varchar(255) NOT NULL,
  `min_level` int(2) NOT NULL DEFAULT '1',
  `max_level` int(2) NOT NULL,
  `content_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Skill`
--

INSERT INTO `Skill` (`id`, `name`, `min_level`, `max_level`, `content_id`) VALUES
(32, 'Charisma', 1, 10, 25),
(33, 'Comedy', 1, 10, 25),
(34, 'Fishing', 1, 10, 25),
(35, 'Fitness', 1, 10, 25),
(36, 'Gardening', 1, 10, 25),
(37, 'Gourmet Cooking', 1, 10, 25),
(38, 'Guitar', 1, 10, 25),
(39, 'Handiness', 1, 10, 25),
(40, 'Logic', 1, 10, 25),
(41, 'Mischief', 1, 10, 25),
(42, 'Mixology', 1, 10, 25),
(43, 'Painting', 1, 10, 25),
(44, 'Piano', 1, 10, 25),
(45, 'Photography', 1, 10, 25),
(46, 'Programming', 1, 10, 25),
(47, 'Rocket Science', 1, 10, 25),
(48, 'Video Gaming', 1, 10, 25),
(49, 'Violin', 1, 10, 25),
(50, 'Writing', 1, 10, 25),
(51, 'Herablism', 1, 10, 1),
(52, 'Baking', 1, 10, 7),
(53, 'Wellness', 1, 10, 8),
(54, 'Dancing', 1, 10, 8),
(55, 'DJ Mixing', 1, 10, 8),
(56, 'Singing', 1, 10, 9),
(57, 'Parenting', 1, 10, 5),
(58, 'Pet Training', 1, 5, 10),
(59, 'Veterinarian', 1, 10, 10),
(60, 'Archaeology', 1, 10, 6),
(61, 'Selvadoradian Culture', 1, 5, 6),
(63, 'Fortune', 0, 9, 8);

-- --------------------------------------------------------

--
-- Table structure for table `Trait`
--

CREATE TABLE `Trait` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `content_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Trait`
--

INSERT INTO `Trait` (`id`, `name`, `type`, `content_id`) VALUES
(201, 'Active', 'Emotional', 25),
(202, 'Cheerful', 'Emotional', 25),
(203, 'Creative', 'Emotional', 25),
(204, 'Genius', 'Emotional', 25),
(205, 'Gloomy', 'Emotional', 25),
(206, 'Hot-Headed', 'Emotional', 25),
(207, 'Romantic', 'Emotional', 25),
(208, 'Self-Assured', 'Emotional', 25),
(209, 'Unflirty', 'Emotional', 9),
(210, 'Goofball', 'Emotional', 25),
(211, 'Bro', 'Social', 25),
(212, 'Evil', 'Social', 25),
(213, 'Family-oriented', 'Social', 25),
(214, 'Hates Children', 'Social', 25),
(215, 'Good', 'Social', 25),
(216, 'Insider', 'Social', 25),
(217, 'Jealous', 'Social', 25),
(218, 'Loner', 'Social', 25),
(219, 'Mean', 'Social', 25),
(220, 'Noncommittal', 'Social', 25),
(221, 'Outgoing', 'Social', 25),
(222, 'Art Lover', 'Hobby', 25),
(223, 'Bookworm', 'Hobby', 25),
(224, 'Foodie', 'Hobby', 25),
(225, 'Geek', 'Hobby', 25),
(226, 'Music Lover', 'Hobby', 25),
(227, 'Perfectionist', 'Hobby', 25),
(228, 'Ambitious', 'Lifestyle', 25),
(229, 'Cat Lover', 'Lifestyle', 11),
(230, 'Childish', 'Lifestyle', 25),
(231, 'Clumsy', 'Lifestyle', 25),
(232, 'Dance Machine', 'Lifestyle', 9),
(233, 'Dog Lover', 'Lifestyle', 10),
(234, 'Glutton', 'Lifestyle', 25),
(235, 'Insane', 'Lifestyle', 25),
(236, 'Kleptomaniac', 'Lifestyle', 25),
(237, 'Lazy', 'Lifestyle', 25),
(238, 'Loves Outdoors', 'Lifestyle', 25),
(239, 'Materialistic', 'Lifestyle', 25),
(240, 'Neat', 'Lifestyle', 25),
(241, 'Slob', 'Lifestyle', 25),
(242, 'Snob', 'Lifestyle', 25),
(243, 'Squeamish', 'Lifestyle', 1),
(244, 'Vegetarian', 'Lifestyle', 9);

-- --------------------------------------------------------

--
-- Stand-in structure for view `traitView`
-- (See below for the actual view)
--
CREATE TABLE `traitView` (
`trait_content` varchar(255)
,`content_code` varchar(6)
,`year` int(11)
,`month` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `World`
--

CREATE TABLE `World` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `total_lots` int(11) DEFAULT NULL,
  `empty_lots` int(11) DEFAULT NULL,
  `occupied_lots` int(11) DEFAULT NULL,
  `content_id` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `World`
--

INSERT INTO `World` (`id`, `name`, `total_lots`, `empty_lots`, `occupied_lots`, `content_id`) VALUES
(30, 'Oasis Springs', 21, 7, 4, '25'),
(31, 'Willow Creek', 16, 12, 4, '25'),
(32, 'Newcrest', 15, 15, 0, '25'),
(33, 'Granite Falls', 6, 5, 0, '1'),
(34, 'Windenburg', 14, 6, 8, '8'),
(35, 'San Myshuno', 30, 4, 8, '9'),
(36, 'Forgotten Hollow', 5, 3, 2, '4'),
(37, 'Brindleton Bay', 11, 8, 3, '10'),
(38, 'Selvadorada', 7, 4, 0, '6'),
(39, 'Test', 9, 9, 0, '26');

-- --------------------------------------------------------

--
-- Structure for view `contentView`
--
DROP TABLE IF EXISTS `contentView`;

CREATE ALGORITHM=UNDEFINED DEFINER=`arielr19`@`%` SQL SECURITY DEFINER VIEW `contentView`  AS  (select distinct `w`.`name` AS `world_content`,`c`.`year` AS `year`,`c`.`month` AS `month` from (`Content` `c` join `World` `w` on((`w`.`content_id` = `c`.`id`)))) ;

-- --------------------------------------------------------

--
-- Structure for view `traitView`
--
DROP TABLE IF EXISTS `traitView`;

CREATE ALGORITHM=UNDEFINED DEFINER=`arielr19`@`%` SQL SECURITY DEFINER VIEW `traitView`  AS  (select distinct `t`.`name` AS `trait_content`,`c`.`content_code` AS `content_code`,`c`.`year` AS `year`,`c`.`month` AS `month` from (`Content` `c` join `Trait` `t` on((`t`.`content_id` = `c`.`id`)))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Aspiration`
--
ALTER TABLE `Aspiration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Aspiration_Content_id_fk` (`content_id`);

--
-- Indexes for table `Career`
--
ALTER TABLE `Career`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Career_Content_id_fk` (`content_id`);

--
-- Indexes for table `Content`
--
ALTER TABLE `Content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Sim`
--
ALTER TABLE `Sim`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Sim_Content_id_fk` (`content_id`);

--
-- Indexes for table `Skill`
--
ALTER TABLE `Skill`
  ADD PRIMARY KEY (`id`,`name`),
  ADD KEY `Skill_Content_id_fk` (`content_id`);

--
-- Indexes for table `Trait`
--
ALTER TABLE `Trait`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Trait_Content_id_fk` (`content_id`);

--
-- Indexes for table `World`
--
ALTER TABLE `World`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Aspiration`
--
ALTER TABLE `Aspiration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `Career`
--
ALTER TABLE `Career`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `Content`
--
ALTER TABLE `Content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `Sim`
--
ALTER TABLE `Sim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;
--
-- AUTO_INCREMENT for table `Skill`
--
ALTER TABLE `Skill`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `Trait`
--
ALTER TABLE `Trait`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;
--
-- AUTO_INCREMENT for table `World`
--
ALTER TABLE `World`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Aspiration`
--
ALTER TABLE `Aspiration`
  ADD CONSTRAINT `Aspiration_Content_id_fk` FOREIGN KEY (`content_id`) REFERENCES `Content` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `Career`
--
ALTER TABLE `Career`
  ADD CONSTRAINT `Career_Content_id_fk` FOREIGN KEY (`content_id`) REFERENCES `Content` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `Sim`
--
ALTER TABLE `Sim`
  ADD CONSTRAINT `Sim_Content_id_fk` FOREIGN KEY (`content_id`) REFERENCES `Content` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `Skill`
--
ALTER TABLE `Skill`
  ADD CONSTRAINT `Skill_Content_id_fk` FOREIGN KEY (`content_id`) REFERENCES `Content` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `Trait`
--
ALTER TABLE `Trait`
  ADD CONSTRAINT `Trait_Content_id_fk` FOREIGN KEY (`content_id`) REFERENCES `Content` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
