#
# TABLE STRUCTURE FOR: user
#

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'user',
  `avatar` text DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('abbott.annabelle@mertz.org', '3f7ee4586928494a82aa67b5c73bced9', 'Dr. Camren Cummerata V', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('abraham.feil@yahoo.com', '8799d4ace90d52138877c971d0fe9b5c', 'Summer Steuber', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('abshire.estella@hotmail.com', 'a3226ca6192177716cdad0d6c14d15e4', 'Kaci Lebsack', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('adella28@yahoo.com', 'c44827c69ec1ff84fd5de9db34728378', 'Karley West', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('alessia68@yahoo.com', '9b1252a40679f7c5b8589410da6d3f42', 'Michale Brown', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('alfred15@hotmail.com', '29534efd3f1176fae2091905462bd040', 'Mrs. Jailyn Raynor', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('annabelle35@hotmail.com', 'a997524ceffc8bac4a02f822d25faa26', 'Brock Bednar', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('arvel57@gmail.com', 'a6e2ff13fab72760d0181df99180b5c4', 'Mr. Emory D\'Amore', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('bankunding@hammeslesch.org', '45f7bb5b2e02bedc95d771100c5c8091', 'Miss Vincenza Stark', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('borer.valentina@gmail.com', '967e3c9173d10564b56b4ebd79f87b4e', 'Prof. Domenick Borer', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('botsford.fabian@gmail.com', '9c61ec1d8c9e95edd9e43e23c702aef0', 'Abdiel O\'Reilly III', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('breana.keeling@jerde.biz', 'bb420e6ff13ec06cb1d7b7f515dc197b', 'Cydney Powlowski', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('cameron11@predovic.biz', 'cfc33a633c4159de4cd76fb6d6ff26b3', 'Juvenal Bartoletti', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('carissa82@kris.com', '772e1879871ce4e39cc3dda2041a8bc4', 'Gunner Botsford III', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('cremin.ahmed@yahoo.com', '5251019694737c9862890c91d0971491', 'Tiana Murray', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('daniel.ruben@barton.biz', 'b6434103d562b6e3f850315523c03755', 'Larry Howell', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('danielle.kozey@spencercrist.com', 'bb7af73fbc7639809f5bce4845bf0c2c', 'Dylan Bosco', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('darwin93@olsonoconner.com', '8092a933c75eb2e23d02a9d36ac71ae7', 'Alysha Schowalter', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('davis.kelsie@gmail.com', '649759107058dc88a6c3de91d92886fb', 'Miss Hilda Beahan PhD', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('dibbert.amya@yahoo.com', 'b740b00ed26820fdde14358455448979', 'Miss Rachael Walter PhD', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('domenica59@hand.com', '7735957df46f3b841566aea117d3cf66', 'Dr. Eldon Marvin MD', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('doyle.gideon@kuhlman.info', 'cdb1244820980dddf37208ade167c994', 'Laney Rau', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('ecronin@hotmail.com', '54a766409ca3097184e26db07b533d11', 'Jordan Lemke', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('effertz.adolphus@yahoo.com', '2f0e7204cf895598bfdd3e87230b8555', 'Prof. Erling Jenkins', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('eino53@hotmail.com', '9b4dccce0b9637fe8bf831c3046e2cdb', 'Dr. Sheridan Becker Jr.', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('elfrieda.breitenberg@strosin.com', '5767557fbe7d043fe9864ffa2be81b5b', 'Margie Labadie', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('elsa.rosenbaum@gmail.com', '692e4c955a865a003990726aec190c8b', 'Margarete Yundt IV', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('emmanuelle22@robel.biz', '3d8c2d1d34c5fc3b63aa61fe3838a3ed', 'Jamison Bode DVM', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('emmy24@turcotte.com', 'cda71ae60fe5fb7bfab56d0926661eb8', 'Liliane Mitchell', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('fcrooks@yahoo.com', '828120b6309bb7c3b05eacc43fc07d87', 'Leanna Ullrich', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('gavin84@beatty.net', 'c193f9e243e42920bb5c13f70c581d43', 'Pearlie Sporer', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('gdibbert@yahoo.com', 'be08c6818a719d01abc629f88955aece', 'Prof. Alaina White', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('george92@hahn.com', 'd8f3e70ffdb47ee1ee6bac35d1b11819', 'Willard Nikolaus', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('glover.maida@hoppe.biz', '23926919a931132dcad7637da9ccc057', 'Wallace Oberbrunner', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('gonzalo52@hotmail.com', '5b8a5c39a5d5d5379b53ab77064d347c', 'Ms. Syble Kris III', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('grant.jonas@gmail.com', 'd3eec999c7df33c19df564343c648e9a', 'Sebastian Borer', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('hartmann.luigi@hotmail.com', 'e44dfbc0871d5703219e307c6e9c9b4d', 'Dillan Leuschke', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('heaney.jovan@hotmail.com', '91a541979e4b0d5b14916d408e38fc99', 'Adele Pacocha', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('heaven31@cremin.com', '33bc0828d6fd0c6083221081468bcc18', 'Kyra Brakus', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('hodkiewicz.ryleigh@osinski.net', '9d4f103a70ebb884ba6832766c92d4f7', 'Jalon Casper', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('ikessler@yahoo.com', '9e34b767a4578686fa8f1f65eaa180e1', 'Shakira Raynor', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('ipouros@hotmail.com', '2c3ce817add424c87d5c43fde02d9ca2', 'Ms. Yvette Schultz', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('ivory.ward@gmail.com', '3bf5495d19830b725140e8322ffa4044', 'Aida Gerhold', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('jaylin51@blickwillms.net', 'a8c027542f0b6fd1a002093c09515bbd', 'Giles Schmidt', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('johnson.nichole@bailey.net', '5e6be92528715557e849956bd492209c', 'Dr. Rahul Kuhn', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('jrowe@osinski.org', '5bc66ecfab0f1a2b08657714587a6a11', 'Precious Terry', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('jschuppe@gmail.com', '08625cd4167c753e298b1a73ed9f23f2', 'Miss Audra Mueller', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('kari87@beahan.info', '1881f8340cf0cff77b5b0d0483c79d4d', 'Dr. Dale Jacobi', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('katherine27@leuschke.com', '65c955bcd68a0008ae891f717578e2d1', 'Ms. Lorena Heathcote', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('keeling.grayce@langfunk.com', '8db5d18abffa0184765509d9639a1846', 'Adrianna Purdy', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('keira.haag@feest.com', '395f2ffcea2b33c4fefb5055404b200c', 'Mr. Aurelio Stracke', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('kory15@hotmail.com', '44ab08488e1a1dde6dd609e9c8195df7', 'Annabell Wiegand I', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('laisha.jerde@gleichnersawayn.org', '95eb298524ef7d13e58d926a4fc89d98', 'Isai Huel MD', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('laron.gibson@haley.biz', 'a47b4aa6762c1f6fe1433a3f4d114bd1', 'Elenora Lockman Sr.', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('leda73@johns.com', '9c6333f9ca031a3b1d537187be42bdf0', 'Lurline Hodkiewicz', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('lindsey.kihn@gmail.com', 'f736cea3348446c0052e78dac3e4efea', 'Alessia Kassulke', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('litzy46@gmail.com', '0e574c23ef69583f0d82aef491782c96', 'Toy Hilll', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('loyal.gibson@gmail.com', 'e76a2603946231dc27c305d73b2521d1', 'Antonina Blick IV', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('ludwig05@bruen.com', '9a68b0eabe7f136cb183ce004538f03b', 'Maryam Grant', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('mable35@daugherty.info', 'a41a2c866d5a8a0a998281302c9dd577', 'Dr. Kelsie Sporer MD', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('madonna.littel@markswiza.org', '897a71cbe9a0a1fe6888e5b189c7e764', 'Prof. Joel Windler IV', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('malachi57@yahoo.com', '08a43c368adc2ba9e0efc45f9f41cb42', 'Wilson Hand', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('micheal26@gmail.com', 'ed3dd8c7143cebf497b73ddddd2ca014', 'Macy Kris', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('milan.jaskolski@waters.com', 'ddc67c5315e058f775e4345864b4827e', 'Novella Aufderhar', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('mjohnson@rath.biz', 'a38ab90e3d8d68545e5c176d2d288c42', 'Ramiro Davis', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('msatterfield@bauch.com', 'b7cf6a42d2df166d18376bdcc5199169', 'Mr. Rigoberto Collier I', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('narciso.rau@rice.com', '0e7ef68fa3b8979af34c056a904d9c07', 'Carson Grimes', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('ndoyle@murphy.com', '9753943d58b18e99e57828319ee78963', 'Dr. Patience Macejkovic V', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('nortiz@keebler.com', 'a863bd5121877a2fdfb259053dd4981f', 'Keshaun Breitenberg', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('nprosacco@gmail.com', 'b01abade2b176a747ce9f7aa70559f35', 'Norberto Satterfield', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('nrobel@luettgenstoltenberg.com', 'c24af0997268cf337e365fa341ba902d', 'Lonzo Douglas', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('omonahan@yahoo.com', 'f91d8c925fb63613665fd72b9c8bc803', 'Reva Mann IV', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('paltenwerth@spencerhagenes.com', '8ee0513b8ee605b079f963286929ba3d', 'Mrs. Rossie Murphy', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('rdouglas@rosenbaum.com', '07f39e26d4301e9aeb80676f258159c6', 'Oma Kessler', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('reinger.kailyn@pacocha.com', 'dd80fcde2010d2951fff22e045072fd2', 'Nola Erdman V', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('rhea.doyle@baumbachmills.net', '82584afcf82a914c59e73cc55424707c', 'Alden Von', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('robyn88@tremblaygrimes.com', '5bdaa8aa453e9330a9948cda4522efe0', 'Saul Renner', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('rodrick94@sporer.com', '6caa3200b9c340f133006bb0242ea03c', 'Dr. Ashly Hessel', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('sauer.narciso@oberbrunner.com', '2b483a040d3e8da622c246f21b2bec4e', 'Pablo Bartell', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('sawayn.jody@gmail.com', 'eebeb4600d11b1c069c4c2eccdad93c7', 'Dr. Jamey Ebert PhD', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('schulist.shania@glover.biz', '30bf674fbf08cbd12fe59345e824fbe2', 'Prof. Sydnee Bradtke', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('schumm.hadley@cassinanderson.org', 'ecaf4b70ebcf6583f6470088137c5cd2', 'Dr. Aglae Maggio III', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('skyla25@rath.com', '5a8c54e8064701ac0ed7e06386606861', 'Jacey Prohaska', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('smraz@yahoo.com', '836ccde45ead9a7eb0371cc7b931d762', 'Dr. Garnet Goyette III', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('sophia.glover@hotmail.com', '6dc26db93fc4bdedfca6fcf6a7b94ea4', 'Prof. Lue Nitzsche IV', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('sophia30@yahoo.com', 'fd3be230aaab172b9f817bbeb82309dc', 'Dr. Christelle Oberbrunner Sr.', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('ssteuber@feil.org', '5eb043ca93e4700c8e81cc6742a15c4e', 'Prof. Diana Jones', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('talia75@lang.com', '72f51b277235aff6eb95350e57f8e1fb', 'Prof. Linnea Buckridge', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('tamara.greenholt@strosin.net', 'ccbdd36854d63237c2a354b3bb8b1972', 'Dr. Soledad D\'Amore', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('toney.veum@morarheathcote.biz', '7b0903156dc4661ccceb47cc4e79b16d', 'Mr. Archibald Hyatt', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('unicolas@stoltenberg.com', '81d5c9415ee7041905e7d286847c14ae', 'Jaleel Reilly', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('vicky48@yahoo.com', '9617cd532b1ce5210e51e475a8a0eb7f', 'Ms. Anika Blanda', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('willms.coby@hackett.com', '593ba5747b87e339f0f974d1106655db', 'Freddy Gislason', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('wisozk.magnolia@auerdavis.com', '4993f189022ccc38fbb1fb5a3e0a3410', 'Prof. Elijah Fay DDS', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('wmarks@homenick.com', '898bbb53bdb2ccd9df6cdb51246b19a3', 'Bo Okuneva', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('wunsch.demario@rau.biz', 'e92fdb7551dd92bedef67423466957c2', 'Prof. Candelario Hoppe I', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('zboncak.yessenia@hotmail.com', 'a2a96860171d479b1419612c004e02ef', 'Emory Bergstrom', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('zhermann@schuster.net', '02d3c7c03a390e53854828041578c2a5', 'Earnestine Graham', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('zita.hamill@schowalterbeatty.net', '105e8f59f5c63f02e585ee17e34568e5', 'Mr. Hilario Davis', 'user', NULL);
INSERT INTO `user` (`email`, `password`, `name`, `role`, `avatar`) VALUES ('zryan@yahoo.com', 'b1e07e056b39d16bd282abb91787b9cc', 'Prof. Carlos Schultz', 'user', NULL);


#
# TABLE STRUCTURE FOR: mail
#

DROP TABLE IF EXISTS `mail`;

CREATE TABLE `mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `attachment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `cc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`cc`)),
  `bcc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`bcc`)),
  `sent_by` varchar(255) NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `is_starred` tinyint(1) NOT NULL DEFAULT 0,
  `sent_to` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`sent_to`)),
  PRIMARY KEY (`id`),
  KEY `mail_user` (`sent_by`),
  CONSTRAINT `mail_user` FOREIGN KEY (`sent_by`) REFERENCES `user` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (1, 'eligendi', 'Magnam saepe dolorem ut pariatur perferendis. Officia fuga veniam explicabo temporibus aut.', NULL, '1988-06-18 08:48:10', NULL, NULL, 'abbott.annabelle@mertz.org', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (2, 'laboriosam', 'Ipsam voluptatibus atque nam possimus aut fugiat. Aut aut ipsa quasi perspiciatis rerum. Necessitatibus vel dolorem quas maxime sed. Rem soluta doloremque et placeat eveniet laborum.', NULL, '2009-06-08 09:57:38', NULL, NULL, 'abraham.feil@yahoo.com', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (3, 'et', 'Alias praesentium suscipit repellat voluptatem optio. Expedita natus ut veritatis aut consequuntur fugit. Illum quam quidem aperiam voluptas. Amet rerum unde autem autem ipsa consequatur mollitia.', NULL, '1980-06-19 23:28:01', NULL, NULL, 'abshire.estella@hotmail.com', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (4, 'doloribus', 'Facere eos voluptatem id distinctio et voluptas. Dolore deleniti maiores quia fugiat ut omnis. Consectetur aut est eos itaque et. In tempore earum odit in est.', NULL, '1977-11-17 01:12:48', NULL, NULL, 'adella28@yahoo.com', 1, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (5, 'labore', 'Atque saepe libero illum velit sint sit. Sed sed est unde earum. Magnam omnis qui deserunt et sint id commodi. Voluptas et porro enim quo odit dignissimos.', NULL, '1980-01-22 13:28:43', NULL, NULL, 'alessia68@yahoo.com', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (6, 'sed', 'Voluptatum quis sit dolores odio dolor repudiandae saepe. Accusantium incidunt sed tenetur maxime eius quidem. Nihil sunt quia rerum ipsum.', NULL, '1994-07-14 09:51:47', NULL, NULL, 'alfred15@hotmail.com', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (7, 'dolor', 'Eius inventore voluptatem nostrum maxime. Voluptatem iusto enim non necessitatibus. Quis quae praesentium praesentium magni optio nam voluptatem praesentium.', NULL, '2000-07-04 03:52:33', NULL, NULL, 'annabelle35@hotmail.com', 1, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (8, 'perferendis', 'Quisquam accusantium ut a quis aliquam. Ut quae quia cum rem odio. Illo excepturi omnis quidem ex praesentium doloribus cum nemo. Occaecati aliquid impedit totam sed.', NULL, '1973-10-10 10:55:14', NULL, NULL, 'arvel57@gmail.com', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (9, 'qui', 'Quam qui earum ullam et et est. Vel harum accusamus animi dolorum a neque. Aliquid iusto rerum praesentium atque.', NULL, '2019-07-04 12:02:52', NULL, NULL, 'bankunding@hammeslesch.org', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (10, 'autem', 'Asperiores delectus et et neque itaque qui. Culpa dolore aut ipsum sint qui ducimus. Impedit perspiciatis quam qui repellendus officia mollitia reprehenderit.', NULL, '1992-03-23 21:33:39', NULL, NULL, 'borer.valentina@gmail.com', 1, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (11, 'labore', 'Quisquam animi non nulla sapiente minus at cupiditate. Voluptatum aut optio aut veniam quis repellat fugiat. Vitae iure veritatis dolorem dolores vel.', NULL, '1982-09-17 09:09:43', NULL, NULL, 'botsford.fabian@gmail.com', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (12, 'error', 'Amet quibusdam autem est voluptas sit blanditiis. Et consequatur sit deserunt. Ipsa suscipit est corrupti aut aut et provident. Autem earum alias modi odio animi impedit et non.', NULL, '1995-09-29 16:25:51', NULL, NULL, 'breana.keeling@jerde.biz', 0, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (13, 'molestiae', 'Excepturi vel quisquam sunt aut. Reiciendis unde dolorem error et sed. Ut laborum deleniti harum neque harum.', NULL, '2021-03-06 10:55:55', NULL, NULL, 'cameron11@predovic.biz', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (14, 'reprehenderit', 'Libero est aut ipsam repudiandae eum. Ratione officia dolorem asperiores ratione culpa possimus porro.', NULL, '1972-10-21 22:44:39', NULL, NULL, 'carissa82@kris.com', 0, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (15, 'eum', 'Incidunt ut placeat autem fuga dolorem quis. Ducimus provident architecto repellat itaque ad qui magni hic. Eos eius molestiae harum praesentium iure perferendis ut deserunt.', NULL, '1985-01-17 12:00:25', NULL, NULL, 'cremin.ahmed@yahoo.com', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (16, 'deleniti', 'In explicabo quia nesciunt earum. Eligendi blanditiis laboriosam aspernatur. Non rerum culpa ratione facilis.', NULL, '2001-03-16 23:32:07', NULL, NULL, 'daniel.ruben@barton.biz', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (17, 'perspiciatis', 'A porro veniam amet non inventore. Ab qui ullam sunt cupiditate est est sed expedita. Minus nihil qui doloribus.', NULL, '1981-07-24 03:08:00', NULL, NULL, 'danielle.kozey@spencercrist.com', 1, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (18, 'error', 'Ut inventore placeat unde et. Et repudiandae excepturi id odit deserunt. Libero autem eos voluptatibus. Illo velit qui dolorem culpa nam dicta.', NULL, '1999-09-18 15:07:39', NULL, NULL, 'darwin93@olsonoconner.com', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (19, 'quasi', 'Inventore quasi deleniti repellat qui aut consectetur hic. Voluptatem in adipisci necessitatibus harum nam quaerat similique dolorum. Fuga illo temporibus consectetur qui.', NULL, '1981-01-29 22:10:46', NULL, NULL, 'davis.kelsie@gmail.com', 0, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (20, 'magnam', 'Sunt et exercitationem itaque. Impedit repudiandae occaecati animi voluptates debitis. Dignissimos ut quam vitae quo tempore repellat aliquam.', NULL, '1991-08-13 02:26:30', NULL, NULL, 'dibbert.amya@yahoo.com', 0, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (21, 'provident', 'Ab placeat nulla consequatur sit aut quae maiores. Sapiente aut vitae ea fugiat illum sit delectus. Non natus modi eum repudiandae et quaerat dolores tempore. Quod saepe at sit a eligendi in.', NULL, '2000-05-09 15:11:00', NULL, NULL, 'domenica59@hand.com', 1, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (22, 'id', 'Delectus porro rem fugiat provident ut quia. Aut exercitationem illo quis id ea rem sint a. Quae ad quae fuga alias enim officia.', NULL, '2001-11-27 15:43:32', NULL, NULL, 'doyle.gideon@kuhlman.info', 0, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (23, 'omnis', 'Occaecati tempore quia blanditiis rerum. Hic laudantium necessitatibus sint modi esse. Minus possimus modi autem et hic voluptate ipsam.', NULL, '1983-04-27 15:06:44', NULL, NULL, 'ecronin@hotmail.com', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (24, 'perspiciatis', 'Rerum quidem sunt rerum a. Pariatur qui quod minima a quas repellendus consequatur. Accusamus totam nihil blanditiis ab asperiores.', NULL, '1987-10-06 16:15:46', NULL, NULL, 'effertz.adolphus@yahoo.com', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (25, 'est', 'Numquam et facere animi velit asperiores et laborum ipsum. Similique exercitationem voluptate ullam quis expedita et tempore. Asperiores perferendis quis consequatur beatae a veritatis ut pariatur.', NULL, '2005-08-07 20:42:54', NULL, NULL, 'eino53@hotmail.com', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (26, 'sed', 'Quia sint dolores non non et est. Quis ad deserunt id vero incidunt eligendi. Voluptatum quas qui odit laborum. Sint consectetur aperiam et distinctio.', NULL, '1974-02-23 21:07:59', NULL, NULL, 'elfrieda.breitenberg@strosin.com', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (27, 'temporibus', 'Cupiditate eius occaecati nobis eum iusto doloremque blanditiis. Eum modi illum exercitationem officia. Voluptatem deserunt recusandae minus quidem saepe.', NULL, '2014-12-21 14:31:11', NULL, NULL, 'elsa.rosenbaum@gmail.com', 0, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (28, 'omnis', 'Cumque sint voluptatum mollitia. Voluptates omnis quia accusamus nemo qui. Nihil dolores aliquid molestias vitae suscipit numquam.', NULL, '1978-07-12 00:56:43', NULL, NULL, 'emmanuelle22@robel.biz', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (29, 'id', 'Qui voluptatibus deleniti nam praesentium iusto eos nisi. Aliquam ea molestias magni consequatur aspernatur iste voluptas et. Nam voluptate voluptates voluptates aliquam ut.', NULL, '2014-12-26 00:31:25', NULL, NULL, 'emmy24@turcotte.com', 1, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (30, 'neque', 'Consequuntur sint ut nesciunt accusantium distinctio repellendus tenetur. Qui qui sit et. Voluptatem rerum autem velit autem voluptatem suscipit. Labore earum ex possimus.', NULL, '1983-09-11 04:46:03', NULL, NULL, 'fcrooks@yahoo.com', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (31, 'temporibus', 'Dolorem molestiae fugiat perspiciatis. Alias voluptatum sunt sint optio quisquam.', NULL, '2020-06-02 14:11:50', NULL, NULL, 'gavin84@beatty.net', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (32, 'et', 'Laboriosam laborum repellendus nobis et maiores quis repellendus et. Ab deserunt ipsam iste. Cum et odio error sequi odit expedita. Sed minima dolore aperiam dolore facere suscipit.', NULL, '2000-10-25 17:08:58', NULL, NULL, 'gdibbert@yahoo.com', 0, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (33, 'voluptatem', 'Vitae ullam ex iste. Aut natus optio laboriosam esse magni. Et modi nisi at aut. Nisi qui ducimus aliquid ut nam.', NULL, '2000-07-14 02:41:43', NULL, NULL, 'george92@hahn.com', 0, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (34, 'est', 'Cumque velit et ipsam et. Fuga dolore alias esse voluptates rerum illum. Ut laborum aut ut. Earum corporis qui eum sunt.', NULL, '2003-08-28 11:12:30', NULL, NULL, 'glover.maida@hoppe.biz', 1, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (35, 'quia', 'Nemo quidem quisquam doloribus excepturi culpa. Voluptas voluptatem sint architecto vel perferendis dolorem. Qui nam debitis enim vel sed animi qui iusto.', NULL, '1990-01-24 10:43:17', NULL, NULL, 'gonzalo52@hotmail.com', 0, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (36, 'et', 'Consequatur porro voluptatum et et et. Saepe consequuntur in iusto unde. A aut ut porro earum architecto molestiae.', NULL, '2006-06-09 01:34:19', NULL, NULL, 'grant.jonas@gmail.com', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (37, 'voluptatem', 'Et quo itaque accusantium nam asperiores voluptates. Cum voluptas praesentium vitae autem.', NULL, '1997-02-03 12:40:24', NULL, NULL, 'hartmann.luigi@hotmail.com', 0, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (38, 'expedita', 'Quas at velit quasi harum est molestiae repellendus. Molestiae sed saepe ea cumque in ut et.', NULL, '1996-06-19 07:25:15', NULL, NULL, 'heaney.jovan@hotmail.com', 1, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (39, 'sed', 'Est maiores adipisci culpa illum nam rerum sed. Qui qui sint autem. Non maiores quod neque eveniet suscipit voluptatem. Ullam sed ratione eius et asperiores quas. Soluta ipsa enim id.', NULL, '1980-07-08 10:14:22', NULL, NULL, 'heaven31@cremin.com', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (40, 'expedita', 'Nulla sit ab eligendi sit illum est. Dolorem vero minus eos alias beatae. Laborum natus sint ut et ex. Eaque iure fuga qui eum.', NULL, '1995-10-16 20:02:02', NULL, NULL, 'hodkiewicz.ryleigh@osinski.net', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (41, 'rem', 'Beatae sunt odit aperiam tenetur tempora. Minima voluptate voluptas nobis dolorem veritatis aliquid. Amet qui omnis alias aut dolorem mollitia harum.', NULL, '1974-03-27 08:46:16', NULL, NULL, 'ikessler@yahoo.com', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (42, 'nihil', 'Excepturi quo sed ducimus incidunt consequatur reiciendis. Autem tempore eum fugit voluptatem porro nesciunt. Dolorem voluptatem fuga laboriosam consequatur tempore provident nostrum magnam.', NULL, '2002-11-12 23:57:18', NULL, NULL, 'ipouros@hotmail.com', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (43, 'vero', 'Aliquam ut ut sint id aut reprehenderit pariatur. Non vitae quo dolorem dicta delectus hic omnis molestiae. Expedita ut est aut sit. Distinctio dolorem vel ducimus explicabo quam earum.', NULL, '1983-06-23 18:59:05', NULL, NULL, 'ivory.ward@gmail.com', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (44, 'ipsum', 'Quia quod inventore ut eos praesentium aut. Assumenda et dolorem in architecto. Reiciendis iste molestiae dignissimos dignissimos sint quis.', NULL, '2000-10-13 00:32:20', NULL, NULL, 'jaylin51@blickwillms.net', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (45, 'repellendus', 'Non quia voluptatibus consequatur. Illum provident labore ex suscipit aut quam.', NULL, '2008-02-04 01:50:19', NULL, NULL, 'johnson.nichole@bailey.net', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (46, 'nam', 'Eum soluta aut ipsam. Dolor vitae beatae voluptatem vero sequi. Et voluptatem autem error voluptatem.', NULL, '1995-12-16 03:34:34', NULL, NULL, 'jrowe@osinski.org', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (47, 'voluptate', 'Consequatur veritatis iure maxime porro tempora. Maxime culpa enim natus quis laudantium. Dolore ad aspernatur aut molestiae.', NULL, '1991-04-16 22:21:30', NULL, NULL, 'jschuppe@gmail.com', 1, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (48, 'id', 'Beatae illum aut est quam minus labore. Et aliquam adipisci totam dolor explicabo occaecati esse sint. Enim voluptates odio dolorem.', NULL, '1971-03-05 04:38:44', NULL, NULL, 'kari87@beahan.info', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (49, 'et', 'Quia doloremque suscipit aut ut quos. Minus et nostrum sunt aut impedit cumque et. Qui voluptates quod vel dolores perferendis voluptas fugit. Qui numquam eius porro id.', NULL, '2000-12-23 13:29:28', NULL, NULL, 'katherine27@leuschke.com', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (50, 'earum', 'Et dolorem quo est veritatis. Et assumenda inventore dolores veritatis. Non tempore omnis eum voluptates. Recusandae consequuntur sed voluptatum asperiores distinctio.', NULL, '1975-06-19 23:51:26', NULL, NULL, 'keeling.grayce@langfunk.com', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (51, 'eius', 'Omnis vel eveniet aut dicta. Error accusamus molestiae quis. Fugiat cupiditate aperiam ducimus et. Non libero unde vel quia.', NULL, '1977-05-21 06:09:05', NULL, NULL, 'keira.haag@feest.com', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (52, 'mollitia', 'Placeat incidunt qui excepturi omnis perferendis. Sequi ab quia beatae praesentium nisi voluptatum.', NULL, '2019-02-04 10:04:12', NULL, NULL, 'kory15@hotmail.com', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (53, 'velit', 'Nihil ab quam et tempora voluptates a. Repellat rerum accusantium id facere cum possimus. Necessitatibus magni molestiae voluptatem et expedita eum.', NULL, '2010-12-19 23:27:49', NULL, NULL, 'laisha.jerde@gleichnersawayn.org', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (54, 'animi', 'Perspiciatis dolorem eos exercitationem incidunt quia. Sit perferendis iste dolor incidunt at est iusto facilis. Nostrum magnam et saepe inventore magni.', NULL, '2006-11-07 02:53:30', NULL, NULL, 'laron.gibson@haley.biz', 0, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (55, 'asperiores', 'Laborum dicta libero aut eos. Autem et et quia cumque deserunt et ullam.', NULL, '2001-12-14 10:19:09', NULL, NULL, 'leda73@johns.com', 1, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (56, 'incidunt', 'Ab rerum ab et quos eos expedita repellendus. Placeat sit voluptatem asperiores recusandae explicabo voluptatibus. Reiciendis repellendus harum suscipit officiis.', NULL, '2014-07-11 10:35:32', NULL, NULL, 'lindsey.kihn@gmail.com', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (57, 'doloribus', 'Vel hic rem qui aliquam quasi dolore doloribus. Beatae architecto omnis sed totam vel. Laudantium provident iure tenetur eos. Ut ea voluptatibus eum cupiditate officia dolorem.', NULL, '1979-07-17 00:01:21', NULL, NULL, 'litzy46@gmail.com', 0, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (58, 'molestiae', 'Earum quo numquam in perferendis exercitationem culpa est. Minima sit quisquam error nemo cupiditate ut. Blanditiis consectetur nobis est vel facere odio.', NULL, '2002-05-10 06:53:24', NULL, NULL, 'loyal.gibson@gmail.com', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (59, 'aut', 'Cumque sit rerum molestiae. Id et dignissimos quia accusamus quis quasi architecto est. Aperiam est sapiente animi nulla. Et nemo quos ut quisquam amet.', NULL, '1990-02-26 22:46:34', NULL, NULL, 'ludwig05@bruen.com', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (60, 'non', 'Sint assumenda necessitatibus rem placeat iusto. Quisquam esse aut quia aut dolore. Eligendi laudantium ullam sit ut natus. Voluptatibus distinctio est ut dolor placeat.', NULL, '2002-04-26 22:22:05', NULL, NULL, 'mable35@daugherty.info', 0, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (61, 'saepe', 'Iure omnis est laborum sit magnam. Aut error qui quia illum vero itaque eligendi aut.\nAb numquam aut minima voluptate. Quaerat facilis quis unde quam nulla veniam similique.', NULL, '1981-10-14 13:18:15', NULL, NULL, 'madonna.littel@markswiza.org', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (62, 'debitis', 'In est id in eius. Ab enim tenetur placeat sunt qui dolores. Voluptatem quia odio quaerat libero et ut.', NULL, '2007-11-03 10:35:06', NULL, NULL, 'malachi57@yahoo.com', 0, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (63, 'ut', 'Reiciendis quaerat tempora sit et magnam aut. Sed eos repellendus quod odit magnam quisquam. Molestiae aspernatur nostrum dolor repudiandae temporibus.', NULL, '1971-07-12 09:20:40', NULL, NULL, 'micheal26@gmail.com', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (64, 'soluta', 'Nesciunt placeat reprehenderit laboriosam fugiat. Quae impedit est pariatur qui. Deserunt excepturi repudiandae officia culpa et quis.', NULL, '2014-09-19 14:55:52', NULL, NULL, 'milan.jaskolski@waters.com', 1, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (65, 'quo', 'Mollitia sunt asperiores beatae. Facere repellat dolorem expedita inventore. Sint mollitia numquam cupiditate totam voluptatem facilis et.', NULL, '1987-03-09 06:15:05', NULL, NULL, 'mjohnson@rath.biz', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (66, 'possimus', 'Eum inventore et esse nam eos velit reprehenderit. Quo voluptates labore sit et quia occaecati recusandae ex. Autem dolorem illum voluptatibus cupiditate nihil repudiandae.', NULL, '1979-11-05 16:07:11', NULL, NULL, 'msatterfield@bauch.com', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (67, 'voluptatem', 'Molestias sed aut voluptas ipsum iste velit autem. Doloremque voluptas animi repellat iusto at ea error cupiditate. Ipsam a a ut cupiditate debitis.', NULL, '1970-01-22 02:41:14', NULL, NULL, 'narciso.rau@rice.com', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (68, 'unde', 'Consequatur amet non saepe sed voluptates cum quia. Et deserunt consequatur sunt perferendis dolores nihil. Quidem qui a quae eos non quae aperiam.', NULL, '1989-04-26 13:36:53', NULL, NULL, 'ndoyle@murphy.com', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (69, 'asperiores', 'Repellat amet dolore laudantium soluta a quasi et. Quam rerum beatae vel ut sed. Corporis est quis explicabo eos consequatur non molestiae. Explicabo repudiandae labore necessitatibus non.', NULL, '2006-03-08 08:41:48', NULL, NULL, 'nortiz@keebler.com', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (70, 'delectus', 'Ducimus animi facere et iusto omnis. Ad repellat qui nostrum pariatur eaque maxime exercitationem. Vero nam ut quia quisquam. Tempora quis molestiae ad.', NULL, '1995-07-23 17:37:17', NULL, NULL, 'nprosacco@gmail.com', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (71, 'molestias', 'Velit aut quo officiis. Qui voluptas deleniti sunt qui aut. Rerum iure non dolor facere aut voluptatibus repellendus.\nUt possimus nobis vel qui. Quasi sed aut amet sit omnis eos consequuntur.', NULL, '2016-05-03 19:41:11', NULL, NULL, 'nrobel@luettgenstoltenberg.com', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (72, 'repudiandae', 'Deleniti recusandae repellendus cum unde ducimus perspiciatis reiciendis. Omnis deleniti dolorum maiores aut et. Autem qui veritatis ut quia.', NULL, '2010-07-13 23:29:23', NULL, NULL, 'omonahan@yahoo.com', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (73, 'quis', 'Est adipisci omnis in rerum omnis numquam consectetur aut. Porro incidunt autem nemo placeat libero ipsum. Et sunt autem ratione esse vero quia numquam.', NULL, '1986-07-31 07:33:25', NULL, NULL, 'paltenwerth@spencerhagenes.com', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (74, 'vitae', 'Magni alias nam soluta earum sit rerum. Quia molestias neque aut quisquam rem temporibus. Voluptatem aliquid maxime ducimus similique ut laborum dolor quod.', NULL, '2003-05-23 00:35:04', NULL, NULL, 'rdouglas@rosenbaum.com', 1, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (75, 'perferendis', 'Rerum non aperiam repudiandae enim ea quaerat quis. Id in omnis consequatur cum nobis suscipit. Qui eligendi ratione ut in illum eius aut eum.', NULL, '1981-06-20 20:19:53', NULL, NULL, 'reinger.kailyn@pacocha.com', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (76, 'rem', 'Alias explicabo voluptatem aliquam hic molestiae vel. A dolorem soluta magnam aut natus. Rerum cum qui veritatis porro excepturi qui. Voluptatem et et enim quis officiis nihil.', NULL, '2021-11-08 20:28:17', NULL, NULL, 'rhea.doyle@baumbachmills.net', 0, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (77, 'itaque', 'Blanditiis ut aut quibusdam qui consequatur. Incidunt sed tempora voluptatem asperiores. Quia voluptates error qui rerum qui. Qui eos quam ipsam nesciunt exercitationem.', NULL, '1987-01-24 23:50:02', NULL, NULL, 'robyn88@tremblaygrimes.com', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (78, 'numquam', 'Sit aut dignissimos qui aspernatur sed dolor harum. Voluptatem qui velit rerum quia. Distinctio magnam quas nam omnis at facere. Doloribus et a qui minima nam voluptas sed.', NULL, '2021-06-24 13:21:11', NULL, NULL, 'rodrick94@sporer.com', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (79, 'consequatur', 'Animi ducimus deleniti et quia maiores omnis. Esse qui sed cumque dolor accusamus maxime eaque. Corporis aut blanditiis non vitae quo ut esse. Natus ea aut aut sit.', NULL, '2015-02-23 05:19:00', NULL, NULL, 'sauer.narciso@oberbrunner.com', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (80, 'deleniti', 'Consequuntur omnis commodi nihil ex nostrum illo. Aut fuga consequatur harum aut.', NULL, '1975-01-05 17:53:07', NULL, NULL, 'sawayn.jody@gmail.com', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (81, 'ut', 'Voluptate omnis necessitatibus dolorem incidunt nisi. Veniam ratione eaque ex quia dicta libero voluptatem. Sit corporis corrupti aut quos. Voluptatibus aut libero ipsum hic sit quam.', NULL, '1971-04-08 18:30:57', NULL, NULL, 'schulist.shania@glover.biz', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (82, 'sed', 'Laborum sint dolor ducimus iure aut dolorum totam. Rerum voluptatibus nihil cumque ipsa sed. Doloremque et tenetur hic sit maiores.', NULL, '2018-04-15 14:31:30', NULL, NULL, 'schumm.hadley@cassinanderson.org', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (83, 'excepturi', 'Consectetur at voluptatem beatae. Repellat ut dolor possimus minima et ratione fugiat ab. Non nihil eveniet quam reprehenderit. Autem eaque maiores ut quibusdam explicabo.', NULL, '2013-12-05 02:40:01', NULL, NULL, 'skyla25@rath.com', 0, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (84, 'fuga', 'Voluptatem sint eos soluta. Consequatur ut eum modi a amet non vitae minima. Quis eligendi perferendis impedit illo et omnis et.', NULL, '1997-07-05 11:13:55', NULL, NULL, 'smraz@yahoo.com', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (85, 'sunt', 'Omnis saepe rerum qui totam expedita consequatur. Debitis voluptatibus tenetur eveniet ipsa. Veritatis qui in earum in.', NULL, '1979-01-30 21:47:35', NULL, NULL, 'sophia.glover@hotmail.com', 0, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (86, 'quam', 'Earum porro quam suscipit aliquam qui. Ducimus nostrum ut neque voluptas. Quam ad nesciunt eius tenetur non laudantium sint.', NULL, '2020-01-19 00:01:01', NULL, NULL, 'sophia30@yahoo.com', 0, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (87, 'sit', 'Iure facilis cupiditate dolores recusandae labore saepe. Omnis quam repellat soluta ipsum. Fugiat aut amet nobis corrupti in.', NULL, '2023-01-27 15:34:55', NULL, NULL, 'ssteuber@feil.org', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (88, 'quas', 'Eum quis et quo. Quidem repellendus non qui soluta molestiae occaecati quam. Est reprehenderit corrupti quam.', NULL, '2011-09-27 19:53:51', NULL, NULL, 'talia75@lang.com', 0, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (89, 'veniam', 'Neque ut exercitationem est. Dolor voluptatem amet quas saepe in provident. Qui expedita sint aut voluptas. Sapiente ut vitae molestiae. Ut asperiores architecto vel vitae sint qui.', NULL, '2004-08-14 02:05:33', NULL, NULL, 'tamara.greenholt@strosin.net', 1, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (90, 'fugit', 'Consectetur illo quo molestiae veritatis dicta porro est et. Non vitae magnam dolorem praesentium dolorum.', NULL, '2013-03-09 21:54:45', NULL, NULL, 'toney.veum@morarheathcote.biz', 1, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (91, 'hic', 'Officia aut doloremque omnis unde quisquam. Blanditiis ut voluptas cupiditate alias qui. Quo minus sunt repellendus tempora iure officiis nostrum.', NULL, '1988-11-18 10:23:39', NULL, NULL, 'unicolas@stoltenberg.com', 1, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (92, 'deleniti', 'Eos quos non tenetur eos minima ullam. Dolores aut sit eum deleniti voluptatem corrupti ipsa. Est rerum id dolor autem dolor et sit quibusdam.', NULL, '2009-04-18 12:24:13', NULL, NULL, 'vicky48@yahoo.com', 0, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (93, 'quasi', 'Omnis iusto ab optio et vitae nostrum. Culpa et excepturi fuga provident debitis. Qui quasi sit omnis aut ea. Rerum qui doloribus itaque vero et impedit delectus.', NULL, '1970-11-04 07:47:43', NULL, NULL, 'willms.coby@hackett.com', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (94, 'accusantium', 'Cupiditate molestiae facere quibusdam quia facilis. Amet sunt molestias numquam dolorem.\nPorro qui qui et quibusdam totam fugit. Recusandae modi sequi voluptas voluptas fuga. Nisi voluptas vel enim.', NULL, '1972-10-30 16:37:25', NULL, NULL, 'wisozk.magnolia@auerdavis.com', 1, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (95, 'voluptatem', 'Aut tempore minus laudantium fugit non voluptatem. Eum deleniti laboriosam possimus incidunt nisi itaque. Qui ut quia libero accusamus distinctio.', NULL, '2003-11-14 12:15:36', NULL, NULL, 'wmarks@homenick.com', 0, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (96, 'eaque', 'Vel porro et sed aut voluptate sunt. Ut ex consequatur temporibus iusto accusantium sit modi.', NULL, '1977-07-24 06:47:09', NULL, NULL, 'wunsch.demario@rau.biz', 1, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (97, 'praesentium', 'Est in in quo aut quo similique. Tenetur doloribus reiciendis nihil. Numquam ipsam in qui quod expedita. Atque nesciunt rerum veritatis et nesciunt.', NULL, '1997-10-31 10:29:03', NULL, NULL, 'zboncak.yessenia@hotmail.com', 1, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (98, 'aut', 'Et ducimus ipsa consequatur. Odio accusantium aliquam consequatur et at temporibus ut excepturi.', NULL, '1973-02-17 10:33:27', NULL, NULL, 'zhermann@schuster.net', 1, 0, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (99, 'voluptas', 'Vel aperiam soluta odio distinctio illum. Magni dolore dignissimos deleniti reiciendis ratione et id ipsa. In ipsum accusamus similique minima temporibus adipisci.', NULL, '1976-12-29 07:30:12', NULL, NULL, 'zita.hamill@schowalterbeatty.net', 0, 1, NULL);
INSERT INTO `mail` (`id`, `label`, `content`, `attachment`, `created_at`, `cc`, `bcc`, `sent_by`, `is_read`, `is_starred`, `sent_to`) VALUES (100, 'magni', 'Sed voluptatem dolores totam. Ut enim dolores et sint. Assumenda consequatur corrupti aperiam quaerat ratione consequatur.', NULL, '2021-02-25 04:28:54', NULL, NULL, 'zryan@yahoo.com', 0, 0, NULL);



#
# TABLE STRUCTURE FOR: draft
#

DROP TABLE IF EXISTS `draft`;

CREATE TABLE `draft` (
  `mail_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  KEY `draft_user` (`user_id`),
  KEY `draft_mail` (`mail_id`),
  CONSTRAINT `draft_mail` FOREIGN KEY (`mail_id`) REFERENCES `mail` (`id`),
  CONSTRAINT `draft_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (1, 'abbott.annabelle@mertz.org');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (2, 'abraham.feil@yahoo.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (3, 'abshire.estella@hotmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (4, 'adella28@yahoo.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (5, 'alessia68@yahoo.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (6, 'alfred15@hotmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (7, 'annabelle35@hotmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (8, 'arvel57@gmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (9, 'bankunding@hammeslesch.org');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (10, 'borer.valentina@gmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (11, 'botsford.fabian@gmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (12, 'breana.keeling@jerde.biz');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (13, 'cameron11@predovic.biz');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (14, 'carissa82@kris.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (15, 'cremin.ahmed@yahoo.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (16, 'daniel.ruben@barton.biz');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (17, 'danielle.kozey@spencercrist.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (18, 'darwin93@olsonoconner.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (19, 'davis.kelsie@gmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (20, 'dibbert.amya@yahoo.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (21, 'domenica59@hand.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (22, 'doyle.gideon@kuhlman.info');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (23, 'ecronin@hotmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (24, 'effertz.adolphus@yahoo.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (25, 'eino53@hotmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (26, 'elfrieda.breitenberg@strosin.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (27, 'elsa.rosenbaum@gmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (28, 'emmanuelle22@robel.biz');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (29, 'emmy24@turcotte.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (30, 'fcrooks@yahoo.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (31, 'gavin84@beatty.net');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (32, 'gdibbert@yahoo.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (33, 'george92@hahn.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (34, 'glover.maida@hoppe.biz');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (35, 'gonzalo52@hotmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (36, 'grant.jonas@gmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (37, 'hartmann.luigi@hotmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (38, 'heaney.jovan@hotmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (39, 'heaven31@cremin.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (40, 'hodkiewicz.ryleigh@osinski.net');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (41, 'ikessler@yahoo.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (42, 'ipouros@hotmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (43, 'ivory.ward@gmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (44, 'jaylin51@blickwillms.net');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (45, 'johnson.nichole@bailey.net');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (46, 'jrowe@osinski.org');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (47, 'jschuppe@gmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (48, 'kari87@beahan.info');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (49, 'katherine27@leuschke.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (50, 'keeling.grayce@langfunk.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (51, 'keira.haag@feest.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (52, 'kory15@hotmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (53, 'laisha.jerde@gleichnersawayn.org');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (54, 'laron.gibson@haley.biz');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (55, 'leda73@johns.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (56, 'lindsey.kihn@gmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (57, 'litzy46@gmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (58, 'loyal.gibson@gmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (59, 'ludwig05@bruen.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (60, 'mable35@daugherty.info');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (61, 'madonna.littel@markswiza.org');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (62, 'malachi57@yahoo.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (63, 'micheal26@gmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (64, 'milan.jaskolski@waters.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (65, 'mjohnson@rath.biz');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (66, 'msatterfield@bauch.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (67, 'narciso.rau@rice.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (68, 'ndoyle@murphy.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (69, 'nortiz@keebler.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (70, 'nprosacco@gmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (71, 'nrobel@luettgenstoltenberg.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (72, 'omonahan@yahoo.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (73, 'paltenwerth@spencerhagenes.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (74, 'rdouglas@rosenbaum.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (75, 'reinger.kailyn@pacocha.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (76, 'rhea.doyle@baumbachmills.net');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (77, 'robyn88@tremblaygrimes.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (78, 'rodrick94@sporer.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (79, 'sauer.narciso@oberbrunner.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (80, 'sawayn.jody@gmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (81, 'schulist.shania@glover.biz');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (82, 'schumm.hadley@cassinanderson.org');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (83, 'skyla25@rath.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (84, 'smraz@yahoo.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (85, 'sophia.glover@hotmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (86, 'sophia30@yahoo.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (87, 'ssteuber@feil.org');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (88, 'talia75@lang.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (89, 'tamara.greenholt@strosin.net');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (90, 'toney.veum@morarheathcote.biz');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (91, 'unicolas@stoltenberg.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (92, 'vicky48@yahoo.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (93, 'willms.coby@hackett.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (94, 'wisozk.magnolia@auerdavis.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (95, 'wmarks@homenick.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (96, 'wunsch.demario@rau.biz');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (97, 'zboncak.yessenia@hotmail.com');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (98, 'zhermann@schuster.net');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (99, 'zita.hamill@schowalterbeatty.net');
INSERT INTO `draft` (`mail_id`, `user_id`) VALUES (100, 'zryan@yahoo.com');


#
# TABLE STRUCTURE FOR: inbox
#

DROP TABLE IF EXISTS `inbox`;

CREATE TABLE `inbox` (
  `mail_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  KEY `inbox_user` (`user_id`),
  KEY `inbox_mail` (`mail_id`),
  CONSTRAINT `inbox_mail` FOREIGN KEY (`mail_id`) REFERENCES `mail` (`id`),
  CONSTRAINT `inbox_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (1, 'abbott.annabelle@mertz.org');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (2, 'abraham.feil@yahoo.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (3, 'abshire.estella@hotmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (4, 'adella28@yahoo.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (5, 'alessia68@yahoo.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (6, 'alfred15@hotmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (7, 'annabelle35@hotmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (8, 'arvel57@gmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (9, 'bankunding@hammeslesch.org');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (10, 'borer.valentina@gmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (11, 'botsford.fabian@gmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (12, 'breana.keeling@jerde.biz');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (13, 'cameron11@predovic.biz');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (14, 'carissa82@kris.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (15, 'cremin.ahmed@yahoo.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (16, 'daniel.ruben@barton.biz');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (17, 'danielle.kozey@spencercrist.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (18, 'darwin93@olsonoconner.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (19, 'davis.kelsie@gmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (20, 'dibbert.amya@yahoo.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (21, 'domenica59@hand.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (22, 'doyle.gideon@kuhlman.info');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (23, 'ecronin@hotmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (24, 'effertz.adolphus@yahoo.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (25, 'eino53@hotmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (26, 'elfrieda.breitenberg@strosin.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (27, 'elsa.rosenbaum@gmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (28, 'emmanuelle22@robel.biz');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (29, 'emmy24@turcotte.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (30, 'fcrooks@yahoo.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (31, 'gavin84@beatty.net');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (32, 'gdibbert@yahoo.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (33, 'george92@hahn.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (34, 'glover.maida@hoppe.biz');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (35, 'gonzalo52@hotmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (36, 'grant.jonas@gmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (37, 'hartmann.luigi@hotmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (38, 'heaney.jovan@hotmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (39, 'heaven31@cremin.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (40, 'hodkiewicz.ryleigh@osinski.net');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (41, 'ikessler@yahoo.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (42, 'ipouros@hotmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (43, 'ivory.ward@gmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (44, 'jaylin51@blickwillms.net');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (45, 'johnson.nichole@bailey.net');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (46, 'jrowe@osinski.org');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (47, 'jschuppe@gmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (48, 'kari87@beahan.info');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (49, 'katherine27@leuschke.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (50, 'keeling.grayce@langfunk.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (51, 'keira.haag@feest.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (52, 'kory15@hotmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (53, 'laisha.jerde@gleichnersawayn.org');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (54, 'laron.gibson@haley.biz');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (55, 'leda73@johns.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (56, 'lindsey.kihn@gmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (57, 'litzy46@gmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (58, 'loyal.gibson@gmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (59, 'ludwig05@bruen.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (60, 'mable35@daugherty.info');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (61, 'madonna.littel@markswiza.org');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (62, 'malachi57@yahoo.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (63, 'micheal26@gmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (64, 'milan.jaskolski@waters.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (65, 'mjohnson@rath.biz');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (66, 'msatterfield@bauch.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (67, 'narciso.rau@rice.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (68, 'ndoyle@murphy.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (69, 'nortiz@keebler.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (70, 'nprosacco@gmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (71, 'nrobel@luettgenstoltenberg.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (72, 'omonahan@yahoo.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (73, 'paltenwerth@spencerhagenes.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (74, 'rdouglas@rosenbaum.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (75, 'reinger.kailyn@pacocha.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (76, 'rhea.doyle@baumbachmills.net');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (77, 'robyn88@tremblaygrimes.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (78, 'rodrick94@sporer.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (79, 'sauer.narciso@oberbrunner.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (80, 'sawayn.jody@gmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (81, 'schulist.shania@glover.biz');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (82, 'schumm.hadley@cassinanderson.org');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (83, 'skyla25@rath.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (84, 'smraz@yahoo.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (85, 'sophia.glover@hotmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (86, 'sophia30@yahoo.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (87, 'ssteuber@feil.org');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (88, 'talia75@lang.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (89, 'tamara.greenholt@strosin.net');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (90, 'toney.veum@morarheathcote.biz');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (91, 'unicolas@stoltenberg.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (92, 'vicky48@yahoo.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (93, 'willms.coby@hackett.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (94, 'wisozk.magnolia@auerdavis.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (95, 'wmarks@homenick.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (96, 'wunsch.demario@rau.biz');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (97, 'zboncak.yessenia@hotmail.com');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (98, 'zhermann@schuster.net');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (99, 'zita.hamill@schowalterbeatty.net');
INSERT INTO `inbox` (`mail_id`, `user_id`) VALUES (100, 'zryan@yahoo.com');


#
# TABLE STRUCTURE FOR: spam
#

DROP TABLE IF EXISTS `spam`;

CREATE TABLE `spam` (
  `user_id` varchar(255) NOT NULL,
  `mail_id` int(11) NOT NULL,
  KEY `spam_user` (`user_id`),
  KEY `spam_mail` (`mail_id`),
  CONSTRAINT `spam_mail` FOREIGN KEY (`mail_id`) REFERENCES `mail` (`id`),
  CONSTRAINT `spam_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('abbott.annabelle@mertz.org', 1);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('abraham.feil@yahoo.com', 2);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('abshire.estella@hotmail.com', 3);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('adella28@yahoo.com', 4);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('alessia68@yahoo.com', 5);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('alfred15@hotmail.com', 6);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('annabelle35@hotmail.com', 7);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('arvel57@gmail.com', 8);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('bankunding@hammeslesch.org', 9);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('borer.valentina@gmail.com', 10);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('botsford.fabian@gmail.com', 11);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('breana.keeling@jerde.biz', 12);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('cameron11@predovic.biz', 13);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('carissa82@kris.com', 14);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('cremin.ahmed@yahoo.com', 15);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('daniel.ruben@barton.biz', 16);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('danielle.kozey@spencercrist.com', 17);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('darwin93@olsonoconner.com', 18);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('davis.kelsie@gmail.com', 19);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('dibbert.amya@yahoo.com', 20);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('domenica59@hand.com', 21);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('doyle.gideon@kuhlman.info', 22);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('ecronin@hotmail.com', 23);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('effertz.adolphus@yahoo.com', 24);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('eino53@hotmail.com', 25);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('elfrieda.breitenberg@strosin.com', 26);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('elsa.rosenbaum@gmail.com', 27);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('emmanuelle22@robel.biz', 28);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('emmy24@turcotte.com', 29);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('fcrooks@yahoo.com', 30);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('gavin84@beatty.net', 31);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('gdibbert@yahoo.com', 32);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('george92@hahn.com', 33);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('glover.maida@hoppe.biz', 34);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('gonzalo52@hotmail.com', 35);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('grant.jonas@gmail.com', 36);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('hartmann.luigi@hotmail.com', 37);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('heaney.jovan@hotmail.com', 38);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('heaven31@cremin.com', 39);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('hodkiewicz.ryleigh@osinski.net', 40);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('ikessler@yahoo.com', 41);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('ipouros@hotmail.com', 42);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('ivory.ward@gmail.com', 43);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('jaylin51@blickwillms.net', 44);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('johnson.nichole@bailey.net', 45);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('jrowe@osinski.org', 46);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('jschuppe@gmail.com', 47);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('kari87@beahan.info', 48);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('katherine27@leuschke.com', 49);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('keeling.grayce@langfunk.com', 50);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('keira.haag@feest.com', 51);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('kory15@hotmail.com', 52);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('laisha.jerde@gleichnersawayn.org', 53);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('laron.gibson@haley.biz', 54);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('leda73@johns.com', 55);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('lindsey.kihn@gmail.com', 56);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('litzy46@gmail.com', 57);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('loyal.gibson@gmail.com', 58);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('ludwig05@bruen.com', 59);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('mable35@daugherty.info', 60);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('madonna.littel@markswiza.org', 61);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('malachi57@yahoo.com', 62);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('micheal26@gmail.com', 63);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('milan.jaskolski@waters.com', 64);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('mjohnson@rath.biz', 65);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('msatterfield@bauch.com', 66);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('narciso.rau@rice.com', 67);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('ndoyle@murphy.com', 68);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('nortiz@keebler.com', 69);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('nprosacco@gmail.com', 70);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('nrobel@luettgenstoltenberg.com', 71);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('omonahan@yahoo.com', 72);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('paltenwerth@spencerhagenes.com', 73);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('rdouglas@rosenbaum.com', 74);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('reinger.kailyn@pacocha.com', 75);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('rhea.doyle@baumbachmills.net', 76);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('robyn88@tremblaygrimes.com', 77);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('rodrick94@sporer.com', 78);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('sauer.narciso@oberbrunner.com', 79);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('sawayn.jody@gmail.com', 80);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('schulist.shania@glover.biz', 81);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('schumm.hadley@cassinanderson.org', 82);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('skyla25@rath.com', 83);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('smraz@yahoo.com', 84);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('sophia.glover@hotmail.com', 85);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('sophia30@yahoo.com', 86);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('ssteuber@feil.org', 87);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('talia75@lang.com', 88);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('tamara.greenholt@strosin.net', 89);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('toney.veum@morarheathcote.biz', 90);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('unicolas@stoltenberg.com', 91);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('vicky48@yahoo.com', 92);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('willms.coby@hackett.com', 93);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('wisozk.magnolia@auerdavis.com', 94);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('wmarks@homenick.com', 95);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('wunsch.demario@rau.biz', 96);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('zboncak.yessenia@hotmail.com', 97);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('zhermann@schuster.net', 98);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('zita.hamill@schowalterbeatty.net', 99);
INSERT INTO `spam` (`user_id`, `mail_id`) VALUES ('zryan@yahoo.com', 100);


#
# TABLE STRUCTURE FOR: trash
#

DROP TABLE IF EXISTS `trash`;

CREATE TABLE `trash` (
  `user_id` varchar(255) NOT NULL,
  `mail_id` int(11) NOT NULL,
  KEY `trash_user` (`user_id`),
  KEY `trash_mail` (`mail_id`),
  CONSTRAINT `trash_mail` FOREIGN KEY (`mail_id`) REFERENCES `mail` (`id`),
  CONSTRAINT `trash_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('abbott.annabelle@mertz.org', 1);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('abraham.feil@yahoo.com', 2);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('abshire.estella@hotmail.com', 3);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('adella28@yahoo.com', 4);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('alessia68@yahoo.com', 5);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('alfred15@hotmail.com', 6);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('annabelle35@hotmail.com', 7);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('arvel57@gmail.com', 8);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('bankunding@hammeslesch.org', 9);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('borer.valentina@gmail.com', 10);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('botsford.fabian@gmail.com', 11);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('breana.keeling@jerde.biz', 12);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('cameron11@predovic.biz', 13);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('carissa82@kris.com', 14);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('cremin.ahmed@yahoo.com', 15);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('daniel.ruben@barton.biz', 16);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('danielle.kozey@spencercrist.com', 17);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('darwin93@olsonoconner.com', 18);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('davis.kelsie@gmail.com', 19);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('dibbert.amya@yahoo.com', 20);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('domenica59@hand.com', 21);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('doyle.gideon@kuhlman.info', 22);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('ecronin@hotmail.com', 23);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('effertz.adolphus@yahoo.com', 24);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('eino53@hotmail.com', 25);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('elfrieda.breitenberg@strosin.com', 26);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('elsa.rosenbaum@gmail.com', 27);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('emmanuelle22@robel.biz', 28);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('emmy24@turcotte.com', 29);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('fcrooks@yahoo.com', 30);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('gavin84@beatty.net', 31);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('gdibbert@yahoo.com', 32);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('george92@hahn.com', 33);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('glover.maida@hoppe.biz', 34);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('gonzalo52@hotmail.com', 35);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('grant.jonas@gmail.com', 36);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('hartmann.luigi@hotmail.com', 37);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('heaney.jovan@hotmail.com', 38);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('heaven31@cremin.com', 39);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('hodkiewicz.ryleigh@osinski.net', 40);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('ikessler@yahoo.com', 41);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('ipouros@hotmail.com', 42);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('ivory.ward@gmail.com', 43);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('jaylin51@blickwillms.net', 44);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('johnson.nichole@bailey.net', 45);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('jrowe@osinski.org', 46);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('jschuppe@gmail.com', 47);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('kari87@beahan.info', 48);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('katherine27@leuschke.com', 49);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('keeling.grayce@langfunk.com', 50);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('keira.haag@feest.com', 51);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('kory15@hotmail.com', 52);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('laisha.jerde@gleichnersawayn.org', 53);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('laron.gibson@haley.biz', 54);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('leda73@johns.com', 55);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('lindsey.kihn@gmail.com', 56);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('litzy46@gmail.com', 57);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('loyal.gibson@gmail.com', 58);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('ludwig05@bruen.com', 59);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('mable35@daugherty.info', 60);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('madonna.littel@markswiza.org', 61);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('malachi57@yahoo.com', 62);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('micheal26@gmail.com', 63);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('milan.jaskolski@waters.com', 64);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('mjohnson@rath.biz', 65);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('msatterfield@bauch.com', 66);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('narciso.rau@rice.com', 67);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('ndoyle@murphy.com', 68);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('nortiz@keebler.com', 69);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('nprosacco@gmail.com', 70);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('nrobel@luettgenstoltenberg.com', 71);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('omonahan@yahoo.com', 72);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('paltenwerth@spencerhagenes.com', 73);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('rdouglas@rosenbaum.com', 74);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('reinger.kailyn@pacocha.com', 75);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('rhea.doyle@baumbachmills.net', 76);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('robyn88@tremblaygrimes.com', 77);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('rodrick94@sporer.com', 78);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('sauer.narciso@oberbrunner.com', 79);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('sawayn.jody@gmail.com', 80);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('schulist.shania@glover.biz', 81);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('schumm.hadley@cassinanderson.org', 82);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('skyla25@rath.com', 83);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('smraz@yahoo.com', 84);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('sophia.glover@hotmail.com', 85);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('sophia30@yahoo.com', 86);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('ssteuber@feil.org', 87);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('talia75@lang.com', 88);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('tamara.greenholt@strosin.net', 89);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('toney.veum@morarheathcote.biz', 90);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('unicolas@stoltenberg.com', 91);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('vicky48@yahoo.com', 92);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('willms.coby@hackett.com', 93);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('wisozk.magnolia@auerdavis.com', 94);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('wmarks@homenick.com', 95);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('wunsch.demario@rau.biz', 96);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('zboncak.yessenia@hotmail.com', 97);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('zhermann@schuster.net', 98);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('zita.hamill@schowalterbeatty.net', 99);
INSERT INTO `trash` (`user_id`, `mail_id`) VALUES ('zryan@yahoo.com', 100);


