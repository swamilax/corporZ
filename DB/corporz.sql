-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 18, 2023 at 03:32 PM
-- Server version: 8.0.31
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `corporz`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL,
  `seourl` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `blog_home` varchar(200) NOT NULL,
  `content` mediumtext NOT NULL,
  `metatags` text,
  `type` enum('blog','page') NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `author` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `pid`, `seourl`, `title`, `short`, `file_path`, `blog_home`, `content`, `metatags`, `type`, `status`, `author`, `created`) VALUES
(7, 0, 'appropriately-productize-fully', 'Appropriately productize fully', 'Some quick example text to build on the card title and make up the bulk.', 'c222e-breadcrumb-bg.jpg', 'd9b30-6b281-gallery-img1.jpg', '<p>Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache fanny pack nostrud. Seitan High Life reprehenderit consectetur cupidatat kogi about me. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth art party deep v chillwave. Seitan High Life reprehenderit consectetur cupidatat kogi.</p>\n\n<p>&nbsp;</p>\n\n<p>Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa eiusmod Pinterest in do umami readymade swag. Selfies iPhone Kickstarter, drinking vinegar jean shorts fixie consequat flexitarian four loko.</p>\n\n<p>&nbsp;</p>\n\n<blockquote>\n<p>To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment.</p>\n\n<footer>Amanda Pollock, Google Inc.</footer>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<p>Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache fanny pack nostrud. Seitan High Life reprehenderit consectetur cupidatat kogi about me. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica.</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n', NULL, 'blog', 'active', 'Codewife', '2020-07-11 14:52:49'),
(8, 0, 'quickly-formulate-backend', 'Quickly formulate backend', 'Synergistically engage effective ROI after customer directed partnerships.', 'f118f-breadcrumb-bg.jpg', '152da-7e59f-gallery-img2.jpg', '<p>Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache fanny pack nostrud. Seitan High Life reprehenderit consectetur cupidatat kogi about me. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth art party deep v chillwave. Seitan High Life reprehenderit consectetur cupidatat kogi.</p>\n\n<p>&nbsp;</p>\n\n<p>Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa eiusmod Pinterest in do umami readymade swag. Selfies iPhone Kickstarter, drinking vinegar jean shorts fixie consequat flexitarian four loko.</p>\n\n<p>&nbsp;</p>\n\n<blockquote>\n<p>To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment.</p>\n\n<footer>Amanda Pollock, Google Inc.</footer>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<p>Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache fanny pack nostrud. Seitan High Life reprehenderit consectetur cupidatat kogi about me. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica.</p>\n\n<p>&nbsp;</p>\n', NULL, 'blog', 'active', 'Codewife', '2020-07-12 13:17:44'),
(10, 0, 'object-communicate-business', 'Object communicate business', 'Provides perfectly stable output even under severe conditions of unbalanced voltage conditions.', 'db1e3-breadcrumb-bg.jpg', '76fea-blog1.jpg', '<p>Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache fanny pack nostrud. Seitan High Life reprehenderit consectetur cupidatat kogi about me. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth art party deep v chillwave. Seitan High Life reprehenderit consectetur cupidatat kogi.</p>\n\n<p>&nbsp;</p>\n\n<p>Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa eiusmod Pinterest in do umami readymade swag. Selfies iPhone Kickstarter, drinking vinegar jean shorts fixie consequat flexitarian four loko.</p>\n\n<p>&nbsp;</p>\n\n<blockquote>\n<p>To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment.</p>\n\n<footer>Amanda Pollock, Google Inc.</footer>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<p>Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache fanny pack nostrud. Seitan High Life reprehenderit consectetur cupidatat kogi about me. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica.</p>\n', NULL, 'blog', 'active', 'Codewife', '2020-07-12 13:19:01'),
(11, 0, 'about-us', 'About us', 'Interactively develop timely niche markets before extensive imperatives. Professionally repurpose interoperable growth strategies before effective core competencies.', 'cde4d-breadcrumb-bg.jpg', '', '<h3>15 Years Of Experience&nbsp;In This Business.</h3>\n\n<p>&nbsp;</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget odio condimentum, suscipit elit non,sodales mauris. Aliquam erat volutpat. Integer eu risus consequat, tempus odio nec, hendrerit risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget odio condimentum, suscipit elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget odio condimentum, suscipit elit non,sodales mauris. Aliquam erat volutpat. Integer eu risus consequat, tempus odio nec, hendrerit risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget odio condimentum, suscipit elit.</p>\n\n<p>&nbsp;</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget odio condimentum, suscipit elit non,sodales mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget odio condimentum, suscipit elit non,sodales mauris.</p>\n\n<p>&nbsp;</p>\n\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\n\n<p>&nbsp;</p>\n', NULL, 'page', 'active', 'Codewife', '2020-07-19 10:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `navid` int DEFAULT NULL,
  `catname` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `flag` enum('1','0') NOT NULL DEFAULT '1',
  `file_path` varchar(255) NOT NULL,
  `sort` int NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `navid` (`navid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `navid`, `catname`, `link`, `flag`, `file_path`, `sort`, `created`) VALUES
(14, 3, 'Financial Planning', 'financial-planning', '1', '4a531-logo_400x150.jpg', 1, '2020-07-09 15:15:09'),
(15, 3, 'SEO Solutions', 'seo-solutions', '1', '9a64d-banner-3.jpg', 2, '2020-07-26 10:05:53'),
(16, 3, 'Business Security', 'business-security', '1', 'b8bda-banner-3.jpg', 3, '2020-07-26 10:07:28'),
(17, 2, 'Login & Signup', '#', '', 'a2caa-cp-logo-small.png', 1, '2020-12-26 18:41:56'),
(18, 2, 'Utilities', '#', '', '1c218-cp-logo-small.png', 2, '2020-12-26 18:42:44'),
(19, 2, 'Teams', '#', '', '57747-cp-logo-small.png', 3, '2020-12-26 18:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
CREATE TABLE IF NOT EXISTS `contactus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

DROP TABLE IF EXISTS `counters`;
CREATE TABLE IF NOT EXISTS `counters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `value` int NOT NULL,
  `icon` varchar(100) NOT NULL,
  `sort` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `title`, `value`, `icon`, `sort`) VALUES
(1, 'Hours of Work', 101, 'icon icon-clock stat-icon', 1),
(2, 'Satisfied Clients', 123, 'icon icon-profile-male stat-icon', 2),
(3, 'Projects Completed', 343, 'icon icon-lightbulb stat-icon', 3),
(4, 'Awards Won', 49, 'icon icon-trophy stat-icon', 4);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `sort` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `title`, `description`, `file_path`, `sort`) VALUES
(12, 'Title', 'Description', '6fe04-2db2e-gallery-img6.jpg', 1),
(13, 'Title', 'Description', '2829e-5c7c1-gallery-img7.jpg', 2),
(14, 'Title', 'Description', '99bc6-6b281-gallery-img1.jpg', 3),
(15, 'Title', 'Description', '396c4-7e59f-gallery-img2.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `version` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(20171017120422);

-- --------------------------------------------------------

--
-- Table structure for table `navigation`
--

DROP TABLE IF EXISTS `navigation`;
CREATE TABLE IF NOT EXISTS `navigation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `catname` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `flag` enum('1','0') NOT NULL DEFAULT '1',
  `sort` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `navigation`
--

INSERT INTO `navigation` (`id`, `catname`, `link`, `flag`, `sort`) VALUES
(1, 'About us', 'about-us', '1', 2),
(2, 'Pages', 'pages', '', 3),
(3, 'Our Services', 'our-services', '', 5),
(4, 'Blogs', 'blogs', '1', 4),
(5, 'Contact us', 'contact-us', '1', 6),
(6, 'Gallery', 'gallery', '1', 3),
(7, 'Home', 'home', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
CREATE TABLE IF NOT EXISTS `partners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file_path` varchar(255) NOT NULL,
  `sort` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `file_path`, `sort`) VALUES
(1, '33700-partners-logo3.png', 1),
(2, '6e813-partners-logo3.png', 2),
(3, '28710-partners-logo3.png', 3),
(4, '31532-partners-logo3.png', 4),
(5, '912ee-partners-logo3.png', 5);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `reg` varchar(50) NOT NULL,
  `established` date NOT NULL,
  `address` varchar(200) NOT NULL,
  `founder` varchar(100) NOT NULL,
  `slogan` varchar(500) NOT NULL,
  `footer_about` text NOT NULL,
  `file_path` varchar(200) NOT NULL,
  `footer_logo` varchar(200) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `cre_or_up_by` varchar(50) NOT NULL,
  `cre_or_up_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `reg`, `established`, `address`, `founder`, `slogan`, `footer_about`, `file_path`, `footer_logo`, `email`, `contact`, `cre_or_up_by`, `cre_or_up_date`, `status`) VALUES
(1, 'CorporZ Solutions', '12345678', '2019-09-16', 'New Delhi, IND', 'Narendra Modi', 'Seamlessly deliver pandemic e-services and next-generation initiatives.', 'Seamlessly deliver pandemic e-services and next-generation initiatives.', 'e955a-cp-logo-small.png', '8675b-cp-logo-w-small.png', 'mail@corporz.co.in', '+91 987654321', '1', '2023-09-18 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file_path` varchar(200) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sort` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `file_path`, `name`, `link`, `created`, `sort`) VALUES
(5, '4ffe0-slider-1.jpg', 'TOTAL BUSINESS SOLUTIONS - Your Most Trusted Business Partner', 'http://localhost/corporz/about-us', '2020-12-26 14:37:06', 2),
(6, '5dd53-slider-1.jpg', 'TOTAL BUSINESS SOLUTIONS - Your Most Trusted Business Partner', 'http://localhost/corporz/about-us', '2020-12-26 14:54:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `socialmedia`
--

DROP TABLE IF EXISTS `socialmedia`;
CREATE TABLE IF NOT EXISTS `socialmedia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fa_icon` varchar(220) NOT NULL,
  `name` varchar(100) NOT NULL,
  `link` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `socialmedia`
--

INSERT INTO `socialmedia` (`id`, `fa_icon`, `name`, `link`, `created`) VALUES
(1, 'fa fa-facebook', 'Facebook', 'https://www.facebook.com/', '2020-07-13 00:55:37'),
(2, 'fa fa-twitter', 'Twitter', 'https://twitter.com/', '2020-07-13 01:03:21'),
(3, 'fa fa-instagram', 'Instagram', 'https://www.instagram.com/', '2020-07-25 13:27:05'),
(4, 'fa fa-youtube', 'Youtube', 'https://www.youtube.com/', '2020-07-26 16:30:41');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
CREATE TABLE IF NOT EXISTS `subcategories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL,
  `catname` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `sort` int NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `pid`, `catname`, `link`, `file_path`, `sort`, `created`) VALUES
(15, 17, 'Login', '#', '6b5ce-cp-logo-small.png', 1, '2020-12-26 18:43:59'),
(16, 17, 'Signup', '#', 'a3b98-cp-logo-small.png', 2, '2020-12-26 18:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `file_path` varchar(200) NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `address`, `file_path`, `short_desc`) VALUES
(1, 'Amit Shah', 'Team Leader', '74085-testimonials1.png', 'Assertively procrastinate distributed relationships whereas equity invested intellectual capital everything energistically underwhelm proactive.'),
(2, 'Smriti Irani', 'Team Leader', '06ca0-testimonials2.png', 'Intrinsicly facilitate functional imperatives without next-generation meta-services. Compellingly revolutionize worldwide users vis-a-vis enterprise best practices.'),
(3, 'Dr. S Jaishankar', 'Marketing Head', 'd22bd-testimonials3.png', 'Interactively grow backend scenarios through one paradigms. Distinctively and communicate efficient information without effective meta-services.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int UNSIGNED NOT NULL,
  `last_login` int UNSIGNED DEFAULT NULL,
  `active` tinyint UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `file_path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_email` (`email`),
  UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  UNIQUE KEY `uc_remember_selector` (`remember_selector`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `file_path`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$ImF1EG/1jgGNpo4A.Ev7TuSNZpH1HCMvlmi4148ggFliP9sZLBjRq', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 2020, 2023, 1, 'Admin', 'istrator', 'ADMIN', '01851334578', 'assets/images/user/1593895157.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `group_id` mediumint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(9, 1, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `fk_navid` FOREIGN KEY (`navid`) REFERENCES `navigation` (`id`);

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`pid`) REFERENCES `categories` (`id`);

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
