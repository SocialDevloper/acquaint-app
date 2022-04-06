-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 05, 2022 at 07:19 PM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acquaint-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `csv_data`
--

CREATE TABLE `csv_data` (
  `id` bigint UNSIGNED NOT NULL,
  `csv_filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `csv_header` tinyint(1) NOT NULL DEFAULT '0',
  `csv_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `csv_data`
--

INSERT INTO `csv_data` (`id`, `csv_filename`, `csv_header`, `csv_data`, `created_at`, `updated_at`) VALUES
(1, 'product.csv', 0, '[[\"Name\",\"Category\",\"Description\",\"Price\",\"offer price\"],[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 00:19:12', '2022-03-26 00:19:12'),
(2, 'employees.sql', 0, '[[\"-- phpMyAdmin SQL Dump\"],[\"-- version 4.9.5deb2\"],[\"-- https:\\/\\/www.phpmyadmin.net\\/\"],[\"--\"],[\"-- Host: localhost:3306\"],[\"-- Generation Time: Feb 17\",\" 2022 at 11:25 AM\"],[\"-- Server version: 8.0.27-0ubuntu0.20.04.1\"],[\"-- PHP Version: 7.4.3\"],[null],[\"SET SQL_MODE = \\\"NO_AUTO_VALUE_ON_ZERO\\\";\"],[\"SET AUTOCOMMIT = 0;\"],[\"START TRANSACTION;\"],[\"SET time_zone = \\\"+00:00\\\";\"],[null],[null],[\"\\/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT *\\/;\"],[\"\\/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS *\\/;\"],[\"\\/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION *\\/;\"],[\"\\/*!40101 SET NAMES utf8mb4 *\\/;\"],[null],[\"--\"],[\"-- Database: `shivani`\"],[\"--\"],[null],[\"-- --------------------------------------------------------\"],[null],[\"--\"],[\"-- Table structure for table `employees`\"],[\"--\"],[null],[\"CREATE TABLE `employees` (\"],[\"  `id` int NOT NULL\",\"\"],[\"  `first_name` varchar(255) NOT NULL\",\"\"],[\"  `last_name` varchar(255) NOT NULL\",\"\"],[\"  `phone` varchar(255) NOT NULL\",\"\"],[\"  `gender` varchar(255) NOT NULL\",\"\"],[\"  `active` varchar(255) NOT NULL\",\"\"],[\"  `email` varchar(255) NOT NULL\",\"\"],[\"  `city` varchar(255) NOT NULL\"],[\") ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;\"],[null],[\"--\"],[\"-- Dumping data for table `employees`\"],[\"--\"],[null],[\"INSERT INTO `employees` (`id`\",\" `first_name`\",\" `last_name`\",\" `phone`\",\" `gender`\",\" `active`\",\" `email`\",\" `city`) VALUES\"],[\"(1\",\" \'shivani\'\",\" \'khanapara\'\",\" \'9090756556\'\",\" \'female\'\",\" \'0\'\",\" \'khanapar@gmail.com\'\",\" \'ahmedabad\')\",\"\"],[\"(2\",\" \'abc\'\",\" \'\'\",\" \'1234567890\'\",\" \'male\'\",\" \'1\'\",\" \'\'\",\" \'rajkot\')\",\"\"],[\"(3\",\" \'nirali\'\",\" \'vaishnani\'\",\" \'9090756556\'\",\" \'female\'\",\" \'\'\",\" \'nirali@gmail.com\'\",\" \'rajkot\')\",\"\"],[\"(4\",\" \'shivani\'\",\" \'\'\",\" \'\'\",\" \'female\'\",\" \'\'\",\" \'abc@gmail.com\'\",\" \'dhoraji\')\",\"\"],[\"(5\",\" \'xyz\'\",\" \'aaa\'\",\" \'1234567890\'\",\" \'male\'\",\" \'1\'\",\" \'aaa@gmail.com\'\",\" \'ahm\')\",\"\"],[\"(6\",\" \'shivani\'\",\" \'kkkkk\'\",\" \'\'\",\" \'female\'\",\" \'\'\",\" \'\'\",\" \'\')\",\"\"],[\"(7\",\" \'aaa\'\",\" \'\'\",\" \'1111111111\'\",\" \'female\'\",\" \'1\'\",\" \'aaa@gmail.com\'\",\" \'xyz\')\",\"\"],[\"(8\",\" \'pqr\'\",\" \'dfg\'\",\" \'234545454\'\",\" \'male\'\",\" \'0\'\",\" \'pqr@gmail.com\'\",\" \'junagadh\')\",\"\"],[\"(9\",\" \'bbbb\'\",\" \'\'\",\" \'997851234\'\",\" \'female\'\",\" \'0\'\",\" \'\'\",\" \'\')\",\"\"],[\"(10\",\" \'ccc\'\",\" \'uuu\'\",\" \'6789043121\'\",\" \'male\'\",\" \'0\'\",\" \'\'\",\" \'upleta\');\"],[null],[\"--\"],[\"-- Indexes for dumped tables\"],[\"--\"],[null],[\"--\"],[\"-- Indexes for table `employees`\"],[\"--\"],[\"ALTER TABLE `employees`\"],[\"  ADD PRIMARY KEY (`id`);\"],[null],[\"--\"],[\"-- AUTO_INCREMENT for dumped tables\"],[\"--\"],[null],[\"--\"],[\"-- AUTO_INCREMENT for table `employees`\"],[\"--\"],[\"ALTER TABLE `employees`\"],[\"  MODIFY `id` int NOT NULL AUTO_INCREMENT\",\" AUTO_INCREMENT=11;\"],[\"COMMIT;\"],[null],[\"\\/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT *\\/;\"],[\"\\/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS *\\/;\"],[\"\\/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION *\\/;\"]]', '2022-03-26 00:20:43', '2022-03-26 00:20:43'),
(3, 'product.csv', 0, '[[\"Name\",\"Category\",\"Description\",\"Price\",\"offer price\"],[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 00:21:08', '2022-03-26 00:21:08'),
(4, 'product.csv', 0, '[[\"Name\",\"Category\",\"Description\",\"Price\",\"offer price\"],[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 00:22:14', '2022-03-26 00:22:14'),
(5, 'product.csv', 0, '[[\"Name\",\"Category\",\"Description\",\"Price\",\"offer price\"],[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 00:32:09', '2022-03-26 00:32:09'),
(6, 'product.csv', 0, '[[\"Name\",\"Category\",\"Description\",\"Price\",\"offer price\"],[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 00:33:35', '2022-03-26 00:33:35'),
(7, 'product.csv', 0, '[[\"Name\",\"Category\",\"Description\",\"Price\",\"offer price\"],[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 00:36:02', '2022-03-26 00:36:02'),
(8, 'product.csv', 0, '[[\"Name\",\"Category\",\"Description\",\"Price\",\"offer price\"],[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 00:36:43', '2022-03-26 00:36:43'),
(9, 'product.csv', 0, '[[\"Name\",\"Category\",\"Description\",\"Price\",\"offer price\"],[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 00:37:54', '2022-03-26 00:37:54'),
(10, 'product.csv', 0, '[[\"Name\",\"Category\",\"Description\",\"Price\",\"offer price\"],[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 00:38:08', '2022-03-26 00:38:08'),
(11, 'product.csv', 0, '[[\"Name\",\"Category\",\"Description\",\"Price\",\"offer price\"],[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 00:46:39', '2022-03-26 00:46:39'),
(12, 'product.csv', 0, '[[\"Name\",\"Category\",\"Description\",\"Price\",\"offer price\"],[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 00:48:44', '2022-03-26 00:48:44'),
(13, 'product.csv', 0, '[[\"Name\",\"Category\",\"Description\",\"Price\",\"offer price\"],[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 00:49:48', '2022-03-26 00:49:48'),
(14, 'product.csv', 0, '[[\"Name\",\"Category\",\"Description\",\"Price\",\"offer price\"],[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 00:51:34', '2022-03-26 00:51:34'),
(15, 'product.csv', 0, '[[\"Name\",\"Category\",\"Description\",\"Price\",\"offer price\"],[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 00:52:02', '2022-03-26 00:52:02'),
(16, 'product.csv', 0, '[[\"Name\",\"Category\",\"Description\",\"Price\",\"offer price\"],[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 00:53:25', '2022-03-26 00:53:25'),
(17, 'product.csv', 0, '[[\"Name\",\"Category\",\"Description\",\"Price\",\"offer price\"],[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 00:54:04', '2022-03-26 00:54:04'),
(18, 'product.csv', 0, '[[\"Name\",\"Category\",\"Description\",\"Price\",\"offer price\"],[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 01:02:18', '2022-03-26 01:02:18'),
(19, 'product.csv', 0, '[[\"Name\",\"Category\",\"Description\",\"Price\",\"offer price\"],[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 01:07:12', '2022-03-26 01:07:12'),
(20, 'product.csv', 0, '[[\"Name\",\"Category\",\"Description\",\"Price\",\"offer price\"],[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 01:07:48', '2022-03-26 01:07:48'),
(21, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 01:12:38', '2022-03-26 01:12:38'),
(22, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 01:14:26', '2022-03-26 01:14:26'),
(23, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 01:15:33', '2022-03-26 01:15:33'),
(24, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 01:16:55', '2022-03-26 01:16:55'),
(25, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 01:55:41', '2022-03-26 01:55:41'),
(26, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:04:46', '2022-03-26 02:04:46'),
(27, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:06:18', '2022-03-26 02:06:18'),
(28, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:08:20', '2022-03-26 02:08:20'),
(29, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:09:08', '2022-03-26 02:09:08'),
(30, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:11:12', '2022-03-26 02:11:12'),
(31, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:15:19', '2022-03-26 02:15:19'),
(32, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:18:30', '2022-03-26 02:18:30'),
(33, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:23:18', '2022-03-26 02:23:18'),
(34, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:26:13', '2022-03-26 02:26:13'),
(35, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:26:52', '2022-03-26 02:26:52'),
(36, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:28:15', '2022-03-26 02:28:15'),
(37, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:28:39', '2022-03-26 02:28:39'),
(38, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:29:31', '2022-03-26 02:29:31'),
(39, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:30:42', '2022-03-26 02:30:42'),
(40, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:31:59', '2022-03-26 02:31:59'),
(41, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:32:33', '2022-03-26 02:32:33'),
(42, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:34:14', '2022-03-26 02:34:14'),
(43, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:34:31', '2022-03-26 02:34:31'),
(44, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:36:19', '2022-03-26 02:36:19'),
(45, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:38:21', '2022-03-26 02:38:21'),
(46, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:39:47', '2022-03-26 02:39:47'),
(47, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:41:52', '2022-03-26 02:41:52'),
(48, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:43:46', '2022-03-26 02:43:46'),
(49, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:45:47', '2022-03-26 02:45:47'),
(50, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:45:56', '2022-03-26 02:45:56'),
(51, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:46:28', '2022-03-26 02:46:28'),
(52, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:46:46', '2022-03-26 02:46:46'),
(53, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 02:49:45', '2022-03-26 02:49:45'),
(54, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 05:50:46', '2022-03-26 05:50:46'),
(55, 'product.csv', 0, '[[\"zzYSUgYv\",\"zCd4dORtlO\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"15\",\"557\"],[\"5bWhMDqZ\",\"bO5A5mSwJQ\",\"There are many variations of passages of Lorem Ipsum available.\",\"34\",\"\"],[\"WhD7PPE4\",\"a3dhmJBYPV\",\"Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words\",\"88\",\"978\"],[\"l9cAUa81\",\"nXon1BI2dX\",\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.\",\"364\",\"\"],[\"eebmoSa9\",\"RR4NgDkMqY\",\"There are many variations of passages of Lorem Ipsum available,\",\"785\",\"332\"]]', '2022-03-26 05:54:36', '2022-03-26 05:54:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'images/resource/jhJfJ9bd4SDqlobO7Zxej0i1r3B05whHTApKH3fe.png', 1, '2022-03-26 05:53:36', '2022-03-26 05:53:36'),
(2, 'images/resource/8qxQvmwcGUJOvLbfoq70i54F6VraHlljIh4THQYN.png', 3, '2022-03-26 05:54:16', '2022-03-26 05:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2022_03_24_032048_create_products_table', 2),
(8, '2022_03_24_040041_create_images_table', 2),
(9, '2022_03_26_053656_create_csv_data_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` int NOT NULL,
  `other_price` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `description`, `price`, `other_price`, `created_at`, `updated_at`) VALUES
(1, 'New Product', 'Category', 'Test description', 25, 10, '2022-03-26 05:53:36', '2022-03-26 05:53:36'),
(2, 'Lorem ipsum', 'Test', NULL, 55, NULL, '2022-03-26 05:54:04', '2022-03-26 05:54:04'),
(3, 'Test', 'test', 'test', 55, NULL, '2022-03-26 05:54:16', '2022-03-26 05:54:16'),
(4, 'zzYSUgYv', 'zCd4dORtlO', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 15, 557, '2022-03-26 05:55:00', '2022-03-26 05:55:00'),
(5, '5bWhMDqZ', 'bO5A5mSwJQ', 'There are many variations of passages of Lorem Ipsum available.', 34, 0, '2022-03-26 05:55:00', '2022-03-26 05:55:00'),
(6, 'WhD7PPE4', 'a3dhmJBYPV', 'Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words', 88, 978, '2022-03-26 05:55:00', '2022-03-26 05:55:00'),
(7, 'l9cAUa81', 'nXon1BI2dX', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for.', 364, 0, '2022-03-26 05:55:00', '2022-03-26 05:55:00'),
(8, 'eebmoSa9', 'RR4NgDkMqY', 'There are many variations of passages of Lorem Ipsum available,', 785, 332, '2022-03-26 05:55:00', '2022-03-26 05:55:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mitesh Kadivar', 'admin@gmail.com', NULL, '$2y$10$7RrXTnld3YpaQxz2PK4Vkub2DCGtE/QJyIcjchLhGq5.r4DxYStd2', NULL, '2022-03-23 21:40:50', '2022-03-23 21:40:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `csv_data`
--
ALTER TABLE `csv_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `csv_data`
--
ALTER TABLE `csv_data`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
