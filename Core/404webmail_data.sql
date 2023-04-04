-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2023 at 08:43 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `404webmail_new_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `draft`
--

CREATE TABLE `draft` (
  `mail_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `draft`
--

INSERT INTO `draft` (`mail_id`, `user_id`) VALUES
(1, 'abbott.annabelle@mertz.org'),
(2, 'abraham.feil@yahoo.com'),
(3, 'abshire.estella@hotmail.com'),
(4, 'adella28@yahoo.com'),
(5, 'alessia68@yahoo.com'),
(6, 'alfred15@hotmail.com'),
(7, 'annabelle35@hotmail.com'),
(8, 'arvel57@gmail.com'),
(9, 'bankunding@hammeslesch.org'),
(10, 'borer.valentina@gmail.com'),
(11, 'botsford.fabian@gmail.com'),
(12, 'breana.keeling@jerde.biz'),
(13, 'cameron11@predovic.biz'),
(14, 'carissa82@kris.com'),
(15, 'cremin.ahmed@yahoo.com'),
(16, 'daniel.ruben@barton.biz'),
(17, 'danielle.kozey@spencercrist.com'),
(18, 'darwin93@olsonoconner.com'),
(19, 'davis.kelsie@gmail.com'),
(20, 'dibbert.amya@yahoo.com'),
(21, 'domenica59@hand.com'),
(22, 'doyle.gideon@kuhlman.info'),
(23, 'ecronin@hotmail.com'),
(24, 'effertz.adolphus@yahoo.com'),
(25, 'eino53@hotmail.com'),
(26, 'elfrieda.breitenberg@strosin.com'),
(27, 'elsa.rosenbaum@gmail.com'),
(28, 'emmanuelle22@robel.biz'),
(29, 'emmy24@turcotte.com'),
(30, 'fcrooks@yahoo.com'),
(31, 'gavin84@beatty.net'),
(32, 'gdibbert@yahoo.com'),
(33, 'george92@hahn.com'),
(34, 'glover.maida@hoppe.biz'),
(35, 'gonzalo52@hotmail.com'),
(36, 'grant.jonas@gmail.com'),
(37, 'hartmann.luigi@hotmail.com'),
(38, 'heaney.jovan@hotmail.com'),
(39, 'heaven31@cremin.com'),
(40, 'hodkiewicz.ryleigh@osinski.net'),
(41, 'ikessler@yahoo.com'),
(42, 'ipouros@hotmail.com'),
(43, 'ivory.ward@gmail.com'),
(44, 'jaylin51@blickwillms.net'),
(45, 'johnson.nichole@bailey.net'),
(46, 'jrowe@osinski.org'),
(47, 'jschuppe@gmail.com'),
(48, 'kari87@beahan.info'),
(49, 'katherine27@leuschke.com'),
(50, 'keeling.grayce@langfunk.com'),
(51, 'keira.haag@feest.com'),
(52, 'kory15@hotmail.com'),
(53, 'laisha.jerde@gleichnersawayn.org'),
(54, 'laron.gibson@haley.biz'),
(55, 'leda73@johns.com'),
(56, 'lindsey.kihn@gmail.com'),
(57, 'litzy46@gmail.com'),
(58, 'loyal.gibson@gmail.com'),
(59, 'ludwig05@bruen.com'),
(60, 'mable35@daugherty.info'),
(61, 'madonna.littel@markswiza.org'),
(62, 'malachi57@yahoo.com'),
(63, 'micheal26@gmail.com'),
(64, 'milan.jaskolski@waters.com'),
(65, 'mjohnson@rath.biz'),
(66, 'msatterfield@bauch.com'),
(67, 'narciso.rau@rice.com'),
(68, 'ndoyle@murphy.com'),
(69, 'nortiz@keebler.com'),
(70, 'nprosacco@gmail.com'),
(71, 'nrobel@luettgenstoltenberg.com'),
(72, 'omonahan@yahoo.com'),
(73, 'paltenwerth@spencerhagenes.com'),
(74, 'rdouglas@rosenbaum.com'),
(75, 'reinger.kailyn@pacocha.com'),
(76, 'rhea.doyle@baumbachmills.net'),
(77, 'robyn88@tremblaygrimes.com'),
(78, 'rodrick94@sporer.com'),
(79, 'sauer.narciso@oberbrunner.com'),
(80, 'sawayn.jody@gmail.com'),
(81, 'schulist.shania@glover.biz'),
(82, 'schumm.hadley@cassinanderson.org'),
(83, 'skyla25@rath.com'),
(84, 'smraz@yahoo.com'),
(85, 'sophia.glover@hotmail.com'),
(86, 'sophia30@yahoo.com'),
(87, 'ssteuber@feil.org'),
(88, 'talia75@lang.com'),
(89, 'tamara.greenholt@strosin.net'),
(90, 'toney.veum@morarheathcote.biz'),
(91, 'unicolas@stoltenberg.com'),
(92, 'vicky48@yahoo.com'),
(93, 'willms.coby@hackett.com'),
(94, 'wisozk.magnolia@auerdavis.com'),
(95, 'wmarks@homenick.com'),
(96, 'wunsch.demario@rau.biz'),
(97, 'zboncak.yessenia@hotmail.com'),
(98, 'zhermann@schuster.net'),
(99, 'zita.hamill@schowalterbeatty.net'),
(100, 'zryan@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `mail_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES
(1, 'abbott.annabelle@mertz.org'),
(2, 'abraham.feil@yahoo.com'),
(3, 'abshire.estella@hotmail.com'),
(4, 'adella28@yahoo.com'),
(5, 'alessia68@yahoo.com'),
(6, 'alfred15@hotmail.com'),
(7, 'annabelle35@hotmail.com'),
(8, 'arvel57@gmail.com'),
(9, 'bankunding@hammeslesch.org'),
(10, 'borer.valentina@gmail.com'),
(11, 'botsford.fabian@gmail.com'),
(12, 'breana.keeling@jerde.biz'),
(13, 'cameron11@predovic.biz'),
(14, 'carissa82@kris.com'),
(15, 'cremin.ahmed@yahoo.com'),
(16, 'daniel.ruben@barton.biz'),
(17, 'danielle.kozey@spencercrist.com'),
(18, 'darwin93@olsonoconner.com'),
(19, 'davis.kelsie@gmail.com'),
(20, 'dibbert.amya@yahoo.com'),
(21, 'domenica59@hand.com'),
(22, 'doyle.gideon@kuhlman.info'),
(23, 'ecronin@hotmail.com'),
(24, 'effertz.adolphus@yahoo.com'),
(25, 'eino53@hotmail.com'),
(26, 'elfrieda.breitenberg@strosin.com'),
(27, 'elsa.rosenbaum@gmail.com'),
(28, 'emmanuelle22@robel.biz'),
(29, 'emmy24@turcotte.com'),
(30, 'fcrooks@yahoo.com'),
(31, 'gavin84@beatty.net'),
(32, 'gdibbert@yahoo.com'),
(33, 'george92@hahn.com'),
(34, 'glover.maida@hoppe.biz'),
(35, 'gonzalo52@hotmail.com'),
(36, 'grant.jonas@gmail.com'),
(37, 'hartmann.luigi@hotmail.com'),
(38, 'heaney.jovan@hotmail.com'),
(39, 'heaven31@cremin.com'),
(40, 'hodkiewicz.ryleigh@osinski.net'),
(41, 'ikessler@yahoo.com'),
(42, 'ipouros@hotmail.com'),
(43, 'ivory.ward@gmail.com'),
(44, 'jaylin51@blickwillms.net'),
(45, 'johnson.nichole@bailey.net'),
(46, 'jrowe@osinski.org'),
(47, 'jschuppe@gmail.com'),
(48, 'kari87@beahan.info'),
(49, 'katherine27@leuschke.com'),
(50, 'keeling.grayce@langfunk.com'),
(51, 'keira.haag@feest.com'),
(52, 'kory15@hotmail.com'),
(53, 'laisha.jerde@gleichnersawayn.org'),
(54, 'laron.gibson@haley.biz'),
(55, 'leda73@johns.com'),
(56, 'lindsey.kihn@gmail.com'),
(57, 'litzy46@gmail.com'),
(58, 'loyal.gibson@gmail.com'),
(59, 'ludwig05@bruen.com'),
(60, 'mable35@daugherty.info'),
(61, 'madonna.littel@markswiza.org'),
(62, 'malachi57@yahoo.com'),
(63, 'micheal26@gmail.com'),
(64, 'milan.jaskolski@waters.com'),
(65, 'mjohnson@rath.biz'),
(66, 'msatterfield@bauch.com'),
(67, 'narciso.rau@rice.com'),
(68, 'ndoyle@murphy.com'),
(69, 'nortiz@keebler.com'),
(70, 'nprosacco@gmail.com'),
(71, 'nrobel@luettgenstoltenberg.com'),
(72, 'omonahan@yahoo.com'),
(73, 'paltenwerth@spencerhagenes.com'),
(74, 'rdouglas@rosenbaum.com'),
(75, 'reinger.kailyn@pacocha.com'),
(76, 'rhea.doyle@baumbachmills.net'),
(77, 'robyn88@tremblaygrimes.com'),
(78, 'rodrick94@sporer.com'),
(79, 'sauer.narciso@oberbrunner.com'),
(80, 'sawayn.jody@gmail.com'),
(81, 'schulist.shania@glover.biz'),
(82, 'schumm.hadley@cassinanderson.org'),
(83, 'skyla25@rath.com'),
(84, 'smraz@yahoo.com'),
(85, 'sophia.glover@hotmail.com'),
(86, 'sophia30@yahoo.com'),
(87, 'ssteuber@feil.org'),
(88, 'talia75@lang.com'),
(89, 'tamara.greenholt@strosin.net'),
(90, 'toney.veum@morarheathcote.biz'),
(91, 'unicolas@stoltenberg.com'),
(92, 'vicky48@yahoo.com'),
(93, 'willms.coby@hackett.com'),
(94, 'wisozk.magnolia@auerdavis.com'),
(95, 'wmarks@homenick.com'),
(96, 'wunsch.demario@rau.biz'),
(97, 'zboncak.yessenia@hotmail.com'),
(98, 'zhermann@schuster.net'),
(99, 'zita.hamill@schowalterbeatty.net'),
(100, 'zryan@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `attachment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `sent_by` varchar(255) NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `is_starred` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `sent_by`, `is_read`, `is_starred`) VALUES
(1, 'eligendi', 'Magnam saepe dolorem ut pariatur perferendis. Officia fuga veniam explicabo temporibus aut.', NULL, '1988-06-18 01:48:10', 'abbott.annabelle@mertz.org', 1, 0),
(2, 'laboriosam', 'Ipsam voluptatibus atque nam possimus aut fugiat. Aut aut ipsa quasi perspiciatis rerum. Necessitatibus vel dolorem quas maxime sed. Rem soluta doloremque et placeat eveniet laborum.', NULL, '2009-06-08 02:57:38', 'abraham.feil@yahoo.com', 1, 0),
(3, 'et', 'Alias praesentium suscipit repellat voluptatem optio. Expedita natus ut veritatis aut consequuntur fugit. Illum quam quidem aperiam voluptas. Amet rerum unde autem autem ipsa consequatur mollitia.', NULL, '1980-06-19 16:28:01', 'abshire.estella@hotmail.com', 1, 0),
(4, 'doloribus', 'Facere eos voluptatem id distinctio et voluptas. Dolore deleniti maiores quia fugiat ut omnis. Consectetur aut est eos itaque et. In tempore earum odit in est.', NULL, '1977-11-16 18:12:48', 'adella28@yahoo.com', 1, 1),
(5, 'labore', 'Atque saepe libero illum velit sint sit. Sed sed est unde earum. Magnam omnis qui deserunt et sint id commodi. Voluptas et porro enim quo odit dignissimos.', NULL, '1980-01-22 06:28:43', 'alessia68@yahoo.com', 0, 0),
(6, 'sed', 'Voluptatum quis sit dolores odio dolor repudiandae saepe. Accusantium incidunt sed tenetur maxime eius quidem. Nihil sunt quia rerum ipsum.', NULL, '1994-07-14 02:51:47', 'alfred15@hotmail.com', 0, 0),
(7, 'dolor', 'Eius inventore voluptatem nostrum maxime. Voluptatem iusto enim non necessitatibus. Quis quae praesentium praesentium magni optio nam voluptatem praesentium.', NULL, '2000-07-03 20:52:33', 'annabelle35@hotmail.com', 1, 1),
(8, 'perferendis', 'Quisquam accusantium ut a quis aliquam. Ut quae quia cum rem odio. Illo excepturi omnis quidem ex praesentium doloribus cum nemo. Occaecati aliquid impedit totam sed.', NULL, '1973-10-10 03:55:14', 'arvel57@gmail.com', 1, 0),
(9, 'qui', 'Quam qui earum ullam et et est. Vel harum accusamus animi dolorum a neque. Aliquid iusto rerum praesentium atque.', NULL, '2019-07-04 05:02:52', 'bankunding@hammeslesch.org', 0, 0),
(10, 'autem', 'Asperiores delectus et et neque itaque qui. Culpa dolore aut ipsum sint qui ducimus. Impedit perspiciatis quam qui repellendus officia mollitia reprehenderit.', NULL, '1992-03-23 14:33:39', 'borer.valentina@gmail.com', 1, 1),
(11, 'labore', 'Quisquam animi non nulla sapiente minus at cupiditate. Voluptatum aut optio aut veniam quis repellat fugiat. Vitae iure veritatis dolorem dolores vel.', NULL, '1982-09-17 02:09:43', 'botsford.fabian@gmail.com', 1, 0),
(12, 'error', 'Amet quibusdam autem est voluptas sit blanditiis. Et consequatur sit deserunt. Ipsa suscipit est corrupti aut aut et provident. Autem earum alias modi odio animi impedit et non.', NULL, '1995-09-29 09:25:51', 'breana.keeling@jerde.biz', 0, 1),
(13, 'molestiae', 'Excepturi vel quisquam sunt aut. Reiciendis unde dolorem error et sed. Ut laborum deleniti harum neque harum.', NULL, '2021-03-06 03:55:55', 'cameron11@predovic.biz', 0, 0),
(14, 'reprehenderit', 'Libero est aut ipsam repudiandae eum. Ratione officia dolorem asperiores ratione culpa possimus porro.', NULL, '1972-10-21 15:44:39', 'carissa82@kris.com', 0, 1),
(15, 'eum', 'Incidunt ut placeat autem fuga dolorem quis. Ducimus provident architecto repellat itaque ad qui magni hic. Eos eius molestiae harum praesentium iure perferendis ut deserunt.', NULL, '1985-01-17 05:00:25', 'cremin.ahmed@yahoo.com', 1, 0),
(16, 'deleniti', 'In explicabo quia nesciunt earum. Eligendi blanditiis laboriosam aspernatur. Non rerum culpa ratione facilis.', NULL, '2001-03-16 16:32:07', 'daniel.ruben@barton.biz', 1, 0),
(17, 'perspiciatis', 'A porro veniam amet non inventore. Ab qui ullam sunt cupiditate est est sed expedita. Minus nihil qui doloribus.', NULL, '1981-07-23 20:08:00', 'danielle.kozey@spencercrist.com', 1, 1),
(18, 'error', 'Ut inventore placeat unde et. Et repudiandae excepturi id odit deserunt. Libero autem eos voluptatibus. Illo velit qui dolorem culpa nam dicta.', NULL, '1999-09-18 08:07:39', 'darwin93@olsonoconner.com', 0, 0),
(19, 'quasi', 'Inventore quasi deleniti repellat qui aut consectetur hic. Voluptatem in adipisci necessitatibus harum nam quaerat similique dolorum. Fuga illo temporibus consectetur qui.', NULL, '1981-01-29 15:10:46', 'davis.kelsie@gmail.com', 0, 1),
(20, 'magnam', 'Sunt et exercitationem itaque. Impedit repudiandae occaecati animi voluptates debitis. Dignissimos ut quam vitae quo tempore repellat aliquam.', NULL, '1991-08-12 19:26:30', 'dibbert.amya@yahoo.com', 0, 1),
(21, 'provident', 'Ab placeat nulla consequatur sit aut quae maiores. Sapiente aut vitae ea fugiat illum sit delectus. Non natus modi eum repudiandae et quaerat dolores tempore. Quod saepe at sit a eligendi in.', NULL, '2000-05-09 08:11:00', 'domenica59@hand.com', 1, 1),
(22, 'id', 'Delectus porro rem fugiat provident ut quia. Aut exercitationem illo quis id ea rem sint a. Quae ad quae fuga alias enim officia.', NULL, '2001-11-27 08:43:32', 'doyle.gideon@kuhlman.info', 0, 1),
(23, 'omnis', 'Occaecati tempore quia blanditiis rerum. Hic laudantium necessitatibus sint modi esse. Minus possimus modi autem et hic voluptate ipsam.', NULL, '1983-04-27 08:06:44', 'ecronin@hotmail.com', 0, 0),
(24, 'perspiciatis', 'Rerum quidem sunt rerum a. Pariatur qui quod minima a quas repellendus consequatur. Accusamus totam nihil blanditiis ab asperiores.', NULL, '1987-10-06 09:15:46', 'effertz.adolphus@yahoo.com', 0, 0),
(25, 'est', 'Numquam et facere animi velit asperiores et laborum ipsum. Similique exercitationem voluptate ullam quis expedita et tempore. Asperiores perferendis quis consequatur beatae a veritatis ut pariatur.', NULL, '2005-08-07 13:42:54', 'eino53@hotmail.com', 1, 0),
(26, 'sed', 'Quia sint dolores non non et est. Quis ad deserunt id vero incidunt eligendi. Voluptatum quas qui odit laborum. Sint consectetur aperiam et distinctio.', NULL, '1974-02-23 14:07:59', 'elfrieda.breitenberg@strosin.com', 0, 0),
(27, 'temporibus', 'Cupiditate eius occaecati nobis eum iusto doloremque blanditiis. Eum modi illum exercitationem officia. Voluptatem deserunt recusandae minus quidem saepe.', NULL, '2014-12-21 07:31:11', 'elsa.rosenbaum@gmail.com', 0, 1),
(28, 'omnis', 'Cumque sint voluptatum mollitia. Voluptates omnis quia accusamus nemo qui. Nihil dolores aliquid molestias vitae suscipit numquam.', NULL, '1978-07-11 17:56:43', 'emmanuelle22@robel.biz', 0, 0),
(29, 'id', 'Qui voluptatibus deleniti nam praesentium iusto eos nisi. Aliquam ea molestias magni consequatur aspernatur iste voluptas et. Nam voluptate voluptates voluptates aliquam ut.', NULL, '2014-12-25 17:31:25', 'emmy24@turcotte.com', 1, 1),
(30, 'neque', 'Consequuntur sint ut nesciunt accusantium distinctio repellendus tenetur. Qui qui sit et. Voluptatem rerum autem velit autem voluptatem suscipit. Labore earum ex possimus.', NULL, '1983-09-10 21:46:03', 'fcrooks@yahoo.com', 0, 0),
(31, 'temporibus', 'Dolorem molestiae fugiat perspiciatis. Alias voluptatum sunt sint optio quisquam.', NULL, '2020-06-02 07:11:50', 'gavin84@beatty.net', 0, 0),
(32, 'et', 'Laboriosam laborum repellendus nobis et maiores quis repellendus et. Ab deserunt ipsam iste. Cum et odio error sequi odit expedita. Sed minima dolore aperiam dolore facere suscipit.', NULL, '2000-10-25 10:08:58', 'gdibbert@yahoo.com', 0, 1),
(33, 'voluptatem', 'Vitae ullam ex iste. Aut natus optio laboriosam esse magni. Et modi nisi at aut. Nisi qui ducimus aliquid ut nam.', NULL, '2000-07-13 19:41:43', 'george92@hahn.com', 0, 1),
(34, 'est', 'Cumque velit et ipsam et. Fuga dolore alias esse voluptates rerum illum. Ut laborum aut ut. Earum corporis qui eum sunt.', NULL, '2003-08-28 04:12:30', 'glover.maida@hoppe.biz', 1, 1),
(35, 'quia', 'Nemo quidem quisquam doloribus excepturi culpa. Voluptas voluptatem sint architecto vel perferendis dolorem. Qui nam debitis enim vel sed animi qui iusto.', NULL, '1990-01-24 03:43:17', 'gonzalo52@hotmail.com', 0, 1),
(36, 'et', 'Consequatur porro voluptatum et et et. Saepe consequuntur in iusto unde. A aut ut porro earum architecto molestiae.', NULL, '2006-06-08 18:34:19', 'grant.jonas@gmail.com', 1, 0),
(37, 'voluptatem', 'Et quo itaque accusantium nam asperiores voluptates. Cum voluptas praesentium vitae autem.', NULL, '1997-02-03 05:40:24', 'hartmann.luigi@hotmail.com', 0, 1),
(38, 'expedita', 'Quas at velit quasi harum est molestiae repellendus. Molestiae sed saepe ea cumque in ut et.', NULL, '1996-06-19 00:25:15', 'heaney.jovan@hotmail.com', 1, 1),
(39, 'sed', 'Est maiores adipisci culpa illum nam rerum sed. Qui qui sint autem. Non maiores quod neque eveniet suscipit voluptatem. Ullam sed ratione eius et asperiores quas. Soluta ipsa enim id.', NULL, '1980-07-08 03:14:22', 'heaven31@cremin.com', 1, 0),
(40, 'expedita', 'Nulla sit ab eligendi sit illum est. Dolorem vero minus eos alias beatae. Laborum natus sint ut et ex. Eaque iure fuga qui eum.', NULL, '1995-10-16 13:02:02', 'hodkiewicz.ryleigh@osinski.net', 0, 0),
(41, 'rem', 'Beatae sunt odit aperiam tenetur tempora. Minima voluptate voluptas nobis dolorem veritatis aliquid. Amet qui omnis alias aut dolorem mollitia harum.', NULL, '1974-03-27 01:46:16', 'ikessler@yahoo.com', 0, 0),
(42, 'nihil', 'Excepturi quo sed ducimus incidunt consequatur reiciendis. Autem tempore eum fugit voluptatem porro nesciunt. Dolorem voluptatem fuga laboriosam consequatur tempore provident nostrum magnam.', NULL, '2002-11-12 16:57:18', 'ipouros@hotmail.com', 0, 0),
(43, 'vero', 'Aliquam ut ut sint id aut reprehenderit pariatur. Non vitae quo dolorem dicta delectus hic omnis molestiae. Expedita ut est aut sit. Distinctio dolorem vel ducimus explicabo quam earum.', NULL, '1983-06-23 11:59:05', 'ivory.ward@gmail.com', 0, 0),
(44, 'ipsum', 'Quia quod inventore ut eos praesentium aut. Assumenda et dolorem in architecto. Reiciendis iste molestiae dignissimos dignissimos sint quis.', NULL, '2000-10-12 17:32:20', 'jaylin51@blickwillms.net', 1, 0),
(45, 'repellendus', 'Non quia voluptatibus consequatur. Illum provident labore ex suscipit aut quam.', NULL, '2008-02-03 18:50:19', 'johnson.nichole@bailey.net', 1, 0),
(46, 'nam', 'Eum soluta aut ipsam. Dolor vitae beatae voluptatem vero sequi. Et voluptatem autem error voluptatem.', NULL, '1995-12-15 20:34:34', 'jrowe@osinski.org', 0, 0),
(47, 'voluptate', 'Consequatur veritatis iure maxime porro tempora. Maxime culpa enim natus quis laudantium. Dolore ad aspernatur aut molestiae.', NULL, '1991-04-16 15:21:30', 'jschuppe@gmail.com', 1, 1),
(48, 'id', 'Beatae illum aut est quam minus labore. Et aliquam adipisci totam dolor explicabo occaecati esse sint. Enim voluptates odio dolorem.', NULL, '1971-03-04 21:38:44', 'kari87@beahan.info', 0, 0),
(49, 'et', 'Quia doloremque suscipit aut ut quos. Minus et nostrum sunt aut impedit cumque et. Qui voluptates quod vel dolores perferendis voluptas fugit. Qui numquam eius porro id.', NULL, '2000-12-23 06:29:28', 'katherine27@leuschke.com', 0, 0),
(50, 'earum', 'Et dolorem quo est veritatis. Et assumenda inventore dolores veritatis. Non tempore omnis eum voluptates. Recusandae consequuntur sed voluptatum asperiores distinctio.', NULL, '1975-06-19 16:51:26', 'keeling.grayce@langfunk.com', 1, 0),
(51, 'eius', 'Omnis vel eveniet aut dicta. Error accusamus molestiae quis. Fugiat cupiditate aperiam ducimus et. Non libero unde vel quia.', NULL, '1977-05-20 23:09:05', 'keira.haag@feest.com', 0, 0),
(52, 'mollitia', 'Placeat incidunt qui excepturi omnis perferendis. Sequi ab quia beatae praesentium nisi voluptatum.', NULL, '2019-02-04 03:04:12', 'kory15@hotmail.com', 1, 0),
(53, 'velit', 'Nihil ab quam et tempora voluptates a. Repellat rerum accusantium id facere cum possimus. Necessitatibus magni molestiae voluptatem et expedita eum.', NULL, '2010-12-19 16:27:49', 'laisha.jerde@gleichnersawayn.org', 0, 0),
(54, 'animi', 'Perspiciatis dolorem eos exercitationem incidunt quia. Sit perferendis iste dolor incidunt at est iusto facilis. Nostrum magnam et saepe inventore magni.', NULL, '2006-11-06 19:53:30', 'laron.gibson@haley.biz', 0, 1),
(55, 'asperiores', 'Laborum dicta libero aut eos. Autem et et quia cumque deserunt et ullam.', NULL, '2001-12-14 03:19:09', 'leda73@johns.com', 1, 1),
(56, 'incidunt', 'Ab rerum ab et quos eos expedita repellendus. Placeat sit voluptatem asperiores recusandae explicabo voluptatibus. Reiciendis repellendus harum suscipit officiis.', NULL, '2014-07-11 03:35:32', 'lindsey.kihn@gmail.com', 1, 0),
(57, 'doloribus', 'Vel hic rem qui aliquam quasi dolore doloribus. Beatae architecto omnis sed totam vel. Laudantium provident iure tenetur eos. Ut ea voluptatibus eum cupiditate officia dolorem.', NULL, '1979-07-16 17:01:21', 'litzy46@gmail.com', 0, 1),
(58, 'molestiae', 'Earum quo numquam in perferendis exercitationem culpa est. Minima sit quisquam error nemo cupiditate ut. Blanditiis consectetur nobis est vel facere odio.', NULL, '2002-05-09 23:53:24', 'loyal.gibson@gmail.com', 0, 0),
(59, 'aut', 'Cumque sit rerum molestiae. Id et dignissimos quia accusamus quis quasi architecto est. Aperiam est sapiente animi nulla. Et nemo quos ut quisquam amet.', NULL, '1990-02-26 15:46:34', 'ludwig05@bruen.com', 1, 0),
(60, 'non', 'Sint assumenda necessitatibus rem placeat iusto. Quisquam esse aut quia aut dolore. Eligendi laudantium ullam sit ut natus. Voluptatibus distinctio est ut dolor placeat.', NULL, '2002-04-26 15:22:05', 'mable35@daugherty.info', 0, 1),
(61, 'saepe', 'Iure omnis est laborum sit magnam. Aut error qui quia illum vero itaque eligendi aut.\nAb numquam aut minima voluptate. Quaerat facilis quis unde quam nulla veniam similique.', NULL, '1981-10-14 06:18:15', 'madonna.littel@markswiza.org', 1, 0),
(62, 'debitis', 'In est id in eius. Ab enim tenetur placeat sunt qui dolores. Voluptatem quia odio quaerat libero et ut.', NULL, '2007-11-03 03:35:06', 'malachi57@yahoo.com', 0, 1),
(63, 'ut', 'Reiciendis quaerat tempora sit et magnam aut. Sed eos repellendus quod odit magnam quisquam. Molestiae aspernatur nostrum dolor repudiandae temporibus.', NULL, '1971-07-12 02:20:40', 'micheal26@gmail.com', 0, 0),
(64, 'soluta', 'Nesciunt placeat reprehenderit laboriosam fugiat. Quae impedit est pariatur qui. Deserunt excepturi repudiandae officia culpa et quis.', NULL, '2014-09-19 07:55:52', 'milan.jaskolski@waters.com', 1, 1),
(65, 'quo', 'Mollitia sunt asperiores beatae. Facere repellat dolorem expedita inventore. Sint mollitia numquam cupiditate totam voluptatem facilis et.', NULL, '1987-03-08 23:15:05', 'mjohnson@rath.biz', 1, 0),
(66, 'possimus', 'Eum inventore et esse nam eos velit reprehenderit. Quo voluptates labore sit et quia occaecati recusandae ex. Autem dolorem illum voluptatibus cupiditate nihil repudiandae.', NULL, '1979-11-05 09:07:11', 'msatterfield@bauch.com', 1, 0),
(67, 'voluptatem', 'Molestias sed aut voluptas ipsum iste velit autem. Doloremque voluptas animi repellat iusto at ea error cupiditate. Ipsam a a ut cupiditate debitis.', NULL, '1970-01-21 19:41:14', 'narciso.rau@rice.com', 0, 0),
(68, 'unde', 'Consequatur amet non saepe sed voluptates cum quia. Et deserunt consequatur sunt perferendis dolores nihil. Quidem qui a quae eos non quae aperiam.', NULL, '1989-04-26 06:36:53', 'ndoyle@murphy.com', 0, 0),
(69, 'asperiores', 'Repellat amet dolore laudantium soluta a quasi et. Quam rerum beatae vel ut sed. Corporis est quis explicabo eos consequatur non molestiae. Explicabo repudiandae labore necessitatibus non.', NULL, '2006-03-08 01:41:48', 'nortiz@keebler.com', 1, 0),
(70, 'delectus', 'Ducimus animi facere et iusto omnis. Ad repellat qui nostrum pariatur eaque maxime exercitationem. Vero nam ut quia quisquam. Tempora quis molestiae ad.', NULL, '1995-07-23 10:37:17', 'nprosacco@gmail.com', 1, 0),
(71, 'molestias', 'Velit aut quo officiis. Qui voluptas deleniti sunt qui aut. Rerum iure non dolor facere aut voluptatibus repellendus.\nUt possimus nobis vel qui. Quasi sed aut amet sit omnis eos consequuntur.', NULL, '2016-05-03 12:41:11', 'nrobel@luettgenstoltenberg.com', 0, 0),
(72, 'repudiandae', 'Deleniti recusandae repellendus cum unde ducimus perspiciatis reiciendis. Omnis deleniti dolorum maiores aut et. Autem qui veritatis ut quia.', NULL, '2010-07-13 16:29:23', 'omonahan@yahoo.com', 0, 0),
(73, 'quis', 'Est adipisci omnis in rerum omnis numquam consectetur aut. Porro incidunt autem nemo placeat libero ipsum. Et sunt autem ratione esse vero quia numquam.', NULL, '1986-07-31 00:33:25', 'paltenwerth@spencerhagenes.com', 0, 0),
(74, 'vitae', 'Magni alias nam soluta earum sit rerum. Quia molestias neque aut quisquam rem temporibus. Voluptatem aliquid maxime ducimus similique ut laborum dolor quod.', NULL, '2003-05-22 17:35:04', 'rdouglas@rosenbaum.com', 1, 1),
(75, 'perferendis', 'Rerum non aperiam repudiandae enim ea quaerat quis. Id in omnis consequatur cum nobis suscipit. Qui eligendi ratione ut in illum eius aut eum.', NULL, '1981-06-20 13:19:53', 'reinger.kailyn@pacocha.com', 0, 0),
(76, 'rem', 'Alias explicabo voluptatem aliquam hic molestiae vel. A dolorem soluta magnam aut natus. Rerum cum qui veritatis porro excepturi qui. Voluptatem et et enim quis officiis nihil.', NULL, '2021-11-08 13:28:17', 'rhea.doyle@baumbachmills.net', 0, 1),
(77, 'itaque', 'Blanditiis ut aut quibusdam qui consequatur. Incidunt sed tempora voluptatem asperiores. Quia voluptates error qui rerum qui. Qui eos quam ipsam nesciunt exercitationem.', NULL, '1987-01-24 16:50:02', 'robyn88@tremblaygrimes.com', 1, 0),
(78, 'numquam', 'Sit aut dignissimos qui aspernatur sed dolor harum. Voluptatem qui velit rerum quia. Distinctio magnam quas nam omnis at facere. Doloribus et a qui minima nam voluptas sed.', NULL, '2021-06-24 06:21:11', 'rodrick94@sporer.com', 0, 0),
(79, 'consequatur', 'Animi ducimus deleniti et quia maiores omnis. Esse qui sed cumque dolor accusamus maxime eaque. Corporis aut blanditiis non vitae quo ut esse. Natus ea aut aut sit.', NULL, '2015-02-22 22:19:00', 'sauer.narciso@oberbrunner.com', 0, 0),
(80, 'deleniti', 'Consequuntur omnis commodi nihil ex nostrum illo. Aut fuga consequatur harum aut.', NULL, '1975-01-05 10:53:07', 'sawayn.jody@gmail.com', 0, 0),
(81, 'ut', 'Voluptate omnis necessitatibus dolorem incidunt nisi. Veniam ratione eaque ex quia dicta libero voluptatem. Sit corporis corrupti aut quos. Voluptatibus aut libero ipsum hic sit quam.', NULL, '1971-04-08 11:30:57', 'schulist.shania@glover.biz', 1, 0),
(82, 'sed', 'Laborum sint dolor ducimus iure aut dolorum totam. Rerum voluptatibus nihil cumque ipsa sed. Doloremque et tenetur hic sit maiores.', NULL, '2018-04-15 07:31:30', 'schumm.hadley@cassinanderson.org', 1, 0),
(83, 'excepturi', 'Consectetur at voluptatem beatae. Repellat ut dolor possimus minima et ratione fugiat ab. Non nihil eveniet quam reprehenderit. Autem eaque maiores ut quibusdam explicabo.', NULL, '2013-12-04 19:40:01', 'skyla25@rath.com', 0, 1),
(84, 'fuga', 'Voluptatem sint eos soluta. Consequatur ut eum modi a amet non vitae minima. Quis eligendi perferendis impedit illo et omnis et.', NULL, '1997-07-05 04:13:55', 'smraz@yahoo.com', 0, 0),
(85, 'sunt', 'Omnis saepe rerum qui totam expedita consequatur. Debitis voluptatibus tenetur eveniet ipsa. Veritatis qui in earum in.', NULL, '1979-01-30 14:47:35', 'sophia.glover@hotmail.com', 0, 1),
(86, 'quam', 'Earum porro quam suscipit aliquam qui. Ducimus nostrum ut neque voluptas. Quam ad nesciunt eius tenetur non laudantium sint.', NULL, '2020-01-18 17:01:01', 'sophia30@yahoo.com', 0, 1),
(87, 'sit', 'Iure facilis cupiditate dolores recusandae labore saepe. Omnis quam repellat soluta ipsum. Fugiat aut amet nobis corrupti in.', NULL, '2023-01-27 08:34:55', 'ssteuber@feil.org', 0, 0),
(88, 'quas', 'Eum quis et quo. Quidem repellendus non qui soluta molestiae occaecati quam. Est reprehenderit corrupti quam.', NULL, '2011-09-27 12:53:51', 'talia75@lang.com', 0, 1),
(89, 'veniam', 'Neque ut exercitationem est. Dolor voluptatem amet quas saepe in provident. Qui expedita sint aut voluptas. Sapiente ut vitae molestiae. Ut asperiores architecto vel vitae sint qui.', NULL, '2004-08-13 19:05:33', 'tamara.greenholt@strosin.net', 1, 1),
(90, 'fugit', 'Consectetur illo quo molestiae veritatis dicta porro est et. Non vitae magnam dolorem praesentium dolorum.', NULL, '2013-03-09 14:54:45', 'toney.veum@morarheathcote.biz', 1, 1),
(91, 'hic', 'Officia aut doloremque omnis unde quisquam. Blanditiis ut voluptas cupiditate alias qui. Quo minus sunt repellendus tempora iure officiis nostrum.', NULL, '1988-11-18 03:23:39', 'unicolas@stoltenberg.com', 1, 1),
(92, 'deleniti', 'Eos quos non tenetur eos minima ullam. Dolores aut sit eum deleniti voluptatem corrupti ipsa. Est rerum id dolor autem dolor et sit quibusdam.', NULL, '2009-04-18 05:24:13', 'vicky48@yahoo.com', 0, 1),
(93, 'quasi', 'Omnis iusto ab optio et vitae nostrum. Culpa et excepturi fuga provident debitis. Qui quasi sit omnis aut ea. Rerum qui doloribus itaque vero et impedit delectus.', NULL, '1970-11-04 00:47:43', 'willms.coby@hackett.com', 1, 0),
(94, 'accusantium', 'Cupiditate molestiae facere quibusdam quia facilis. Amet sunt molestias numquam dolorem.\nPorro qui qui et quibusdam totam fugit. Recusandae modi sequi voluptas voluptas fuga. Nisi voluptas vel enim.', NULL, '1972-10-30 09:37:25', 'wisozk.magnolia@auerdavis.com', 1, 1),
(95, 'voluptatem', 'Aut tempore minus laudantium fugit non voluptatem. Eum deleniti laboriosam possimus incidunt nisi itaque. Qui ut quia libero accusamus distinctio.', NULL, '2003-11-14 05:15:36', 'wmarks@homenick.com', 0, 0),
(96, 'eaque', 'Vel porro et sed aut voluptate sunt. Ut ex consequatur temporibus iusto accusantium sit modi.', NULL, '1977-07-23 23:47:09', 'wunsch.demario@rau.biz', 1, 1),
(97, 'praesentium', 'Est in in quo aut quo similique. Tenetur doloribus reiciendis nihil. Numquam ipsam in qui quod expedita. Atque nesciunt rerum veritatis et nesciunt.', NULL, '1997-10-31 03:29:03', 'zboncak.yessenia@hotmail.com', 1, 1),
(98, 'aut', 'Et ducimus ipsa consequatur. Odio accusantium aliquam consequatur et at temporibus ut excepturi.', NULL, '1973-02-17 03:33:27', 'zhermann@schuster.net', 1, 0),
(99, 'voluptas', 'Vel aperiam soluta odio distinctio illum. Magni dolore dignissimos deleniti reiciendis ratione et id ipsa. In ipsum accusamus similique minima temporibus adipisci.', NULL, '1976-12-29 00:30:12', 'zita.hamill@schowalterbeatty.net', 0, 1),
(100, 'magni', 'Sed voluptatem dolores totam. Ut enim dolores et sint. Assumenda consequatur corrupti aperiam quaerat ratione consequatur.', NULL, '2021-02-24 21:28:54', 'zryan@yahoo.com', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mail_sent_to`
--

CREATE TABLE `mail_sent_to` (
  `id` int(11) NOT NULL,
  `mail_id` int(11) NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spam`
--

CREATE TABLE `spam` (
  `user_id` varchar(255) NOT NULL,
  `mail_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spam`
--

INSERT INTO `spam` (`user_id`, `mail_id`) VALUES
('abbott.annabelle@mertz.org', 1),
('abraham.feil@yahoo.com', 2),
('abshire.estella@hotmail.com', 3),
('adella28@yahoo.com', 4),
('alessia68@yahoo.com', 5),
('alfred15@hotmail.com', 6),
('annabelle35@hotmail.com', 7),
('arvel57@gmail.com', 8),
('bankunding@hammeslesch.org', 9),
('borer.valentina@gmail.com', 10),
('botsford.fabian@gmail.com', 11),
('breana.keeling@jerde.biz', 12),
('cameron11@predovic.biz', 13),
('carissa82@kris.com', 14),
('cremin.ahmed@yahoo.com', 15),
('daniel.ruben@barton.biz', 16),
('danielle.kozey@spencercrist.com', 17),
('darwin93@olsonoconner.com', 18),
('davis.kelsie@gmail.com', 19),
('dibbert.amya@yahoo.com', 20),
('domenica59@hand.com', 21),
('doyle.gideon@kuhlman.info', 22),
('ecronin@hotmail.com', 23),
('effertz.adolphus@yahoo.com', 24),
('eino53@hotmail.com', 25),
('elfrieda.breitenberg@strosin.com', 26),
('elsa.rosenbaum@gmail.com', 27),
('emmanuelle22@robel.biz', 28),
('emmy24@turcotte.com', 29),
('fcrooks@yahoo.com', 30),
('gavin84@beatty.net', 31),
('gdibbert@yahoo.com', 32),
('george92@hahn.com', 33),
('glover.maida@hoppe.biz', 34),
('gonzalo52@hotmail.com', 35),
('grant.jonas@gmail.com', 36),
('hartmann.luigi@hotmail.com', 37),
('heaney.jovan@hotmail.com', 38),
('heaven31@cremin.com', 39),
('hodkiewicz.ryleigh@osinski.net', 40),
('ikessler@yahoo.com', 41),
('ipouros@hotmail.com', 42),
('ivory.ward@gmail.com', 43),
('jaylin51@blickwillms.net', 44),
('johnson.nichole@bailey.net', 45),
('jrowe@osinski.org', 46),
('jschuppe@gmail.com', 47),
('kari87@beahan.info', 48),
('katherine27@leuschke.com', 49),
('keeling.grayce@langfunk.com', 50),
('keira.haag@feest.com', 51),
('kory15@hotmail.com', 52),
('laisha.jerde@gleichnersawayn.org', 53),
('laron.gibson@haley.biz', 54),
('leda73@johns.com', 55),
('lindsey.kihn@gmail.com', 56),
('litzy46@gmail.com', 57),
('loyal.gibson@gmail.com', 58),
('ludwig05@bruen.com', 59),
('mable35@daugherty.info', 60),
('madonna.littel@markswiza.org', 61),
('malachi57@yahoo.com', 62),
('micheal26@gmail.com', 63),
('milan.jaskolski@waters.com', 64),
('mjohnson@rath.biz', 65),
('msatterfield@bauch.com', 66),
('narciso.rau@rice.com', 67),
('ndoyle@murphy.com', 68),
('nortiz@keebler.com', 69),
('nprosacco@gmail.com', 70),
('nrobel@luettgenstoltenberg.com', 71),
('omonahan@yahoo.com', 72),
('paltenwerth@spencerhagenes.com', 73),
('rdouglas@rosenbaum.com', 74),
('reinger.kailyn@pacocha.com', 75),
('rhea.doyle@baumbachmills.net', 76),
('robyn88@tremblaygrimes.com', 77),
('rodrick94@sporer.com', 78),
('sauer.narciso@oberbrunner.com', 79),
('sawayn.jody@gmail.com', 80),
('schulist.shania@glover.biz', 81),
('schumm.hadley@cassinanderson.org', 82),
('skyla25@rath.com', 83),
('smraz@yahoo.com', 84),
('sophia.glover@hotmail.com', 85),
('sophia30@yahoo.com', 86),
('ssteuber@feil.org', 87),
('talia75@lang.com', 88),
('tamara.greenholt@strosin.net', 89),
('toney.veum@morarheathcote.biz', 90),
('unicolas@stoltenberg.com', 91),
('vicky48@yahoo.com', 92),
('willms.coby@hackett.com', 93),
('wisozk.magnolia@auerdavis.com', 94),
('wmarks@homenick.com', 95),
('wunsch.demario@rau.biz', 96),
('zboncak.yessenia@hotmail.com', 97),
('zhermann@schuster.net', 98),
('zita.hamill@schowalterbeatty.net', 99),
('zryan@yahoo.com', 100);

-- --------------------------------------------------------

--
-- Table structure for table `trash`
--

CREATE TABLE `trash` (
  `user_id` varchar(255) NOT NULL,
  `mail_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trash`
--

INSERT INTO `trash` (`user_id`, `mail_id`) VALUES
('abbott.annabelle@mertz.org', 1),
('abraham.feil@yahoo.com', 2),
('abshire.estella@hotmail.com', 3),
('adella28@yahoo.com', 4),
('alessia68@yahoo.com', 5),
('alfred15@hotmail.com', 6),
('annabelle35@hotmail.com', 7),
('arvel57@gmail.com', 8),
('bankunding@hammeslesch.org', 9),
('borer.valentina@gmail.com', 10),
('botsford.fabian@gmail.com', 11),
('breana.keeling@jerde.biz', 12),
('cameron11@predovic.biz', 13),
('carissa82@kris.com', 14),
('cremin.ahmed@yahoo.com', 15),
('daniel.ruben@barton.biz', 16),
('danielle.kozey@spencercrist.com', 17),
('darwin93@olsonoconner.com', 18),
('davis.kelsie@gmail.com', 19),
('dibbert.amya@yahoo.com', 20),
('domenica59@hand.com', 21),
('doyle.gideon@kuhlman.info', 22),
('ecronin@hotmail.com', 23),
('effertz.adolphus@yahoo.com', 24),
('eino53@hotmail.com', 25),
('elfrieda.breitenberg@strosin.com', 26),
('elsa.rosenbaum@gmail.com', 27),
('emmanuelle22@robel.biz', 28),
('emmy24@turcotte.com', 29),
('fcrooks@yahoo.com', 30),
('gavin84@beatty.net', 31),
('gdibbert@yahoo.com', 32),
('george92@hahn.com', 33),
('glover.maida@hoppe.biz', 34),
('gonzalo52@hotmail.com', 35),
('grant.jonas@gmail.com', 36),
('hartmann.luigi@hotmail.com', 37),
('heaney.jovan@hotmail.com', 38),
('heaven31@cremin.com', 39),
('hodkiewicz.ryleigh@osinski.net', 40),
('ikessler@yahoo.com', 41),
('ipouros@hotmail.com', 42),
('ivory.ward@gmail.com', 43),
('jaylin51@blickwillms.net', 44),
('johnson.nichole@bailey.net', 45),
('jrowe@osinski.org', 46),
('jschuppe@gmail.com', 47),
('kari87@beahan.info', 48),
('katherine27@leuschke.com', 49),
('keeling.grayce@langfunk.com', 50),
('keira.haag@feest.com', 51),
('kory15@hotmail.com', 52),
('laisha.jerde@gleichnersawayn.org', 53),
('laron.gibson@haley.biz', 54),
('leda73@johns.com', 55),
('lindsey.kihn@gmail.com', 56),
('litzy46@gmail.com', 57),
('loyal.gibson@gmail.com', 58),
('ludwig05@bruen.com', 59),
('mable35@daugherty.info', 60),
('madonna.littel@markswiza.org', 61),
('malachi57@yahoo.com', 62),
('micheal26@gmail.com', 63),
('milan.jaskolski@waters.com', 64),
('mjohnson@rath.biz', 65),
('msatterfield@bauch.com', 66),
('narciso.rau@rice.com', 67),
('ndoyle@murphy.com', 68),
('nortiz@keebler.com', 69),
('nprosacco@gmail.com', 70),
('nrobel@luettgenstoltenberg.com', 71),
('omonahan@yahoo.com', 72),
('paltenwerth@spencerhagenes.com', 73),
('rdouglas@rosenbaum.com', 74),
('reinger.kailyn@pacocha.com', 75),
('rhea.doyle@baumbachmills.net', 76),
('robyn88@tremblaygrimes.com', 77),
('rodrick94@sporer.com', 78),
('sauer.narciso@oberbrunner.com', 79),
('sawayn.jody@gmail.com', 80),
('schulist.shania@glover.biz', 81),
('schumm.hadley@cassinanderson.org', 82),
('skyla25@rath.com', 83),
('smraz@yahoo.com', 84),
('sophia.glover@hotmail.com', 85),
('sophia30@yahoo.com', 86),
('ssteuber@feil.org', 87),
('talia75@lang.com', 88),
('tamara.greenholt@strosin.net', 89),
('toney.veum@morarheathcote.biz', 90),
('unicolas@stoltenberg.com', 91),
('vicky48@yahoo.com', 92),
('willms.coby@hackett.com', 93),
('wisozk.magnolia@auerdavis.com', 94),
('wmarks@homenick.com', 95),
('wunsch.demario@rau.biz', 96),
('zboncak.yessenia@hotmail.com', 97),
('zhermann@schuster.net', 98),
('zita.hamill@schowalterbeatty.net', 99),
('zryan@yahoo.com', 100);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'user',
  `avatar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES
('abbott.annabelle@mertz.org', '900150983cd24fb0d6963f7d28e17f72', 'Dr. Camren Cummerata V', 'user', NULL),
('abraham.feil@yahoo.com', '8799d4ace90d52138877c971d0fe9b5c', 'Summer Steuber', 'user', NULL),
('abshire.estella@hotmail.com', 'a3226ca6192177716cdad0d6c14d15e4', 'Kaci Lebsack', 'user', NULL),
('adella28@yahoo.com', 'c44827c69ec1ff84fd5de9db34728378', 'Karley West', 'user', NULL),
('alessia68@yahoo.com', '9b1252a40679f7c5b8589410da6d3f42', 'Michale Brown', 'user', NULL),
('alfred15@hotmail.com', '29534efd3f1176fae2091905462bd040', 'Mrs. Jailyn Raynor', 'user', NULL),
('annabelle35@hotmail.com', 'a997524ceffc8bac4a02f822d25faa26', 'Brock Bednar', 'user', NULL),
('arvel57@gmail.com', 'a6e2ff13fab72760d0181df99180b5c4', 'Mr. Emory D\'Amore', 'user', NULL),
('bankunding@hammeslesch.org', '45f7bb5b2e02bedc95d771100c5c8091', 'Miss Vincenza Stark', 'user', NULL),
('borer.valentina@gmail.com', '967e3c9173d10564b56b4ebd79f87b4e', 'Prof. Domenick Borer', 'user', NULL),
('botsford.fabian@gmail.com', '9c61ec1d8c9e95edd9e43e23c702aef0', 'Abdiel O\'Reilly III', 'user', NULL),
('breana.keeling@jerde.biz', 'bb420e6ff13ec06cb1d7b7f515dc197b', 'Cydney Powlowski', 'user', NULL),
('cameron11@predovic.biz', 'cfc33a633c4159de4cd76fb6d6ff26b3', 'Juvenal Bartoletti', 'user', NULL),
('carissa82@kris.com', '772e1879871ce4e39cc3dda2041a8bc4', 'Gunner Botsford III', 'user', NULL),
('cremin.ahmed@yahoo.com', '5251019694737c9862890c91d0971491', 'Tiana Murray', 'user', NULL),
('daniel.ruben@barton.biz', 'b6434103d562b6e3f850315523c03755', 'Larry Howell', 'user', NULL),
('danielle.kozey@spencercrist.com', 'bb7af73fbc7639809f5bce4845bf0c2c', 'Dylan Bosco', 'user', NULL),
('darwin93@olsonoconner.com', '8092a933c75eb2e23d02a9d36ac71ae7', 'Alysha Schowalter', 'user', NULL),
('davis.kelsie@gmail.com', '649759107058dc88a6c3de91d92886fb', 'Miss Hilda Beahan PhD', 'user', NULL),
('dibbert.amya@yahoo.com', 'b740b00ed26820fdde14358455448979', 'Miss Rachael Walter PhD', 'user', NULL),
('domenica59@hand.com', '7735957df46f3b841566aea117d3cf66', 'Dr. Eldon Marvin MD', 'user', NULL),
('doyle.gideon@kuhlman.info', 'cdb1244820980dddf37208ade167c994', 'Laney Rau', 'user', NULL),
('ecronin@hotmail.com', '54a766409ca3097184e26db07b533d11', 'Jordan Lemke', 'user', NULL),
('effertz.adolphus@yahoo.com', '2f0e7204cf895598bfdd3e87230b8555', 'Prof. Erling Jenkins', 'user', NULL),
('eino53@hotmail.com', '9b4dccce0b9637fe8bf831c3046e2cdb', 'Dr. Sheridan Becker Jr.', 'user', NULL),
('elfrieda.breitenberg@strosin.com', '5767557fbe7d043fe9864ffa2be81b5b', 'Margie Labadie', 'user', NULL),
('elsa.rosenbaum@gmail.com', '692e4c955a865a003990726aec190c8b', 'Margarete Yundt IV', 'user', NULL),
('emmanuelle22@robel.biz', '3d8c2d1d34c5fc3b63aa61fe3838a3ed', 'Jamison Bode DVM', 'user', NULL),
('emmy24@turcotte.com', 'cda71ae60fe5fb7bfab56d0926661eb8', 'Liliane Mitchell', 'user', NULL),
('fcrooks@yahoo.com', '828120b6309bb7c3b05eacc43fc07d87', 'Leanna Ullrich', 'user', NULL),
('gavin84@beatty.net', 'c193f9e243e42920bb5c13f70c581d43', 'Pearlie Sporer', 'user', NULL),
('gdibbert@yahoo.com', 'be08c6818a719d01abc629f88955aece', 'Prof. Alaina White', 'user', NULL),
('george92@hahn.com', 'd8f3e70ffdb47ee1ee6bac35d1b11819', 'Willard Nikolaus', 'user', NULL),
('glover.maida@hoppe.biz', '23926919a931132dcad7637da9ccc057', 'Wallace Oberbrunner', 'user', NULL),
('gonzalo52@hotmail.com', '5b8a5c39a5d5d5379b53ab77064d347c', 'Ms. Syble Kris III', 'user', NULL),
('grant.jonas@gmail.com', 'd3eec999c7df33c19df564343c648e9a', 'Sebastian Borer', 'user', NULL),
('hartmann.luigi@hotmail.com', 'e44dfbc0871d5703219e307c6e9c9b4d', 'Dillan Leuschke', 'user', NULL),
('heaney.jovan@hotmail.com', '91a541979e4b0d5b14916d408e38fc99', 'Adele Pacocha', 'user', NULL),
('heaven31@cremin.com', '33bc0828d6fd0c6083221081468bcc18', 'Kyra Brakus', 'user', NULL),
('hodkiewicz.ryleigh@osinski.net', '9d4f103a70ebb884ba6832766c92d4f7', 'Jalon Casper', 'user', NULL),
('ikessler@yahoo.com', '9e34b767a4578686fa8f1f65eaa180e1', 'Shakira Raynor', 'user', NULL),
('ipouros@hotmail.com', '2c3ce817add424c87d5c43fde02d9ca2', 'Ms. Yvette Schultz', 'user', NULL),
('ivory.ward@gmail.com', '3bf5495d19830b725140e8322ffa4044', 'Aida Gerhold', 'user', NULL),
('jaylin51@blickwillms.net', 'a8c027542f0b6fd1a002093c09515bbd', 'Giles Schmidt', 'user', NULL),
('johnson.nichole@bailey.net', '5e6be92528715557e849956bd492209c', 'Dr. Rahul Kuhn', 'user', NULL),
('jrowe@osinski.org', '5bc66ecfab0f1a2b08657714587a6a11', 'Precious Terry', 'user', NULL),
('jschuppe@gmail.com', '08625cd4167c753e298b1a73ed9f23f2', 'Miss Audra Mueller', 'user', NULL),
('kari87@beahan.info', '1881f8340cf0cff77b5b0d0483c79d4d', 'Dr. Dale Jacobi', 'user', NULL),
('katherine27@leuschke.com', '65c955bcd68a0008ae891f717578e2d1', 'Ms. Lorena Heathcote', 'user', NULL),
('keeling.grayce@langfunk.com', '8db5d18abffa0184765509d9639a1846', 'Adrianna Purdy', 'user', NULL),
('keira.haag@feest.com', '395f2ffcea2b33c4fefb5055404b200c', 'Mr. Aurelio Stracke', 'user', NULL),
('kory15@hotmail.com', '44ab08488e1a1dde6dd609e9c8195df7', 'Annabell Wiegand I', 'user', NULL),
('laisha.jerde@gleichnersawayn.org', '95eb298524ef7d13e58d926a4fc89d98', 'Isai Huel MD', 'user', NULL),
('laron.gibson@haley.biz', 'a47b4aa6762c1f6fe1433a3f4d114bd1', 'Elenora Lockman Sr.', 'user', NULL),
('leda73@johns.com', '9c6333f9ca031a3b1d537187be42bdf0', 'Lurline Hodkiewicz', 'user', NULL),
('lindsey.kihn@gmail.com', 'f736cea3348446c0052e78dac3e4efea', 'Alessia Kassulke', 'user', NULL),
('litzy46@gmail.com', '0e574c23ef69583f0d82aef491782c96', 'Toy Hilll', 'user', NULL),
('loyal.gibson@gmail.com', 'e76a2603946231dc27c305d73b2521d1', 'Antonina Blick IV', 'user', NULL),
('ludwig05@bruen.com', '9a68b0eabe7f136cb183ce004538f03b', 'Maryam Grant', 'user', NULL),
('mable35@daugherty.info', 'a41a2c866d5a8a0a998281302c9dd577', 'Dr. Kelsie Sporer MD', 'user', NULL),
('madonna.littel@markswiza.org', '897a71cbe9a0a1fe6888e5b189c7e764', 'Prof. Joel Windler IV', 'user', NULL),
('malachi57@yahoo.com', '08a43c368adc2ba9e0efc45f9f41cb42', 'Wilson Hand', 'user', NULL),
('micheal26@gmail.com', 'ed3dd8c7143cebf497b73ddddd2ca014', 'Macy Kris', 'user', NULL),
('milan.jaskolski@waters.com', 'ddc67c5315e058f775e4345864b4827e', 'Novella Aufderhar', 'user', NULL),
('mjohnson@rath.biz', 'a38ab90e3d8d68545e5c176d2d288c42', 'Ramiro Davis', 'user', NULL),
('msatterfield@bauch.com', 'b7cf6a42d2df166d18376bdcc5199169', 'Mr. Rigoberto Collier I', 'user', NULL),
('narciso.rau@rice.com', '0e7ef68fa3b8979af34c056a904d9c07', 'Carson Grimes', 'user', NULL),
('ndoyle@murphy.com', '9753943d58b18e99e57828319ee78963', 'Dr. Patience Macejkovic V', 'user', NULL),
('nortiz@keebler.com', 'a863bd5121877a2fdfb259053dd4981f', 'Keshaun Breitenberg', 'user', NULL),
('nprosacco@gmail.com', 'b01abade2b176a747ce9f7aa70559f35', 'Norberto Satterfield', 'user', NULL),
('nrobel@luettgenstoltenberg.com', 'c24af0997268cf337e365fa341ba902d', 'Lonzo Douglas', 'user', NULL),
('omonahan@yahoo.com', 'f91d8c925fb63613665fd72b9c8bc803', 'Reva Mann IV', 'user', NULL),
('paltenwerth@spencerhagenes.com', '8ee0513b8ee605b079f963286929ba3d', 'Mrs. Rossie Murphy', 'user', NULL),
('rdouglas@rosenbaum.com', '07f39e26d4301e9aeb80676f258159c6', 'Oma Kessler', 'user', NULL),
('reinger.kailyn@pacocha.com', 'dd80fcde2010d2951fff22e045072fd2', 'Nola Erdman V', 'user', NULL),
('rhea.doyle@baumbachmills.net', '82584afcf82a914c59e73cc55424707c', 'Alden Von', 'user', NULL),
('robyn88@tremblaygrimes.com', '5bdaa8aa453e9330a9948cda4522efe0', 'Saul Renner', 'user', NULL),
('rodrick94@sporer.com', '6caa3200b9c340f133006bb0242ea03c', 'Dr. Ashly Hessel', 'user', NULL),
('sauer.narciso@oberbrunner.com', '2b483a040d3e8da622c246f21b2bec4e', 'Pablo Bartell', 'user', NULL),
('sawayn.jody@gmail.com', 'eebeb4600d11b1c069c4c2eccdad93c7', 'Dr. Jamey Ebert PhD', 'user', NULL),
('schulist.shania@glover.biz', '30bf674fbf08cbd12fe59345e824fbe2', 'Prof. Sydnee Bradtke', 'user', NULL),
('schumm.hadley@cassinanderson.org', 'ecaf4b70ebcf6583f6470088137c5cd2', 'Dr. Aglae Maggio III', 'user', NULL),
('skyla25@rath.com', '5a8c54e8064701ac0ed7e06386606861', 'Jacey Prohaska', 'user', NULL),
('smraz@yahoo.com', '836ccde45ead9a7eb0371cc7b931d762', 'Dr. Garnet Goyette III', 'user', NULL),
('sophia.glover@hotmail.com', '6dc26db93fc4bdedfca6fcf6a7b94ea4', 'Prof. Lue Nitzsche IV', 'user', NULL),
('sophia30@yahoo.com', 'fd3be230aaab172b9f817bbeb82309dc', 'Dr. Christelle Oberbrunner Sr.', 'user', NULL),
('ssteuber@feil.org', '5eb043ca93e4700c8e81cc6742a15c4e', 'Prof. Diana Jones', 'user', NULL),
('talia75@lang.com', '72f51b277235aff6eb95350e57f8e1fb', 'Prof. Linnea Buckridge', 'user', NULL),
('tamara.greenholt@strosin.net', 'ccbdd36854d63237c2a354b3bb8b1972', 'Dr. Soledad D\'Amore', 'user', NULL),
('toney.veum@morarheathcote.biz', '7b0903156dc4661ccceb47cc4e79b16d', 'Mr. Archibald Hyatt', 'user', NULL),
('unicolas@stoltenberg.com', '81d5c9415ee7041905e7d286847c14ae', 'Jaleel Reilly', 'user', NULL),
('vicky48@yahoo.com', '9617cd532b1ce5210e51e475a8a0eb7f', 'Ms. Anika Blanda', 'user', NULL),
('willms.coby@hackett.com', '593ba5747b87e339f0f974d1106655db', 'Freddy Gislason', 'user', NULL),
('wisozk.magnolia@auerdavis.com', '4993f189022ccc38fbb1fb5a3e0a3410', 'Prof. Elijah Fay DDS', 'user', NULL),
('wmarks@homenick.com', '898bbb53bdb2ccd9df6cdb51246b19a3', 'Bo Okuneva', 'user', NULL),
('wunsch.demario@rau.biz', 'e92fdb7551dd92bedef67423466957c2', 'Prof. Candelario Hoppe I', 'user', NULL),
('zboncak.yessenia@hotmail.com', 'a2a96860171d479b1419612c004e02ef', 'Emory Bergstrom', 'user', NULL),
('zhermann@schuster.net', '02d3c7c03a390e53854828041578c2a5', 'Earnestine Graham', 'user', NULL),
('zita.hamill@schowalterbeatty.net', '105e8f59f5c63f02e585ee17e34568e5', 'Mr. Hilario Davis', 'user', NULL),
('zryan@yahoo.com', 'b1e07e056b39d16bd282abb91787b9cc', 'Prof. Carlos Schultz', 'user', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `draft`
--
ALTER TABLE `draft`
  ADD KEY `draft_user` (`user_id`),
  ADD KEY `draft_mail` (`mail_id`);

--
-- Indexes for table `inbox`
--
ALTER TABLE `inbox`
  ADD KEY `inbox_user` (`user_id`),
  ADD KEY `inbox_mail` (`mail_id`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mail_user` (`sent_by`);

--
-- Indexes for table `mail_sent_to`
--
ALTER TABLE `mail_sent_to`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mail_cc_mail` (`mail_id`),
  ADD KEY `mail_cc_user` (`user_id`);

--
-- Indexes for table `spam`
--
ALTER TABLE `spam`
  ADD KEY `spam_user` (`user_id`),
  ADD KEY `spam_mail` (`mail_id`);

--
-- Indexes for table `trash`
--
ALTER TABLE `trash`
  ADD KEY `trash_user` (`user_id`),
  ADD KEY `trash_mail` (`mail_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `mail_sent_to`
--
ALTER TABLE `mail_sent_to`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `draft`
--
ALTER TABLE `draft`
  ADD CONSTRAINT `draft_mail` FOREIGN KEY (`mail_id`) REFERENCES `mail` (`id`),
  ADD CONSTRAINT `draft_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`);

--
-- Constraints for table `inbox`
--
ALTER TABLE `inbox`
  ADD CONSTRAINT `inbox_mail` FOREIGN KEY (`mail_id`) REFERENCES `mail` (`id`),
  ADD CONSTRAINT `inbox_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`);

--
-- Constraints for table `mail`
--
ALTER TABLE `mail`
  ADD CONSTRAINT `mail_user` FOREIGN KEY (`sent_by`) REFERENCES `user` (`email`);

--
-- Constraints for table `mail_sent_to`
--
ALTER TABLE `mail_sent_to`
  ADD CONSTRAINT `mail_cc_mail` FOREIGN KEY (`mail_id`) REFERENCES `mail` (`id`),
  ADD CONSTRAINT `mail_cc_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`);

--
-- Constraints for table `spam`
--
ALTER TABLE `spam`
  ADD CONSTRAINT `spam_mail` FOREIGN KEY (`mail_id`) REFERENCES `mail` (`id`),
  ADD CONSTRAINT `spam_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`);

--
-- Constraints for table `trash`
--
ALTER TABLE `trash`
  ADD CONSTRAINT `trash_mail` FOREIGN KEY (`mail_id`) REFERENCES `mail` (`id`),
  ADD CONSTRAINT `trash_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
