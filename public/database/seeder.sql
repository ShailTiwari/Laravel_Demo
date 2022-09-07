-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2022 at 02:13 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seeder`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `taskstatus` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assignee` int(11) NOT NULL DEFAULT 0,
  `reporter` int(11) NOT NULL DEFAULT 0,
  `flagged` int(11) NOT NULL DEFAULT 0,
  `labels` int(11) NOT NULL DEFAULT 0,
  `start` date DEFAULT NULL,
  `options` int(11) NOT NULL DEFAULT 0,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no_image.png',
  `isconfirm` int(11) NOT NULL DEFAULT 1,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` int(11) NOT NULL DEFAULT 1,
  `isdelete` int(11) NOT NULL DEFAULT 0,
  `inuse` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `project`, `type`, `taskstatus`, `order`, `summary`, `description`, `assignee`, `reporter`, `flagged`, `labels`, `start`, `options`, `key`, `icon_picture`, `isconfirm`, `remarks`, `isactive`, `isdelete`, `inuse`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 4, 2, 'Blanditiis et possimus.', 'Rem harum optio eveniet ullam eum eos autem molestiae facere.', 1, 29, 5, 2, '2018-07-22', 2, 'Ipsam et.', 'no_image.png', 1, 'Sequi veritatis odit accusantium alias autem.', 1, 0, 1, 1, 1, NULL, NULL),
(2, 3, 1, 3, 1, 'Beatae quaerat officia.', 'Aut eos ut aspernatur asperiores facilis voluptate quas.', 83, 91, 5, 4, '2021-03-25', 1, 'Et consequatur.', 'no_image.png', 1, 'In officia cupiditate veritatis ducimus deserunt et sapiente.', 1, 0, 1, 1, 1, NULL, NULL),
(3, 1, 2, 3, 3, 'Tempore architecto.', 'Quo et illo enim consequatur doloremque placeat quasi iste ducimus explicabo.', 85, 15, 1, 3, '2001-08-26', 4, 'Maiores occaecati.', 'no_image.png', 1, 'Non laborum et et distinctio a autem.', 1, 0, 1, 1, 1, NULL, '2022-09-07 05:54:40'),
(4, 1, 5, 2, 5, 'Sit atque error dolores voluptatem.', 'Iure nemo eius pariatur possimus exercitationem quo fugiat placeat repellendus consequuntur beatae sed.', 20, 86, 3, 4, '1979-09-24', 2, 'Nesciunt.', 'no_image.png', 1, 'Voluptas ratione ullam inventore rerum earum laborum est.', 1, 0, 1, 1, 1, NULL, '2022-09-07 05:54:41'),
(5, 3, 3, 2, 3, 'Accusantium sit est.', 'Aut velit et beatae eos qui molestias.', 15, 70, 3, 1, '2011-05-04', 2, 'Dolore ipsum.', 'no_image.png', 1, 'Aperiam eum facilis ipsa vel nostrum.', 1, 0, 1, 1, 1, NULL, NULL),
(6, 5, 5, 5, 5, 'Incidunt reiciendis.', 'Deserunt placeat sed culpa eaque voluptas laudantium aut amet.', 64, 6, 5, 4, '1988-08-20', 1, 'Optio illum.', 'no_image.png', 1, 'Reprehenderit qui et et est quibusdam aut.', 1, 0, 1, 1, 1, NULL, NULL),
(7, 2, 5, 2, 1, 'Maiores sint qui et commodi.', 'Consequatur et aut molestiae et sed quod eos doloribus vero quia mollitia rerum expedita.', 10, 39, 2, 4, '1990-06-28', 4, 'Pariatur laudantium.', 'no_image.png', 1, 'Nemo error aut voluptatem eligendi rerum asperiores sit ab.', 1, 0, 1, 1, 1, NULL, NULL),
(8, 5, 5, 5, 4, 'Aut velit et.', 'Rem esse cum iusto veritatis blanditiis quae autem aut perspiciatis rerum enim.', 68, 84, 3, 2, '1997-07-03', 5, 'Veritatis est.', 'no_image.png', 1, 'Distinctio nulla ut perferendis eum.', 1, 0, 1, 1, 1, NULL, NULL),
(9, 3, 2, 3, 3, 'Maiores odio dolor ab.', 'Voluptatem id voluptatibus cum quis tenetur voluptatem expedita eos.', 7, 37, 2, 4, '2018-10-31', 1, 'Vel.', 'no_image.png', 1, 'Quo et et ad et tenetur ut.', 1, 0, 1, 1, 1, NULL, NULL),
(10, 3, 2, 2, 3, 'Sed repellendus asperiores voluptate.', 'Aut qui reiciendis provident ea dignissimos eligendi est.', 2, 3, 2, 5, '1979-10-11', 2, 'Et officiis.', 'no_image.png', 1, 'Et voluptatibus ullam magni natus vel iusto est.', 1, 0, 1, 1, 1, NULL, NULL),
(11, 5, 2, 3, 3, 'Repellat beatae sapiente aspernatur.', 'Id mollitia nostrum rerum in eos odio consequatur nulla rem.', 42, 24, 2, 3, '2019-09-18', 1, 'Rerum.', 'no_image.png', 1, 'Voluptatem qui maiores vitae vitae.', 1, 0, 1, 1, 1, NULL, NULL),
(12, 2, 1, 5, 1, 'Doloribus necessitatibus earum aut.', 'Doloremque excepturi alias ipsa perspiciatis est dolores aut et sunt assumenda vel omnis optio.', 43, 95, 3, 4, '1998-03-27', 3, 'Quae.', 'no_image.png', 1, 'Voluptate architecto facere et aspernatur distinctio occaecati.', 1, 0, 1, 1, 1, NULL, NULL),
(13, 5, 5, 3, 1, 'Cupiditate ea qui dolor.', 'Eaque iure enim impedit vel debitis officiis assumenda aut numquam facere.', 100, 92, 2, 1, '1998-09-21', 5, 'Unde quis.', 'no_image.png', 1, 'Repellendus minus corrupti molestiae placeat consequatur.', 1, 0, 1, 1, 1, NULL, NULL),
(14, 1, 1, 2, 2, 'Officiis corporis sunt.', 'Non nesciunt ipsam quos veritatis rerum ea molestiae deleniti ut.', 47, 86, 4, 3, '2006-06-03', 5, 'Incidunt pariatur.', 'no_image.png', 1, 'Dicta harum iusto sint nam id quia quibusdam.', 1, 0, 1, 1, 1, NULL, '2022-09-07 05:54:41'),
(15, 1, 5, 4, 1, 'Laborum nobis eveniet sint.', 'Porro voluptates sint incidunt doloremque molestiae dolores vel dolorem cum sed inventore impedit quidem.', 19, 95, 1, 5, '2014-07-25', 4, 'Aliquid.', 'no_image.png', 1, 'Tenetur quo laborum sint soluta quis fugiat magni.', 1, 0, 1, 1, 1, NULL, NULL),
(16, 3, 4, 3, 3, 'Quisquam necessitatibus earum et.', 'Pariatur culpa omnis omnis ipsam ea esse voluptate harum perferendis delectus aut dolor.', 52, 55, 2, 4, '2007-01-07', 5, 'Voluptatem architecto.', 'no_image.png', 1, 'Numquam sed aliquam est architecto.', 1, 0, 1, 1, 1, NULL, NULL),
(17, 5, 2, 3, 1, 'Et expedita unde.', 'Et laborum sit commodi aut aut facilis voluptates magnam voluptatibus.', 8, 4, 3, 5, '1989-09-18', 5, 'Voluptatem sed.', 'no_image.png', 1, 'Et repellat itaque facilis qui et ratione dolor.', 1, 0, 1, 1, 1, NULL, NULL),
(18, 5, 5, 2, 2, 'Praesentium quos eum.', 'Perferendis et deleniti quo impedit modi quisquam molestiae.', 62, 73, 2, 4, '2013-05-14', 3, 'Eaque.', 'no_image.png', 1, 'Quis nihil nulla et et nihil.', 1, 0, 1, 1, 1, NULL, NULL),
(19, 2, 4, 3, 2, 'Et voluptas consequatur.', 'Eaque tenetur illo nisi occaecati expedita libero et sit qui quia maxime vero sit.', 42, 41, 1, 5, '2015-05-21', 4, 'Labore at.', 'no_image.png', 1, 'Nesciunt praesentium non qui eligendi delectus magni aut.', 1, 0, 1, 1, 1, NULL, NULL),
(20, 1, 2, 4, 5, 'Consequatur dolorem rerum aut ut.', 'Temporibus quas et aut voluptatem sed dolorem odio.', 62, 20, 4, 2, '1979-01-29', 5, 'Earum.', 'no_image.png', 1, 'Molestiae et est id.', 1, 0, 1, 1, 1, NULL, NULL),
(21, 5, 3, 3, 2, 'Sint ad sint eum.', 'Nemo est nihil quis consectetur unde ut maiores quis.', 53, 93, 2, 4, '2004-10-13', 3, 'Qui sit.', 'no_image.png', 1, 'Voluptatibus accusamus eos aut animi consequatur.', 1, 0, 1, 1, 1, NULL, NULL),
(22, 1, 5, 1, 2, 'Tempore velit facilis culpa.', 'Nobis velit porro sequi natus molestiae nihil.', 32, 26, 1, 1, '1981-12-31', 4, 'Aut.', 'no_image.png', 1, 'Est aut aut occaecati culpa.', 1, 0, 1, 1, 1, NULL, '2022-09-07 05:54:41'),
(23, 4, 2, 3, 5, 'A illo explicabo voluptatem accusantium.', 'Aspernatur est sunt cupiditate nihil sequi quia itaque commodi voluptatum et libero recusandae temporibus.', 9, 42, 1, 3, '2006-04-01', 1, 'Perspiciatis.', 'no_image.png', 1, 'Consequuntur sunt sint quia excepturi est enim.', 1, 0, 1, 1, 1, NULL, NULL),
(24, 2, 2, 3, 4, 'Eaque quis accusamus.', 'Iure aut inventore voluptatem eos qui tempora consequuntur id ut quia aut unde ut.', 4, 9, 5, 2, '1992-01-20', 4, 'Enim commodi.', 'no_image.png', 1, 'Recusandae possimus ullam consequatur quo iste quae similique.', 1, 0, 1, 1, 1, NULL, NULL),
(25, 4, 1, 4, 1, 'Non dignissimos repudiandae.', 'Earum sint quia et asperiores velit ut.', 11, 57, 5, 3, '1982-02-10', 5, 'Optio itaque.', 'no_image.png', 1, 'Impedit occaecati et consectetur ullam dolor.', 1, 0, 1, 1, 1, NULL, NULL),
(26, 4, 2, 1, 5, 'Quos culpa quas voluptas.', 'Fuga totam nulla animi sit explicabo cum optio.', 66, 30, 3, 4, '2002-10-09', 2, 'Perferendis qui.', 'no_image.png', 1, 'Ipsa quo recusandae enim rerum laborum qui.', 1, 0, 1, 1, 1, NULL, NULL),
(27, 5, 3, 2, 1, 'Veritatis enim nobis.', 'Perspiciatis facilis nihil est dolor temporibus harum debitis et neque.', 32, 57, 2, 4, '2000-06-15', 4, 'Culpa.', 'no_image.png', 1, 'Incidunt qui nam ipsum ut deserunt est impedit minima.', 1, 0, 1, 1, 1, NULL, NULL),
(28, 5, 4, 3, 1, 'Laborum rerum dolores.', 'Molestiae ut accusamus rerum autem incidunt nulla accusantium repellendus consequatur.', 8, 34, 5, 2, '1996-08-08', 2, 'Aut incidunt.', 'no_image.png', 1, 'Exercitationem minus nihil sunt error dignissimos placeat omnis.', 1, 0, 1, 1, 1, NULL, NULL),
(29, 5, 4, 2, 3, 'Quisquam deserunt iure.', 'Dolore temporibus commodi voluptas quam magnam iure.', 63, 54, 2, 3, '1984-01-24', 3, 'Quis.', 'no_image.png', 1, 'Ut non dolorum explicabo nisi.', 1, 0, 1, 1, 1, NULL, NULL),
(30, 3, 2, 3, 3, 'Itaque aspernatur eius.', 'Reiciendis tenetur vitae laboriosam sapiente et ea.', 21, 9, 4, 1, '2021-09-23', 3, 'Quis.', 'no_image.png', 1, 'Sunt doloremque vel explicabo quibusdam sint.', 1, 0, 1, 1, 1, NULL, NULL),
(31, 1, 4, 2, 1, 'Magni dolorum dolorem et.', 'Repudiandae est id earum culpa nulla eius possimus quos.', 98, 5, 5, 3, '1997-08-17', 5, 'Atque.', 'no_image.png', 1, 'Quo aut molestiae a.', 1, 0, 1, 1, 1, NULL, '2022-09-07 05:54:41'),
(32, 5, 1, 3, 3, 'Eaque iste perspiciatis est.', 'Repellat necessitatibus rerum voluptatem impedit quas quas et quia.', 93, 51, 2, 1, '1977-09-30', 1, 'Voluptatibus.', 'no_image.png', 1, 'Ipsam aut possimus quidem qui debitis quia.', 1, 0, 1, 1, 1, NULL, NULL),
(33, 2, 3, 2, 5, 'Enim cupiditate sequi minus.', 'Perspiciatis omnis eos eveniet quis quo rerum accusantium ad nihil fugiat ut.', 96, 12, 5, 4, '2001-03-18', 4, 'Voluptatem alias.', 'no_image.png', 1, 'Sed officiis ratione et quo unde.', 1, 0, 1, 1, 1, NULL, NULL),
(34, 1, 2, 2, 6, 'Id fuga amet.', 'Excepturi provident commodi ut doloremque velit tenetur.', 49, 26, 4, 4, '2012-04-03', 4, 'Dolorem.', 'no_image.png', 1, 'Velit iusto rem autem fugiat.', 1, 0, 1, 1, 1, NULL, '2022-09-07 05:54:41'),
(35, 4, 2, 3, 1, 'Reiciendis et necessitatibus eligendi.', 'Quasi ut consequatur eum praesentium aut fugit eos vel mollitia sed dolor odit.', 49, 61, 2, 1, '2021-04-14', 5, 'Ex.', 'no_image.png', 1, 'Deserunt vel corporis consequatur et aut ad sit sint.', 1, 0, 1, 1, 1, NULL, NULL),
(36, 5, 2, 5, 3, 'Est non.', 'Architecto quis nihil ex laborum neque voluptatem quis incidunt quas eaque amet quaerat dolores.', 32, 37, 1, 1, '1978-04-26', 4, 'Illo incidunt.', 'no_image.png', 1, 'Sit magnam ut vitae modi.', 1, 0, 1, 1, 1, NULL, NULL),
(37, 2, 4, 1, 1, 'Est aspernatur cumque repudiandae.', 'Libero temporibus molestiae a non et nisi officia.', 31, 42, 1, 2, '2018-10-02', 4, 'Voluptates.', 'no_image.png', 1, 'Exercitationem temporibus rem et quo praesentium eos.', 1, 0, 1, 1, 1, NULL, NULL),
(38, 1, 2, 4, 4, 'Aliquid quo debitis.', 'Sit amet fugit quia aliquam enim nam itaque aliquid sint.', 34, 65, 3, 1, '2009-03-17', 3, 'Nemo reprehenderit.', 'no_image.png', 1, 'Qui cum esse sit deleniti placeat laboriosam dignissimos beatae.', 1, 0, 1, 1, 1, NULL, NULL),
(39, 5, 1, 2, 2, 'Maxime eaque atque et.', 'Quisquam voluptate eos id autem quasi modi sint.', 83, 21, 3, 3, '2001-06-06', 1, 'Qui.', 'no_image.png', 1, 'Similique qui veritatis error impedit tempora eius optio.', 1, 0, 1, 1, 1, NULL, NULL),
(40, 2, 2, 5, 3, 'Iste doloremque excepturi.', 'Odio provident inventore ex velit accusamus est doloremque sapiente ut.', 64, 95, 5, 3, '1974-10-08', 4, 'Soluta placeat.', 'no_image.png', 1, 'Nihil blanditiis necessitatibus et sit voluptatem.', 1, 0, 1, 1, 1, NULL, NULL),
(41, 5, 5, 2, 4, 'Excepturi et quia quam nesciunt.', 'Odio tenetur qui officia sit sint quis beatae dolore enim deserunt molestiae quo nulla.', 99, 92, 3, 5, '1986-11-06', 2, 'Necessitatibus distinctio.', 'no_image.png', 1, 'Autem tempore dolore eos unde atque unde.', 1, 0, 1, 1, 1, NULL, NULL),
(42, 4, 4, 3, 1, 'Ducimus velit facilis.', 'Odio minima nemo nobis numquam vero ut animi mollitia doloremque odit enim sit a.', 45, 7, 1, 2, '1990-04-23', 3, 'Eos.', 'no_image.png', 1, 'Esse dolorum omnis accusamus ut amet consectetur.', 1, 0, 1, 1, 1, NULL, NULL),
(43, 4, 4, 2, 3, 'Voluptas error ratione.', 'In vel saepe pariatur qui iusto culpa voluptatibus error.', 48, 11, 5, 2, '2005-05-17', 3, 'Totam unde.', 'no_image.png', 1, 'Ipsa provident corporis perspiciatis tempora.', 1, 0, 1, 1, 1, NULL, NULL),
(44, 4, 1, 5, 5, 'Porro reiciendis ut.', 'Iste similique et ducimus quia dolorum enim commodi consequatur sint dignissimos sit.', 31, 2, 1, 1, '2018-05-23', 5, 'Qui.', 'no_image.png', 1, 'Esse deleniti ea placeat voluptas ad consectetur.', 1, 0, 1, 1, 1, NULL, NULL),
(45, 4, 3, 4, 3, 'Et similique non earum.', 'Et sed id maxime consequatur ad suscipit.', 81, 36, 3, 1, '1973-05-19', 5, 'Nostrum.', 'no_image.png', 1, 'Molestias doloribus possimus ab et dolorum.', 1, 0, 1, 1, 1, NULL, NULL),
(46, 1, 2, 2, 7, 'Cumque debitis nostrum fugiat.', 'Ea blanditiis est nisi corrupti impedit amet corrupti repellendus quibusdam consequatur.', 76, 24, 4, 2, '2005-11-09', 2, 'Numquam consequuntur.', 'no_image.png', 1, 'Laborum ut enim et expedita alias.', 1, 0, 1, 1, 1, NULL, '2022-09-07 05:54:41'),
(47, 3, 2, 4, 3, 'Non atque dicta maxime sapiente.', 'Optio minima totam deserunt sit doloremque odio hic odit pariatur accusantium.', 50, 60, 3, 4, '2008-10-29', 3, 'Rerum unde.', 'no_image.png', 1, 'Repellat dolorem consequuntur illo deserunt tempora libero.', 1, 0, 1, 1, 1, NULL, NULL),
(48, 1, 1, 5, 2, 'Veritatis repellat.', 'Molestias et a neque corrupti ratione omnis in consequatur odit mollitia ut ea reprehenderit.', 17, 26, 2, 4, '1999-07-04', 2, 'Et vitae.', 'no_image.png', 1, 'Vel animi maxime praesentium nam necessitatibus officia facilis.', 1, 0, 1, 1, 1, NULL, NULL),
(49, 2, 5, 2, 5, 'Autem ipsum ipsam.', 'Quis ipsum minima placeat sunt quos ut nobis.', 84, 7, 4, 2, '2015-11-26', 5, 'Placeat et.', 'no_image.png', 1, 'Quia non quidem sunt voluptas.', 1, 0, 1, 1, 1, NULL, NULL),
(50, 1, 1, 1, 0, 'Non qui.', 'Quia consectetur vitae dolores laboriosam optio dicta commodi odit rerum.', 68, 85, 3, 3, '2014-07-06', 5, 'Doloribus illo.', 'no_image.png', 1, 'Aspernatur quam eaque exercitationem minus.', 1, 0, 1, 1, 1, NULL, '2022-09-07 05:54:41'),
(51, 5, 3, 2, 5, 'Saepe incidunt alias in.', 'Nihil impedit ipsum molestiae dicta voluptates sequi voluptatem.', 12, 43, 1, 5, '2021-12-31', 1, 'Nihil.', 'no_image.png', 1, 'Adipisci expedita et veritatis incidunt doloribus sit rem sint.', 1, 0, 1, 1, 1, NULL, NULL),
(52, 2, 1, 1, 5, 'Voluptatum minus ipsa.', 'Et saepe impedit dicta ex odio sit.', 89, 86, 3, 3, '1977-11-01', 4, 'Provident.', 'no_image.png', 1, 'Natus voluptates et ut et iure voluptatum tempore.', 1, 0, 1, 1, 1, NULL, NULL),
(53, 4, 1, 2, 4, 'Laborum iusto.', 'Dolor veritatis beatae necessitatibus eos voluptatem inventore consequatur.', 28, 61, 1, 3, '1972-04-04', 1, 'Sed.', 'no_image.png', 1, 'Molestiae cupiditate nihil asperiores illo ut ut cupiditate voluptates.', 1, 0, 1, 1, 1, NULL, NULL),
(54, 1, 1, 5, 2, 'Quaerat nihil ullam.', 'Harum aspernatur et itaque laboriosam ut hic quasi nemo occaecati labore error sint ut.', 71, 94, 4, 4, '2014-01-25', 1, 'Sed.', 'no_image.png', 1, 'Temporibus rerum porro dolor cum qui.', 1, 0, 1, 1, 1, NULL, NULL),
(55, 5, 1, 1, 3, 'Ad harum natus.', 'Ducimus quia et nobis nulla eius magni dolore dolorem sit voluptas.', 8, 54, 1, 1, '1971-05-10', 2, 'Culpa illum.', 'no_image.png', 1, 'Praesentium perspiciatis et et officiis asperiores assumenda.', 1, 0, 1, 1, 1, NULL, NULL),
(56, 5, 4, 5, 5, 'Numquam voluptatum ipsam accusantium.', 'Nulla in quia vel molestiae inventore aperiam doloribus cum nostrum minus.', 54, 34, 2, 5, '1975-07-16', 4, 'Sint.', 'no_image.png', 1, 'Modi aut doloribus deserunt facere labore blanditiis.', 1, 0, 1, 1, 1, NULL, NULL),
(57, 2, 5, 3, 4, 'Repellendus recusandae dolorem est.', 'Ad nesciunt quaerat voluptatem vel a incidunt a.', 5, 66, 2, 4, '2005-01-07', 1, 'Qui.', 'no_image.png', 1, 'Similique esse mollitia ut reprehenderit eaque veniam.', 1, 0, 1, 1, 1, NULL, NULL),
(58, 1, 5, 3, 4, 'Officia quo saepe et.', 'Ut magni quas autem sit quis sit laboriosam sunt sit.', 19, 9, 4, 5, '1974-10-10', 1, 'Incidunt.', 'no_image.png', 1, 'Cumque voluptate et consectetur repellendus cumque animi et.', 1, 0, 1, 1, 1, NULL, '2022-09-07 05:54:40'),
(59, 5, 4, 3, 3, 'Est animi.', 'Qui sunt harum asperiores ad aliquam voluptatem.', 38, 43, 1, 3, '1990-08-04', 1, 'Temporibus.', 'no_image.png', 1, 'A consequuntur provident aut molestiae voluptas consequuntur quisquam.', 1, 0, 1, 1, 1, NULL, NULL),
(60, 2, 4, 5, 2, 'Eius vel suscipit.', 'Nulla cumque necessitatibus doloremque et sed delectus possimus adipisci voluptate.', 72, 78, 2, 2, '1984-02-07', 2, 'Natus.', 'no_image.png', 1, 'Voluptatem inventore at quis assumenda et libero quia delectus.', 1, 0, 1, 1, 1, NULL, NULL),
(61, 1, 4, 3, 1, 'Officia sint quo doloribus.', 'Reprehenderit cumque sequi commodi ut aliquam id.', 86, 56, 3, 3, '2002-09-23', 3, 'Odio.', 'no_image.png', 1, 'Id omnis asperiores et sint incidunt non.', 1, 0, 1, 1, 1, NULL, '2022-09-07 05:54:42'),
(62, 1, 3, 2, 3, 'Aspernatur voluptatibus magni.', 'Sit optio perspiciatis veritatis voluptatem eaque libero nihil dicta corporis dolores atque quo.', 8, 89, 1, 2, '1970-12-28', 3, 'Voluptas.', 'no_image.png', 1, 'Quas eos ipsam soluta esse explicabo amet tempora.', 1, 0, 1, 1, 1, NULL, '2022-09-07 05:54:41'),
(63, 3, 1, 5, 4, 'Quod voluptatem in delectus.', 'Quaerat ullam rerum ab sit fugiat quaerat.', 39, 79, 4, 1, '2002-07-24', 3, 'Nemo.', 'no_image.png', 1, 'Laudantium hic modi blanditiis.', 1, 0, 1, 1, 1, NULL, NULL),
(64, 2, 2, 4, 3, 'Itaque provident facere optio.', 'Vel tempore repellendus distinctio qui quos architecto itaque quis inventore molestiae adipisci nulla incidunt.', 24, 83, 5, 5, '1985-03-02', 4, 'Enim.', 'no_image.png', 1, 'Omnis tenetur sed hic consequatur porro quibusdam qui sit.', 1, 0, 1, 1, 1, NULL, NULL),
(65, 2, 1, 3, 1, 'Perspiciatis odio.', 'Animi laudantium maxime in quae aliquid ut.', 63, 27, 3, 2, '1973-09-22', 3, 'Quia.', 'no_image.png', 1, 'Dolor cumque ut eos eos ad beatae.', 1, 0, 1, 1, 1, NULL, NULL),
(66, 1, 1, 2, 0, 'Voluptatem harum.', 'Dolorem unde enim qui voluptates ut suscipit quo et.', 5, 3, 5, 2, '1975-11-07', 4, 'Cumque.', 'no_image.png', 1, 'Ea omnis quis excepturi maxime error unde.', 1, 0, 1, 1, 1, NULL, '2022-09-07 05:54:41'),
(67, 1, 3, 4, 4, 'Optio tenetur sit non.', 'Qui assumenda nobis labore nemo maiores vero vero voluptatibus necessitatibus et.', 42, 88, 2, 2, '2000-12-03', 4, 'Nihil.', 'no_image.png', 1, 'Maxime nulla sit saepe et molestiae nobis voluptate.', 1, 0, 1, 1, 1, NULL, NULL),
(68, 2, 1, 4, 5, 'Tenetur debitis et aperiam.', 'Voluptatibus tempora ut ut non sint exercitationem harum.', 29, 66, 3, 5, '2021-04-28', 5, 'Ipsum nemo.', 'no_image.png', 1, 'Qui sit aut autem possimus est minus suscipit.', 1, 0, 1, 1, 1, NULL, NULL),
(69, 4, 2, 3, 3, 'Vitae eum.', 'Iste nam deleniti cum fugiat autem et cum eum et.', 84, 100, 5, 5, '2013-04-01', 2, 'Nihil.', 'no_image.png', 1, 'Quibusdam quod qui qui omnis natus dolorem deserunt ducimus.', 1, 0, 1, 1, 1, NULL, NULL),
(70, 4, 5, 1, 1, 'Voluptas aliquam at animi.', 'Reprehenderit qui inventore sequi delectus occaecati vel quos cupiditate quo qui.', 74, 3, 5, 2, '1992-04-17', 3, 'Esse.', 'no_image.png', 1, 'Quaerat excepturi repudiandae aut eius inventore voluptas nesciunt.', 1, 0, 1, 1, 1, NULL, NULL),
(71, 2, 5, 2, 2, 'Debitis perspiciatis delectus.', 'Nihil accusantium aliquam modi omnis dolorem minima occaecati eum esse.', 71, 3, 2, 5, '1983-05-11', 4, 'Labore nesciunt.', 'no_image.png', 1, 'Quos commodi non sunt.', 1, 0, 1, 1, 1, NULL, NULL),
(72, 1, 3, 1, 1, 'Maiores tempore dolor deserunt.', 'Vitae et consequuntur delectus sed voluptatem libero velit aut quasi non nam omnis mollitia.', 49, 57, 3, 1, '1981-10-13', 1, 'Voluptatem.', 'no_image.png', 1, 'Sapiente commodi ex qui molestiae deserunt quia.', 1, 0, 1, 1, 1, NULL, '2022-09-07 05:54:41'),
(73, 3, 5, 1, 5, 'Dolore ratione sint.', 'Consequatur officiis sequi et mollitia et quisquam sint nesciunt repellat repellat quas optio saepe.', 48, 36, 1, 2, '2022-07-05', 5, 'Sunt.', 'no_image.png', 1, 'Quas aliquid ullam excepturi praesentium id maxime necessitatibus.', 1, 0, 1, 1, 1, NULL, NULL),
(74, 5, 3, 4, 1, 'Ipsam sapiente reiciendis iusto in.', 'Minima ut fuga voluptatem nihil quos non ut dolorem iure quo mollitia.', 11, 21, 1, 3, '1991-08-05', 3, 'Deserunt eum.', 'no_image.png', 1, 'Occaecati sed voluptate architecto fugiat.', 1, 0, 1, 1, 1, NULL, NULL),
(75, 1, 5, 3, 0, 'Qui optio et nihil.', 'Voluptatem consequuntur fugit quidem ratione eaque voluptates est odio enim aut non.', 97, 94, 5, 2, '2004-12-26', 5, 'Inventore animi.', 'no_image.png', 1, 'Eum soluta ea veniam et omnis commodi.', 1, 0, 1, 1, 1, NULL, '2022-09-07 05:54:42'),
(76, 2, 2, 5, 2, 'Rem perspiciatis quos possimus.', 'Cupiditate reprehenderit ad tempore occaecati non optio ut.', 66, 7, 1, 2, '1981-08-07', 3, 'Est.', 'no_image.png', 1, 'Quasi nihil voluptatem sed quam tempore.', 1, 0, 1, 1, 1, NULL, NULL),
(77, 2, 2, 3, 1, 'Sed cumque alias.', 'Atque ea amet fuga laudantium officia harum ab commodi doloremque quae vel.', 27, 86, 4, 3, '2013-09-26', 4, 'Molestiae.', 'no_image.png', 1, 'Sit reiciendis omnis reiciendis quasi voluptatem impedit necessitatibus.', 1, 0, 1, 1, 1, NULL, NULL),
(78, 1, 1, 2, 4, 'Earum vitae quia deleniti.', 'Provident eius laudantium quo a inventore rem nihil.', 36, 67, 3, 5, '2010-05-13', 2, 'Sint.', 'no_image.png', 1, 'Perferendis est omnis libero repellat aut possimus laboriosam.', 1, 0, 1, 1, 1, NULL, '2022-09-07 05:54:41'),
(79, 3, 1, 1, 2, 'Qui et eaque.', 'Ad rerum repellendus ex explicabo voluptatibus impedit consectetur nesciunt et neque voluptates.', 14, 33, 4, 2, '2003-02-20', 3, 'Culpa accusamus.', 'no_image.png', 1, 'Distinctio modi porro autem.', 1, 0, 1, 1, 1, NULL, NULL),
(80, 3, 4, 5, 4, 'Neque eius aut numquam ipsam.', 'Qui quisquam veritatis nobis ratione id debitis quidem inventore minus.', 97, 98, 3, 3, '2002-03-17', 1, 'Sunt.', 'no_image.png', 1, 'Autem sed sit quo voluptate.', 1, 0, 1, 1, 1, NULL, NULL),
(81, 2, 2, 3, 1, 'Saepe omnis quia.', 'Quo delectus commodi sed est voluptas molestiae quia voluptates.', 1, 67, 2, 5, '1972-11-10', 5, 'Officiis at.', 'no_image.png', 1, 'Rem impedit et blanditiis deleniti qui perspiciatis sint.', 1, 0, 1, 1, 1, NULL, NULL),
(82, 3, 3, 5, 4, 'Numquam possimus laboriosam.', 'Incidunt eos nostrum cumque rerum quas est.', 36, 83, 5, 5, '1970-05-04', 1, 'Quasi occaecati.', 'no_image.png', 1, 'Assumenda repellendus veniam facilis dolores quas.', 1, 0, 1, 1, 1, NULL, NULL),
(83, 1, 5, 3, 2, 'Dolores quaerat mollitia.', 'Itaque sunt reiciendis soluta est maiores sunt ipsam accusantium necessitatibus impedit corporis quibusdam atque.', 49, 55, 1, 5, '1977-07-04', 2, 'Et enim.', 'no_image.png', 1, 'Ut quia iste quas officiis.', 1, 0, 1, 1, 1, NULL, '2022-09-07 05:54:40'),
(84, 2, 5, 2, 4, 'Deserunt aliquid dolorem.', 'Corporis aut dolor et natus recusandae eius ab ut tempore ut minima.', 10, 59, 1, 2, '1993-04-04', 5, 'Modi ut.', 'no_image.png', 1, 'Vero voluptatibus excepturi et et.', 1, 0, 1, 1, 1, NULL, NULL),
(85, 4, 3, 5, 3, 'Architecto consequuntur consequatur.', 'Consequuntur maiores nulla id laboriosam quisquam quia vel.', 77, 34, 4, 1, '1993-03-18', 1, 'Dolorem incidunt.', 'no_image.png', 1, 'Cupiditate eveniet aliquid aspernatur iusto omnis ut.', 1, 0, 1, 1, 1, NULL, NULL),
(86, 1, 3, 4, 2, 'Rerum ipsa est.', 'Qui quia eius sit et optio omnis quod aut incidunt et velit voluptas blanditiis.', 31, 85, 1, 2, '1980-09-29', 3, 'Consequatur ea.', 'no_image.png', 1, 'Incidunt nesciunt nostrum recusandae quia.', 1, 0, 1, 1, 1, NULL, NULL),
(87, 1, 4, 4, 2, 'Recusandae quisquam maxime.', 'Eos voluptate natus sunt magni beatae enim atque reprehenderit aut nesciunt quo dolor.', 29, 47, 4, 4, '1991-09-28', 2, 'Molestiae sequi.', 'no_image.png', 1, 'Sed nulla vel odit id sequi ut.', 1, 0, 1, 1, 1, NULL, NULL),
(88, 2, 1, 3, 3, 'Voluptas dicta illum aliquam.', 'Eos voluptates iure aut tempore animi in fuga enim voluptas.', 54, 58, 3, 4, '2003-10-19', 2, 'Totam aut.', 'no_image.png', 1, 'Eum ut culpa est nihil enim.', 1, 0, 1, 1, 1, NULL, NULL),
(89, 2, 4, 5, 4, 'A quos nesciunt eum.', 'Sint est exercitationem rerum minus nulla corporis et rerum.', 47, 88, 1, 2, '1972-03-12', 3, 'Animi.', 'no_image.png', 1, 'Rerum veniam sit quasi iusto.', 1, 0, 1, 1, 1, NULL, NULL),
(90, 3, 2, 4, 4, 'Rerum rerum magnam.', 'At ea dolor cum illo cum autem hic tempore tempore eum iure at architecto.', 82, 20, 1, 1, '2012-09-22', 3, 'Ab ab.', 'no_image.png', 1, 'Qui ut ab dolore in et in.', 1, 0, 1, 1, 1, NULL, NULL),
(91, 1, 3, 5, 1, 'Sunt saepe deleniti.', 'Dicta cupiditate aperiam modi nulla et eos odio aut et.', 3, 61, 5, 5, '1991-10-12', 2, 'Veniam.', 'no_image.png', 1, 'Ut eum sunt laborum nesciunt maiores.', 1, 0, 1, 1, 1, NULL, NULL),
(92, 2, 1, 5, 5, 'Corporis est aut autem.', 'Enim qui repudiandae unde itaque est enim odit blanditiis perspiciatis.', 43, 15, 5, 2, '2010-02-24', 5, 'Ullam voluptatem.', 'no_image.png', 1, 'Velit tenetur delectus illo nulla deserunt architecto.', 1, 0, 1, 1, 1, NULL, NULL),
(93, 4, 2, 2, 3, 'Qui ut doloremque et.', 'Harum natus esse voluptatem alias eius ea dolorum ratione enim voluptas distinctio velit beatae.', 54, 88, 5, 4, '2013-03-13', 3, 'Numquam.', 'no_image.png', 1, 'Perspiciatis est aut nihil in fugit.', 1, 0, 1, 1, 1, NULL, NULL),
(94, 3, 5, 4, 4, 'Eligendi occaecati ad dolorum delectus.', 'Exercitationem vel sunt aut ut porro explicabo aspernatur impedit.', 86, 42, 5, 4, '2020-06-29', 3, 'Iusto.', 'no_image.png', 1, 'Aperiam ullam et eligendi repellendus repellat sit delectus.', 1, 0, 1, 1, 1, NULL, NULL),
(95, 5, 2, 3, 4, 'Eligendi sunt asperiores ipsum.', 'Nam velit inventore est est eaque minima.', 77, 86, 3, 3, '2022-06-04', 3, 'Fugit.', 'no_image.png', 1, 'Praesentium repudiandae suscipit eos deserunt.', 1, 0, 1, 1, 1, NULL, NULL),
(96, 4, 2, 3, 3, 'Libero eum necessitatibus.', 'Doloribus nobis amet minima asperiores qui ipsa officiis culpa.', 7, 21, 5, 3, '1993-10-28', 2, 'Reprehenderit.', 'no_image.png', 1, 'Et possimus dolor nostrum est.', 1, 0, 1, 1, 1, NULL, NULL),
(97, 4, 2, 3, 1, 'Deserunt harum perspiciatis nam.', 'Quo laborum porro et sit est voluptatem eius officia non voluptatem quae tempora.', 61, 29, 5, 1, '1997-06-16', 4, 'Ad.', 'no_image.png', 1, 'Necessitatibus dolores tempore aut est id aliquid distinctio quasi.', 1, 0, 1, 1, 1, NULL, NULL),
(98, 1, 4, 5, 5, 'Sunt fugiat veritatis.', 'Dignissimos aperiam architecto molestiae molestias consequatur velit sed officiis qui.', 69, 11, 2, 4, '1990-06-08', 1, 'Alias qui.', 'no_image.png', 1, 'Perspiciatis et quae fugit animi aut.', 1, 0, 1, 1, 1, NULL, NULL),
(99, 5, 2, 3, 4, 'Sapiente praesentium eum aut.', 'Facilis provident dolor soluta est natus voluptates blanditiis voluptas.', 6, 65, 3, 2, '1976-05-06', 1, 'Architecto eveniet.', 'no_image.png', 1, 'Ullam possimus quam sint quia et.', 1, 0, 1, 1, 1, NULL, NULL),
(100, 3, 1, 4, 2, 'Soluta suscipit at.', 'Delectus cupiditate odit ab voluptatibus aut officiis necessitatibus nulla quos illo.', 77, 65, 5, 5, '1978-11-12', 4, 'Et non.', 'no_image.png', 1, 'Nostrum architecto nam quam voluptas dicta quidem.', 1, 0, 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `puncin` time NOT NULL,
  `puncout` time NOT NULL,
  `work` time NOT NULL,
  `break` time NOT NULL,
  `overtime` time NOT NULL,
  `shifttime` time NOT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` int(11) NOT NULL DEFAULT 1,
  `isdelete` int(11) NOT NULL DEFAULT 0,
  `inuse` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `employee_id`, `start`, `puncin`, `puncout`, `work`, `break`, `overtime`, `shifttime`, `remarks`, `isactive`, `isdelete`, `inuse`, `created_at`, `updated_at`) VALUES
