-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 28, 2020 at 12:40 PM
-- Server version: 10.3.27-MariaDB-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kpczeuej_corporz`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `seourl` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `blog_home` varchar(200) NOT NULL,
  `content` mediumtext NOT NULL,
  `metatags` text DEFAULT NULL,
  `type` enum('blog','page') NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `author` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `navid` int(11) DEFAULT NULL,
  `catname` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `flag` enum('1','0') NOT NULL DEFAULT '1',
  `file_path` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(12) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `value` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `sort` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(20171017120422);

-- --------------------------------------------------------

--
-- Table structure for table `navigation`
--

CREATE TABLE `navigation` (
  `id` int(11) NOT NULL,
  `catname` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `flag` enum('1','0') NOT NULL DEFAULT '1',
  `sort` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `sort` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
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
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `reg`, `established`, `address`, `founder`, `slogan`, `footer_about`, `file_path`, `footer_logo`, `email`, `contact`, `cre_or_up_by`, `cre_or_up_date`, `status`) VALUES
(1, 'CorporZ Solutions', '12345678', '2019-09-16', 'New Delhi, IND', 'John Parkar ', 'Seamlessly deliver pandemic e-services and next-generation initiatives.', 'Seamlessly deliver pandemic e-services and next-generation initiatives.', 'e955a-cp-logo-small.png', '8675b-cp-logo-w-small.png', 'mail@corporzsolutions.in', '+91 9876543210', '1', '2020-12-26 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `file_path` varchar(200) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `sort` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `file_path`, `name`, `link`, `created`, `sort`) VALUES
(5, '4ffe0-slider-1.jpg', 'TOTAL BUSINESS SOLUTIONS - Your Most Trusted Business Partner', 'https://corporz.codewife.com/about-us', '2020-12-26 14:37:06', 2),
(6, '5dd53-slider-1.jpg', 'TOTAL BUSINESS SOLUTIONS - Your Most Trusted Business Partner', 'https://corporz.codewife.com/about-us', '2020-12-26 14:54:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `socialmedia`
--

CREATE TABLE `socialmedia` (
  `id` int(11) NOT NULL,
  `fa_icon` varchar(220) NOT NULL,
  `name` varchar(100) NOT NULL,
  `link` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `socialmedia`
--

INSERT INTO `socialmedia` (`id`, `fa_icon`, `name`, `link`, `created`) VALUES
(1, 'fa fa-facebook', 'Facebook', 'https://www.facebook.com/codewife', '2020-07-13 00:55:37'),
(2, 'fa fa-twitter', 'Twitter', 'https://twitter.com/code_wife', '2020-07-13 01:03:21'),
(3, 'fa fa-instagram', 'Instagram', 'https://www.instagram.com/codewife', '2020-07-25 13:27:05'),
(4, 'fa fa-youtube', 'Youtube', 'https://www.youtube.com/codewife', '2020-07-26 16:30:41');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `catname` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `file_path` varchar(200) NOT NULL,
  `short_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `address`, `file_path`, `short_desc`) VALUES
(1, 'Austin Cesar', 'Team Leader', '74085-testimonials1.png', 'Assertively procrastinate distributed relationships whereas equity invested intellectual capital everything energistically underwhelm proactive.'),
(2, 'Pirtle Karol', 'Team Leader', '06ca0-testimonials2.png', 'Intrinsicly facilitate functional imperatives without next-generation meta-services. Compellingly revolutionize worldwide users vis-a-vis enterprise best practices.'),
(3, 'Joe Pirtle', 'Marketing Head', 'd22bd-testimonials3.png', 'Interactively grow backend scenarios through one paradigms. Distinctively and communicate efficient information without effective meta-services.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `file_path` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `file_path`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$ImF1EG/1jgGNpo4A.Ev7TuSNZpH1HCMvlmi4148ggFliP9sZLBjRq', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 2020, 2020, 1, 'Admin', 'istrator', 'ADMIN', '01851334578', 'assets/images/user/1593895157.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(9, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `navid` (`navid`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation`
--
ALTER TABLE `navigation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialmedia`
--
ALTER TABLE `socialmedia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `navigation`
--
ALTER TABLE `navigation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `socialmedia`
--
ALTER TABLE `socialmedia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
