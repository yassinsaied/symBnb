-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 08 juin 2021 à 01:10
-- Version du serveur :  10.5.8-MariaDB
-- Version de PHP : 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `symbnb`
--

-- --------------------------------------------------------

--
-- Structure de la table `ad`
--

CREATE TABLE `ad` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `introduction` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rooms` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `avg_rate` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ad`
--

INSERT INTO `ad` (`id`, `title`, `slug`, `price`, `introduction`, `description`, `rooms`, `create_at`, `update_at`, `author_id`, `avg_rate`) VALUES
(323, 'Perferendis sint libero laudantium', 'Perferendis-sint-libero-laudantium', 2058, 'Repellendus iste ea sit inventore. Nihil voluptatem voluptates rerum repudiandae. Omnis dolorem velit dolore quam et modi.', 'mpedit modi sit non rerum nostrum eum vitae. Quia minima ut optio qui molestiae ipsa voluptate. Velit et accusantium dolor iure aut sed vero. Voluptatem quaerat rem suscipit iusto quibusdam rerum dolore.</p><p>Delectus quo voluptatibus impedit qui reprehenderit', 5, '2021-02-18 17:58:56', NULL, 6, 3),
(324, 'Ducimus ea iusto aut veniam', 'Ducimus-ea-iusto-aut-veniam', 551, 'Eum aspernatur quis quaerat ab. Qui quam est unde. Molestiae voluptas harum assumenda quibusdam.', 'perferendis.. Consequuntur eligendi voluptates beatae id voluptatibus voluptatum et. Facilis quaerat sit in nam sapiente non quo. Quidem consectetur ipsa voluptatem est ipsum perferendis et', 4, '2021-02-18 17:58:56', NULL, 6, 5),
(325, 'Asperiores repudiandae veritatis quo', 'Asperiores-repudiandae-veritatis-quo', 388, 'Quam natus unde rerum aut facere. Voluptas ut earum similique assumenda itaque. Provident aliquam ex quidem ex sint sunt molestiae.', 'poribus in qui quaerat corrupti sint mollitia magnam. Quae vero iste ipsa aut mollitia sunt impedit facilis. Ipsam quia aut est nostrum et quisquam. Eveniet numquam unde consequuntur iste eaque est molestiae.', 3, '2021-02-18 17:58:56', NULL, 6, 4),
(326, 'Ea esse repellendus aut doloremque', 'Ea-esse-repellendus-aut-doloremque', 1496, 'Sed quam voluptatem enim illo atque sit iste. Labore quia enim eveniet quo omnis harum ipsam. Quae voluptatibus aliquid ea libero dignissimos atque est.', 'Molestias et sint sint. Reprehenderit fuga recusandae impedit sit nesciunt. Assumenda eaque odit aperiam numquam qui fuga nulla Nostrum quod voluptate maxime odit aspernatur voluptatibus.', 1, '2021-02-18 17:58:56', NULL, 6, NULL),
(327, 'Cupiditate aperiam impedit rerum cum', 'Cupiditate-aperiam-impedit-rerum-cum', 1121, 'Nostrum ea sint non laboriosam omnis. Quasi autem ut quia sunt rem eum. Velit deleniti eaque et exercitationem eveniet sint autem provident.', '<p>Enim nihil modi aut tempora harum a. Aut est eveniet alias impedit. Reprehenderit laudantium ipsam deserunt sunt velit ducimus. Aut quos qui dolorem sed odio laudantium eum.</p><p>Aut molestiae temporibus facere sit.', 3, '2021-02-18 17:58:56', NULL, 6, NULL),
(328, 'Consequatur quidem cupiditate sed aspernatur', 'Consequatur-quidem-cupiditate-sed-aspernatur', 2090, 'Aut et est in. Quod nesciunt occaecati perspiciatis pariatur nisi totam.', 'Repellendus commodi officia tempore earum aut cupiditate sed. Nostrum aliquid amet perferendis facilis ducimus. Ut illum enim voluptatem voluptate iste voluptas sint.</p>', 1, '2021-02-18 17:58:56', NULL, 7, NULL),
(329, 'Magnam earum est maxime quo', 'Magnam-earum-est-maxime-quo', 2400, 'Quidem sint molestiae beatae eveniet. Ut dicta a consectetur commodi.', 'Excepturi accusantium eos magni. Voluptas soluta modi harum placeat eius architecto. Quia ducimus voluptatibus molestiae aut.</p><p>Rerum asperiores voluptatem ducimus corrupti omnis occaecati consequatur.', 4, '2021-02-18 17:58:56', NULL, 7, NULL),
(330, 'Debitis dolorem et ad vel ullam', 'Debitis-dolorem-et-ad-vel-ullam', 1696, 'Voluptates qui harum voluptates molestiae repellat velit nihil. Rerum quia excepturi nostrum quod qui. Omnis voluptate assumenda distinctio accusantium impedit vel aut temporibus.', 'Soluta amet aspernatur doloribus. Omnis non dicta sed omnis soluta. Harum sed voluptate reiciendis. Soluta amet aspernatur doloribus. Omnis non dicta sed omnis soluta. Harum sed voluptate reiciendis.Soluta', 4, '2021-02-18 17:58:56', NULL, 7, NULL),
(331, 'Nobis recusandae voluptas', 'Nobis-recusandae-voluptas', 1835, 'Suscipit vero natus velit amet saepe. Vel molestiae ad et et consequatur.', '<p>Consectetur earum similique maiores tempore id. Qui velit et eos sint corporis. Distinctio aut ipsum non magnam et.hhdsg etndjt', 4, '2021-02-18 17:58:56', NULL, 7, NULL),
(332, 'Est ad eum sint eaque', 'Est-ad-eum-sint-eaque', 1003, 'Nihil mollitia amet qui perferendis aut. Aspernatur doloremque cupiditate voluptate saepe. Omnis provident magnam et.', 'Recusandae reiciendis ea quia facere voluptatum possimus ab. Voluptatem ut qui sed tempore in omnis ea temporibus. Facilis adipisci odio nobis eius.</p><p>Perferendis', 2, '2021-02-18 17:58:56', NULL, 7, NULL),
(333, 'Numquam sit vero', 'Numquam-sit-vero', 855, 'Consequatur ex saepe inventore aperiam aut dolores. Quisquam qui et voluptas illo dolores. Maxime nulla quam cupiditate porro.', 'Eos doloribus qui est adipisci consectetur. Tempore est et non repellendus eius mollitia sequi. Reiciendis quo laborum Ipsa non voluptatem rerum dolore eius animi. Voluptates vero aperiam dolor quasi debitis. Sit minus fuga voluptatum autem', 1, '2021-02-18 17:58:56', NULL, 8, NULL),
(334, 'Veniam aut sint omnis', 'Veniam-aut-sint-omnis', 92, 'Sint quibusdam non voluptatem optio eos consequatur ullam alias. Non sint recusandae quo quibusdam vel deserunt. Dolores porro odio qui et consequatur.', 'Ducimus a non aut aut hic nulla eos. Unde rerum ipsum culpa. Soluta omnis corrupti et animi ea atque harum qui.</p><p>Ut necessitatibus delectus laboriosam ut cupiditate sit voluptatibus. Perferendis eveniet possimus aut quaerat. Eum earum id et aut', 4, '2021-02-18 17:58:56', NULL, 8, NULL),
(335, 'Deleniti voluptas pariatur rem ab', 'Deleniti-voluptas-pariatur-rem-ab', 1681, 'Incidunt totam doloremque maiores est praesentium. Et qui alias cum earum laudantium.', '<p>Ipsa harum ducimus aliquam aut et. Molestiae amet possimus ex natus sint in ut. Voluptates at totam dolorem et nesciunt et quo. Hic veniam voluptas atque voluptas. sit non cupiditate aut non. Hic dolores omnis dolorem nam quodEt aperiam et excepturi sit necessitatibus. Sequi molestiae quas corporis voluptatem eos. Ut non sed est cumque. Quibusdam sunt animi dolores voluptatem velit et consequatur', 3, '2021-02-18 17:58:56', NULL, 8, NULL),
(336, 'Enim error aliquid', 'Enim-error-aliquid', 2262, 'Et non laboriosam eos illum aut quos. Consequatur sit quasi consequatur fugit architecto repellendus aut. Sapiente rerum laborum fugiat inventore.', 'Recusandae rerum est ut inventore quis eveniet inventore. Et ut dignissimos voluptatem at amet consequatur expedita. Et vitae cupiditate vitae perspiciatis asperiores quasi maxime. Cum est sit neque rerum fuga qui dolorem.Quod qui cum incidunt accusantium voluptatum. Qui quod eos error rem est incidunt corporis. Voluptatibus et et animi qui porro.Sequi velit minima ex aut provident. Veniam blanditiis exercitationem atque dolore quidem sunt omnis non.', 5, '2021-02-18 17:58:56', NULL, 8, NULL),
(337, 'Tempora omnis officia est', 'Tempora-omnis-officia-est', 2230, 'Consectetur aperiam architecto dolorem. Quae et et ea omnis aut. Nulla commodi sit omnis animi.', 'Cum nihil eveniet porro voluptatum perferendis. Vero aut facere qui neque neque. Sunt quisquam ullam quasi veritatis suscipit maxime dolor estOdit voluptate laborum laboriosam nisi minima. Corrupti voluptas quibusdam et dolorum expedita. Et non sunt sapiente deleniti quam aliquam. Est dolores voluptas rem omnis. Sint praesentium id consequatur sequi. Mollitia ipsam doloribus temporibus explicabo qui', 5, '2021-02-18 17:58:56', NULL, 8, NULL),
(338, 'Harum saepe animi', 'Harum-saepe-animi', 554, 'Voluptatem nam modi perspiciatis. Vero ut excepturi alias.', 'Ullam consequatur et laboriosam et. Ut possimus ad magnam modi incidunt dolores. Veritatis et molestiae omnis. Nemo perferendis optio minus quaerat.Hic fugit labore iure deserunt molestiae voluptatum reprehenderit. Modi deserunt sit et culpa ut. Aut possimus optio odio sedCorrupti amet quasi quia consequuntur. Saepe architecto maxime excepturi facilis dolorem est expedita.', 5, '2021-02-18 17:58:56', NULL, 9, NULL),
(339, 'Sit commodi velit omnis', 'Sit-commodi-velit-omnis', 250, 'Consequatur aut natus aut dicta porro optio sequi. Iste deserunt modi nisi maiores eligendi dolore ex.', 'Dolores beatae architecto aut est hic voluptatibus. Possimus sint quos at omnis. Eum delectus aut vero et aut. In sit amet saepe aliquid. Assumenda fuga qui voluptas ut.officia voluptates. Dignissimos et reprehenderit animi aliquam eos. fuga qui voluptas ut.officia voluptates. Dignissimos et reprehenderit animi aliquam eos.', 2, '2021-02-18 17:58:56', NULL, 9, NULL),
(340, 'Culpa quae qui', 'Culpa-quae-qui', 890, 'Hic eum dignissimos iusto pariatur. Sit est aliquam corporis et modi placeat. Dolorum est consequatur veritatis eos adipisci nam id quae.', 'Quod ut nesciunt quisquam. Assumenda et soluta veritatis laborum quas repudiandae earum doloremque. Laboriosam et atque exercitationem. Dolorum dicta dolore libero non illo culpa magniCum corporis maxime odit facilis earum. Est accusamus ut ea atque. Veritatis vel perspiciatis ab sint \r\no non illo culpa magniCum corporis maxime odit facilis earum. Est accusamus', 4, '2021-02-18 17:58:56', NULL, 9, NULL),
(341, 'Maxime nam est cupiditate', 'Maxime-nam-est-cupiditate', 929, 'Quos deserunt quidem repudiandae saepe delectus et odio. Ab non at exercitationem.', 'Rerum dolorem autem omnis quibusdam consequatur. Exercitationem non aut iure amet sunt esse. Voluptate quasi voluptas asperiores Sed atque illum culpa debitis repellendus blanditiis fugiat. Qui inventore rerum sequi quos doloremque sapiente. Vel libero velit architecto. Ipsa qui facere recusandae impedit aIllum hic doloremque atque et. Omnis facilis quo voluptas ut qui repellendus. Vero consequatur molestias nihil et. Quos eaque cum nihil placeat voluptas.', 3, '2021-02-18 17:58:56', NULL, 9, NULL),
(343, 'Aut et ipsum odit qui minima', 'Aut-et-ipsum-odit-qui-minima', 295, 'Consectetur impedit qui et hic quis sit. Asperiores pariatur in et molestiae. Quasi id quo recusandae quos omnis neque.', '<p>Velit temporibus dolore ab repudiandae similique. Optio sint esse ea quibusdam enim quisquam.</p><p>Libero cum dolor praesentium qui. Dolores blanditiis soluta laborum ad. Dolore nulla quisquam sequi nemo culpa ea at. Sint eum officiis culpa repellat quas.</p><p>Voluptates quam incidunt quis vitae consequatur libero. Voluptatem nemo doloribus qui odit tempore sed eos. Molestiae libero error quidem iusto.</p><p>Voluptas praesentium sunt veritatis. Dolores asperiores in sed et rerum. Qui dolorum et nobis ut.</p><p>Hic odio dolore consectetur. Quia omnis vel ducimus est unde. Et magni porro esse amet aliquam. Ut aut saepe distinctio sed soluta ut.</p>', 2, '2021-02-18 17:58:56', NULL, 10, NULL),
(344, 'Ullam quos itaque vero', 'Ullam-quos-itaque-vero', 105, 'Veniam velit aperiam eum. Cum facere quia porro omnis quo aut qui voluptas. Veniam repellendus temporibus doloremque cumque architecto veritatis eum.', '<p>Minima veniam nesciunt voluptatem eos dolor aut. Sunt ea dolore quis rerum. Deleniti voluptas quae sequi voluptatem.</p><p>Facilis non et perferendis molestias assumenda necessitatibus ullam. Itaque dolor officia ut voluptatem eius dolore. Nulla praesentium cumque delectus consequuntur officia enim odit. Accusamus sed ut quae ducimus sint ducimus.</p><p>Necessitatibus aut qui incidunt ea. Quia id et voluptatem nulla neque. Voluptas possimus quia molestiae illo impedit sit consequatur.</p><p>Iste sint quibusdam quasi sint aut qui. Quibusdam reiciendis assumenda quo quia numquam impedit. Quisquam quasi fuga reprehenderit eos ut.</p><p>Qui odio aut quia porro vel. Ex quidem eveniet alias ratione earum sed ea. Excepturi aliquid ducimus nihil et incidunt. Natus odio repellat temporibus voluptates. Quae delectus tempora et rerum iusto.</p>', 4, '2021-02-18 17:58:56', NULL, 10, NULL),
(345, 'Autem amet modi sint fuga non', 'Autem-amet-modi-sint-fuga-non', 84, 'Sequi amet nulla optio a tempore. Incidunt molestiae iusto quis in.', '<p>Nihil quo aut et. Sed id et cumque est laudantium ullam aliquid. Ab ad dolorem perferendis dolores ea voluptatem quo.</p><p>Quidem est consectetur ipsam perferendis. Et iure quibusdam assumenda sint voluptatem quis porro. Optio distinctio excepturi optio saepe. Iure voluptate nobis ut ut eum vitae velit.</p><p>Et recusandae iste aut in nihil voluptatem error omnis. Sit reiciendis a aliquid architecto harum reprehenderit. Culpa nam nisi officiis nulla.</p><p>Itaque asperiores soluta vitae error. Illo consectetur est nemo iste debitis. Magni placeat est expedita id amet quam.</p><p>Sit eius voluptatibus magnam est. Beatae officiis fugiat quis officiis.</p>', 3, '2021-02-18 17:58:56', NULL, 10, NULL),
(346, 'Odit sequi illum enim blanditiis', 'Odit-sequi-illum-enim-blanditiis', 2594, 'Aut et fugiat nostrum. Exercitationem incidunt architecto laudantium voluptatum qui voluptatem. Delectus delectus reprehenderit aut dolores soluta alias quia repellendus.', '<p>Ut qui fugiat voluptatibus quas mollitia culpa sunt odit. Fuga ut est eveniet eligendi nam est. Quam deserunt asperiores libero corrupti quos.</p><p>Vel autem ea dolorum voluptas ad sed et. Et rem dolor voluptatem quam. Ut architecto quisquam nihil.</p><p>Dignissimos occaecati minus tempore molestiae quia aspernatur corrupti. Vitae est voluptatem nemo nostrum. Qui consequatur accusantium et est similique.</p><p>Aut eos perspiciatis explicabo voluptates repudiandae eos nemo. Numquam quam ut non esse voluptates ut odio numquam. Dolor dolorem dolorem est. Modi ipsa voluptates voluptatum ea. Rem dolorum non eligendi explicabo maiores quia.</p><p>Quia aut voluptas saepe. Animi laboriosam pariatur consequuntur natus aliquid perferendis dolorem. Maxime minus est voluptas illum mollitia ut ut. Necessitatibus iusto non cum non.</p>', 3, '2021-02-18 17:58:56', NULL, 10, NULL),
(347, 'Tempora quas sit vero harum', 'Tempora-quas-sit-vero-harum', 1156, 'Debitis quia est ut ut. Ipsa excepturi est repellendus aut maiores.', '<p>Quia dolores voluptas animi similique et. Facere deserunt consequuntur necessitatibus labore consectetur. Omnis reiciendis dolores aut vel doloremque doloribus.</p><p>Sit quia est et est id. Fuga aperiam quis ad qui. Laudantium asperiores et nihil ullam unde.</p><p>Sed sunt quia praesentium. Nulla dolores laboriosam cum sed impedit. Deleniti quia voluptatem nihil quas. Quae quaerat fugit velit enim illo explicabo corporis.</p><p>Facilis et voluptatem quia hic vero assumenda ut. Optio earum vel quis maxime quia. Autem commodi eos est quia. Voluptas excepturi dignissimos aut rerum facere.</p><p>Dolorem minima eligendi et in. Quo quos repellendus ut vel ipsa ipsum. Est sit eaque velit dolore expedita voluptatem est. Aliquam cum ducimus aliquid omnis aut ullam itaque aut.</p>', 5, '2021-02-18 17:58:56', NULL, 10, NULL),
(348, 'test de la adtionst', 'test-de-la-adtionst', 22, 'Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.', 'Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies .Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.', 5, '2021-03-01 00:00:24', NULL, 8, NULL),
(374, 'Incidunt assumenda et sunt quas numquam', 'Incidunt-assumenda-et-sunt-quas-numquam', 63, 'Sapiente qui rerum.', 'Consequatur cumque mollitia harum.', 5, '2021-03-03 15:27:50', NULL, 69, NULL),
(375, 'Non vel consectetur consequatur', 'Non-vel-consectetur-consequatur', 560, 'Quae architecto.', 'Alias maxime nemo eum labore.', 3, '2021-03-03 15:27:50', NULL, 69, NULL),
(376, 'Numquam cupiditate sit assumenda', 'Numquam-cupiditate-sit-assumenda', 244, 'Deleniti ducimus.', 'Eum eaque officiis molestiae et fugiat.', 3, '2021-03-03 15:27:50', NULL, 69, NULL),
(377, 'Ut numquam sed blanditiis', 'Ut-numquam-sed-blanditiis', 396, 'Dolor aut aliquid.', 'Voluptatum labore dolor.', 5, '2021-03-03 15:27:50', NULL, 69, NULL),
(378, 'Est rerum est', 'Est-rerum-est', 307, 'Aut pariatur.', 'Qui dolorem facere accusantium voluptas.', 3, '2021-03-03 15:27:50', NULL, 69, NULL),
(379, 'Cupiditate eligendi et placeat voluptatem qui', 'Cupiditate-eligendi-et-placeat-voluptatem-qui', 1397, 'At soluta voluptatem.', 'Quod rem non omnis laboriosam et.', 3, '2021-03-03 15:27:51', NULL, 70, NULL),
(380, 'Quasi et tenetur', 'Quasi-et-tenetur', 2834, 'At eligendi nemo.', 'Quia est ut voluptate id.', 4, '2021-03-03 15:27:51', NULL, 70, NULL),
(381, 'Hic aut facere aut cum', 'Hic-aut-facere-aut-cum', 935, 'Numquam ad.', 'Consequuntur ipsam aut recusandae.', 3, '2021-03-03 15:27:51', NULL, 70, NULL),
(382, 'Laboriosam nostrum dolorem voluptatem eaque rerum', 'Laboriosam-nostrum-dolorem-voluptatem-eaque-rerum', 342, 'Velit explicabo impedit.', 'Id nulla eos.', 1, '2021-03-03 15:27:51', NULL, 70, NULL),
(383, 'Est quibusdam corporis eum', 'Est-quibusdam-corporis-eum', 2500, 'Ut eos eum.', 'Itaque ut rem distinctio molestiae.', 4, '2021-03-03 15:27:51', NULL, 70, NULL),
(384, 'Et eveniet dolor ut', 'Et-eveniet-dolor-ut', 2836, 'Sit laborum.', 'Quia voluptatem voluptas sit.', 1, '2021-03-03 15:27:52', NULL, 71, NULL),
(385, 'Illo et et adipisci sint animi', 'Illo-et-et-adipisci-sint-animi', 884, 'Maiores similique qui.', 'Neque eos nobis suscipit fugit.', 2, '2021-03-03 15:27:52', NULL, 71, NULL),
(386, 'Quidem eligendi sunt aperiam nam', 'Quidem-eligendi-sunt-aperiam-nam', 2003, 'Eum assumenda.', 'Totam aut dolore.', 2, '2021-03-03 15:27:52', NULL, 71, NULL),
(387, 'Occaecati ex explicabo velit voluptatibus', 'Occaecati-ex-explicabo-velit-voluptatibus', 2848, 'Autem optio ut.', 'Magni ducimus quod dolor.', 5, '2021-03-03 15:27:52', NULL, 71, NULL),
(388, 'Non magnam molestias rerum aut quisquam', 'Non-magnam-molestias-rerum-aut-quisquam', 404, 'Laborum eum doloremque.', 'Ipsum tempora qui.', 4, '2021-03-03 15:27:52', NULL, 71, NULL),
(389, 'Vero est velit ex veritatis ipsa', 'Vero-est-velit-ex-veritatis-ipsa', 1786, 'Rem consequuntur.', 'Excepturi est rem.', 2, '2021-03-03 15:27:53', NULL, 72, NULL),
(390, 'Natus ipsa nostrum aut mollitia distinctio', 'Natus-ipsa-nostrum-aut-mollitia-distinctio', 1923, 'Et corporis autem.', 'Porro velit quam ullam autem esse.', 2, '2021-03-03 15:27:53', NULL, 72, NULL),
(391, 'Molestiae totam dignissimos rerum', 'Molestiae-totam-dignissimos-rerum', 1069, 'Atque nam cum.', 'Dolore ipsa maxime cumque id soluta.', 5, '2021-03-03 15:27:53', NULL, 72, NULL),
(392, 'Animi ut ut fugit quas dolor', 'Animi-ut-ut-fugit-quas-dolor', 233, 'Sint voluptas inventore.', 'Recusandae consequuntur cupiditate dignissimos.', 2, '2021-03-03 15:27:53', NULL, 72, NULL),
(393, 'Placeat ducimus accusamus', 'Placeat-ducimus-accusamus', 833, 'Corporis minus reprehenderit.', 'Non doloremque et sit.', 5, '2021-03-03 15:27:53', NULL, 72, NULL),
(394, 'Et atque ut sint ut', 'Et-atque-ut-sint-ut', 158, 'Hic necessitatibus rerum.', 'Repellendus magnam autem rerum.', 2, '2021-03-03 15:27:54', NULL, 73, NULL),
(395, 'Officiis non autem voluptatem soluta eveniet', 'Officiis-non-autem-voluptatem-soluta-eveniet', 471, 'Culpa non.', 'Est hic occaecati blanditiis aspernatur.', 2, '2021-03-03 15:27:54', NULL, 73, NULL),
(396, 'Provident maiores adipisci ea', 'Provident-maiores-adipisci-ea', 183, 'Nobis officiis.', 'Accusamus sequi occaecati voluptates et voluptas.', 5, '2021-03-03 15:27:54', NULL, 73, NULL),
(397, 'Quos atque voluptate ut', 'Quos-atque-voluptate-ut', 2755, 'Aperiam molestiae nisi.', 'Mollitia ab placeat maiores consectetur.', 2, '2021-03-03 15:27:54', NULL, 73, NULL),
(398, 'Reprehenderit sapiente repellendus aut rerum corporis', 'Reprehenderit-sapiente-repellendus-aut-rerum-corporis', 1692, 'Similique unde odio.', 'Ut voluptas sunt impedit.', 1, '2021-03-03 15:27:54', NULL, 73, NULL),
(399, 'Est earum nobis tenetur quidem', 'Est-earum-nobis-tenetur-quidem', 2482, 'Ab sit expedita.', 'Rem qui facere harum autem rerum.', 4, '2021-03-11 22:37:25', NULL, 74, NULL),
(400, 'Enim consequuntur qui architecto', 'Enim-consequuntur-qui-architecto', 438, 'Recusandae suscipit.', 'Dicta et nam ut officiis.', 2, '2021-03-11 22:37:25', NULL, 74, NULL),
(401, 'Et voluptate aliquam', 'Et-voluptate-aliquam', 1027, 'Libero sapiente sapiente.', 'Quia ut dolorem fugit.', 5, '2021-03-11 22:37:25', NULL, 74, NULL),
(402, 'Voluptas ad est expedita nisi dignissimos', 'Voluptas-ad-est-expedita-nisi-dignissimos', 2391, 'Minima velit cupiditate.', 'Libero dolorem reiciendis occaecati.', 1, '2021-03-11 22:37:25', NULL, 74, NULL),
(403, 'Aut exercitationem aut aperiam est', 'Aut-exercitationem-aut-aperiam-est', 2802, 'Rem deserunt ad.', 'Cupiditate est autem ut deleniti.', 4, '2021-03-11 22:37:25', NULL, 74, NULL),
(404, 'Sunt et et porro distinctio commodi', 'Sunt-et-et-porro-distinctio-commodi', 2056, 'Voluptatem ut iusto.', 'Repellendus aut tempore dolor.', 1, '2021-03-11 22:37:26', NULL, 75, NULL),
(405, 'Saepe ipsa quidem exercitationem', 'Saepe-ipsa-quidem-exercitationem', 72, 'Molestias a magni.', 'Dolorem nobis odio aut voluptatem porro.', 1, '2021-03-11 22:37:26', NULL, 75, NULL),
(406, 'Iure est esse minima est', 'Iure-est-esse-minima-est', 2183, 'Eius corrupti ullam.', 'Non in qui quia recusandae.', 2, '2021-03-11 22:37:26', NULL, 75, NULL),
(407, 'Est excepturi nesciunt autem temporibus', 'Est-excepturi-nesciunt-autem-temporibus', 1682, 'Rerum hic ipsam.', 'Vero ad excepturi.', 3, '2021-03-11 22:37:26', NULL, 75, NULL),
(408, 'Doloribus rerum ipsa quia', 'Doloribus-rerum-ipsa-quia', 199, 'Et aut consectetur.', 'Voluptatem error repellendus unde.', 3, '2021-03-11 22:37:26', NULL, 75, NULL),
(409, 'Quis et commodi quod qui quis', 'Quis-et-commodi-quod-qui-quis', 373, 'Odit temporibus quo.', 'Consequuntur atque rerum ullam reiciendis adipisci.', 5, '2021-03-11 22:37:27', NULL, 76, NULL),
(410, 'Labore id eius', 'Labore-id-eius', 1264, 'Architecto ea.', 'Omnis ea et quia explicabo qui.', 5, '2021-03-11 22:37:27', NULL, 76, NULL),
(411, 'Nostrum sed in nisi', 'Nostrum-sed-in-nisi', 2326, 'Sunt et.', 'Ut soluta praesentium est nemo.', 5, '2021-03-11 22:37:27', NULL, 76, NULL),
(412, 'Est ut rerum vero modi', 'Est-ut-rerum-vero-modi', 2530, 'Molestiae perferendis quae.', 'Iste culpa quia.', 3, '2021-03-11 22:37:27', NULL, 76, NULL),
(413, 'Voluptatibus vel molestiae rem enim', 'Voluptatibus-vel-molestiae-rem-enim', 2897, 'Error quibusdam.', 'Dignissimos at doloribus ad eum.', 4, '2021-03-11 22:37:27', NULL, 76, NULL),
(414, 'Maiores eos quibusdam consequuntur quas', 'Maiores-eos-quibusdam-consequuntur-quas', 663, 'Sequi voluptatem cum.', 'Ex expedita qui.', 1, '2021-03-11 22:37:28', NULL, 77, NULL),
(415, 'Atque rerum tenetur', 'Atque-rerum-tenetur', 982, 'Quia eos.', 'Officiis sit quam velit.', 3, '2021-03-11 22:37:28', NULL, 77, 4),
(416, 'Ipsa totam nesciunt ipsam', 'Ipsa-totam-nesciunt-ipsam', 1057, 'Sint corporis.', 'Alias a architecto nemo.', 4, '2021-03-11 22:37:28', NULL, 77, 4),
(417, 'Maiores tempore voluptatem et', 'Maiores-tempore-voluptatem-et', 1098, 'Dolores occaecati.', 'At veritatis modi nulla eligendi qui.', 5, '2021-03-11 22:37:28', NULL, 77, 4),
(418, 'Velit et reprehenderit', 'Velit-et-reprehenderit', 2569, 'Nesciunt ut doloribus.', 'Optio aut sint.', 3, '2021-03-11 22:37:28', NULL, 77, 3),
(419, 'Et cum necessitatibus rerum ut', 'Et-cum-necessitatibus-rerum-ut', 1748, 'Sit tenetur.', 'Inventore enim fuga non.', 5, '2021-03-11 22:37:29', NULL, 78, 2),
(420, 'Sed voluptatem numquam quis', 'Sed-voluptatem-numquam-quis', 1930, 'Minus natus consectetur.', 'Recusandae porro est amet asperiores.', 4, '2021-03-11 22:37:29', NULL, 78, 5),
(421, 'Alias provident ut consequuntur et qui', 'Alias-provident-ut-consequuntur-et-qui', 1795, 'Consequatur nam.', 'Asperiores voluptates sunt fuga.', 2, '2021-03-11 22:37:29', NULL, 78, 5),
(422, 'Sed nobis mollitia', 'Sed-nobis-mollitia', 1528, 'Omnis excepturi in.', 'Sequi illo assumenda aut nam consequatur.', 1, '2021-03-11 22:37:29', NULL, 78, 2),
(423, 'Autem eum in qui', 'Autem-eum-in-qui', 2274, 'Facere voluptatum nostrum.', 'Odio qui consequatur.', 4, '2021-03-11 22:37:29', NULL, 78, 3);