(1, 7, '1987-01-30', '11:26:40', '00:21:44', '09:13:45', '18:43:01', '12:46:08', '01:11:33', 'Quia eos facilis ut temporibus.', 1, 0, 1, NULL, NULL),
(2, 17, '1995-02-24', '18:48:10', '14:43:05', '11:21:57', '20:20:14', '01:02:51', '17:03:25', 'Fuga et tempore facilis sit ut aperiam.', 1, 0, 1, NULL, NULL),
(3, 4, '2022-07-12', '23:52:54', '05:09:04', '10:17:07', '00:10:03', '19:11:10', '08:48:15', 'Et et alias facere officia debitis.', 1, 0, 1, NULL, NULL),
(4, 17, '1994-12-18', '08:41:21', '14:43:17', '20:58:11', '16:40:07', '19:42:19', '20:00:28', 'Aut suscipit et esse rerum voluptatum odit.', 1, 0, 1, NULL, NULL),
(5, 8, '1986-04-14', '18:45:32', '14:00:29', '07:47:02', '10:54:12', '00:18:26', '00:05:37', 'Fugiat repudiandae nisi ut nostrum possimus fugiat.', 1, 0, 1, NULL, NULL),
(6, 18, '2014-04-17', '15:15:25', '17:48:51', '13:52:22', '05:57:27', '06:39:53', '09:28:38', 'Voluptatibus in quidem animi aut.', 1, 0, 1, NULL, NULL),
(7, 16, '1988-03-04', '06:14:40', '04:25:05', '04:25:40', '19:36:59', '06:17:46', '13:06:23', 'Voluptas doloremque aut similique saepe eaque odio quis.', 1, 0, 1, NULL, NULL),
(8, 20, '1977-06-23', '12:37:18', '10:51:22', '13:06:51', '22:52:27', '01:15:40', '15:11:36', 'At alias at ullam perferendis.', 1, 0, 1, NULL, NULL),
(9, 10, '2009-09-26', '20:55:31', '06:13:22', '06:01:16', '23:36:08', '00:22:45', '14:14:15', 'Dolor iste deleniti nostrum reiciendis autem labore.', 1, 0, 1, NULL, NULL),
(10, 1, '2007-03-29', '17:34:14', '03:07:16', '07:44:23', '17:13:37', '20:45:08', '05:04:05', 'Animi libero et repellat similique nisi doloremque.', 1, 0, 1, NULL, NULL),
(11, 20, '1983-10-27', '21:50:23', '08:54:19', '20:55:51', '02:07:22', '20:26:01', '05:31:13', 'Quis enim dolore quis soluta voluptatem facilis.', 1, 0, 1, NULL, NULL),
(12, 7, '2010-09-17', '23:53:18', '12:56:38', '08:18:57', '16:01:46', '18:47:06', '18:21:49', 'Non et qui repellendus molestiae.', 1, 0, 1, NULL, NULL),
(13, 16, '2000-08-06', '19:46:15', '21:03:35', '01:08:43', '23:53:16', '09:06:52', '07:54:02', 'Aliquid omnis deleniti perferendis aspernatur maiores dolore soluta.', 1, 0, 1, NULL, NULL),
(14, 3, '1988-07-12', '17:05:28', '13:00:47', '21:49:59', '07:21:18', '04:54:04', '20:17:50', 'Asperiores aperiam vel porro maiores non distinctio.', 1, 0, 1, NULL, NULL),
(15, 16, '1987-08-13', '20:54:36', '03:39:52', '10:38:11', '12:56:47', '05:52:47', '21:43:14', 'Accusantium consequuntur veritatis voluptatem quia est.', 1, 0, 1, NULL, NULL),
(16, 17, '1981-01-10', '14:45:41', '16:58:57', '07:10:40', '01:15:19', '14:36:26', '04:11:59', 'Repellat rerum consectetur dicta nulla voluptatem sit.', 1, 0, 1, NULL, NULL),
(17, 5, '2007-01-20', '11:58:31', '00:17:12', '02:55:15', '20:57:58', '06:31:45', '02:23:55', 'Et aut impedit quia hic et eius.', 1, 0, 1, NULL, NULL),
(18, 3, '1971-04-04', '11:14:16', '09:57:41', '23:57:45', '05:07:50', '00:40:02', '12:00:17', 'Excepturi deserunt ut asperiores ratione nostrum sed ipsa.', 1, 0, 1, NULL, NULL),
(19, 3, '1989-02-24', '17:26:42', '23:19:01', '15:54:24', '05:57:54', '09:59:24', '06:11:30', 'Optio dolorem deleniti ea sed repudiandae repudiandae.', 1, 0, 1, NULL, NULL),
(20, 8, '1982-05-21', '13:43:33', '03:30:01', '02:48:17', '18:53:52', '20:18:44', '15:22:34', 'Ipsa nihil aut ab dolorem deserunt.', 1, 0, 1, NULL, NULL),
(21, 17, '2020-06-07', '13:45:28', '06:22:59', '19:15:34', '19:48:17', '01:25:30', '13:47:17', 'Perspiciatis dolorum perferendis hic maiores aut iste numquam maxime.', 1, 0, 1, NULL, NULL),
(22, 20, '1985-08-25', '08:14:48', '10:24:05', '05:41:43', '03:23:53', '03:28:40', '20:24:18', 'Excepturi sed enim dolor quia at officia eveniet cupiditate.', 1, 0, 1, NULL, NULL),
(23, 10, '2021-04-29', '02:57:21', '09:18:44', '22:11:05', '11:03:35', '06:20:09', '12:00:36', 'Assumenda nihil dolores voluptate sed repellat ut.', 1, 0, 1, NULL, NULL),
(24, 5, '1983-10-26', '12:18:15', '11:09:46', '22:55:03', '04:23:12', '01:38:36', '07:08:51', 'Totam omnis molestiae iusto ipsam quod quo accusantium in.', 1, 0, 1, NULL, NULL),
(25, 18, '1999-01-01', '15:59:03', '05:52:14', '23:06:23', '03:25:05', '15:01:57', '22:23:30', 'Qui quo et voluptatum laboriosam tempore maiores exercitationem.', 1, 0, 1, NULL, NULL),
(26, 18, '2000-11-28', '11:26:50', '17:19:44', '00:37:33', '19:14:16', '06:45:45', '02:04:04', 'Debitis repellat consequatur in.', 1, 0, 1, NULL, NULL),
(27, 20, '2022-02-16', '11:01:21', '00:44:34', '14:46:37', '15:48:41', '12:13:00', '13:27:07', 'Placeat est quia dolores fuga debitis.', 1, 0, 1, NULL, NULL),
(28, 19, '1977-06-20', '14:38:10', '07:03:07', '03:31:35', '00:29:26', '08:02:53', '04:59:58', 'Expedita placeat est officia eius atque id.', 1, 0, 1, NULL, NULL),
(29, 13, '1971-12-03', '22:44:22', '09:31:32', '16:42:35', '12:49:07', '16:29:24', '21:44:13', 'Quam alias omnis dicta ut omnis.', 1, 0, 1, NULL, NULL),
(30, 1, '1991-03-07', '18:18:59', '00:22:01', '02:17:27', '06:35:01', '11:43:48', '09:38:38', 'Est et officiis explicabo sed.', 1, 0, 1, NULL, NULL),
(31, 4, '2008-04-01', '23:45:54', '22:29:38', '15:44:31', '16:47:50', '16:17:58', '18:43:59', 'Voluptas maxime fugit est facere unde.', 1, 0, 1, NULL, NULL),
(32, 2, '1992-02-23', '10:49:09', '10:06:42', '14:05:04', '20:41:10', '16:47:23', '12:33:24', 'Non ad quia illo ut.', 1, 0, 1, NULL, NULL),
(33, 9, '2015-11-20', '05:19:57', '18:38:18', '02:36:07', '09:26:40', '14:45:29', '23:11:59', 'Natus et repellat voluptatibus quae.', 1, 0, 1, NULL, NULL),
(34, 13, '2022-01-27', '14:00:50', '17:48:04', '04:35:10', '02:44:21', '18:50:49', '07:59:05', 'Cum et enim maiores.', 1, 0, 1, NULL, NULL),
(35, 9, '1977-09-07', '02:15:41', '23:12:30', '21:14:03', '05:55:27', '00:36:50', '09:11:45', 'Eaque qui excepturi aut voluptas.', 1, 0, 1, NULL, NULL),
(36, 8, '1976-02-05', '16:04:28', '05:57:33', '00:57:33', '13:13:24', '11:08:13', '16:56:06', 'Repellat illo sunt ut iusto quia.', 1, 0, 1, NULL, NULL),
(37, 17, '2017-02-16', '20:31:35', '14:04:09', '01:25:28', '03:51:49', '10:04:24', '13:22:46', 'Ea omnis fugit consequatur delectus impedit velit.', 1, 0, 1, NULL, NULL),
(38, 1, '1987-03-31', '10:19:05', '08:53:19', '01:56:47', '01:37:15', '04:23:02', '02:51:24', 'Quo qui nihil provident fugit accusamus.', 1, 0, 1, NULL, NULL),
(39, 1, '1994-02-24', '11:02:35', '18:10:58', '07:30:02', '06:12:52', '12:58:54', '23:21:35', 'Voluptatem aut iure illo voluptatibus ut.', 1, 0, 1, NULL, NULL),
(40, 14, '1977-08-21', '10:50:47', '15:17:28', '04:11:25', '13:16:00', '17:51:22', '17:52:33', 'Commodi rerum aut est ipsa.', 1, 0, 1, NULL, NULL),
(41, 12, '1981-05-26', '07:16:52', '07:51:42', '12:09:23', '18:30:17', '18:31:28', '03:32:29', 'Iusto nihil perferendis ut numquam quidem quo molestiae fuga.', 1, 0, 1, NULL, NULL),
(42, 1, '1991-03-15', '19:07:53', '04:15:47', '18:50:26', '22:14:55', '14:13:11', '09:49:21', 'Ut quam nulla qui repudiandae maiores.', 1, 0, 1, NULL, NULL),
(43, 6, '1992-11-23', '07:38:28', '11:42:11', '09:05:05', '17:09:40', '03:25:18', '00:57:39', 'Libero sunt magnam est.', 1, 0, 1, NULL, NULL),
(44, 17, '2019-02-03', '04:40:31', '00:00:17', '18:47:36', '17:47:32', '20:26:22', '17:27:28', 'Omnis non quis soluta dolor.', 1, 0, 1, NULL, NULL),
(45, 18, '1988-05-28', '16:52:20', '02:35:19', '05:39:23', '20:31:17', '11:00:07', '16:20:50', 'Laboriosam ea alias quia aut et modi a.', 1, 0, 1, NULL, NULL),
(46, 11, '1972-03-02', '23:36:36', '19:19:06', '16:10:50', '02:59:17', '04:29:37', '10:46:52', 'Doloribus in et odit ut.', 1, 0, 1, NULL, NULL),
(47, 8, '2004-12-18', '20:53:37', '05:38:36', '14:29:06', '05:52:18', '02:13:41', '08:01:43', 'Commodi facere aliquam qui architecto vel explicabo.', 1, 0, 1, NULL, NULL),
(48, 9, '1991-11-04', '14:32:57', '06:42:17', '19:24:20', '13:29:27', '09:09:27', '00:03:10', 'Mollitia dolor facere officiis.', 1, 0, 1, NULL, NULL),
(49, 20, '2013-06-23', '02:46:01', '18:12:00', '13:58:14', '05:43:20', '08:00:01', '23:24:18', 'Dolores ipsam ut sint ipsum architecto voluptas.', 1, 0, 1, NULL, NULL),
(50, 4, '2013-01-03', '14:49:18', '08:34:38', '20:02:33', '13:11:48', '19:39:33', '12:51:47', 'Et temporibus et numquam molestiae enim voluptatem ea.', 1, 0, 1, NULL, NULL),
(51, 16, '1999-04-20', '03:18:29', '03:57:41', '02:06:25', '05:22:13', '20:35:52', '04:46:46', 'Est sit blanditiis voluptatem ut.', 1, 0, 1, NULL, NULL),
(52, 18, '2000-06-18', '12:45:29', '22:29:49', '11:47:58', '07:58:03', '19:05:11', '20:21:26', 'Facere ut illum beatae.', 1, 0, 1, NULL, NULL),
(53, 8, '1975-04-05', '06:08:05', '15:23:12', '13:19:06', '15:53:22', '22:04:23', '17:30:56', 'Amet sed et praesentium iusto.', 1, 0, 1, NULL, NULL),
(54, 17, '1989-03-11', '04:39:24', '21:47:08', '20:03:46', '22:57:11', '05:10:16', '14:19:41', 'Maiores nihil perferendis qui quam cupiditate.', 1, 0, 1, NULL, NULL),
(55, 4, '2017-05-20', '09:47:26', '18:29:39', '23:18:45', '05:57:28', '08:13:58', '14:06:06', 'Natus quam illo ducimus illum voluptatem esse.', 1, 0, 1, NULL, NULL),
(56, 1, '2012-11-22', '22:11:47', '09:01:15', '19:13:47', '15:11:27', '18:29:15', '08:18:24', 'Magnam qui assumenda expedita fugiat fugiat iusto.', 1, 0, 1, NULL, NULL),
(57, 4, '2010-03-25', '15:17:27', '04:50:41', '10:21:19', '02:00:28', '10:01:19', '18:39:55', 'Repellat rerum officiis est deserunt.', 1, 0, 1, NULL, NULL),
(58, 15, '1983-01-05', '07:19:45', '02:59:01', '21:58:30', '01:29:12', '14:15:27', '22:19:05', 'Et blanditiis voluptatum possimus.', 1, 0, 1, NULL, NULL),
(59, 3, '1996-10-19', '14:48:35', '18:45:53', '09:54:22', '01:56:47', '20:01:37', '05:15:09', 'Architecto ad corrupti et quis deleniti.', 1, 0, 1, NULL, NULL),
(60, 18, '2019-12-03', '16:12:36', '21:30:51', '14:30:53', '23:01:37', '17:12:11', '04:19:58', 'Mollitia et consectetur rerum non ea ut est.', 1, 0, 1, NULL, NULL),
(61, 18, '1975-02-15', '21:06:34', '10:21:31', '14:55:05', '14:32:35', '23:45:16', '12:27:53', 'Eos nam error voluptatibus dolorem et.', 1, 0, 1, NULL, NULL),
(62, 11, '2011-03-11', '03:23:20', '04:23:44', '03:54:23', '06:20:27', '23:26:17', '01:46:07', 'Asperiores sed laborum atque ratione id quia maxime suscipit.', 1, 0, 1, NULL, NULL),
(63, 9, '1980-01-14', '04:14:23', '04:01:04', '09:37:20', '10:30:52', '20:41:28', '03:06:12', 'Et qui autem eius velit nisi eum eaque delectus.', 1, 0, 1, NULL, NULL),
(64, 20, '1992-11-28', '20:52:59', '09:40:50', '00:32:15', '07:03:37', '03:38:47', '05:51:30', 'Perferendis omnis aliquid dignissimos illo.', 1, 0, 1, NULL, NULL),
(65, 5, '2009-07-16', '13:59:46', '21:08:10', '16:33:53', '10:47:33', '21:14:45', '05:06:01', 'Dolor sed hic et reiciendis sed quibusdam.', 1, 0, 1, NULL, NULL),
(66, 13, '2020-08-23', '00:12:31', '22:26:40', '19:40:24', '13:22:49', '01:46:48', '15:05:44', 'Aut repellat fuga repellendus.', 1, 0, 1, NULL, NULL),
(67, 19, '1994-09-18', '00:20:23', '23:55:08', '14:34:06', '08:34:06', '12:01:31', '10:02:54', 'In dignissimos porro praesentium perspiciatis dolorem nostrum nihil.', 1, 0, 1, NULL, NULL),
(68, 4, '2003-01-25', '02:53:17', '06:03:50', '02:12:21', '06:12:15', '01:23:25', '15:57:42', 'Quam minus recusandae voluptas quasi iste.', 1, 0, 1, NULL, NULL),
(69, 18, '2005-12-16', '19:02:53', '19:23:32', '03:48:18', '10:11:44', '19:09:11', '11:48:31', 'Nam facere ea neque sed molestiae culpa.', 1, 0, 1, NULL, NULL),
(70, 7, '2014-09-30', '10:07:55', '04:01:04', '06:16:44', '17:31:05', '04:53:31', '05:02:41', 'Enim id aut eaque et.', 1, 0, 1, NULL, NULL),
(71, 17, '1984-07-30', '16:11:52', '21:39:23', '01:43:05', '18:33:49', '12:50:08', '01:52:32', 'Odio error quaerat eaque.', 1, 0, 1, NULL, NULL),
(72, 12, '2016-04-21', '17:22:11', '15:18:16', '10:02:50', '17:51:57', '00:42:56', '20:14:30', 'Molestiae dolore numquam aut et libero alias.', 1, 0, 1, NULL, NULL),
(73, 9, '1979-08-21', '05:43:45', '00:47:05', '12:59:18', '14:14:57', '20:55:44', '13:21:05', 'Aut minus aliquam voluptatem dignissimos in deserunt.', 1, 0, 1, NULL, NULL),
(74, 13, '1988-07-15', '23:05:03', '07:03:36', '20:22:46', '05:47:37', '14:28:35', '04:55:24', 'Recusandae minima et laboriosam qui neque.', 1, 0, 1, NULL, NULL),
(75, 1, '1984-02-03', '22:56:59', '19:59:36', '02:02:39', '03:22:31', '18:10:09', '11:39:12', 'Molestiae modi accusantium vero voluptas qui.', 1, 0, 1, NULL, NULL),
(76, 15, '1987-01-18', '13:52:58', '10:11:58', '10:36:48', '02:03:03', '01:59:14', '16:19:39', 'Non nisi rerum occaecati maiores.', 1, 0, 1, NULL, NULL),
(77, 4, '2004-11-27', '02:10:02', '19:30:39', '01:34:00', '05:55:26', '02:52:27', '10:16:20', 'Sunt modi facilis rerum autem rerum laudantium.', 1, 0, 1, NULL, NULL),
(78, 7, '1998-04-22', '11:27:15', '07:43:58', '22:43:53', '10:44:34', '10:03:36', '09:24:08', 'Consequuntur dignissimos est ipsum debitis dignissimos.', 1, 0, 1, NULL, NULL),
(79, 20, '2001-02-07', '17:07:45', '02:23:26', '20:59:18', '07:38:00', '04:48:32', '22:31:16', 'Commodi deserunt id tempora laboriosam laboriosam.', 1, 0, 1, NULL, NULL),
(80, 9, '1987-02-12', '01:17:53', '14:15:29', '06:10:17', '20:48:29', '00:08:55', '02:59:01', 'Reprehenderit perspiciatis ducimus tempore quia impedit modi dolor.', 1, 0, 1, NULL, NULL),
(81, 17, '1982-07-04', '21:34:14', '07:43:48', '10:38:58', '20:21:10', '11:05:35', '21:11:13', 'Earum deserunt itaque fugiat et et et voluptas.', 1, 0, 1, NULL, NULL),
(82, 2, '1977-11-15', '12:14:53', '00:22:13', '03:02:13', '20:46:24', '12:53:28', '13:33:51', 'Nesciunt totam magnam ut quos.', 1, 0, 1, NULL, NULL),
(83, 16, '1993-11-24', '01:18:10', '14:51:07', '02:02:48', '18:52:01', '01:46:10', '16:30:11', 'Est quis autem rerum quo.', 1, 0, 1, NULL, NULL),
(84, 19, '1996-11-01', '08:07:51', '21:49:13', '19:53:30', '01:29:07', '13:58:17', '23:03:35', 'Quam ut id quo ut omnis quas.', 1, 0, 1, NULL, NULL),
(85, 4, '2008-06-07', '15:55:52', '07:34:16', '05:12:31', '01:59:15', '12:23:56', '04:29:51', 'Quia adipisci reiciendis commodi similique excepturi.', 1, 0, 1, NULL, NULL),
(86, 8, '2011-02-02', '22:45:07', '23:56:18', '07:13:53', '12:45:48', '20:49:07', '07:42:54', 'Quasi voluptatibus corporis beatae autem consequatur sit.', 1, 0, 1, NULL, NULL),
(87, 4, '1982-02-02', '13:50:04', '13:19:25', '09:51:27', '04:56:14', '23:11:43', '04:28:17', 'Ut voluptatem quisquam commodi quod consequatur sed voluptatum est.', 1, 0, 1, NULL, NULL),
(88, 7, '1989-09-07', '04:48:46', '14:18:47', '03:35:34', '16:56:40', '19:45:26', '05:53:55', 'Est voluptates molestiae quod voluptate quibusdam fugiat.', 1, 0, 1, NULL, NULL),
(89, 20, '1985-09-01', '01:30:12', '11:16:01', '15:18:31', '16:54:34', '15:51:42', '05:48:28', 'Architecto laudantium quia veniam nihil beatae corporis.', 1, 0, 1, NULL, NULL),
(90, 16, '1993-07-18', '00:27:21', '08:22:32', '05:41:55', '08:00:06', '03:52:40', '00:50:45', 'Minus tempore similique accusamus architecto accusantium rerum sapiente.', 1, 0, 1, NULL, NULL),
(91, 16, '2019-11-06', '17:35:13', '12:59:55', '16:49:22', '21:12:31', '15:31:44', '04:40:04', 'Nisi et molestiae ut sit iste culpa.', 1, 0, 1, NULL, NULL),
(92, 18, '2017-02-25', '20:08:15', '06:46:53', '14:47:55', '21:53:36', '02:41:31', '18:08:24', 'Dolorum et repellat et et.', 1, 0, 1, NULL, NULL),
(93, 2, '1988-05-09', '14:55:05', '14:26:05', '06:44:36', '18:50:09', '08:57:05', '00:29:07', 'Et at inventore doloremque ea.', 1, 0, 1, NULL, NULL),
(94, 5, '1974-11-06', '01:36:12', '19:54:47', '21:07:17', '05:56:34', '21:51:05', '18:11:23', 'Eum debitis natus quam non.', 1, 0, 1, NULL, NULL),
(95, 1, '2008-08-22', '08:27:25', '05:51:51', '23:25:45', '07:48:29', '06:07:27', '19:04:47', 'Vel accusantium facilis consectetur aut.', 1, 0, 1, NULL, NULL),
(96, 1, '1979-01-20', '17:39:20', '09:20:19', '21:58:50', '15:28:36', '15:39:33', '07:10:21', 'Laboriosam omnis nulla reprehenderit sit minima quisquam eos.', 1, 0, 1, NULL, NULL),
(97, 17, '2001-02-09', '14:31:16', '08:55:45', '14:36:27', '15:47:44', '01:14:53', '09:13:51', 'Maiores eius possimus natus quis.', 1, 0, 1, NULL, NULL),
(98, 6, '1980-10-15', '18:21:41', '17:28:18', '05:25:23', '11:36:57', '19:41:48', '18:07:30', 'Ex ea recusandae temporibus aut.', 1, 0, 1, NULL, NULL),
(99, 10, '1972-10-24', '23:02:36', '10:37:35', '06:26:30', '12:36:09', '19:06:07', '03:24:37', 'Ducimus est tenetur quia aspernatur.', 1, 0, 1, NULL, NULL),
(100, 9, '1984-05-13', '07:06:47', '01:16:43', '20:10:57', '10:52:51', '21:45:24', '03:42:19', 'Unde sunt nostrum error autem non eum sit.', 1, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action_id` int(11) NOT NULL DEFAULT 0,
  `module_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` int(11) NOT NULL DEFAULT 1,
  `isdelete` int(11) NOT NULL DEFAULT 0,
  `inuse` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner_master`
--

CREATE TABLE `banner_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` int(11) NOT NULL DEFAULT 1,
  `isdelete` int(11) NOT NULL DEFAULT 0,
  `inuse` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_master`
--

INSERT INTO `banner_master` (`id`, `title`, `description`, `isactive`, `isdelete`, `inuse`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Floor Finisher', 'Nulla voluptas animi distinctio consequatur sit modi.', 1, 0, 1, NULL, NULL, NULL, NULL),
(2, 'Municipal Fire Fighter', 'Ut officia cupiditate rerum facere modi et ex impedit.', 1, 0, 1, NULL, NULL, NULL, NULL),
(3, 'Set and Exhibit Designer', 'Nemo et temporibus tempore nihil corrupti ut quibusdam.', 1, 0, 1, NULL, NULL, NULL, NULL),
(4, 'RN', 'Aut est numquam perspiciatis sit eos sint architecto non molestias.', 1, 0, 1, NULL, NULL, NULL, NULL),
(5, 'Plumber', 'Blanditiis molestias placeat porro temporibus et occaecati enim rerum.', 1, 0, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `connected_accounts`
--

CREATE TABLE `connected_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` int(11) NOT NULL DEFAULT 1,
  `isdelete` int(11) NOT NULL DEFAULT 0,
  `inuse` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `isactive`, `isdelete`, `inuse`, `created_at`, `updated_at`) VALUES
(1, 'Satendra', 's@gmail.com', 'aa', 'test', 1, 0, 1, '2022-09-07 02:14:15', '2022-09-07 02:14:15'),
(2, 'Satendraacffs', 'sss@gmail.com', 'aa', 'test', 1, 0, 1, '2022-09-07 02:15:45', '2022-09-07 02:15:45'),
(3, 'Satendraacffs', 'sss@gmail.com', 'aa', 'test', 1, 0, 1, '2022-09-07 02:17:08', '2022-09-07 02:17:08'),
(4, 'Admin', 'shailendrat@alohatechnologydev.com', 'aa', 'Testing', 1, 0, 1, '2022-09-07 02:18:33', '2022-09-07 02:18:33'),
(5, 'Admin', 'at@alohatechnologydev.com', 'aa', 'Testing', 1, 0, 1, '2022-09-07 02:30:08', '2022-09-07 02:30:08'),
(6, 'Admin', 'at@alohatechnologydev.com', 'aa', 'Testing', 1, 0, 1, '2022-09-07 02:30:13', '2022-09-07 02:30:13'),
(7, 'Admin', 'at@alohatechnologydev.com', 'aa', 'Testing', 1, 0, 1, '2022-09-07 02:50:27', '2022-09-07 02:50:27'),
(8, 'Admin', 'at@alohatechnologydev.com', 'aa', 'Testing', 1, 0, 1, '2022-09-07 02:51:03', '2022-09-07 02:51:03'),
(9, 'Admin', 'at@alohatechnologydev.com', 'aa', 'Testing', 1, 0, 1, '2022-09-07 02:51:30', '2022-09-07 02:51:30'),
(10, 'Admin', 'at@alohatechnologydev.com', 'aa', 'Testing', 1, 0, 1, '2022-09-07 02:52:34', '2022-09-07 02:52:34'),
(11, 'Shailendraa', 'at@alohatechnologydev.com', 'aa', 'eg', 1, 0, 1, '2022-09-07 04:28:22', '2022-09-07 04:28:22'),
(12, 'Shailendraa', 'at@alohatechnologydev.com', 'aa', 'eg', 1, 0, 1, '2022-09-07 04:30:12', '2022-09-07 04:30:12'),
(13, 'dqwr', 'qw@gm.v', 'qwfr', 'qwf', 1, 0, 1, '2022-09-07 04:31:57', '2022-09-07 04:31:57'),
(14, 'Shail', 's@gmail.com', 's', 's', 1, 0, 1, '2022-09-07 04:34:34', '2022-09-07 04:34:34'),
(15, 'sdfas', 's@gmail.com', 'ad', 'AD', 1, 0, 1, '2022-09-07 04:35:49', '2022-09-07 04:35:49'),
(16, 'DFQWF', 'singhtiwari.shailendra@gmail.com', 'WQFQW', 'FWQ', 1, 0, 1, '2022-09-07 04:36:40', '2022-09-07 04:36:40'),
(17, 'SZs', 'shailendrat@alohatechnologydev.com', 's', 'DAAD', 1, 0, 1, '2022-09-07 04:40:10', '2022-09-07 04:40:10'),
(18, 'dawwq', 'shailendrat@alohatechnologydev.com', 's', 'WQD', 1, 0, 1, '2022-09-07 04:40:57', '2022-09-07 04:40:57'),
(19, 'Admin', 'singhtiwari.shailendra@gmail.com', 'qwfr', 'QS', 1, 0, 1, '2022-09-07 04:43:28', '2022-09-07 04:43:28'),
(20, 'Shail', 'at@alohatechnologydev.com', 'df', 'fwwe', 1, 0, 1, '2022-09-07 04:45:48', '2022-09-07 04:45:48');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `phone_no` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_no` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_no` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_no` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_from` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `turnover` double(15,8) NOT NULL,
  `post` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` int(11) NOT NULL DEFAULT 1,
  `isdelete` int(11) NOT NULL DEFAULT 0,
  `inuse` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` int(11) NOT NULL DEFAULT 1,
  `isdelete` int(11) NOT NULL DEFAULT 0,
  `inuse` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `title`, `description`, `isactive`, `isdelete`, `inuse`, `created_by`, `updated_by`) VALUES
(1, 'Photoengraver', 'Dolorem corrupti earum illo quis beatae est placeat voluptas ex.', 1, 0, 1, 1, 1),
(2, 'Petroleum Pump System Operator', 'Voluptas minima culpa eligendi tenetur adipisci eos sunt ad itaque iusto voluptatem.', 1, 0, 1, 1, 1),
(3, 'School Social Worker', 'Ratione consectetur exercitationem dolores cum non aliquam nemo velit tempora.', 1, 0, 1, 1, 1),
(4, 'Waiter', 'Veniam nisi hic autem libero et alias voluptatem mollitia quibusdam provident perferendis.', 1, 0, 1, 1, 1),
(5, 'Office Machine and Cash Register Servicer', 'Alias distinctio aut dolore fugit doloribus asperiores.', 1, 0, 1, 1, 1),
(6, 'Agricultural Worker', 'Temporibus delectus omnis rerum dolores corporis veniam.', 1, 0, 1, 1, 1),
(7, 'Construction Driller', 'Saepe reiciendis autem aut qui qui cupiditate.', 1, 0, 1, 1, 1),
(8, 'Gas Pumping Station Operator', 'Ab aut praesentium sapiente quibusdam exercitationem reprehenderit perspiciatis eum blanditiis hic aperiam.', 1, 0, 1, 1, 1),
(9, 'Refinery Operator', 'Esse aut quae sit explicabo aut et possimus hic aut rerum et nobis.', 1, 0, 1, 1, 1),
(10, 'Bulldozer Operator', 'Rerum qui in omnis ducimus non nobis veritatis nam vel odio dolorem totam quia.', 1, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `isactive` int(11) NOT NULL DEFAULT 1,
  `isdelete` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL DEFAULT 1,
  `updated_by` int(11) NOT NULL DEFAULT 1,
  `inuse` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `start`, `end`, `isactive`, `isdelete`, `created_by`, `updated_by`, `inuse`, `created_at`, `updated_at`) VALUES
(1, 'Ut quam sit laboriosam.', '1993-05-23', '1997-05-26', 1, 0, 1, 1, 1, NULL, NULL),
(2, 'Aut corrupti.', '1998-07-16', '2001-02-06', 1, 0, 1, 1, 1, NULL, NULL),
(3, 'Impedit perferendis adipisci architecto.', '1984-03-17', '2014-01-31', 1, 0, 1, 1, 1, NULL, NULL),
(4, 'Autem dolorem nemo ducimus nisi.', '2018-12-20', '2008-01-14', 1, 0, 1, 1, 1, NULL, NULL),
(5, 'Voluptatibus quam harum.', '1988-08-28', '1984-11-02', 1, 0, 1, 1, 1, NULL, NULL),
(6, 'Autem animi.', '1986-09-20', '1988-09-15', 1, 0, 1, 1, 1, NULL, NULL),
(7, 'Et sed.', '2013-02-07', '1973-02-20', 1, 0, 1, 1, 1, NULL, NULL),
(8, 'Voluptatem doloremque molestias esse.', '2021-08-16', '1986-04-05', 1, 0, 1, 1, 1, NULL, NULL),
(9, 'Error et consequuntur.', '1973-03-19', '1991-06-18', 1, 0, 1, 1, 1, NULL, NULL),
(10, 'Mollitia aut quia.', '1991-02-23', '1984-10-27', 1, 0, 1, 1, 1, NULL, NULL),
(11, 'Omnis eveniet nemo nam.', '1973-01-20', '1970-07-11', 1, 0, 1, 1, 1, NULL, NULL),
(12, 'Et dolores dolore harum.', '1989-10-21', '1976-07-23', 1, 0, 1, 1, 1, NULL, NULL),
(13, 'Et exercitationem.', '1992-03-14', '1975-04-08', 1, 0, 1, 1, 1, NULL, NULL),
(14, 'Ab facilis dicta provident.', '1977-08-30', '1972-07-08', 1, 0, 1, 1, 1, NULL, NULL),
(15, 'Ad quia et a ipsam.', '1977-11-22', '2011-08-13', 1, 0, 1, 1, 1, NULL, NULL),
(16, 'Et non.', '1996-12-26', '1985-06-14', 1, 0, 1, 1, 1, NULL, NULL),
(17, 'Nobis et consequatur.', '1983-11-17', '2001-12-26', 1, 0, 1, 1, 1, NULL, NULL),
(18, 'Non cum omnis qui consectetur.', '2015-05-18', '2018-10-06', 1, 0, 1, 1, 1, NULL, NULL),
(19, 'Rerum excepturi placeat.', '2011-08-23', '1994-11-27', 1, 0, 1, 1, 1, NULL, NULL),
(20, 'At voluptatum.', '1979-03-23', '2003-05-14', 1, 0, 1, 1, 1, NULL, NULL),
(21, 'Aut aliquid blanditiis.', '1975-11-09', '2004-06-21', 1, 0, 1, 1, 1, NULL, NULL),
(22, 'Optio in fugiat aut.', '2020-03-13', '1986-08-17', 1, 0, 1, 1, 1, NULL, NULL),
(23, 'Magni culpa unde a.', '1975-02-19', '1973-06-30', 1, 0, 1, 1, 1, NULL, NULL),
(24, 'Maiores aut culpa.', '1980-01-29', '2016-10-12', 1, 0, 1, 1, 1, NULL, NULL),
(25, 'Et et perferendis.', '1972-09-02', '2003-03-16', 1, 0, 1, 1, 1, NULL, NULL),
(26, 'Qui facilis rerum nobis.', '1984-04-28', '1978-01-05', 1, 0, 1, 1, 1, NULL, NULL),
(27, 'Omnis voluptatem quaerat molestias.', '2003-10-17', '2011-01-14', 1, 0, 1, 1, 1, NULL, NULL),
(28, 'Ratione quis exercitationem.', '1970-03-13', '1994-04-09', 1, 0, 1, 1, 1, NULL, NULL),
(29, 'Eaque consequuntur non.', '2002-12-20', '2013-03-05', 1, 0, 1, 1, 1, NULL, NULL),
(30, 'Autem debitis totam.', '1990-05-03', '2016-10-14', 1, 0, 1, 1, 1, NULL, NULL),
(31, 'Sint ducimus hic omnis.', '1973-01-28', '1985-11-13', 1, 0, 1, 1, 1, NULL, NULL),
(32, 'Commodi beatae impedit.', '2006-03-01', '1999-08-18', 1, 0, 1, 1, 1, NULL, NULL),
(33, 'Cum eligendi et debitis.', '2021-07-01', '2006-12-12', 1, 0, 1, 1, 1, NULL, NULL),
(34, 'Aut dolores et ex.', '1992-03-05', '1978-08-28', 1, 0, 1, 1, 1, NULL, NULL),
(35, 'Aliquid qui voluptate nihil.', '1991-12-11', '2018-08-11', 1, 0, 1, 1, 1, NULL, NULL),
(36, 'Quis maxime velit quis.', '1993-10-14', '1988-10-04', 1, 0, 1, 1, 1, NULL, NULL),
(37, 'Ipsam eveniet numquam.', '1996-08-18', '2021-01-24', 1, 0, 1, 1, 1, NULL, NULL),
(38, 'Autem qui non.', '1984-06-09', '2012-01-30', 1, 0, 1, 1, 1, NULL, NULL),
(39, 'Ut temporibus est.', '1985-10-19', '2013-04-02', 1, 0, 1, 1, 1, NULL, NULL),
(40, 'Nobis ea omnis velit.', '1996-02-08', '2014-03-21', 1, 0, 1, 1, 1, NULL, NULL),
(41, 'Blanditiis ut sint explicabo.', '2009-04-13', '1979-01-09', 1, 0, 1, 1, 1, NULL, NULL),
(42, 'Maxime itaque voluptatibus.', '1999-06-19', '1992-10-30', 1, 0, 1, 1, 1, NULL, NULL),
(43, 'Maiores omnis.', '2012-04-24', '1971-11-21', 1, 0, 1, 1, 1, NULL, NULL),
(44, 'Minima porro ipsam.', '1975-04-23', '2022-05-03', 1, 0, 1, 1, 1, NULL, NULL),
(45, 'Beatae magni qui.', '1981-11-21', '1998-07-18', 1, 0, 1, 1, 1, NULL, NULL),
(46, 'Non et.', '1970-11-16', '2000-12-09', 1, 0, 1, 1, 1, NULL, NULL),
(47, 'Perspiciatis quasi delectus consequatur.', '1974-09-04', '2018-03-29', 1, 0, 1, 1, 1, NULL, NULL),
(48, 'Fuga quia rem inventore.', '1986-09-16', '1997-04-05', 1, 0, 1, 1, 1, NULL, NULL),
(49, 'Esse voluptas.', '1978-03-05', '2021-09-12', 1, 0, 1, 1, 1, NULL, NULL),
(50, 'Velit sunt iusto voluptatum.', '1999-05-23', '2020-10-04', 1, 0, 1, 1, 1, NULL, NULL),
(51, 'Nostrum quam repellendus assumenda.', '1985-09-14', '2010-03-04', 1, 0, 1, 1, 1, NULL, NULL),
(52, 'Aliquam corporis voluptas iusto.', '2006-10-09', '1986-10-29', 1, 0, 1, 1, 1, NULL, NULL),
(53, 'Corporis sint aspernatur.', '1991-01-28', '1998-05-08', 1, 0, 1, 1, 1, NULL, NULL),
(54, 'Qui quia accusantium.', '1986-11-21', '2016-09-07', 1, 0, 1, 1, 1, NULL, NULL),
(55, 'Asperiores consequatur libero ad.', '1971-12-09', '1998-05-22', 1, 0, 1, 1, 1, NULL, NULL),
(56, 'Molestiae optio magni dolor deserunt.', '1993-08-30', '1975-04-24', 1, 0, 1, 1, 1, NULL, NULL),
(57, 'Harum temporibus eos recusandae.', '2008-03-29', '1990-04-25', 1, 0, 1, 1, 1, NULL, NULL),
(58, 'Quia non hic ea.', '1995-05-03', '2016-01-14', 1, 0, 1, 1, 1, NULL, NULL),
(59, 'Id quis dolore illum consequuntur.', '1996-08-06', '1973-02-24', 1, 0, 1, 1, 1, NULL, NULL),
(60, 'Natus consequatur iusto deleniti.', '2015-04-15', '2001-11-26', 1, 0, 1, 1, 1, NULL, NULL),
(61, 'Praesentium iure.', '1972-03-25', '1979-01-29', 1, 0, 1, 1, 1, NULL, NULL),
(62, 'Sapiente repellendus dicta.', '1981-10-02', '1985-11-16', 1, 0, 1, 1, 1, NULL, NULL),
(63, 'Commodi sed dolorum.', '1998-11-01', '2022-03-21', 1, 0, 1, 1, 1, NULL, NULL),
(64, 'Facilis tenetur.', '1986-11-21', '2004-04-29', 1, 0, 1, 1, 1, NULL, NULL),
(65, 'Labore est quia.', '1973-03-12', '1972-01-31', 1, 0, 1, 1, 1, NULL, NULL),
(66, 'Dolorem culpa harum voluptatem.', '2007-09-23', '2019-07-26', 1, 0, 1, 1, 1, NULL, NULL),
(67, 'Commodi et provident.', '1974-11-17', '1970-09-14', 1, 0, 1, 1, 1, NULL, NULL),
(68, 'Qui sit velit sed voluptatum.', '1997-06-22', '2020-03-01', 1, 0, 1, 1, 1, NULL, NULL),
(69, 'Velit consequatur consequatur pariatur.', '1974-01-25', '1971-01-30', 1, 0, 1, 1, 1, NULL, NULL),
(70, 'Adipisci ut amet reprehenderit.', '1998-08-29', '2006-08-26', 1, 0, 1, 1, 1, NULL, NULL),
(71, 'Perspiciatis placeat ea.', '2010-12-28', '1994-06-01', 1, 0, 1, 1, 1, NULL, NULL),
(72, 'Ipsam omnis dicta voluptatem.', '2004-11-21', '1990-02-11', 1, 0, 1, 1, 1, NULL, NULL),
(73, 'Totam error saepe.', '2003-03-15', '2018-04-28', 1, 0, 1, 1, 1, NULL, NULL),
(74, 'Hic pariatur quam sit.', '1981-05-19', '2003-10-12', 1, 0, 1, 1, 1, NULL, NULL),
(75, 'Beatae et consequatur consectetur.', '1970-01-20', '2020-12-09', 1, 0, 1, 1, 1, NULL, NULL),
(76, 'Reiciendis voluptatibus hic.', '1988-08-13', '2021-07-03', 1, 0, 1, 1, 1, NULL, NULL),
(77, 'Ut sapiente praesentium.', '1993-06-01', '1975-03-13', 1, 0, 1, 1, 1, NULL, NULL),
(78, 'Ab nihil nemo velit.', '2006-12-23', '1980-05-07', 1, 0, 1, 1, 1, NULL, NULL),
(79, 'Maiores distinctio sed quas.', '1998-12-07', '1984-07-24', 1, 0, 1, 1, 1, NULL, NULL),
(80, 'Impedit error ea ea.', '1984-02-07', '1986-09-01', 1, 0, 1, 1, 1, NULL, NULL),
(81, 'Magnam ut.', '1980-11-03', '1992-11-22', 1, 0, 1, 1, 1, NULL, NULL),
(82, 'Sit dicta vel rerum et.', '2009-10-07', '2021-03-01', 1, 0, 1, 1, 1, NULL, NULL),
(83, 'Asperiores qui nam.', '2017-09-11', '1990-10-31', 1, 0, 1, 1, 1, NULL, NULL),
(84, 'Assumenda exercitationem autem non.', '2013-04-13', '2000-06-06', 1, 0, 1, 1, 1, NULL, NULL),
(85, 'Et quos labore ea.', '2004-09-12', '1978-12-12', 1, 0, 1, 1, 1, NULL, NULL),
(86, 'Quisquam rerum.', '2016-04-02', '1972-05-16', 1, 0, 1, 1, 1, NULL, NULL),
(87, 'Quod et amet.', '1993-07-21', '1972-07-16', 1, 0, 1, 1, 1, NULL, NULL),
(88, 'Qui animi qui.', '1990-08-13', '2005-10-06', 1, 0, 1, 1, 1, NULL, NULL),
(89, 'Quidem tenetur quia voluptatibus.', '2009-06-12', '1971-09-23', 1, 0, 1, 1, 1, NULL, NULL),
(90, 'Quo autem maxime est perferendis.', '1995-03-17', '1986-01-05', 1, 0, 1, 1, 1, NULL, NULL),
(91, 'Tempora deserunt voluptatem velit cupiditate.', '2010-03-27', '1990-05-31', 1, 0, 1, 1, 1, NULL, NULL),
(92, 'Vitae molestias.', '1999-01-21', '1996-11-28', 1, 0, 1, 1, 1, NULL, NULL),
(93, 'Temporibus voluptas.', '1975-04-06', '2001-08-23', 1, 0, 1, 1, 1, NULL, NULL),
(94, 'Non voluptatem voluptas quo.', '1987-06-27', '1993-02-23', 1, 0, 1, 1, 1, NULL, NULL),
(95, 'Ut fugit porro omnis.', '2004-08-06', '1976-02-18', 1, 0, 1, 1, 1, NULL, NULL),
(96, 'Ipsa odit ipsum.', '2021-03-14', '1973-11-15', 1, 0, 1, 1, 1, NULL, NULL),
(97, 'Ut temporibus eius nihil perspiciatis.', '2006-02-22', '2015-06-12', 1, 0, 1, 1, 1, NULL, NULL),
(98, 'Et voluptatem est nostrum culpa.', '1981-03-13', '1985-05-03', 1, 0, 1, 1, 1, NULL, NULL),
(99, 'Dolorem voluptatem ipsam.', '1973-06-04', '1976-01-05', 1, 0, 1, 1, 1, NULL, NULL),
(100, 'Quaerat illum eveniet.', '1980-11-24', '2005-04-19', 1, 0, 1, 1, 1, NULL, NULL),
(101, '3tf4t', '2022-08-31', '2022-09-01', 1, 0, 1, 1, 1, '2022-09-07 05:55:15', '2022-09-07 05:55:15'),
(102, 'awfwef', '2022-08-30', '2022-08-31', 1, 0, 1, 1, 1, '2022-09-07 05:55:20', '2022-09-07 05:55:20'),
(103, 'regr', '2022-09-01', '2022-09-02', 1, 0, 1, 1, 1, '2022-09-07 05:58:16', '2022-09-07 05:58:16'),
(104, 'dsfsdf', '2022-09-02', '2022-09-03', 1, 0, 1, 1, 1, '2022-09-07 05:58:26', '2022-09-07 05:58:26'),
(105, 'wet32t', '2022-08-30', '2022-08-31', 1, 0, 1, 1, 1, '2022-09-07 05:58:46', '2022-09-07 05:58:46'),
(106, 'wt23rt', '2022-08-31', '2022-09-01', 1, 0, 1, 1, 1, '2022-09-07 05:58:49', '2022-09-07 05:58:49'),
(107, 'rtw2r23t', '2022-08-30', '2022-08-31', 1, 0, 1, 1, 1, '2022-09-07 05:58:54', '2022-09-07 05:58:54'),
(108, 'r23r23rtf', '2022-08-30', '2022-08-31', 1, 0, 1, 1, 1, '2022-09-07 05:58:58', '2022-09-07 05:58:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flagges`
--

CREATE TABLE `flagges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` int(11) NOT NULL DEFAULT 1,
  `isdelete` int(11) NOT NULL DEFAULT 0,
  `inuse` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flagges`
--

INSERT INTO `flagges` (`id`, `title`, `description`, `isactive`, `isdelete`, `inuse`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'homenick', 'Ea fugiat eos unde eaque eveniet voluptatem non sit voluptatibus.', 1, 0, 1, 1, 1, NULL, NULL),
(2, 'lakin', 'Perferendis quam natus laboriosam ea necessitatibus vel facere et fugit animi consectetur eaque.', 1, 0, 1, 1, 1, NULL, NULL),
(3, 'schuster', 'Eaque fuga nesciunt dolorum eum maxime eum aspernatur praesentium.', 1, 0, 1, 1, 1, NULL, NULL),
(4, 'moen', 'Cumque amet quis voluptatem quasi illum occaecati animi nisi.', 1, 0, 1, 1, 1, NULL, NULL),
(5, 'reilly', 'Sint quaerat voluptatum qui ipsum veritatis dolorem neque aut culpa nostrum reprehenderit.', 1, 0, 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` date DEFAULT NULL,
  `isactive` int(11) NOT NULL DEFAULT 1,
  `isdelete` int(11) NOT NULL DEFAULT 0,
  `inuse` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `title`, `description`, `start`, `isactive`, `isdelete`, `inuse`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Quo magni voluptate unde.', 'Cupiditate sit nihil voluptatem maiores adipisci quae.', '2010-05-09', 1, 0, 1, 1, 1, NULL, NULL),
(2, 'Corrupti autem aspernatur praesentium.', 'Architecto neque repellendus architecto pariatur minima est quidem nam.', '1982-04-27', 1, 0, 1, 1, 1, NULL, NULL),
(3, 'Modi quod nihil voluptas.', 'Et sed error eos deserunt exercitationem quidem velit ullam enim et similique.', '1982-07-02', 1, 0, 1, 1, 1, NULL, NULL),
(4, 'Et esse harum accusantium.', 'Expedita quia dignissimos voluptate eaque illo est.', '2003-02-08', 1, 0, 1, 1, 1, NULL, NULL),
(5, 'Quas doloribus atque sit.', 'Necessitatibus qui distinctio natus tenetur iusto nulla eaque eos nam quia nihil.', '1995-01-29', 1, 0, 1, 1, 1, NULL, NULL),
(6, 'Minus tenetur a.', 'Ipsa rerum quis dolor illo delectus ullam sed.', '1982-09-21', 1, 0, 1, 1, 1, NULL, NULL),
(7, 'Possimus tempora eum consequatur.', 'Voluptatem asperiores quas explicabo vero voluptatibus omnis aut.', '1990-09-20', 1, 0, 1, 1, 1, NULL, NULL),
(8, 'Vel velit.', 'Excepturi voluptas nesciunt itaque et ipsum ut aliquid sed doloremque labore dolor et.', '1973-08-06', 1, 0, 1, 1, 1, NULL, NULL),
(9, 'Voluptate molestiae assumenda.', 'Eligendi natus reiciendis qui et quia architecto hic aut assumenda et maiores vel.', '1986-06-27', 1, 0, 1, 1, 1, NULL, NULL),
(10, 'Voluptatibus repellat quos.', 'Voluptatem voluptatem corporis sit distinctio modi quia in fuga accusamus laudantium culpa.', '1974-02-18', 1, 0, 1, 1, 1, NULL, NULL),
(11, 'Welcome to Aloha', 'e2qe', '2022-09-08', 1, 0, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` int(11) NOT NULL DEFAULT 1,
  `isdelete` int(11) NOT NULL DEFAULT 0,
  `inuse` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `title`, `description`, `isactive`, `isdelete`, `inuse`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'murphy', 'Ratione omnis rerum modi blanditiis quisquam et placeat sed soluta et excepturi voluptatum.', 1, 0, 1, 1, 1, NULL, NULL),
(2, 'bednar', 'Voluptas voluptatibus omnis sit ducimus quo consequatur.', 1, 0, 1, 1, 1, NULL, NULL),
(3, 'keebler', 'Aut natus ut incidunt eos eligendi doloremque est inventore impedit.', 1, 0, 1, 1, 1, NULL, NULL),
(4, 'hessel', 'Aut voluptas quisquam ex eaque cumque et quisquam quas accusamus error.', 1, 0, 1, 1, 1, NULL, NULL),
(5, 'erdman', 'Odit occaecati eaque est provident vero et ex.', 1, 0, 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` int(11) NOT NULL DEFAULT 1,
  `isdelete` int(11) NOT NULL DEFAULT 0,
  `inuse` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`id`, `title`, `description`, `isactive`, `isdelete`, `inuse`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'wiegand', 'Explicabo eaque velit veritatis repudiandae quos libero dolor earum et pariatur amet.', 1, 0, 1, 1, 1, NULL, NULL),
(2, 'kulas', 'Animi non ipsum id eos tempore iusto esse tenetur maxime saepe et minima.', 1, 0, 1, 1, 1, NULL, NULL),
(3, 'gerlach', 'Fugiat inventore sed corrupti officia est sed placeat quae.', 1, 0, 1, 1, 1, NULL, NULL),
(4, 'wilderman', 'Neque quis minima repellendus quis sint placeat voluptatibus rerum aut et vel excepturi recusandae.', 1, 0, 1, 1, 1, NULL, NULL),
(5, 'beer', 'Sunt aut suscipit omnis et et maiores consectetur voluptates.', 1, 0, 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_12_22_000000_create_connected_accounts_table', 1),
(7, '2022_07_25_080210_create_sidebars_table', 1),
(8, '2022_07_25_094827_create_departments_table', 1),
(9, '2022_07_25_140934_create_events_table', 1),
(10, '2022_07_26_074523_create_activities_table', 1),
(11, '2022_07_26_131817_create_holidays_table', 1),
(12, '2022_07_28_095850_create_attendances_table', 1),
(13, '2022_07_29_053848_create_projects_table', 1),
(14, '2022_08_11_155704_create_customers_table', 1),
(15, '2022_08_24_152833_create_flagges_table', 1),
(16, '2022_08_24_153013_create_issues_table', 1),
(17, '2022_08_24_153324_create_labels_table', 1),
(18, '2022_08_24_153611_create_posts_table', 1),
(19, '2022_08_24_154433_create_project_category_table', 1),
(20, '2022_08_24_183729_create_settings_table', 1),
(21, '2022_08_24_184344_create_task_status_table', 1),
(22, '2022_08_25_074717_create_sessions_table', 1),
(23, '2022_08_26_063052_create_permission_tables', 1),
(24, '2022_09_01_102612_create_userlogs_table', 1),
(25, '2022_09_02_052239_create_banners_table', 1),
(26, '2022_09_05_063529_create_banner_master_table', 1),
(27, '2022_09_07_064629_create_contacts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 101);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2022-09-06 07:43:13', '2022-09-06 07:43:13'),
(2, 'role-create', 'web', '2022-09-06 07:43:14', '2022-09-06 07:43:14'),
(3, 'role-edit', 'web', '2022-09-06 07:43:14', '2022-09-06 07:43:14'),
(4, 'role-delete', 'web', '2022-09-06 07:43:14', '2022-09-06 07:43:14'),
(5, 'product-list', 'web', '2022-09-06 07:43:14', '2022-09-06 07:43:14'),
(6, 'product-create', 'web', '2022-09-06 07:43:14', '2022-09-06 07:43:14'),
(7, 'product-edit', 'web', '2022-09-06 07:43:14', '2022-09-06 07:43:14'),
(8, 'product-delete', 'web', '2022-09-06 07:43:14', '2022-09-06 07:43:14');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dept_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` int(11) NOT NULL DEFAULT 1,
  `isdelete` int(11) NOT NULL DEFAULT 0,
  `inuse` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `dept_id`, `title`, `description`, `isactive`, `isdelete`, `inuse`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 5, 'Prosthodontist', 'Sunt quis reprehenderit sit adipisci amet provident sapiente dolor ea maxime deserunt quia.', 1, 0, 1, 1, 1, NULL, NULL),
(2, 2, 'Personal Home Care Aide', 'Nihil voluptas nulla eos error aut beatae et sed placeat facilis omnis et.', 1, 0, 1, 1, 1, NULL, NULL),
(3, 5, 'Air Crew Member', 'Distinctio voluptatem aut excepturi amet quo quis.', 1, 0, 1, 1, 1, NULL, NULL),
(4, 4, 'Postal Service Mail Carrier', 'Unde ipsam non eos qui consequatur velit.', 1, 0, 1, 1, 1, NULL, NULL),
(5, 1, 'Painter and Illustrator', 'Est sint consequatur sunt impedit minus qui quam impedit cupiditate impedit aut modi.', 1, 0, 1, 1, 1, NULL, NULL),
(6, 3, 'Aloha', 'Welcome to Aloha', 1, 0, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no_image.png',
  `category` int(11) DEFAULT NULL,
  `lead` int(11) DEFAULT NULL,
  `default_assigned` int(11) DEFAULT NULL,
  `isconfirm` int(11) DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` int(11) NOT NULL DEFAULT 1,
  `isdelete` int(11) NOT NULL DEFAULT 1,
  `inuse` int(11) NOT NULL DEFAULT 1,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`)),
  `created_by` int(11) NOT NULL DEFAULT 1,
  `updated_by` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `key`, `start`, `description`, `icon_picture`, `category`, `lead`, `default_assigned`, `isconfirm`, `remarks`, `isactive`, `isdelete`, `inuse`, `options`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Esse aliquid voluptatem et unde.', 'Optio.', '1970-08-16', 'Voluptatem quasi aut aut sit tempora est iste eligendi eveniet non temporibus.', 'no_image.png', 2, 7, 5, 1, 'Quia voluptatem dolor asperiores ullam iste.', 1, 0, 1, NULL, 1, 1, NULL, NULL),
(2, 'Hic enim et laborum.', 'Quis aperiam.', '1983-12-31', 'Aperiam saepe non perferendis ducimus quasi quia ipsum nihil quo nihil iusto.', 'no_image.png', 1, 19, 13, 1, 'Est incidunt fuga quis qui iste quis libero ut.', 1, 0, 1, NULL, 1, 1, NULL, NULL),
(3, 'Soluta fugiat qui sint.', 'In.', '2001-04-20', 'Consectetur et hic quo sunt nulla dicta quia tenetur error repellendus sunt.', 'no_image.png', 2, 6, 4, 1, 'Id temporibus non praesentium quae quaerat at.', 1, 0, 1, NULL, 1, 1, NULL, NULL),
(4, 'Consequatur reiciendis qui voluptatum odio.', 'Numquam repellat.', '2006-06-23', 'Molestias nihil quis est velit quaerat ipsa accusantium.', 'no_image.png', 1, 1, 1, 1, 'Eveniet consequatur accusamus eos.', 1, 0, 1, NULL, 1, 1, NULL, NULL),
(5, 'Necessitatibus temporibus veniam.', 'Vel.', '1974-10-01', 'Nesciunt voluptas laborum maxime aut occaecati reprehenderit reprehenderit maxime.', 'no_image.png', 2, 18, 5, 1, 'Delectus alias quae ab in error tempora eum sequi.', 1, 0, 1, NULL, 1, 1, NULL, NULL),
(6, 'Animi aperiam et.', 'Nihil doloribus.', '2009-02-18', 'Natus vero iste numquam sunt distinctio vel.', 'no_image.png', 1, 15, 2, 1, 'Et laudantium aperiam iusto ut perferendis consequuntur culpa.', 1, 0, 1, NULL, 1, 1, NULL, NULL),
(7, 'Doloribus odio non itaque.', 'Cupiditate vel.', '2007-11-08', 'Repellat expedita perferendis nihil expedita et reprehenderit.', 'no_image.png', 2, 7, 12, 1, 'Nostrum ut doloremque tenetur maxime.', 1, 0, 1, NULL, 1, 1, NULL, NULL),
(8, 'Aliquid perferendis voluptatem sunt.', 'Ad rerum.', '2005-07-10', 'Quis quia non et ducimus commodi aut rerum omnis facilis molestiae cumque.', 'no_image.png', 5, 1, 15, 1, 'Aperiam eius consequatur ad architecto officia.', 1, 0, 1, NULL, 1, 1, NULL, NULL),
(9, 'Ut omnis numquam animi vero.', 'Culpa ea.', '1988-03-20', 'Voluptate deserunt qui modi earum asperiores deserunt et inventore cupiditate saepe sit aut tenetur.', 'no_image.png', 5, 8, 2, 1, 'Molestiae quis eveniet rerum reiciendis sit in iusto.', 1, 0, 1, NULL, 1, 1, NULL, NULL),
(10, 'Quis impedit quam porro.', 'Velit.', '1993-01-28', 'Aut amet reiciendis assumenda quia quas fugit nulla.', 'no_image.png', 3, 19, 16, 1, 'Animi provident nemo ipsa voluptate rem.', 1, 0, 1, NULL, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_category`
--

CREATE TABLE `project_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` int(11) NOT NULL DEFAULT 1,
  `isdelete` int(11) NOT NULL DEFAULT 0,
  `inuse` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_category`
--

INSERT INTO `project_category` (`id`, `title`, `description`, `isactive`, `isdelete`, `inuse`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Bookbinder', 'Accusantium aut quo vel est quam debitis excepturi illo.', 1, 0, 1, NULL, NULL, NULL, NULL),
(2, 'Chef', 'Minima repellendus tempora voluptatibus et consequuntur velit fugiat molestias.', 1, 0, 1, NULL, NULL, NULL, NULL),
(3, 'Supervisor of Police', 'Nam quis et nulla id laboriosam omnis et exercitationem sapiente.', 1, 0, 1, NULL, NULL, NULL, NULL),
(4, 'Fiber Product Cutting Machine Operator', 'Enim quod qui quasi alias aut aspernatur voluptas tempore ea.', 1, 0, 1, NULL, NULL, NULL, NULL),
(5, 'General Practitioner', 'Quia id mollitia corporis in ut in et et aut quidem eos id.', 1, 0, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5FYDRZ09C09V6SH3BDYgnSdV6eEneunuHMx3ctJ9', 101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicDJVdkJsUmxZOGl3TmJjdGRhd1ZiQ3I0UHhCS2lSQXdsOG1jSElwYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ldmVudCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjEwMTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRhRExrQ2M0YlpHZi9DZFRSTmxXV3hlNUlUM2xjLzZpMlI4WlE3ZkUwMUYuRkhTN2x6VzVabSI7fQ==', 1662551161);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no_image.png',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no_image.png',
  `invoice_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no_image.png',
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `est_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` int(11) NOT NULL DEFAULT 1,
  `isdelete` int(11) NOT NULL DEFAULT 0,
  `inuse` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `company_name`, `sort_name`, `description`, `logo`, `image`, `invoice_image`, `address`, `state`, `zipCode`, `pan_no`, `gst_no`, `est_info`, `phone`, `email`, `owner`, `remarks`, `isactive`, `isdelete`, `inuse`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Aloha Group', 'Aloha Group', 'Aloha', 'Provident eius sed vel possimus quos accusantium omnis omnis.', 'logo.png', 'logo.png', 'logo.png', '8942 Alyson Road Apt. 593\nJerelmouth, AZ 35724-2835', 'South Carolina', '85551', 'YQKEAE31', 'QDNLQBFX', '1970', '+19102235015', 'mylene.klein@roob.com', 'D\'angelo Klocko II', 'Ut error assumenda ab vel minus natus nobis.', 1, 0, 1, 1, 1, NULL, '2022-09-06 07:44:06');

-- --------------------------------------------------------

--
-- Table structure for table `sidebars`
--

CREATE TABLE `sidebars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `Isactive` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_status`
--

CREATE TABLE `task_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` int(11) NOT NULL DEFAULT 1,
  `isdelete` int(11) NOT NULL DEFAULT 0,
  `inuse` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_status`
--

INSERT INTO `task_status` (`id`, `title`, `description`, `isactive`, `isdelete`, `inuse`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Start', 'First Step', 1, 0, 1, NULL, NULL, NULL, NULL),
(2, 'Working', 'Developer Step', 1, 0, 1, NULL, NULL, NULL, NULL),
(3, 'Complete', 'Last stage', 1, 0, 1, NULL, NULL, NULL, NULL),
(4, 'OrangeRed', 'Dolor ut quia velit aut ipsam voluptatem saepe excepturi.', 0, 0, 1, NULL, NULL, NULL, NULL),
(5, 'Gainsboro', 'Ea et est fugiat commodi vitae ipsum consequuntur ea quo quasi consequatur iste.', 0, 0, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlogs`
--

CREATE TABLE `userlogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action_id` int(11) NOT NULL DEFAULT 0,
  `module_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` int(11) NOT NULL DEFAULT 1,
  `isdelete` int(11) NOT NULL DEFAULT 0,
  `inuse` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userlogs`
--

INSERT INTO `userlogs` (`id`, `action_id`, `module_id`, `title`, `description`, `isactive`, `isdelete`, `inuse`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Settings  Updated', 'Master Settings Updated', 1, 0, 1, 101, NULL, NULL, NULL),
(2, 1, 1, 'Post Save', 'Master Post Save', 1, 0, 1, 101, NULL, NULL, NULL),
(3, 1, 1, 'Post Update', 'Master Post Updated', 1, 0, 1, 101, NULL, NULL, NULL),
(4, 1, 1, 'Holiday Created', 'New Holiday Created', 1, 0, 1, 101, NULL, NULL, NULL),
(5, 1, 1, 'Holiday Created', 'New Holiday Created', 1, 0, 1, 101, NULL, NULL, NULL),
(6, 1, 1, 'Task Type Update', 'Master Task Type Updated', 1, 0, 1, 101, NULL, NULL, NULL),
(7, 1, 1, 'Task Type Update', 'Master Task Type Updated', 1, 0, 1, 101, NULL, NULL, NULL),
(8, 1, 1, 'Task Type Update', 'Master Task Type Updated', 1, 0, 1, 101, NULL, NULL, NULL),
(9, 1, 1, 'Task Type Update', 'Master Task Type Updated', 1, 0, 1, 101, NULL, NULL, NULL),
(10, 1, 1, 'Task Type Update', 'Master Task Type Updated', 1, 0, 1, 101, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `current_connected_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `current_connected_account_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Rafaela', 'zachariah.gleason@hotmail.com', '2022-09-06 07:42:31', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, '5Uj7ZY4RZH', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(2, 'Dagmar', 'ena10@gmail.com', '2022-09-06 07:42:32', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'mW2HrK8kKH', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(3, 'Joanie', 'opal91@hotmail.com', '2022-09-06 07:42:32', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'o4wTFYPaKq', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(4, 'Emory', 'carroll.nikki@yahoo.com', '2022-09-06 07:42:33', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'mowqz7EHI9', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(5, 'Marisol', 'mosciski.isac@hotmail.com', '2022-09-06 07:42:33', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'u4VfK5c2wl', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(6, 'Cayla', 'oherzog@gmail.com', '2022-09-06 07:42:34', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'ZsYOFX2AaQ', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(7, 'Chelsie', 'moen.noah@gmail.com', '2022-09-06 07:42:34', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'd7Tg5r0uy7', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(8, 'Gilbert', 'rath.joyce@hotmail.com', '2022-09-06 07:42:34', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'wMS5HAeExY', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(9, 'Burley', 'nfeeney@yahoo.com', '2022-09-06 07:42:35', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'bJ1TNFGzzO', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(10, 'Donnell', 'toni.feest@yahoo.com', '2022-09-06 07:42:35', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'K0QerLFRE6', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(11, 'Victor', 'vfriesen@hotmail.com', '2022-09-06 07:42:35', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'nH1d4Kyyfy', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(12, 'Jovany', 'tamia.cartwright@yahoo.com', '2022-09-06 07:42:35', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'JxwVn1Xj58', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(13, 'Luz', 'wehner.kimberly@hotmail.com', '2022-09-06 07:42:36', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'pp1qgocIa5', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(14, 'Cleo', 'pearline37@hotmail.com', '2022-09-06 07:42:36', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'ENjZe6lEXM', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(15, 'Robin', 'aheaney@gmail.com', '2022-09-06 07:42:36', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'bMfgfeFWbc', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(16, 'Cristal', 'johanna42@hotmail.com', '2022-09-06 07:42:36', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'rd0PDZPvCL', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(17, 'Bruce', 'oquitzon@yahoo.com', '2022-09-06 07:42:37', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, '4SUHUA3S4A', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(18, 'Effie', 'xmorar@hotmail.com', '2022-09-06 07:42:37', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'qC3a1eU9gD', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(19, 'Elfrieda', 'pkutch@hotmail.com', '2022-09-06 07:42:37', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'VFVh5N2d8F', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(20, 'Elaina', 'tara.predovic@yahoo.com', '2022-09-06 07:42:38', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'bzFMh2F1M3', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(21, 'Hilbert', 'amos.funk@hotmail.com', '2022-09-06 07:42:38', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'zGuBVTr9G1', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(22, 'Douglas', 'torrey.greenfelder@hotmail.com', '2022-09-06 07:42:38', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'WZVUNxsI7t', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(23, 'Rachelle', 'spencer.morris@hotmail.com', '2022-09-06 07:42:39', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'bilqPXLSco', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(24, 'Enrico', 'zgleichner@gmail.com', '2022-09-06 07:42:39', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'NxpHra7eml', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(25, 'Itzel', 'kevon08@gmail.com', '2022-09-06 07:42:39', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'oxyIGmt20s', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(26, 'Coy', 'zboncak.cooper@hotmail.com', '2022-09-06 07:42:40', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'vBDN6FE9uL', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(27, 'Sasha', 'ricardo.prosacco@gmail.com', '2022-09-06 07:42:40', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'jSJGiRMN5L', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(28, 'Bette', 'nwelch@yahoo.com', '2022-09-06 07:42:40', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'J1SFXMByoj', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(29, 'Catharine', 'kayli56@gmail.com', '2022-09-06 07:42:41', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'zk6Ld6tP38', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(30, 'Crystel', 'flatley.mazie@gmail.com', '2022-09-06 07:42:41', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, '79sRKWOlNV', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(31, 'Lenora', 'adam12@gmail.com', '2022-09-06 07:42:41', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'uAxOq5XDGV', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(32, 'Evans', 'aheaney@yahoo.com', '2022-09-06 07:42:42', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'B0cCjjH5Po', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(33, 'Adolph', 'lance.schiller@hotmail.com', '2022-09-06 07:42:42', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, '9luKeBRD5e', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(34, 'Syble', 'slegros@hotmail.com', '2022-09-06 07:42:42', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'Mtl6WxMZeN', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(35, 'Maegan', 'tromp.noemi@hotmail.com', '2022-09-06 07:42:42', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'V8PPH2oFZd', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(36, 'Jovanny', 'giovanni.collins@hotmail.com', '2022-09-06 07:42:43', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'cRnjUp1SoG', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(37, 'Nikita', 'queen19@gmail.com', '2022-09-06 07:42:43', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'HvRMYgN3qv', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(38, 'Raegan', 'bgreenfelder@yahoo.com', '2022-09-06 07:42:44', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, '2keWcyNti5', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(39, 'Loyce', 'uzemlak@yahoo.com', '2022-09-06 07:42:44', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'ZhBsAjeh2m', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(40, 'Dena', 'tkoepp@gmail.com', '2022-09-06 07:42:44', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'Q6FkGaI9lC', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(41, 'Cheyenne', 'rosemarie.boyer@hotmail.com', '2022-09-06 07:42:44', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'ETig9AAfwJ', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(42, 'Nathanael', 'lawson14@gmail.com', '2022-09-06 07:42:45', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'IMo0YxY4m7', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(43, 'Broderick', 'dibbert.adela@gmail.com', '2022-09-06 07:42:45', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'qvmhUyznIE', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(44, 'Fae', 'daugherty.vernice@hotmail.com', '2022-09-06 07:42:45', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, '9BQqG7La3m', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(45, 'Kaden', 'skye86@yahoo.com', '2022-09-06 07:42:45', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'eTJXCqAyKm', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(46, 'Kaleigh', 'hardy44@yahoo.com', '2022-09-06 07:42:46', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, '4YOl8Y9MR7', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(47, 'Gayle', 'wyatt33@gmail.com', '2022-09-06 07:42:46', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'n7DWIEclo9', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(48, 'Vivianne', 'julien.lakin@gmail.com', '2022-09-06 07:42:46', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'iZB1K40icp', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(49, 'Tracey', 'manley92@yahoo.com', '2022-09-06 07:42:46', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'eEUvKsx0KX', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(50, 'Carlos', 'mpfeffer@hotmail.com', '2022-09-06 07:42:47', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'ttEaUe4pG7', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(51, 'Jonas', 'monahan.jewel@hotmail.com', '2022-09-06 07:42:47', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'ubkD6wKpz8', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(52, 'Jasper', 'lisandro33@gmail.com', '2022-09-06 07:42:48', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'kiCK08EZvY', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(53, 'Landen', 'andrew.smitham@hotmail.com', '2022-09-06 07:42:48', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'Tf4AAVRJDl', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(54, 'Irma', 'kip.ullrich@yahoo.com', '2022-09-06 07:42:48', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, '5M0jR6rKol', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(55, 'Kari', 'abshire.london@yahoo.com', '2022-09-06 07:42:49', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, '7x6kDvWcXm', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(56, 'Arden', 'hermiston.ladarius@yahoo.com', '2022-09-06 07:42:49', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'JsugXZPlec', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(57, 'Gertrude', 'estella34@yahoo.com', '2022-09-06 07:42:49', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'vXHP1h4VYP', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(58, 'Deron', 'shayne.johnston@gmail.com', '2022-09-06 07:42:49', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'jZvK0Rkber', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(59, 'Hermina', 'wilkinson.theodore@yahoo.com', '2022-09-06 07:42:50', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'QzPlDieaHf', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(60, 'Beau', 'esther78@gmail.com', '2022-09-06 07:42:50', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, '0Av3m5fD3I', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(61, 'Dane', 'uleannon@gmail.com', '2022-09-06 07:42:51', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'CXUKXcvJvN', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(62, 'Tony', 'buckridge.alfred@yahoo.com', '2022-09-06 07:42:52', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'JKMwAkln5V', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(63, 'Kaci', 'burley.kerluke@hotmail.com', '2022-09-06 07:42:52', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'WXi55B9oe0', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(64, 'Tommie', 'qwalter@yahoo.com', '2022-09-06 07:42:52', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'MLnymyr537', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(65, 'Margarete', 'dolly04@gmail.com', '2022-09-06 07:42:53', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'MFDpjROv1Q', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(66, 'Karina', 'lempi.grant@hotmail.com', '2022-09-06 07:42:53', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'WjWRIMBzc1', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(67, 'Leslie', 'trycia.murazik@gmail.com', '2022-09-06 07:42:53', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'tQIBHaMmpQ', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(68, 'Constance', 'xprosacco@yahoo.com', '2022-09-06 07:42:53', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'S6umwJsFAB', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(69, 'Lamar', 'heidi.beahan@yahoo.com', '2022-09-06 07:42:54', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'qF844pBpkP', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(70, 'Theo', 'heber38@gmail.com', '2022-09-06 07:42:54', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'K5kqSSy5sa', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(71, 'Greta', 'earline.kassulke@gmail.com', '2022-09-06 07:42:54', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'E6Jkzugetj', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(72, 'Gerhard', 'casey.medhurst@hotmail.com', '2022-09-06 07:42:55', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'MKp9y2Nusx', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(73, 'Stone', 'fjohns@gmail.com', '2022-09-06 07:42:55', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'ym7MJImdYx', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(74, 'Brenden', 'genevieve.klocko@gmail.com', '2022-09-06 07:42:55', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, '4KpXnAEv5o', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(75, 'Christ', 'jolie42@yahoo.com', '2022-09-06 07:42:56', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'VHWDuy2BdO', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(76, 'Rasheed', 'ferne01@yahoo.com', '2022-09-06 07:42:56', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'xFoSN6vAnJ', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(77, 'Wyatt', 'qpfannerstill@hotmail.com', '2022-09-06 07:42:56', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'fHihA3J4rY', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(78, 'Aditya', 'dolly.abshire@yahoo.com', '2022-09-06 07:42:56', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'Rrnn1Ho9Pa', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(79, 'Monserrate', 'ikrajcik@gmail.com', '2022-09-06 07:42:57', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'V5HMWAlUDp', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(80, 'Payton', 'casimir56@hotmail.com', '2022-09-06 07:42:57', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, '4vn7YhtNah', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(81, 'Georgiana', 'phoebe.heaney@yahoo.com', '2022-09-06 07:42:57', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'NgF4PlAL6M', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(82, 'Abigail', 'brakus.cameron@gmail.com', '2022-09-06 07:42:57', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'zWlqksIXDG', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(83, 'Raoul', 'carlos.fay@yahoo.com', '2022-09-06 07:42:58', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'kUoexf8i7P', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(84, 'Aurelia', 'quigley.kailey@yahoo.com', '2022-09-06 07:42:58', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'CAUifuqWV5', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(85, 'Stanton', 'monahan.dameon@yahoo.com', '2022-09-06 07:42:58', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'tDqfUgXj3h', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(86, 'Reuben', 'flittle@gmail.com', '2022-09-06 07:42:59', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'cQGGqQMV6K', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(87, 'Jaylen', 'icollins@gmail.com', '2022-09-06 07:42:59', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, '9sSI2boYfK', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(88, 'Arvel', 'opagac@gmail.com', '2022-09-06 07:43:00', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'BCDIaO2u2D', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(89, 'Estevan', 'rosario.ryan@hotmail.com', '2022-09-06 07:43:00', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, '9dSJKqUxyt', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(90, 'Blaise', 'zgrant@yahoo.com', '2022-09-06 07:43:01', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'gVWFjAL9zZ', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(91, 'Rory', 'brandi.roberts@yahoo.com', '2022-09-06 07:43:01', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'dV0Fb7NfZG', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(92, 'Cade', 'schmitt.franz@yahoo.com', '2022-09-06 07:43:01', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'xxX0L4pw2o', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(93, 'Layla', 'lynch.emmalee@yahoo.com', '2022-09-06 07:43:02', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, '9FHdZYdPKT', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(94, 'Vladimir', 'kassulke.ruben@yahoo.com', '2022-09-06 07:43:02', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'lYtnP7SWl0', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(95, 'Agnes', 'dwisozk@gmail.com', '2022-09-06 07:43:02', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'j2MBNTmlrJ', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(96, 'Libbie', 'karine09@gmail.com', '2022-09-06 07:43:03', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, '1XWp6vDsB0', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(97, 'Adela', 'avandervort@gmail.com', '2022-09-06 07:43:03', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'I4DSnsD5m0', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(98, 'Maye', 'wilderman.jamaal@hotmail.com', '2022-09-06 07:43:03', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'nGe1GlXkmN', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(99, 'Isidro', 'vleuschke@hotmail.com', '2022-09-06 07:43:04', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, '8lm4FVmpbG', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(100, 'Brooks', 'casandra.mclaughlin@gmail.com', '2022-09-06 07:43:04', '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', NULL, NULL, NULL, 'OUD25jFT7h', NULL, NULL, 'profile-photos/no_image.png', NULL, NULL),
(101, 'Admin', 's@gmail.com', NULL, '$2y$10$aDLkCc4bZGf/CdTRNlWWxe5IT3lc/6i2R8ZQ7fE01F.FHS7lzW5Zm', NULL, NULL, NULL, NULL, NULL, NULL, 'profile-photos/nGwug1maUxxtsrAWWA41pGxXeFzKOiOrMT9s8lJL.png', '2022-09-06 07:43:42', '2022-09-06 08:04:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_master`
--
ALTER TABLE `banner_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `connected_accounts`
--
ALTER TABLE `connected_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `connected_accounts_user_id_id_index` (`user_id`,`id`),
  ADD KEY `connected_accounts_provider_provider_id_index` (`provider`,`provider_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `flagges`
--
ALTER TABLE `flagges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_category`
--
ALTER TABLE `project_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sidebars`
--
ALTER TABLE `sidebars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_status`
--
ALTER TABLE `task_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogs`
--
ALTER TABLE `userlogs`
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
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner_master`
--
ALTER TABLE `banner_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `connected_accounts`
--
ALTER TABLE `connected_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flagges`
--
ALTER TABLE `flagges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `project_category`
--
ALTER TABLE `project_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sidebars`
--
ALTER TABLE `sidebars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_status`
--
ALTER TABLE `task_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userlogs`
--
ALTER TABLE `userlogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
