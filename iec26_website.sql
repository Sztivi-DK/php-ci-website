-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 13, 2026 at 03:20 PM
-- Server version: 8.0.44
-- PHP Version: 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iec26_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `intro` text COLLATE utf8mb4_general_ci NOT NULL,
  `cover` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `content` text COLLATE utf8mb4_general_ci NOT NULL,
  `create_at` datetime NOT NULL,
  `public` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `intro`, `cover`, `content`, `create_at`, `public`) VALUES
(1, 'Első tárolt cikk címe', 'Az első cikk bevezetője: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut fuga esse et sequi, vero voluptate alias harum quis aspernatur, natus.', 'high-rise-buildings.jpg', '<p>Az első cikk tartalma: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut fuga esse et sequi, vero voluptate alias harum quis aspernatur, natus.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto sit, voluptate cum. Laudantium consequuntur expedita tempora animi. <strong>Dolor</strong> nulla eum repellat a, sed reprehenderit earum esse itaque, eaque ipsam assumenda distinctio quaerat ab? <a href=\"\"> A placeat aspernatur </a> eaque veniam fugit itaque provident voluptate asperiores, ad illum? Odit aut hic, consectetur rerum iste accusamus tempora sed magnam consequatur delectus incidunt quo similique. Minus, ex dolorum provident explicabo! Suscipit enim, fugiat totam consequatur at et reiciendis itaque adipisci?\r\n</p>', '2026-01-18 17:31:08', 1),
(2, 'Második tárolt cikk címe', 'Az második cikk bevezetője: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut fuga esse et sequi, vero voluptate alias harum quis aspernatur, natus.', 'office-meeting.jpg', '<p>Az második cikk tartalma: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut fuga esse et sequi, vero voluptate alias harum quis aspernatur, natus.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto sit, voluptate cum. Laudantium consequuntur expedita tempora animi. <strong>Dolor</strong> nulla eum repellat a, sed reprehenderit earum esse itaque, eaque ipsam assumenda distinctio quaerat ab? <a href=\"\"> A placeat aspernatur </a> eaque veniam fugit itaque provident voluptate asperiores, ad illum? Odit aut hic, consectetur rerum iste accusamus tempora sed magnam consequatur delectus incidunt quo similique. Minus, ex dolorum provident explicabo! Suscipit enim, fugiat totam consequatur at et reiciendis itaque adipisci?\r\n</p>', '2026-01-20 17:31:08', 1),
(3, 'Harmadik tárolt cikk címe', 'Az harmadik cikk bevezetője: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut fuga esse et sequi, vero voluptate alias harum quis aspernatur, natus.', 'shaking-hands.jpg', '<p>Az harmadik cikk tartalma: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut fuga esse et sequi, vero voluptate alias harum quis aspernatur, natus.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto sit, voluptate cum. Laudantium consequuntur expedita tempora animi. <strong>Dolor</strong> nulla eum repellat a, sed reprehenderit earum esse itaque, eaque ipsam assumenda distinctio quaerat ab? <a href=\"\"> A placeat aspernatur </a> eaque veniam fugit itaque provident voluptate asperiores, ad illum? Odit aut hic, consectetur rerum iste accusamus tempora sed magnam consequatur delectus incidunt quo similique. Minus, ex dolorum provident explicabo! Suscipit enim, fugiat totam consequatur at et reiciendis itaque adipisci?\r\n</p>', '2026-01-16 17:31:08', 1),
(4, 'Negyedik tárolt cikk címe', 'Az negyedik cikk bevezetője: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut fuga esse et sequi, vero voluptate alias harum quis aspernatur, natus.', 'shaking-hands.jpg', '<p>Az negyedik cikk tartalma: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut fuga esse et sequi, vero voluptate alias harum quis aspernatur, natus.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto sit, voluptate cum. Laudantium consequuntur expedita tempora animi. <strong>Dolor</strong> nulla eum repellat a, sed reprehenderit earum esse itaque, eaque ipsam assumenda distinctio quaerat ab? <a href=\"\"> A placeat aspernatur </a> eaque veniam fugit itaque provident voluptate asperiores, ad illum? Odit aut hic, consectetur rerum iste accusamus tempora sed magnam consequatur delectus incidunt quo similique. Minus, ex dolorum provident explicabo! Suscipit enim, fugiat totam consequatur at et reiciendis itaque adipisci?\r\n</p>', '2026-01-21 17:31:08', 1),
(5, 'Nem látható cikk.', 'Nem látható cikk.', '', '', '2026-01-20 18:50:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customerbook`
--

CREATE TABLE `customerbook` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `rating` tinyint NOT NULL,
  `message` text COLLATE utf8mb4_general_ci NOT NULL,
  `create_at` datetime NOT NULL,
  `public` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customerbook`
--

INSERT INTO `customerbook` (`id`, `name`, `email`, `rating`, `message`, `create_at`, `public`) VALUES
(1, 'Gustáv', 'gusztav@gmail.com', 5, 'Én nagyon elégedett vagyok.', '2026-01-23 17:00:47', 1),
(2, 'Senki', 'senki@mail.com', 1, '...', '2026-01-23 17:00:47', 0),
(3, 'Jancsika', 'jancsi@mail.com', 4, 'Dunáról fúj a szél...', '2026-01-23 17:19:35', 1),
(4, 'Alma Sándor', 'szalontai.istvan@gmail.com', 5, 'dsfef', '2026-01-23 18:40:50', 0),
(5, 'Blájen', 'blajen@mail.com', 2, 'Mi a neved zsidó?', '2026-01-23 17:43:47', 1),
(7, 'Alma Sándor', 'szalontai.istvan@gmail.com', 5, 'dsfef', '2026-01-23 18:45:23', 0),
(9, 'Kolompár Ödön', 'odon@mail.com', 3, 'Szuperek vagytok!', '2026-01-23 18:48:08', 1),
(10, 'Kolompár Ödön', 'odon@mail.com', 3, 'Szuperek vagytok!', '2026-01-23 18:49:49', 0);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `details` text COLLATE utf8mb4_general_ci NOT NULL,
  `public` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `price`, `details`, `public`) VALUES
(1, 'Xénia szolgáltatás', 'Alfa lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia voluptatem neque reprehenderit ipsam, eveniet eum.', 20100, '', 1),
(2, 'Boborján csomag', 'Béta lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia voluptatem neque reprehenderit ipsam, eveniet eum.', 30200, '', 1),
(3, 'Alfréd szolgáltatás', 'Gamma lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia voluptatem neque reprehenderit ipsam, eveniet eum.', 10300, '', 1),
(4, 'Delta szolgáltatás', 'Delta lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia voluptatem neque reprehenderit ipsam, eveniet eum.', 40400, '', 1),
(5, 'Nem publikus', 'Ez majd elvileg nem látszik...', 0, '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customerbook`
--
ALTER TABLE `customerbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customerbook`
--
ALTER TABLE `customerbook`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