-- --------------------------------------------------------

--
-- Structure de la table `bouking`
--

CREATE TABLE `bouking` (
  `id` int(11) NOT NULL,
  `bouker_id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `creat_at` datetime NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `amount` double NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bouking`
--

INSERT INTO `bouking` (`id`, `bouker_id`, `ad_id`, `creat_at`, `start_date`, `end_date`, `amount`, `comment`) VALUES
(1, 69, 374, '2020-11-21 08:58:41', '2021-02-14 00:00:40', '2021-02-14 00:00:40', 189, NULL),
(2, 69, 374, '2021-02-26 07:23:01', '2020-12-17 03:24:48', '2020-12-17 03:24:48', 252, NULL),
(3, 69, 375, '2021-01-08 07:26:49', '2021-02-01 08:01:01', '2021-02-01 08:01:01', 1120, NULL),
(4, 69, 375, '2020-09-19 11:45:26', '2021-01-10 10:36:43', '2021-01-10 10:36:43', 1120, NULL),
(5, 69, 376, '2020-11-20 23:36:41', '2021-01-22 18:04:30', '2021-01-22 18:04:30', 976, NULL),
(6, 69, 376, '2020-12-25 11:54:22', '2020-12-21 11:10:00', '2020-12-21 11:10:00', 976, NULL),
(7, 69, 376, '2021-01-28 00:55:16', '2021-02-26 00:23:02', '2021-02-26 00:23:02', 732, NULL),
(8, 69, 377, '2020-11-15 04:19:38', '2021-02-26 02:39:27', '2021-02-26 02:39:27', 1584, NULL),
(9, 69, 377, '2020-11-01 00:15:16', '2021-02-21 12:35:02', '2021-02-21 12:35:02', 792, NULL),
(10, 69, 377, '2021-01-04 03:38:34', '2021-01-08 08:43:08', '2021-01-08 08:43:08', 1584, NULL),
(11, 69, 378, '2020-11-16 13:30:54', '2021-02-23 03:16:16', '2021-02-23 03:16:16', 921, NULL),
(12, 69, 378, '2021-01-30 14:54:32', '2021-01-28 17:31:17', '2021-01-28 17:31:17', 614, NULL),
(13, 70, 379, '2020-10-19 08:22:03', '2021-01-04 11:39:41', '2021-01-04 11:39:41', 5588, NULL),
(14, 70, 379, '2020-11-23 20:26:43', '2021-02-09 17:29:41', '2021-02-09 17:29:41', 5588, NULL),
(15, 70, 379, '2021-01-27 20:22:03', '2021-01-28 00:49:07', '2021-01-28 00:49:07', 2794, NULL),
(16, 70, 380, '2020-11-11 08:30:01', '2021-02-02 15:32:33', '2021-02-02 15:32:33', 11336, NULL),
(17, 70, 380, '2021-02-10 21:54:12', '2021-01-29 14:27:06', '2021-01-29 14:27:06', 5668, NULL),
(18, 70, 381, '2020-11-18 23:19:52', '2020-12-28 03:06:40', '2020-12-28 03:06:40', 3740, NULL),
(19, 70, 381, '2020-11-05 15:01:07', '2020-12-15 15:08:19', '2020-12-15 15:08:19', 3740, NULL),
(20, 70, 381, '2020-09-13 12:45:35', '2021-02-13 09:53:54', '2021-02-13 09:53:54', 2805, NULL),
(21, 70, 382, '2020-10-12 18:27:24', '2020-12-05 17:04:35', '2020-12-05 17:04:35', 684, NULL),
(22, 70, 382, '2021-02-21 18:05:03', '2021-01-11 17:49:02', '2021-01-11 17:49:02', 1368, NULL),
(23, 70, 382, '2020-09-07 15:23:53', '2021-01-05 11:05:24', '2021-01-05 11:05:24', 1368, NULL),
(24, 70, 383, '2020-09-27 02:45:33', '2021-01-14 21:47:35', '2021-01-14 21:47:35', 5000, NULL),
(25, 70, 383, '2021-02-14 19:26:57', '2021-01-04 02:36:29', '2021-01-04 02:36:29', 7500, NULL),
(26, 70, 383, '2020-10-06 15:56:12', '2020-12-30 20:47:12', '2020-12-30 20:47:12', 5000, NULL),
(27, 71, 384, '2020-12-24 12:14:34', '2021-01-20 11:53:39', '2021-01-20 11:53:39', 11344, NULL),
(28, 71, 384, '2020-12-22 23:47:18', '2020-12-09 15:01:02', '2020-12-09 15:01:02', 8508, NULL),
(29, 71, 384, '2020-10-09 20:03:29', '2020-12-18 19:04:10', '2020-12-18 19:04:10', 11344, NULL),
(30, 71, 384, '2020-09-27 23:42:19', '2021-02-05 17:29:08', '2021-02-05 17:29:08', 8508, NULL),
(31, 71, 385, '2020-10-18 09:22:32', '2020-12-08 03:56:40', '2020-12-08 03:56:40', 1768, NULL),
(32, 71, 385, '2021-02-18 00:17:43', '2021-02-19 12:54:09', '2021-02-19 12:54:09', 1768, NULL),
(33, 71, 385, '2021-02-12 17:08:04', '2020-12-17 11:59:15', '2020-12-17 11:59:15', 1768, NULL),
(34, 71, 386, '2020-10-07 08:22:25', '2021-02-15 12:49:01', '2021-02-15 12:49:01', 8012, NULL),
(35, 71, 386, '2020-09-29 12:34:13', '2021-01-13 15:30:30', '2021-01-13 15:30:30', 8012, NULL),
(36, 71, 386, '2021-02-09 19:32:25', '2020-12-07 04:42:46', '2020-12-07 04:42:46', 4006, NULL),
(37, 71, 386, '2020-12-16 23:49:09', '2021-02-13 17:33:42', '2021-02-13 17:33:42', 8012, NULL),
(38, 71, 387, '2021-03-03 00:39:52', '2020-12-11 03:18:40', '2020-12-11 03:18:40', 11392, NULL),
(39, 71, 387, '2020-10-22 18:54:27', '2020-12-24 07:38:08', '2020-12-24 07:38:08', 8544, NULL),
(40, 71, 387, '2021-01-26 04:07:55', '2021-02-18 19:01:51', '2021-02-18 19:01:51', 5696, NULL),
(41, 71, 388, '2020-11-27 20:10:59', '2021-01-09 01:41:55', '2021-01-09 01:41:55', 1212, NULL),
(42, 71, 388, '2021-01-16 21:47:58', '2021-02-10 07:53:04', '2021-02-10 07:53:04', 1616, NULL),
(43, 71, 388, '2021-03-03 08:48:19', '2020-12-17 18:59:30', '2020-12-17 18:59:30', 1212, NULL),
(44, 72, 389, '2021-02-06 21:03:15', '2021-02-04 23:43:12', '2021-02-04 23:43:12', 3572, NULL),
(45, 72, 389, '2020-09-27 01:24:57', '2020-12-24 17:15:26', '2020-12-24 17:15:26', 5358, NULL),
(46, 72, 389, '2020-11-25 05:21:53', '2020-12-25 03:04:55', '2020-12-25 03:04:55', 7144, NULL),
(47, 72, 390, '2021-02-03 15:08:10', '2021-02-14 12:36:22', '2021-02-14 12:36:22', 5769, NULL),
(48, 72, 390, '2020-12-27 20:40:15', '2021-01-21 01:07:34', '2021-01-21 01:07:34', 7692, NULL),
(49, 72, 390, '2020-12-21 17:22:07', '2021-01-05 14:54:32', '2021-01-05 14:54:32', 5769, NULL),
(50, 72, 390, '2021-03-01 20:49:52', '2020-12-11 15:39:10', '2020-12-11 15:39:10', 3846, NULL),
(51, 72, 391, '2021-02-07 17:35:35', '2021-01-02 19:02:05', '2021-01-02 19:02:05', 4276, NULL),
(52, 72, 391, '2021-02-16 08:17:49', '2021-02-07 04:38:01', '2021-02-07 04:38:01', 4276, NULL),
(53, 72, 392, '2020-09-19 21:34:05', '2020-12-14 13:55:53', '2020-12-14 13:55:53', 932, NULL),
(54, 72, 392, '2020-10-20 05:17:52', '2021-01-24 23:27:45', '2021-01-24 23:27:45', 932, NULL),
(55, 72, 392, '2020-10-28 08:03:59', '2021-01-17 18:15:26', '2021-01-17 18:15:26', 466, NULL),
(56, 72, 392, '2020-09-14 02:12:41', '2021-01-27 23:23:57', '2021-01-27 23:23:57', 699, NULL),
(57, 72, 393, '2020-12-18 05:21:32', '2021-01-02 04:50:17', '2021-01-02 04:50:17', 3332, NULL),
(58, 72, 393, '2021-01-06 17:55:40', '2021-02-18 10:43:51', '2021-02-18 10:43:51', 3332, NULL),
(59, 73, 394, '2021-02-08 22:16:27', '2020-12-17 21:52:29', '2020-12-17 21:52:29', 316, NULL),
(60, 73, 394, '2020-12-31 06:51:58', '2021-01-16 07:44:14', '2021-01-16 07:44:14', 474, NULL),
(61, 73, 395, '2021-01-06 14:13:53', '2021-01-13 04:28:51', '2021-01-13 04:28:51', 1884, NULL),
(62, 73, 395, '2020-12-01 22:17:23', '2021-02-22 13:04:48', '2021-02-22 13:04:48', 1884, NULL),
(63, 73, 396, '2020-11-15 04:50:31', '2021-01-11 08:11:58', '2021-01-11 08:11:58', 732, NULL),
(64, 73, 396, '2020-10-13 16:35:07', '2020-12-10 06:35:33', '2020-12-10 06:35:33', 366, NULL),
(65, 73, 397, '2021-02-11 01:04:34', '2021-02-02 22:47:29', '2021-02-02 22:47:29', 11020, NULL),
(66, 73, 397, '2020-12-12 18:15:42', '2021-03-04 22:28:09', '2021-03-04 22:28:09', 8265, NULL),
(67, 73, 397, '2020-11-01 22:01:50', '2021-01-28 06:04:24', '2021-01-28 06:04:24', 8265, NULL),
(68, 73, 398, '2020-11-09 00:04:19', '2020-12-16 00:04:50', '2020-12-08 20:21:28', 3384, NULL),
(69, 73, 398, '2020-09-19 10:50:41', '2021-03-01 18:41:42', '2021-03-01 18:41:42', 3384, NULL),
(77, 8, 324, '2021-03-06 00:11:08', '2021-03-07 00:00:00', '2021-03-11 00:00:00', 2204, 'ccccccccccccc'),
(78, 8, 324, '2021-03-06 00:12:24', '2021-03-12 00:00:00', '2021-03-18 00:00:00', 3306, 'ojh'),
(79, 8, 324, '2021-03-07 01:20:55', '2021-03-30 01:20:55', '2021-03-31 01:20:55', 551, 'XXXXXXXXXX'),
(80, 8, 326, '2021-03-07 02:09:06', '2021-03-07 02:09:05', '2021-03-18 02:09:05', 16456, NULL),
(81, 8, 327, '2021-03-07 02:10:38', '2021-03-07 02:10:38', '2021-03-09 02:10:38', 2242, NULL),
(82, 8, 323, '2021-03-07 19:19:35', '2021-03-25 19:19:34', '2021-03-31 19:19:34', 12348, 'sssssssssssss'),
(90, 8, 324, '2021-03-08 23:19:51', '2021-03-19 23:19:51', '2021-03-20 23:19:51', 551, NULL),
(91, 8, 324, '2021-03-08 23:40:49', '2021-03-21 23:40:44', '2021-03-25 23:40:44', 2204, 'qqqqqqqqqqqqq'),
(92, 8, 324, '2021-03-08 23:45:31', '2021-03-26 23:45:30', '2021-03-28 23:45:30', 1102, 'sssssssssssss'),
(93, 8, 324, '2021-03-08 23:46:04', '2021-03-28 23:46:04', '2021-03-29 23:46:04', 551, 'sssssssssssss'),
(94, 8, 324, '2021-03-08 23:47:32', '2021-04-08 23:47:32', '2021-04-22 23:47:32', 7714, 'sssssssssss'),
(95, 8, 323, '2021-03-09 00:51:04', '2021-03-18 00:51:02', '2021-03-20 00:51:02', 4116, 'sssssssssssssss'),
(96, 8, 323, '2021-03-09 00:52:32', '2021-03-15 00:52:32', '2021-03-17 00:52:32', 4116, 'qqqqqqqqqqsqs sssssssssss'),
(97, 8, 323, '2021-03-09 00:53:21', '2021-03-23 00:53:21', '2021-03-24 00:53:21', 2058, NULL),
(98, 8, 324, '2021-03-09 22:02:49', '2021-04-02 22:02:42', '2021-04-07 22:02:42', 2755, 'comment for resevation'),
(99, 74, 399, '2021-03-11 22:37:25', '2021-02-28 14:16:28', '2021-02-28 14:16:28', 0, NULL),
(100, 74, 399, '2021-03-11 22:37:25', '2021-01-22 15:40:48', '2021-01-22 15:40:48', 0, NULL),
(101, 74, 399, '2021-03-11 22:37:25', '2021-01-17 08:44:39', '2021-01-21 08:44:39', 0, NULL),
(102, 74, 400, '2021-03-11 22:37:25', '2021-02-20 00:48:17', '2021-02-20 00:48:17', 0, NULL),
(103, 74, 400, '2021-03-11 22:37:25', '2021-02-13 12:49:14', '2021-02-13 12:49:14', 0, NULL),
(104, 74, 400, '2021-03-11 22:37:25', '2021-01-08 12:48:40', '2021-01-09 12:48:40', 0, NULL),
(105, 74, 401, '2021-03-11 22:37:25', '2021-01-07 05:58:27', '2021-01-07 05:58:27', 0, NULL),
(106, 74, 401, '2021-03-11 22:37:25', '2020-12-16 04:27:00', '2020-12-17 04:27:00', 0, NULL),
(107, 74, 402, '2021-03-11 22:37:25', '2021-01-27 12:13:17', '2021-01-27 12:13:17', 0, NULL),
(108, 74, 402, '2021-03-11 22:37:25', '2021-01-02 22:24:35', '2021-01-10 22:24:35', 0, NULL),
(109, 74, 403, '2021-03-11 22:37:25', '2021-02-21 05:26:45', '2021-02-21 05:26:45', 0, NULL),
(110, 74, 403, '2021-03-11 22:37:25', '2021-02-03 08:43:42', '2021-02-03 08:43:42', 0, NULL),
(111, 74, 403, '2021-03-11 22:37:25', '2021-01-12 16:01:35', '2021-01-12 16:01:35', 0, NULL),
(112, 74, 403, '2021-03-11 22:37:25', '2020-12-22 00:36:23', '2020-12-22 00:36:23', 0, NULL),
(113, 75, 404, '2021-03-11 22:37:26', '2021-03-06 15:54:29', '2021-03-06 15:54:29', 0, NULL),
(114, 75, 404, '2021-03-11 22:37:26', '2021-01-07 05:20:35', '2021-01-07 05:20:35', 0, NULL),
(115, 75, 405, '2021-03-11 22:37:26', '2021-02-07 12:52:26', '2021-02-07 12:52:26', 0, NULL),
(116, 75, 405, '2021-03-11 22:37:26', '2021-03-15 16:32:47', '2021-03-15 16:32:47', 0, NULL),
(117, 75, 405, '2021-03-11 22:37:26', '2021-01-08 02:16:54', '2021-01-13 02:16:54', 0, NULL),
(118, 75, 406, '2021-03-11 22:37:26', '2021-01-13 04:37:52', '2021-01-13 04:37:52', 0, NULL),
(119, 75, 406, '2021-03-11 22:37:26', '2021-01-01 06:59:40', '2021-01-04 06:59:40', 0, NULL),
(120, 75, 407, '2021-03-11 22:37:26', '2021-02-08 10:05:07', '2021-02-08 10:05:07', 0, NULL),
(121, 75, 407, '2021-03-11 22:37:26', '2020-12-30 07:30:50', '2020-12-30 07:30:50', 0, NULL),
(122, 75, 407, '2021-03-11 22:37:26', '2021-01-01 20:02:36', '2021-01-08 20:02:36', 0, NULL),
(123, 75, 408, '2021-03-11 22:37:26', '2020-12-23 19:12:12', '2020-12-23 19:12:12', 0, NULL),
(124, 75, 408, '2021-03-11 22:37:26', '2021-02-25 15:13:22', '2021-02-25 15:13:22', 0, NULL),
(125, 76, 409, '2021-03-11 22:37:27', '2020-12-23 03:32:32', '2020-12-23 03:32:32', 0, NULL),
(126, 76, 409, '2021-03-11 22:37:27', '2021-02-19 23:37:19', '2021-02-19 23:37:19', 0, NULL),
(127, 76, 409, '2021-03-11 22:37:27', '2020-12-17 14:07:27', '2020-12-17 14:07:27', 0, NULL),
(128, 76, 409, '2021-03-11 22:37:27', '2021-02-05 00:04:44', '2021-02-06 00:04:44', 0, NULL),
(129, 76, 410, '2021-03-11 22:37:27', '2020-12-23 17:38:20', '2020-12-23 17:38:20', 0, NULL),
(130, 76, 410, '2021-03-11 22:37:27', '2021-02-14 12:54:52', '2021-02-14 12:54:52', 0, NULL),
(131, 76, 410, '2021-03-11 22:37:27', '2020-12-19 02:38:34', '2020-12-27 02:38:34', 0, NULL),
(132, 76, 411, '2021-03-11 22:37:27', '2020-12-23 19:27:57', '2020-12-23 19:27:57', 0, NULL),
(133, 76, 411, '2021-03-11 22:37:27', '2020-12-25 18:15:19', '2020-12-25 18:15:19', 0, NULL),
(134, 76, 411, '2021-03-11 22:37:27', '2021-02-18 16:56:10', '2021-02-18 16:56:10', 0, NULL),
(135, 76, 412, '2021-03-11 22:37:27', '2021-02-04 05:34:47', '2021-02-04 05:34:47', 0, NULL),
(136, 76, 412, '2021-03-11 22:37:27', '2021-02-18 23:54:35', '2021-02-18 23:54:35', 0, NULL),
(137, 76, 412, '2021-03-11 22:37:27', '2021-01-22 09:15:55', '2021-01-22 09:15:55', 0, NULL),
(138, 76, 413, '2021-03-11 22:37:27', '2021-02-20 21:51:46', '2021-02-20 21:51:46', 0, NULL),
(139, 76, 413, '2021-03-11 22:37:27', '2021-02-05 14:36:06', '2021-02-05 14:36:06', 0, NULL),
(140, 76, 413, '2021-03-11 22:37:27', '2021-02-08 04:16:14', '2021-02-08 04:16:14', 0, NULL),
(141, 76, 413, '2021-03-11 22:37:27', '2021-03-03 20:05:22', '2021-03-08 20:05:22', 0, NULL),
(142, 77, 414, '2021-03-11 22:37:28', '2021-03-13 09:12:07', '2021-03-13 09:12:07', 0, NULL),
(143, 77, 414, '2021-03-11 22:37:28', '2021-03-10 07:18:56', '2021-03-10 07:18:56', 0, NULL),
(144, 77, 414, '2021-03-11 22:37:28', '2021-01-15 01:21:43', '2021-01-26 01:21:43', 0, NULL),
(145, 77, 415, '2021-03-11 22:37:28', '2021-01-10 13:00:22', '2021-01-10 13:00:22', 0, NULL),
(146, 77, 415, '2021-03-11 22:37:28', '2021-01-23 06:31:32', '2021-01-23 06:31:32', 0, NULL),
(147, 77, 415, '2021-03-11 22:37:28', '2020-12-23 07:07:11', '2020-12-23 07:07:11', 0, NULL),
(148, 77, 416, '2021-03-11 22:37:28', '2021-02-26 11:44:55', '2021-02-26 11:44:55', 0, NULL),
(149, 77, 416, '2021-03-11 22:37:28', '2021-03-05 04:50:39', '2021-03-05 04:50:39', 0, NULL),
(150, 77, 416, '2021-03-11 22:37:28', '2021-01-29 11:02:22', '2021-01-29 11:02:22', 0, NULL),
(151, 77, 416, '2021-03-11 22:37:28', '2021-02-27 08:55:41', '2021-03-04 08:55:41', 0, NULL),
(152, 77, 417, '2021-03-11 22:37:28', '2021-02-19 18:47:35', '2021-02-19 18:47:35', 0, NULL),
(153, 77, 417, '2021-03-11 22:37:28', '2021-01-09 02:49:49', '2021-01-09 02:49:49', 0, NULL),
(154, 77, 417, '2021-03-11 22:37:28', '2020-12-23 06:38:05', '2020-12-23 06:38:05', 0, NULL),
(155, 77, 418, '2021-03-11 22:37:28', '2021-02-24 02:30:16', '2021-02-24 02:30:16', 0, NULL),
(156, 77, 418, '2021-03-11 22:37:28', '2020-12-20 08:45:30', '2020-12-20 08:45:30', 0, NULL),
(157, 77, 418, '2021-03-11 22:37:28', '2021-02-06 12:06:29', '2021-02-10 12:06:29', 0, NULL),
(158, 78, 419, '2021-03-11 22:37:29', '2021-01-10 08:31:28', '2021-01-10 08:31:28', 0, NULL),
(159, 78, 419, '2021-03-11 22:37:29', '2021-02-21 01:09:37', '2021-02-23 01:09:37', 0, NULL),
(160, 78, 420, '2021-03-11 22:37:29', '2021-01-07 20:45:05', '2021-01-07 20:45:05', 0, NULL),
(161, 78, 420, '2021-03-11 22:37:29', '2021-02-27 15:59:28', '2021-03-02 15:59:28', 0, NULL),
(162, 78, 421, '2021-03-11 22:37:29', '2021-01-02 16:22:20', '2021-01-02 16:22:20', 0, NULL),
(163, 78, 421, '2021-03-11 22:37:29', '2021-01-21 09:26:32', '2021-01-21 09:26:32', 0, NULL),
(164, 78, 421, '2021-03-11 22:37:29', '2021-02-11 04:47:09', '2021-02-11 04:47:09', 0, NULL),
(165, 78, 421, '2021-03-11 22:37:29', '2021-03-04 12:15:46', '2021-03-04 12:15:46', 0, NULL),
(166, 78, 422, '2021-03-11 22:37:29', '2021-03-11 01:21:21', '2021-03-11 01:21:21', 0, NULL),
(167, 78, 422, '2021-03-11 22:37:29', '2021-02-15 08:18:01', '2021-02-15 08:18:01', 0, NULL),
(168, 78, 422, '2021-03-11 22:37:29', '2021-03-01 04:44:25', '2021-03-06 04:44:25', 0, NULL),
(169, 78, 423, '2021-03-11 22:37:29', '2021-01-19 07:16:59', '2021-01-19 07:16:59', 0, NULL),
(170, 78, 423, '2021-03-11 22:37:29', '2021-01-20 10:41:54', '2021-01-20 10:41:54', 0, NULL),
(171, 78, 423, '2021-03-11 22:37:29', '2021-02-12 14:20:41', '2021-02-14 14:20:41', 0, NULL),
(172, 8, 423, '2021-03-12 00:58:24', '2021-03-17 00:58:16', '2021-03-20 00:58:16', 6822, 'comment for comment'),
(173, 8, 334, '2021-03-21 01:10:01', '2021-03-28 01:10:01', '2021-03-31 01:10:01', 276, NULL),
(174, 9, 324, '2021-05-13 20:07:51', '2021-05-21 20:07:44', '2021-05-31 20:07:44', 5510, 'any thing'),
(175, 9, 323, '2021-05-13 20:13:37', '2021-05-25 20:13:36', '2021-05-29 20:13:36', 8232, NULL),
(176, 9, 325, '2021-05-13 20:14:25', '2021-05-26 20:14:25', '2021-05-28 20:14:25', 776, 'ok'),
(177, 13, 323, '2021-05-13 20:15:57', '2021-05-23 20:15:56', '2021-05-24 20:15:56', 2058, NULL),
(178, 13, 324, '2021-05-13 20:17:09', '2021-06-01 20:17:09', '2021-06-05 20:17:09', 2204, 'sssss'),
(179, 13, 325, '2021-05-13 20:18:03', '2021-05-30 20:18:03', '2021-06-03 20:18:03', 1552, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210210154638', '2021-02-10 16:53:26', 606),
('DoctrineMigrations\\Version20210210210734', '2021-02-10 22:08:11', 1924),
('DoctrineMigrations\\Version20210210214850', '2021-02-10 22:49:26', 187),
('DoctrineMigrations\\Version20210210230219', '2021-02-11 00:02:58', 791),
('DoctrineMigrations\\Version20210216125331', '2021-02-16 13:53:54', 1229),
('DoctrineMigrations\\Version20210218161115', '2021-02-18 17:12:03', 919),
('DoctrineMigrations\\Version20210218161912', '2021-02-18 17:19:25', 1023),
('DoctrineMigrations\\Version20210220225406', '2021-02-20 23:54:52', 789),
('DoctrineMigrations\\Version20210226211727', '2021-02-26 22:19:12', 3823),
('DoctrineMigrations\\Version20210301210531', '2021-03-01 22:09:19', 2440),
('DoctrineMigrations\\Version20210303133721', '2021-03-03 14:37:59', 2578),
('DoctrineMigrations\\Version20210303142727', '2021-03-03 15:27:41', 744),
('DoctrineMigrations\\Version20210305134201', '2021-03-05 14:42:16', 1242),
('DoctrineMigrations\\Version20210309210019', '2021-03-09 22:01:02', 2539),
('DoctrineMigrations\\Version20210311211826', '2021-03-11 22:20:54', 1958),
('DoctrineMigrations\\Version20210311213446', '2021-03-11 22:34:56', 203),
('DoctrineMigrations\\Version20210316133354', '2021-03-16 14:34:19', 2295),
('DoctrineMigrations\\Version20210316140006', '2021-03-16 15:00:19', 1166);

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id`, `ad_id`, `url`, `title_image`) VALUES
(188, 343, 'adimagefixture.jpeg', 'ad_image'),
(189, 343, 'adimagefixture.jpeg', 'ad_image'),
(190, 343, 'adimagefixture.jpeg', 'ad_image'),
(191, 344, 'adimagefixture.jpeg', 'ad_image'),
(192, 344, 'adimagefixture.jpeg', 'ad_image'),
(193, 344, 'adimagefixture.jpeg', 'ad_image'),
(194, 345, 'adimagefixture.jpeg', 'ad_image'),
(195, 345, 'adimagefixture.jpeg', 'ad_image'),
(196, 345, 'adimagefixture.jpeg', 'ad_image'),
(197, 346, 'adimagefixture.jpeg', 'ad_image'),
(198, 346, 'adimagefixture.jpeg', 'ad_image'),
(199, 347, 'adimagefixture.jpeg', 'ad_image'),
(200, 347, 'adimagefixture.jpeg', 'ad_image'),
(201, 347, 'adimagefixture.jpeg', 'ad_image'),
(202, 347, 'adimagefixture.jpeg', 'ad_image'),
(204, 326, 'adimagefixture.jpeg', 'ad_image'),
(205, 326, 'adimagefixture.jpeg', 'ad_image'),
(206, 327, 'adimagefixture.jpeg', 'ad_image'),
(207, 327, 'adimagefixture.jpeg', 'ad_image'),
(208, 328, 'adimagefixture.jpeg', 'ad_image'),
(209, 328, 'adimagefixture.jpeg', 'ad_image'),
(210, 329, 'adimagefixture.jpeg', 'ad_image'),
(211, 329, 'adimagefixture.jpeg', 'ad_image'),
(212, 330, 'adimagefixture.jpeg', 'ad_image'),
(213, 330, 'adimagefixture.jpeg', 'ad_image'),
(214, 331, 'adimagefixture.jpeg', 'ad_image'),
(215, 331, 'adimagefixture.jpeg', 'ad_image'),
(218, 333, 'adimagefixture.jpeg', 'ad_image'),
(219, 333, 'adimagefixture.jpeg', 'ad_image'),
(220, 333, 'adimagefixture.jpeg', 'ad_image'),
(221, 332, 'adimagefixture.jpeg', 'ad_image'),
(222, 332, 'adimagefixture.jpeg', 'ad_image'),
(223, 332, 'adimagefixture.jpeg', 'ad_image'),
(224, 323, 'adimagefixture.jpeg', 'ad_image'),
(225, 323, 'adimagefixture.jpeg', 'ad_image'),
(226, 324, 'adimagefixture.jpeg', 'ad_image'),
(227, 324, 'adimagefixture.jpeg', 'ad_image'),
(228, 325, 'adimagefixture.jpeg', 'ad_image'),
(229, 325, 'adimagefixture.jpeg', 'ad_image'),
(230, 348, 'adimagefixture.jpeg', 'ad_image'),
(231, 348, 'adimagefixture.jpeg', 'ad_image'),
(232, 336, 'adimagefixture.jpeg', 'ad_image'),
(233, 336, 'adimagefixture.jpeg', 'ad_image'),
(234, 336, 'adimagefixture.jpeg', 'ad_image'),
(235, 335, 'adimagefixture.jpeg', 'ad_image'),
(236, 335, 'adimagefixture.jpeg', 'ad_image'),
(237, 337, 'adimagefixture.jpeg', 'ad_image'),
(238, 337, 'adimagefixture.jpeg', 'ad_image'),
(239, 337, 'adimagefixture.jpeg', 'ad_image'),
(240, 340, 'adimagefixture.jpeg', 'ad_image'),
(241, 340, 'adimagefixture.jpeg', 'ad_image'),
(242, 339, 'adimagefixture.jpeg', 'ad_image'),
(243, 339, 'adimagefixture.jpeg', 'ad_image'),
(244, 338, 'adimagefixture.jpeg', 'ad_image'),
(245, 338, 'adimagefixture.jpeg', 'ad_image'),
(246, 341, 'adimagefixture.jpeg', 'ad_image'),
(247, 341, 'adimagefixture.jpeg', 'ad_image'),
(255, 374, 'adimagefixture.jpeg', 'ad_image'),
(256, 374, 'adimagefixture.jpeg', 'ad_image'),
(257, 374, 'adimagefixture.jpeg', 'ad_image'),
(258, 375, 'adimagefixture.jpeg', 'ad_image'),
(259, 375, 'adimagefixture.jpeg', 'ad_image'),
(260, 375, 'adimagefixture.jpeg', 'ad_image'),
(261, 376, 'adimagefixture.jpeg', 'ad_image'),
(262, 376, 'adimagefixture.jpeg', 'ad_image'),
(263, 376, 'adimagefixture.jpeg', 'ad_image'),
(264, 377, 'adimagefixture.jpeg', 'ad_image'),
(265, 377, 'adimagefixture.jpeg', 'ad_image'),
(266, 377, 'adimagefixture.jpeg', 'ad_image'),
(267, 378, 'adimagefixture.jpeg', 'ad_image'),
(268, 378, 'adimagefixture.jpeg', 'ad_image'),
(269, 379, 'adimagefixture.jpeg', 'ad_image'),
(270, 379, 'adimagefixture.jpeg', 'ad_image'),
(271, 379, 'adimagefixture.jpeg', 'ad_image'),
(272, 379, 'adimagefixture.jpeg', 'ad_image'),
(273, 380, 'adimagefixture.jpeg', 'ad_image'),
(274, 380, 'adimagefixture.jpeg', 'ad_image'),
(275, 380, 'adimagefixture.jpeg', 'ad_image'),
(276, 380, 'adimagefixture.jpeg', 'ad_image'),
(277, 381, 'adimagefixture.jpeg', 'ad_image'),
(278, 381, 'adimagefixture.jpeg', 'ad_image'),
(279, 381, 'adimagefixture.jpeg', 'ad_image'),
(280, 381, 'adimagefixture.jpeg', 'ad_image'),
(281, 382, 'adimagefixture.jpeg', 'ad_image'),
(282, 382, 'adimagefixture.jpeg', 'ad_image'),
(283, 382, 'adimagefixture.jpeg', 'ad_image'),
(284, 383, 'adimagefixture.jpeg', 'ad_image'),
(285, 383, 'adimagefixture.jpeg', 'ad_image'),
(286, 383, 'adimagefixture.jpeg', 'ad_image'),
(287, 384, 'adimagefixture.jpeg', 'ad_image'),
(288, 384, 'adimagefixture.jpeg', 'ad_image'),
(289, 384, 'adimagefixture.jpeg', 'ad_image'),
(290, 384, 'adimagefixture.jpeg', 'ad_image'),
(291, 385, 'adimagefixture.jpeg', 'ad_image'),
(292, 385, 'adimagefixture.jpeg', 'ad_image'),
(293, 385, 'adimagefixture.jpeg', 'ad_image'),
(294, 385, 'adimagefixture.jpeg', 'ad_image'),
(295, 386, 'adimagefixture.jpeg', 'ad_image'),
(296, 386, 'adimagefixture.jpeg', 'ad_image'),
(297, 386, 'adimagefixture.jpeg', 'ad_image'),
(298, 387, 'adimagefixture.jpeg', 'ad_image'),
(299, 387, 'adimagefixture.jpeg', 'ad_image'),
(300, 387, 'adimagefixture.jpeg', 'ad_image'),
(301, 387, 'adimagefixture.jpeg', 'ad_image'),
(302, 388, 'adimagefixture.jpeg', 'ad_image'),
(303, 388, 'adimagefixture.jpeg', 'ad_image'),
(304, 388, 'adimagefixture.jpeg', 'ad_image'),
(305, 389, 'adimagefixture.jpeg', 'ad_image'),
(306, 389, 'adimagefixture.jpeg', 'ad_image'),
(307, 390, 'adimagefixture.jpeg', 'ad_image'),
(308, 390, 'adimagefixture.jpeg', 'ad_image'),
(309, 391, 'adimagefixture.jpeg', 'ad_image'),
(310, 391, 'adimagefixture.jpeg', 'ad_image'),
(311, 391, 'adimagefixture.jpeg', 'ad_image'),
(312, 392, 'adimagefixture.jpeg', 'ad_image'),
(313, 392, 'adimagefixture.jpeg', 'ad_image'),
(314, 393, 'adimagefixture.jpeg', 'ad_image'),
(315, 393, 'adimagefixture.jpeg', 'ad_image'),
(316, 393, 'adimagefixture.jpeg', 'ad_image'),
(317, 394, 'adimagefixture.jpeg', 'ad_image'),
(318, 394, 'adimagefixture.jpeg', 'ad_image'),
(319, 394, 'adimagefixture.jpeg', 'ad_image'),
(320, 394, 'adimagefixture.jpeg', 'ad_image'),
(321, 395, 'adimagefixture.jpeg', 'ad_image'),
(322, 395, 'adimagefixture.jpeg', 'ad_image'),
(323, 395, 'adimagefixture.jpeg', 'ad_image'),
(324, 396, 'adimagefixture.jpeg', 'ad_image'),
(325, 396, 'adimagefixture.jpeg', 'ad_image'),
(326, 396, 'adimagefixture.jpeg', 'ad_image'),
(327, 396, 'adimagefixture.jpeg', 'ad_image'),
(328, 397, 'adimagefixture.jpeg', 'ad_image'),
(329, 397, 'adimagefixture.jpeg', 'ad_image'),
(330, 398, 'adimagefixture.jpeg', 'ad_image'),
(331, 398, 'adimagefixture.jpeg', 'ad_image'),
(332, 398, 'adimagefixture.jpeg', 'ad_image'),
(333, 399, 'adimagefixture.jpeg', 'ad_image'),
(334, 399, 'adimagefixture.jpeg', 'ad_image'),
(335, 400, 'adimagefixture.jpeg', 'ad_image'),
(336, 400, 'adimagefixture.jpeg', 'ad_image'),
(337, 400, 'adimagefixture.jpeg', 'ad_image'),
(338, 400, 'adimagefixture.jpeg', 'ad_image'),
(339, 401, 'adimagefixture.jpeg', 'ad_image'),
(340, 401, 'adimagefixture.jpeg', 'ad_image'),
(341, 401, 'adimagefixture.jpeg', 'ad_image'),
(342, 401, 'adimagefixture.jpeg', 'ad_image'),
(343, 402, 'adimagefixture.jpeg', 'ad_image'),
(344, 402, 'adimagefixture.jpeg', 'ad_image'),
(345, 402, 'adimagefixture.jpeg', 'ad_image'),
(346, 403, 'adimagefixture.jpeg', 'ad_image'),
(347, 403, 'adimagefixture.jpeg', 'ad_image'),
(348, 403, 'adimagefixture.jpeg', 'ad_image'),
(349, 404, 'adimagefixture.jpeg', 'ad_image'),
(350, 404, 'adimagefixture.jpeg', 'ad_image'),
(351, 405, 'adimagefixture.jpeg', 'ad_image'),
(352, 405, 'adimagefixture.jpeg', 'ad_image'),
(353, 405, 'adimagefixture.jpeg', 'ad_image'),
(354, 405, 'adimagefixture.jpeg', 'ad_image'),
(355, 406, 'adimagefixture.jpeg', 'ad_image'),
(356, 406, 'adimagefixture.jpeg', 'ad_image'),
(357, 406, 'adimagefixture.jpeg', 'ad_image'),
(358, 407, 'adimagefixture.jpeg', 'ad_image'),
(359, 407, 'adimagefixture.jpeg', 'ad_image'),
(360, 408, 'adimagefixture.jpeg', 'ad_image'),
(361, 408, 'adimagefixture.jpeg', 'ad_image'),
(362, 408, 'adimagefixture.jpeg', 'ad_image'),
(363, 408, 'adimagefixture.jpeg', 'ad_image'),
(364, 409, 'adimagefixture.jpeg', 'ad_image'),
(365, 409, 'adimagefixture.jpeg', 'ad_image'),
(366, 409, 'adimagefixture.jpeg', 'ad_image'),
(367, 410, 'adimagefixture.jpeg', 'ad_image'),
(368, 410, 'adimagefixture.jpeg', 'ad_image'),
(369, 411, 'adimagefixture.jpeg', 'ad_image'),
(370, 411, 'adimagefixture.jpeg', 'ad_image'),
(371, 412, 'adimagefixture.jpeg', 'ad_image'),
(372, 412, 'adimagefixture.jpeg', 'ad_image'),
(373, 412, 'adimagefixture.jpeg', 'ad_image'),
(374, 413, 'adimagefixture.jpeg', 'ad_image'),
(375, 413, 'adimagefixture.jpeg', 'ad_image'),
(376, 413, 'adimagefixture.jpeg', 'ad_image'),
(377, 414, 'adimagefixture.jpeg', 'ad_image'),
(378, 414, 'adimagefixture.jpeg', 'ad_image'),
(379, 414, 'adimagefixture.jpeg', 'ad_image'),
(380, 415, 'adimagefixture.jpeg', 'ad_image'),
(381, 415, 'adimagefixture.jpeg', 'ad_image'),
(382, 415, 'adimagefixture.jpeg', 'ad_image'),
(383, 416, 'adimagefixture.jpeg', 'ad_image'),
(384, 416, 'adimagefixture.jpeg', 'ad_image'),
(385, 416, 'adimagefixture.jpeg', 'ad_image'),
(386, 417, 'adimagefixture.jpeg', 'ad_image'),
(387, 417, 'adimagefixture.jpeg', 'ad_image'),
(388, 417, 'adimagefixture.jpeg', 'ad_image'),
(389, 418, 'adimagefixture.jpeg', 'ad_image'),
(390, 418, 'adimagefixture.jpeg', 'ad_image'),
(391, 419, 'adimagefixture.jpeg', 'ad_image'),
(392, 419, 'adimagefixture.jpeg', 'ad_image'),
(393, 419, 'adimagefixture.jpeg', 'ad_image'),
(394, 419, 'adimagefixture.jpeg', 'ad_image'),
(395, 420, 'adimagefixture.jpeg', 'ad_image'),
(396, 420, 'adimagefixture.jpeg', 'ad_image'),
(397, 420, 'adimagefixture.jpeg', 'ad_image'),
(398, 420, 'adimagefixture.jpeg', 'ad_image'),
(399, 421, 'adimagefixture.jpeg', 'ad_image'),
(400, 421, 'adimagefixture.jpeg', 'ad_image'),
(401, 422, 'adimagefixture.jpeg', 'ad_image'),
(402, 422, 'adimagefixture.jpeg', 'ad_image'),
(403, 422, 'adimagefixture.jpeg', 'ad_image'),
(404, 422, 'adimagefixture.jpeg', 'ad_image'),
(405, 423, 'adimagefixture.jpeg', 'ad_image'),
(406, 423, 'adimagefixture.jpeg', 'ad_image'),
(407, 334, 'adimagefixture.jpeg', 'ad_image'),
(408, 334, 'adimagefixture.jpeg', 'ad_image');

-- --------------------------------------------------------

--
-- Structure de la table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `creat_at` datetime NOT NULL,
  `note` int(11) NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `rating`
--

INSERT INTO `rating` (`id`, `ad_id`, `user_id`, `creat_at`, `note`, `comment`) VALUES
(1, 399, 74, '2021-01-18 08:44:39', 1, 'Officia ut nulla.'),
(3, 400, 74, '2021-01-09 12:48:40', 5, 'Animi vitae eos illum voluptas.'),
(4, 401, 74, '2020-12-17 04:27:00', 3, 'Ducimus incidunt aut vel.'),
(5, 402, 74, '2021-01-05 22:24:35', 2, 'Maxime molestiae nobis odio.'),
(8, 405, 75, '2021-01-11 02:16:54', 3, 'Aut ea at dignissimos quae.'),
(10, 406, 75, '2021-01-04 06:59:40', 3, 'Quia est tenetur occaecati.'),
(11, 407, 75, '2021-01-03 20:02:36', 2, 'Qui ut quaerat dolore et.'),
(15, 409, 76, '2021-02-06 00:04:44', 2, 'Et qui quisquam repudiandae molestiae quis.'),
(17, 410, 76, '2020-12-24 02:38:34', 4, 'Exercitationem facilis quasi non.'),
(19, 413, 76, '2021-03-04 20:05:22', 3, 'Corporis et maxime.'),
(22, 414, 77, '2021-01-18 01:21:43', 3, 'Esse sed ad similique consequuntur commodi.'),
(25, 414, 77, '2021-01-26 01:21:43', 4, 'Sit possimus eos recusandae.'),
(26, 416, 77, '2021-03-01 08:55:41', 3, 'Corrupti quas est.'),
(27, 416, 77, '2021-03-04 08:55:41', 5, 'Sit vel quod fugiat quas.'),
(28, 418, 77, '2021-02-09 12:06:29', 1, 'Neque architecto incidunt minus.'),
(29, 418, 77, '2021-02-10 12:06:29', 3, 'Mollitia sapiente deleniti est.'),
(30, 419, 78, '2021-02-23 01:09:37', 1, 'Dolor est repudiandae.'),
(31, 420, 78, '2021-03-02 15:59:28', 5, 'Et officia et dicta.'),
(32, 422, 78, '2021-03-04 04:44:25', 1, 'Quis exercitationem at.'),
(33, 422, 78, '2021-03-06 04:44:25', 1, 'Voluptatem et nisi voluptatem.'),
(34, 423, 78, '2021-02-14 14:20:41', 1, 'Tempora quo eaque.'),
(35, 423, 8, '2021-03-16 15:25:27', 5, 'ssssdxxxxsssss'),
(36, 324, 9, '2021-05-13 20:09:14', 5, 'excellent'),
(37, 323, 9, '2021-05-13 20:13:52', 3, 'test'),
(38, 325, 9, '2021-05-13 20:14:40', 4, 'test'),
(39, 323, 13, '2021-05-13 20:16:09', 4, 'ssc'),
(40, 324, 13, '2021-05-13 20:17:22', 5, 'ddd'),
(41, 325, 13, '2021-05-13 20:18:12', 5, 'ddd');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id`, `title`) VALUES
(2, 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Structure de la table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(2, 63);

-- --------------------------------------------------------

--
-- Structure de la table `search`
--

CREATE TABLE `search` (
  `id` int(11) NOT NULL,
  `q` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min` double NOT NULL,
  `max` double NOT NULL,
  `check_in` datetime DEFAULT NULL,
  `check_out` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `search`
--

INSERT INTO `search` (`id`, `q`, `min`, `max`, `check_in`, `check_out`) VALUES
(25, NULL, 182, 992, '2021-05-18 05:20:22', '2021-05-28 05:20:22'),
(26, 'gh', 1122, 2302, NULL, NULL),
(27, 'gh', 22, 2897, NULL, NULL),
(28, NULL, 312, 1012, NULL, NULL),
(29, NULL, 22, 282, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descreption` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creat_at` datetime NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `hash`, `avatar`, `descreption`, `slug`, `activation_token`, `creat_at`, `address`, `phone`) VALUES
(6, 'Marc', 'Aubry', 'sgaillard@bouygtel.fr', '$2y$13$Itp2HJw36whIpWWJ0boDJ.krbjGFOIrk2tLuznx9Pvo2mSNUtYXfa', 'avatar_2x.png', 'Rerum quos similique repellatRerum quos similique repellat Rerum quos similique repellat.', 'Marc-Aubry', NULL, '0000-00-00 00:00:00', NULL, NULL),
(7, 'Rémyqqsssssqqssssswwwww', 'Alecssxxwwwsss', 'masrine80@wadoo.fr', '$2y$13$NEmlBN8rdoQOcK554ZpjpeyxwNzf0Vl9hgEOlRnodA/jMdqDvHt7O', '7cc60bc9f8eb46284955f00688533485.png', 'Repusdiasndswwwwwsssae velit sswwwwwwwwsducimus.', 'R-myqqsssssqqssssswwwww-Alecssxxwwwsss', NULL, '0000-00-00 00:00:00', NULL, NULL),
(8, 'Jérôme', 'Charrier', 'claude.rousseau@joseph.org', '$2y$13$KYwuYmccsybKUFchZXHaa.PSQVg1IG.vNW77rh9vsaXxmzWUxs5FK', '096bdbe7b41506a573203fa810402279.jpeg', 'Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.', 'J-r-me-Charrier', NULL, '0000-00-00 00:00:00', NULL, NULL),
(9, 'Édouard', 'Roger', 'henri13@voila.fr', '$2y$13$KYwuYmccsybKUFchZXHaa.PSQVg1IG.vNW77rh9vsaXxmzWUxs5FK', 'avatar_2x.png', 'Cum ut quibusdam omnis.', '-douard-Roger', NULL, '0000-00-00 00:00:00', NULL, NULL),
(10, 'Chantal', 'Marques', 'ldelmas@pruvost.org', '$2y$13$KYwuYmccsybKUFchZXHaa.PSQVg1IG.vNW77rh9vsaXxmzWUxs5FK', 'avatar_2x.png', 'Accusantium dolorem explicabo.', 'Chantal-Marques', NULL, '0000-00-00 00:00:00', NULL, NULL),
(11, 'Marine', 'Delahaye', 'david.marin@weber.net', '$2y$13$L3sPkuVVrFVWePbsncmOCe9oGmK5BA.jVDoebm5TUsk51Btui1Sci', 'avatar_2x.png', 'Et sed ratione culpa et.', 'Marine-Delahaye', NULL, '0000-00-00 00:00:00', NULL, NULL),
(12, 'Juliette', 'Deschamps', 'julie.deschamps@lebreton.com', '$2y$13$Zpsir/qt4afNSqnIEgEQ0unuUd/JBijplLhy4HF6RdJpKCBC1BcFu', 'avatar_2x.png', 'Labore hic officiis magnam.', 'Juliette-Deschamps', NULL, '0000-00-00 00:00:00', NULL, NULL),
(13, 'Michelle', 'Mercier', 'auger.roger@yahoo.fr', '$2y$13$aPmavbT6MLNLgZDChPexaewzGl9U8ub15LtzKA8eZods1yHgx.82q', 'avatar_2x.png', 'Sit sint eligendi provident at.', 'Michelle-Mercier', NULL, '0000-00-00 00:00:00', NULL, NULL),
(14, 'Joseph', 'Vasseur', 'suzanne63@lagarde.fr', '$2y$13$jJt9zVB5eMHTmesraJxwae6UQlu4VECi5XstzIv.9ZeGYLZ3Q1V2a', 'avatar_2x.png', 'Aut quia excepturi id amet.', 'Joseph-Vasseur', NULL, '0000-00-00 00:00:00', NULL, NULL),
(15, 'Olivier', 'Laine', 'aurore.lopez@millet.fr', '$2y$13$KYwuYmccsybKUFchZXHaa.PSQVg1IG.vNW77rh9vsaXxmzWUxs5FK', 'avatar_2x.png', 'Enim facilis sit neque qui.', 'Olivier-Laine', '$2y$13$KYwuYmccsybKUFchZXHaa.PSQVg1IG.vNW77rh9vsaXxmzWUxs5FK', '0000-00-00 00:00:00', NULL, NULL),
(16, 'www', 'www', 'saie.usdhhsd@gmail.com', 'password', 'avatar_2x.png', NULL, 'www-www', '$2y$13$4KU3vdylRzVa7E11kpI.buGLtRkqm.T2PTUKeJtw.5JomthOLihtu', '0000-00-00 00:00:00', NULL, NULL),
(55, 'www', 'www', 'wxwbx@hqshsgd.tn', '$2y$13$07VC5qRMgj9DUZJ4HT/M7uQ5ajzgThE05ZRlIgSAmy4S2iaiLBT4e', 'avatar_2x.png', NULL, 'www-www', '983c14e854bee5af8f13d4fcfa3c5b68', '0000-00-00 00:00:00', NULL, NULL),
(56, 'www', 'www', 'siaed.yassin@gmail.com', '$2y$13$emS3uWF8HaAlJtCg4NSBJ.U.QQdJsHgfoOfLF3Aqo9Gh1sAVh3niy', 'avatar_2x.png', NULL, 'www-www', '5eb8091e0b27102914446e3679d6eda3', '0000-00-00 00:00:00', NULL, NULL),
(57, 'www', 'www', 'siaed.yassin@gmail.com', '$2y$13$4KU3vdylRzVa7E11kpI.buGLtRkqm.T2PTUKeJtw.5JomthOLihtu', 'avatar_2x.png', NULL, 'www-www', '$2y$13$4KU3vdylRzVa7E11kpI.buGLtRkqm.T2PTUKeJtw.5JomthOLihtu', '0000-00-00 00:00:00', NULL, NULL),
(58, 'www', 'www', 'xxxxed.yassin@gmail.com', '$2y$13$IplHgKPgtTsRYZJ6kiyUl.LtNeEgUwxvmJlqVgW0Ij48az70rA0Si', 'avatar_2x.png', NULL, 'www-www', NULL, '0000-00-00 00:00:00', NULL, NULL),
(59, 'www', 'www', 'siawwwwed.yassin@gmail.com', '$2y$13$IewoZZq90D4/MQgnFQymiuFct24TyFt8AMhJonGWKQuBKYT.P8St2', 'avatar_2x.png', NULL, 'www-www', '1093a842242fba8ca60243b118d26b17', '0000-00-00 00:00:00', NULL, NULL),
(60, 'www', 'www', 'sxxxiaed.yassin@gmail.com', '$2y$13$0T1q56gpbIC0DudzTZQLWeEcmqfyFufNw6PTehvOwpcqJHlf5asB6', 'avatar_2x.png', NULL, 'www-www', '907b4fd5b008696d4425c6f5fc6ae4e8', '0000-00-00 00:00:00', NULL, NULL),
(61, 'www', 'www', 'siasssed.yassin@gmail.com', '$2y$13$2UQyzHWdHaOuzvn3Lo5bQucLCyEqjMZyFwtpeCP5BJd9CN52iU3N6', 'avatar_2x.png', 'wx', 'www-www', NULL, '2021-02-26 22:52:18', NULL, NULL),
(63, 'yassin', 'zarga', 'saiiied.yassiiin@gmail.com', '$2y$13$tfNdiXnxXkx3kDQcH5UTruhzthd5WakhaS3XDVp/X7NsvqqvEFf8e', 'avatar_2x.png', 'Voluptate non quis cupiditate.', 'yassin-zarga', '', '2021-03-01 22:25:00', NULL, NULL),
(69, 'Paul', 'Dumont', 'albert.sabine@bouygtel.fr', '$2y$13$IZbaOmtOSg7eGh.Sz6qzg.huTfGOdnzX1J1BIqDRrOhginc9h96h.', 'User_2.png', 'Dolorum doloremque natus omnis ipsum.', 'Paul-Dumont', '0de0572858b112910b467e348ae7cebb', '2021-03-03 15:27:50', NULL, NULL),
(70, 'Timothée', 'Picard', 'laurence16@colas.fr', '$2y$13$wBcqFOulUzsR9ExPmTLUA.Y42VsUGMj2ktWxtOqOd0WvTFzg2mAcG', 'User_2.png', 'Ullam id sed qui.', 'Timoth-e-Picard', '15cd56fd7884a1de85491035df63a0cf', '2021-03-03 15:27:51', NULL, NULL),
(71, 'Eugène', 'Prevost', 'auguste.jacob@maillet.fr', '$2y$13$744Ts3ovdrjxEAYUAYZ7muY7cpTS5pKiimXY/XOMpV8NG0ujS6JNy', 'User_2.png', 'Alias sint quo quaerat possimus.', 'Eug-ne-Prevost', '593b4b1fa7fc85ed98653eabc922becf', '2021-03-03 15:27:52', NULL, NULL),
(72, 'Christiane', 'Gregoire', 'lacroix.gregoire@orange.fr', '$2y$13$Os6bO.G4GZN/xfHasgsJj.3M/kVIQjmWX1e/7sqe0YqeInwcso36y', 'User_2.png', 'Expedita iure accusantium voluptates.', 'Christiane-Gregoire', 'f56114adc70d2c26fe50f6c094d5342f', '2021-03-03 15:27:53', NULL, NULL),
(73, 'Marcel', 'Tessier', 'constance.boutin@paris.com', '$2y$13$DHTF44gfnQ533.qFNnkgl.QBsJuBxulgt/KFcN6iLTAp7y0vmsmHS', 'User_2.png', 'Velit illum voluptatem dolorem.', 'Marcel-Tessier', '33c898f9a9a7ab4232cb1837b77a5331', '2021-03-03 15:27:54', NULL, NULL),
(74, 'Luce', 'Mathieu', 'nicolas.alexandre@robert.net', '$2y$13$QAfKdsNXqaadPquCfWPqsOQLg.3pBLmd/agAaotUze8.Xd6BrxEs2', 'User_2.png', 'Accusantium sint quod iure quidem.', 'Luce-Mathieu', '03404ccc20d03e5c74b8949897d5bd21', '2021-03-11 22:37:25', NULL, NULL),
(75, 'Alexandria', 'Rodriguez', 'cmunoz@tiscali.fr', '$2y$13$gMGmP4mwUrsQX5ewKqMM3.lfwXbhwju.Y5I9uzVp0USavOtd.EAoW', 'User_2.png', 'Omnis cupiditate exercitationem tempore.', 'Alexandria-Rodriguez', 'ab7f71f2db6d32f641ffbb6b19cfb871', '2021-03-11 22:37:26', NULL, NULL),
(76, 'Monique', 'Pichon', 'lebon.suzanne@imbert.fr', '$2y$13$ISL7doCffokuUfG1Ulw5me/.UkaKENMvyQXXF3NTOCPN.WQbf5g/m', 'User_2.png', 'Itaque expedita aliquam nihil.', 'Monique-Pichon', 'cc9b7ed462b0b611c5753c740ea3b9c3', '2021-03-11 22:37:27', NULL, NULL),
(77, 'Célina', 'Lecoq', 'kbesnard@caron.fr', '$2y$13$WESQ47fFp/rPP09sSGjNgu5bbmFcNX8vHk8tv5dkFSi/fxavYGDDe', 'User_2.png', 'Hic hic accusamus doloremque ab quia.', 'C-lina-Lecoq', 'c96130701395108e219a882c10174021', '2021-03-11 22:37:28', NULL, NULL),
(78, 'Alexandrie', 'Rousseau', 'iribeiro@orange.fr', '$2y$13$a.iq07AoNUPOa4IRhYQbrelpEPLXv4KoP.s3ficjlzYQgFk0cKBX6', 'User_2.png', 'A sit qui iure sunt quo.', 'Alexandrie-Rousseau', 'db79a3258be3f29a28c8ecbd9c3bb020', '2021-03-11 22:37:29', NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ad`
--
ALTER TABLE `ad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_77E0ED58F675F31B` (`author_id`);

--
-- Index pour la table `bouking`
--
ALTER TABLE `bouking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CA5C62FD48D08386` (`bouker_id`),
  ADD KEY `IDX_CA5C62FD4F34D596` (`ad_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C53D045F4F34D596` (`ad_id`);

--
-- Index pour la table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D88926224F34D596` (`ad_id`),
  ADD KEY `IDX_D8892622A76ED395` (`user_id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `IDX_332CA4DDD60322AC` (`role_id`),
  ADD KEY `IDX_332CA4DDA76ED395` (`user_id`);

--
-- Index pour la table `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ad`
--
ALTER TABLE `ad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=424;

--
-- AUTO_INCREMENT pour la table `bouking`
--
ALTER TABLE `bouking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;

--
-- AUTO_INCREMENT pour la table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `search`
--
ALTER TABLE `search`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ad`
--
ALTER TABLE `ad`
  ADD CONSTRAINT `FK_77E0ED58F675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `bouking`
--
ALTER TABLE `bouking`
  ADD CONSTRAINT `FK_CA5C62FD48D08386` FOREIGN KEY (`bouker_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_CA5C62FD4F34D596` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`id`);

--
-- Contraintes pour la table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK_C53D045F4F34D596` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`id`);

--
-- Contraintes pour la table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `FK_D88926224F34D596` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`id`),
  ADD CONSTRAINT `FK_D8892622A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `FK_332CA4DDA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_332CA4DDD60322AC` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
