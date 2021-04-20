-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Czas generowania: 20 Kwi 2021, 10:59
-- Wersja serwera: 5.7.34
-- Wersja PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `poketch_db`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add pokemon', 7, 'add_pokemon'),
(26, 'Can change pokemon', 7, 'change_pokemon'),
(27, 'Can delete pokemon', 7, 'delete_pokemon'),
(28, 'Can view pokemon', 7, 'view_pokemon'),
(29, 'Can add regional form', 8, 'add_regionalform'),
(30, 'Can change regional form', 8, 'change_regionalform'),
(31, 'Can delete regional form', 8, 'delete_regionalform'),
(32, 'Can view regional form', 8, 'view_regionalform'),
(33, 'Can add regional form pokemon', 9, 'add_regionalformpokemon'),
(34, 'Can change regional form pokemon', 9, 'change_regionalformpokemon'),
(35, 'Can delete regional form pokemon', 9, 'delete_regionalformpokemon'),
(36, 'Can view regional form pokemon', 9, 'view_regionalformpokemon');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$K1Pb8FtC7vcoovTAZkCoph$PXSGfbmclXt8VC5vu58i3uJAsRbd9QHIN4JGuAfA/ac=', '2021-04-06 18:16:10.801989', 1, 'daniel', '', '', 'daniel.rogowski@onet.pl', 1, 1, '2021-04-06 18:15:47.705392');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'poketch_app', 'pokemon'),
(8, 'poketch_app', 'regionalform'),
(9, 'poketch_app', 'regionalformpokemon'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-04-06 16:19:26.868058'),
(2, 'auth', '0001_initial', '2021-04-06 16:19:27.546259'),
(3, 'admin', '0001_initial', '2021-04-06 16:19:27.731882'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-04-06 16:19:27.741421'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-06 16:19:27.751394'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-04-06 16:19:27.828630'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-04-06 16:19:27.898389'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-04-06 16:19:27.919047'),
(9, 'auth', '0004_alter_user_username_opts', '2021-04-06 16:19:27.928013'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-04-06 16:19:27.996732'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-04-06 16:19:27.999392'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-04-06 16:19:28.007691'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-04-06 16:19:28.025190'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-04-06 16:19:28.054184'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-04-06 16:19:28.073814'),
(16, 'auth', '0011_update_proxy_permissions', '2021-04-06 16:19:28.082892'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-04-06 16:19:28.106129'),
(18, 'poketch_app', '0001_initial', '2021-04-06 16:19:28.141992'),
(19, 'sessions', '0001_initial', '2021-04-06 16:19:28.187256'),
(20, 'poketch_app', '0002_auto_20210406_1949', '2021-04-06 17:49:43.509412'),
(21, 'poketch_app', '0003_auto_20210406_2102', '2021-04-06 19:02:41.818498'),
(22, 'poketch_app', '0004_auto_20210419_1033', '2021-04-19 08:33:15.074102');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('gazqju8cgyciyhcltfk8xu3rlrm8e8jl', '.eJxVjEEOwiAQRe_C2pABCoJL9z0DGWaoVA0kpV0Z765NutDtf-_9l4i4rSVuPS9xZnERSpx-t4T0yHUHfMd6a5JaXZc5yV2RB-1ybJyf18P9OyjYy7ceWOfEDg1zAm8BfQjGOmYKHsBNqC35Cc6GDFmvUGnF4JVyQ3DaUBDvD-gbNzs:1lTqFG:7csEvd656LFQNFabDKKmlTodEIBFdkGofjeSUueazSY', '2021-04-20 18:16:10.805714');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `global_pokedex`
--

CREATE TABLE `global_pokedex` (
  `pokedex_no` int(11) NOT NULL,
  `name` text NOT NULL,
  `gen` int(11) NOT NULL,
  `link` text NOT NULL,
  `image_link` text NOT NULL,
  `type1` text NOT NULL,
  `type2` text NOT NULL,
  `catched` text NOT NULL,
  `tcg_owned` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `global_pokedex`
--

INSERT INTO `global_pokedex` (`pokedex_no`, `name`, `gen`, `link`, `image_link`, `type1`, `type2`, `catched`, `tcg_owned`) VALUES
(258, 'Mudkip', 3, 'https://bulbapedia.bulbagarden.net/wiki/Mudkip_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/6/60/258Mudkip.png/250px-258Mudkip.png', 'Water', 'None', 'Yes', ''),
(259, 'Marshtomp', 3, 'https://bulbapedia.bulbagarden.net/wiki/Marshtomp_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/2/27/259Marshtomp.png/250px-259Marshtomp.png', 'Water', 'Ground', 'Yes', ''),
(260, 'Swampert', 3, 'https://bulbapedia.bulbagarden.net/wiki/Swampert_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/b/b6/260Swampert.png/250px-260Swampert.png', 'Water', 'Ground', 'Yes', ''),
(261, 'Poochyena', 3, 'https://bulbapedia.bulbagarden.net/wiki/Poochyena_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/f/fc/261Poochyena.png/250px-261Poochyena.png', 'Dark', 'None', 'Yes', ''),
(262, 'Mightyena', 3, 'https://bulbapedia.bulbagarden.net/wiki/Mightyena_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/f/f1/262Mightyena.png/250px-262Mightyena.png', 'Dark', 'None', 'Yes', ''),
(263, 'Zigzagoon', 3, 'https://bulbapedia.bulbagarden.net/wiki/Zigzagoon_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/4/47/263Zigzagoon.png/250px-263Zigzagoon.png', 'Normal', 'None', 'Yes', ''),
(264, 'Linoone', 3, 'https://bulbapedia.bulbagarden.net/wiki/Linoone_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/f/f7/264Linoone.png/250px-264Linoone.png', 'Normal', 'None', 'Yes', ''),
(265, 'Wurmple', 3, 'https://bulbapedia.bulbagarden.net/wiki/Wurmple_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/7/76/265Wurmple.png/250px-265Wurmple.png', 'Bug', 'None', 'Yes', ''),
(266, 'Silcoon', 3, 'https://bulbapedia.bulbagarden.net/wiki/Silcoon_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/e/ef/266Silcoon.png/250px-266Silcoon.png', 'Bug', 'None', 'Yes', ''),
(267, 'Beautifly', 3, 'https://bulbapedia.bulbagarden.net/wiki/Beautifly_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/4/4c/267Beautifly.png/250px-267Beautifly.png', 'Bug', 'Flying', 'Yes', ''),
(268, 'Cascoon', 3, 'https://bulbapedia.bulbagarden.net/wiki/Cascoon_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/a/a3/268Cascoon.png/250px-268Cascoon.png', 'Bug', 'None', 'Yes', ''),
(269, 'Dustox', 3, 'https://bulbapedia.bulbagarden.net/wiki/Dustox_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/3/34/269Dustox.png/250px-269Dustox.png', 'Bug', 'Poison', 'Yes', ''),
(270, 'Lotad', 3, 'https://bulbapedia.bulbagarden.net/wiki/Lotad_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/e/ee/270Lotad.png/250px-270Lotad.png', 'Water', 'Grass', '', ''),
(271, 'Lombre', 3, 'https://bulbapedia.bulbagarden.net/wiki/Lombre_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/8/8b/271Lombre.png/250px-271Lombre.png', 'Water', 'Grass', '', ''),
(272, 'Ludicolo', 3, 'https://bulbapedia.bulbagarden.net/wiki/Ludicolo_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/f/ff/272Ludicolo.png/250px-272Ludicolo.png', 'Water', 'Grass', '', ''),
(273, 'Seedot', 3, 'https://bulbapedia.bulbagarden.net/wiki/Seedot_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/8/84/273Seedot.png/250px-273Seedot.png', 'Grass', 'None', 'Yes', ''),
(274, 'Nuzleaf', 3, 'https://bulbapedia.bulbagarden.net/wiki/Nuzleaf_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/0/07/274Nuzleaf.png/250px-274Nuzleaf.png', 'Grass', 'Dark', 'Yes', ''),
(275, 'Shiftry', 3, 'https://bulbapedia.bulbagarden.net/wiki/Shiftry_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/f/f7/275Shiftry.png/250px-275Shiftry.png', 'Grass', 'Dark', 'Yes', ''),
(276, 'Taillow', 3, 'https://bulbapedia.bulbagarden.net/wiki/Taillow_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/e/e4/276Taillow.png/250px-276Taillow.png', 'Normal', 'Flying', 'Yes', ''),
(277, 'Swellow', 3, 'https://bulbapedia.bulbagarden.net/wiki/Swellow_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/4/45/277Swellow.png/250px-277Swellow.png', 'Normal', 'Flying', 'Yes', ''),
(278, 'Wingull', 3, 'https://bulbapedia.bulbagarden.net/wiki/Wingull_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/3/39/278Wingull.png/250px-278Wingull.png', 'Water', 'Flying', 'Yes', ''),
(279, 'Pelipper', 3, 'https://bulbapedia.bulbagarden.net/wiki/Pelipper_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/f/f2/279Pelipper.png/250px-279Pelipper.png', 'Water', 'Flying', 'Yes', ''),
(280, 'Ralts', 3, 'https://bulbapedia.bulbagarden.net/wiki/Ralts_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/e/e1/280Ralts.png/250px-280Ralts.png', 'Psychic', 'Fairy', 'Yes', ''),
(281, 'Kirlia', 3, 'https://bulbapedia.bulbagarden.net/wiki/Kirlia_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/0/00/281Kirlia.png/250px-281Kirlia.png', 'Psychic', 'Fairy', 'Yes', ''),
(282, 'Gardevoir', 3, 'https://bulbapedia.bulbagarden.net/wiki/Gardevoir_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/9/99/282Gardevoir.png/250px-282Gardevoir.png', 'Psychic', 'Fairy', 'Yes', ''),
(283, 'Surskit', 3, 'https://bulbapedia.bulbagarden.net/wiki/Surskit_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/f/f6/283Surskit.png/250px-283Surskit.png', 'Bug', 'Water', 'Yes', ''),
(284, 'Masquerain', 3, 'https://bulbapedia.bulbagarden.net/wiki/Masquerain_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/0/0a/284Masquerain.png/250px-284Masquerain.png', 'Bug', 'Flying', 'Yes', ''),
(285, 'Shroomish', 3, 'https://bulbapedia.bulbagarden.net/wiki/Shroomish_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/d/d8/285Shroomish.png/250px-285Shroomish.png', 'Grass', 'None', '', ''),
(286, 'Breloom', 3, 'https://bulbapedia.bulbagarden.net/wiki/Breloom_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/d/de/286Breloom.png/250px-286Breloom.png', 'Grass', 'Fighting', '', ''),
(287, 'Slakoth', 3, 'https://bulbapedia.bulbagarden.net/wiki/Slakoth_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/d/d2/287Slakoth.png/250px-287Slakoth.png', 'Normal', 'None', 'Yes', ''),
(288, 'Vigoroth', 3, 'https://bulbapedia.bulbagarden.net/wiki/Vigoroth_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/6/61/288Vigoroth.png/250px-288Vigoroth.png', 'Normal', 'None', 'Yes', ''),
(289, 'Slaking', 3, 'https://bulbapedia.bulbagarden.net/wiki/Slaking_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/7/71/289Slaking.png/250px-289Slaking.png', 'Normal', 'None', 'Yes', ''),
(290, 'Nincada', 3, 'https://bulbapedia.bulbagarden.net/wiki/Nincada_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/9/90/290Nincada.png/250px-290Nincada.png', 'Bug', 'Ground', 'Yes', ''),
(291, 'Ninjask', 3, 'https://bulbapedia.bulbagarden.net/wiki/Ninjask_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/7/76/291Ninjask.png/250px-291Ninjask.png', 'Bug', 'Flying', 'Yes', ''),
(292, 'Shedinja', 3, 'https://bulbapedia.bulbagarden.net/wiki/Shedinja_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/5/59/292Shedinja.png/250px-292Shedinja.png', 'Bug', 'Ghost', 'Yes', ''),
(293, 'Whismur', 3, 'https://bulbapedia.bulbagarden.net/wiki/Whismur_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/6/6c/293Whismur.png/250px-293Whismur.png', 'Normal', 'None', 'Yes', ''),
(294, 'Loudred', 3, 'https://bulbapedia.bulbagarden.net/wiki/Loudred_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/1/12/294Loudred.png/250px-294Loudred.png', 'Normal', 'None', 'Yes', ''),
(295, 'Exploud', 3, 'https://bulbapedia.bulbagarden.net/wiki/Exploud_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/1/12/295Exploud.png/250px-295Exploud.png', 'Normal', 'None', 'Yes', ''),
(296, 'Makuhita', 3, 'https://bulbapedia.bulbagarden.net/wiki/Makuhita_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/b/b6/296Makuhita.png/250px-296Makuhita.png', 'Fighting', 'None', 'Yes', ''),
(297, 'Hariyama', 3, 'https://bulbapedia.bulbagarden.net/wiki/Hariyama_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/6/6f/297Hariyama.png/250px-297Hariyama.png', 'Fighting', 'None', 'Yes', ''),
(298, 'Azurill', 3, 'https://bulbapedia.bulbagarden.net/wiki/Azurill_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/a/ac/298Azurill.png/250px-298Azurill.png', 'Normal', 'Fairy', 'Yes', ''),
(299, 'Nosepass', 3, 'https://bulbapedia.bulbagarden.net/wiki/Nosepass_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/8/89/299Nosepass.png/250px-299Nosepass.png', 'Rock', 'None', 'Yes', ''),
(300, 'Skitty', 3, 'https://bulbapedia.bulbagarden.net/wiki/Skitty_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/8/8a/300Skitty.png/250px-300Skitty.png', 'Normal', 'None', 'Yes', ''),
(301, 'Delcatty', 3, 'https://bulbapedia.bulbagarden.net/wiki/Delcatty_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/f/f4/301Delcatty.png/250px-301Delcatty.png', 'Normal', 'None', 'Yes', ''),
(302, 'Sableye', 3, 'https://bulbapedia.bulbagarden.net/wiki/Sableye_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/d/d3/302Sableye.png/250px-302Sableye.png', 'Dark', 'Ghost', '', ''),
(303, 'Mawile', 3, 'https://bulbapedia.bulbagarden.net/wiki/Mawile_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/c/c0/303Mawile.png/250px-303Mawile.png', 'Steel', 'Fairy', '', ''),
(304, 'Aron', 3, 'https://bulbapedia.bulbagarden.net/wiki/Aron_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/b/bb/304Aron.png/250px-304Aron.png', 'Steel', 'Rock', 'Yes', ''),
(305, 'Lairon', 3, 'https://bulbapedia.bulbagarden.net/wiki/Lairon_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/b/bf/305Lairon.png/250px-305Lairon.png', 'Steel', 'Rock', 'Yes', ''),
(306, 'Aggron', 3, 'https://bulbapedia.bulbagarden.net/wiki/Aggron_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/6/6d/306Aggron.png/250px-306Aggron.png', 'Steel', 'Rock', 'Yes', ''),
(307, 'Meditite', 3, 'https://bulbapedia.bulbagarden.net/wiki/Meditite_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/7/71/307Meditite.png/250px-307Meditite.png', 'Fighting', 'Psychic', 'Yes', ''),
(308, 'Medicham', 3, 'https://bulbapedia.bulbagarden.net/wiki/Medicham_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/0/05/308Medicham.png/250px-308Medicham.png', 'Fighting', 'Psychic', 'Yes', ''),
(309, 'Electrike', 3, 'https://bulbapedia.bulbagarden.net/wiki/Electrike_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/4/47/309Electrike.png/250px-309Electrike.png', 'Electric', 'None', 'Yes', ''),
(310, 'Manectric', 3, 'https://bulbapedia.bulbagarden.net/wiki/Manectric_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/b/bb/310Manectric.png/250px-310Manectric.png', 'Electric', 'None', 'Yes', ''),
(311, 'Plusle', 3, 'https://bulbapedia.bulbagarden.net/wiki/Plusle_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/a/a3/311Plusle.png/250px-311Plusle.png', 'Electric', 'None', '', ''),
(312, 'Minun', 3, 'https://bulbapedia.bulbagarden.net/wiki/Minun_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/e/e7/312Minun.png/250px-312Minun.png', 'Electric', 'None', 'Yes', ''),
(313, 'Volbeat', 3, 'https://bulbapedia.bulbagarden.net/wiki/Volbeat_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/d/d6/313Volbeat.png/250px-313Volbeat.png', 'Bug', 'None', 'Yes', ''),
(314, 'Illumise', 3, 'https://bulbapedia.bulbagarden.net/wiki/Illumise_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/5/55/314Illumise.png/250px-314Illumise.png', 'Bug', 'None', 'Yes', ''),
(315, 'Roselia', 3, 'https://bulbapedia.bulbagarden.net/wiki/Roselia_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/f/f1/315Roselia.png/250px-315Roselia.png', 'Grass', 'Poison', 'Yes', ''),
(316, 'Gulpin', 3, 'https://bulbapedia.bulbagarden.net/wiki/Gulpin_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/f/f0/316Gulpin.png/250px-316Gulpin.png', 'Poison', 'None', 'Yes', ''),
(317, 'Swalot', 3, 'https://bulbapedia.bulbagarden.net/wiki/Swalot_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/a/ad/317Swalot.png/250px-317Swalot.png', 'Poison', 'None', 'Yes', ''),
(318, 'Carvanha', 3, 'https://bulbapedia.bulbagarden.net/wiki/Carvanha_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/9/98/318Carvanha.png/250px-318Carvanha.png', 'Water', 'Dark', 'Yes', ''),
(319, 'Sharpedo', 3, 'https://bulbapedia.bulbagarden.net/wiki/Sharpedo_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/a/a8/319Sharpedo.png/250px-319Sharpedo.png', 'Water', 'Dark', 'Yes', ''),
(320, 'Wailmer', 3, 'https://bulbapedia.bulbagarden.net/wiki/Wailmer_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/7/71/320Wailmer.png/250px-320Wailmer.png', 'Water', 'None', 'Yes', ''),
(321, 'Wailord', 3, 'https://bulbapedia.bulbagarden.net/wiki/Wailord_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/b/b9/321Wailord.png/250px-321Wailord.png', 'Water', 'None', 'Yes', ''),
(322, 'Numel', 3, 'https://bulbapedia.bulbagarden.net/wiki/Numel_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/c/c6/322Numel.png/250px-322Numel.png', 'Fire', 'Ground', 'Yes', ''),
(323, 'Camerupt', 3, 'https://bulbapedia.bulbagarden.net/wiki/Camerupt_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/7/7d/323Camerupt.png/250px-323Camerupt.png', 'Fire', 'Ground', 'Yes', ''),
(324, 'Torkoal', 3, 'https://bulbapedia.bulbagarden.net/wiki/Torkoal_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/3/3b/324Torkoal.png/250px-324Torkoal.png', 'Fire', 'None', 'Yes', ''),
(325, 'Spoink', 3, 'https://bulbapedia.bulbagarden.net/wiki/Spoink_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/9/9e/325Spoink.png/250px-325Spoink.png', 'Psychic', 'None', 'Yes', ''),
(326, 'Grumpig', 3, 'https://bulbapedia.bulbagarden.net/wiki/Grumpig_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/5/54/326Grumpig.png/250px-326Grumpig.png', 'Psychic', 'None', 'Yes', ''),
(327, 'Spinda', 3, 'https://bulbapedia.bulbagarden.net/wiki/Spinda_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/8/8f/327Spinda.png/250px-327Spinda.png', 'Normal', 'None', 'Yes', ''),
(328, 'Trapinch', 3, 'https://bulbapedia.bulbagarden.net/wiki/Trapinch_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/7/76/328Trapinch.png/250px-328Trapinch.png', 'Ground', 'None', '', ''),
(329, 'Vibrava', 3, 'https://bulbapedia.bulbagarden.net/wiki/Vibrava_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/a/af/329Vibrava.png/250px-329Vibrava.png', 'Ground', 'Dragon', '', ''),
(330, 'Flygon', 3, 'https://bulbapedia.bulbagarden.net/wiki/Flygon_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/f/f1/330Flygon.png/250px-330Flygon.png', 'Ground', 'Dragon', '', ''),
(331, 'Cacnea', 3, 'https://bulbapedia.bulbagarden.net/wiki/Cacnea_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/1/12/331Cacnea.png/250px-331Cacnea.png', 'Grass', 'None', 'Yes', ''),
(332, 'Cacturne', 3, 'https://bulbapedia.bulbagarden.net/wiki/Cacturne_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/4/41/332Cacturne.png/250px-332Cacturne.png', 'Grass', 'Dark', 'Yes', ''),
(333, 'Swablu', 3, 'https://bulbapedia.bulbagarden.net/wiki/Swablu_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/9/99/333Swablu.png/250px-333Swablu.png', 'Normal', 'Flying', 'Yes', ''),
(334, 'Altaria', 3, 'https://bulbapedia.bulbagarden.net/wiki/Altaria_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/d/da/334Altaria.png/250px-334Altaria.png', 'Dragon', 'Flying', 'Yes', ''),
(335, 'Zangoose', 3, 'https://bulbapedia.bulbagarden.net/wiki/Zangoose_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/d/d3/335Zangoose.png/250px-335Zangoose.png', 'Normal', 'None', 'Yes', ''),
(336, 'Seviper', 3, 'https://bulbapedia.bulbagarden.net/wiki/Seviper_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/d/d6/336Seviper.png/250px-336Seviper.png', 'Poison', 'None', 'Yes', ''),
(337, 'Lunatone', 3, 'https://bulbapedia.bulbagarden.net/wiki/Lunatone_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/e/eb/337Lunatone.png/250px-337Lunatone.png', 'Rock', 'Psychic', 'Yes', ''),
(338, 'Solrock', 3, 'https://bulbapedia.bulbagarden.net/wiki/Solrock_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/9/90/338Solrock.png/250px-338Solrock.png', 'Rock', 'Psychic', 'Yes', ''),
(339, 'Barboach', 3, 'https://bulbapedia.bulbagarden.net/wiki/Barboach_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/6/60/339Barboach.png/250px-339Barboach.png', 'Water', 'Ground', '', ''),
(340, 'Whiscash', 3, 'https://bulbapedia.bulbagarden.net/wiki/Whiscash_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/6/60/340Whiscash.png/250px-340Whiscash.png', 'Water', 'Ground', '', ''),
(341, 'Corphish', 3, 'https://bulbapedia.bulbagarden.net/wiki/Corphish_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/3/3d/341Corphish.png/250px-341Corphish.png', 'Water', 'None', '', ''),
(342, 'Crawdaunt', 3, 'https://bulbapedia.bulbagarden.net/wiki/Crawdaunt_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/f/f4/342Crawdaunt.png/250px-342Crawdaunt.png', 'Water', 'Dark', '', ''),
(343, 'Baltoy', 3, 'https://bulbapedia.bulbagarden.net/wiki/Baltoy_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/8/8b/343Baltoy.png/250px-343Baltoy.png', 'Ground', 'Psychic', 'Yes', ''),
(344, 'Claydol', 3, 'https://bulbapedia.bulbagarden.net/wiki/Claydol_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/0/07/344Claydol.png/250px-344Claydol.png', 'Ground', 'Psychic', 'Yes', ''),
(345, 'Lileep', 3, 'https://bulbapedia.bulbagarden.net/wiki/Lileep_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/3/34/345Lileep.png/250px-345Lileep.png', 'Rock', 'Grass', '', ''),
(346, 'Cradily', 3, 'https://bulbapedia.bulbagarden.net/wiki/Cradily_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/3/38/346Cradily.png/250px-346Cradily.png', 'Rock', 'Grass', '', ''),
(347, 'Anorith', 3, 'https://bulbapedia.bulbagarden.net/wiki/Anorith_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/4/45/347Anorith.png/250px-347Anorith.png', 'Rock', 'Bug', '', ''),
(348, 'Armaldo', 3, 'https://bulbapedia.bulbagarden.net/wiki/Armaldo_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/1/1d/348Armaldo.png/250px-348Armaldo.png', 'Rock', 'Bug', '', ''),
(349, 'Feebas', 3, 'https://bulbapedia.bulbagarden.net/wiki/Feebas_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/4/4b/349Feebas.png/250px-349Feebas.png', 'Water', 'None', '', ''),
(350, 'Milotic', 3, 'https://bulbapedia.bulbagarden.net/wiki/Milotic_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/3/36/350Milotic.png/250px-350Milotic.png', 'Water', 'None', '', ''),
(351, 'Castform', 3, 'https://bulbapedia.bulbagarden.net/wiki/Castform_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/f/f3/351Castform.png/250px-351Castform.png', 'Normal', 'None', 'Yes', ''),
(352, 'Kecleon', 3, 'https://bulbapedia.bulbagarden.net/wiki/Kecleon_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/5/50/352Kecleon.png/250px-352Kecleon.png', 'Normal', 'None', 'Yes', ''),
(353, 'Shuppet', 3, 'https://bulbapedia.bulbagarden.net/wiki/Shuppet_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/4/4b/353Shuppet.png/250px-353Shuppet.png', 'Ghost', 'None', 'Yes', ''),
(354, 'Banette', 3, 'https://bulbapedia.bulbagarden.net/wiki/Banette_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/0/0a/354Banette.png/250px-354Banette.png', 'Ghost', 'None', 'Yes', ''),
(355, 'Duskull', 3, 'https://bulbapedia.bulbagarden.net/wiki/Duskull_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/e/e2/355Duskull.png/250px-355Duskull.png', 'Ghost', 'None', '', ''),
(356, 'Dusclops', 3, 'https://bulbapedia.bulbagarden.net/wiki/Dusclops_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/1/12/356Dusclops.png/250px-356Dusclops.png', 'Ghost', 'None', '', ''),
(357, 'Tropius', 3, 'https://bulbapedia.bulbagarden.net/wiki/Tropius_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/d/dd/357Tropius.png/250px-357Tropius.png', 'Grass', 'Flying', '', ''),
(358, 'Chimecho', 3, 'https://bulbapedia.bulbagarden.net/wiki/Chimecho_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/e/e5/358Chimecho.png/250px-358Chimecho.png', 'Psychic', 'None', 'Yes', ''),
(359, 'Absol', 3, 'https://bulbapedia.bulbagarden.net/wiki/Absol_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/0/00/359Absol.png/250px-359Absol.png', 'Dark', 'None', '', ''),
(360, 'Wynaut', 3, 'https://bulbapedia.bulbagarden.net/wiki/Wynaut_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/d/d0/360Wynaut.png/250px-360Wynaut.png', 'Psychic', 'None', 'Yes', ''),
(361, 'Snorunt', 3, 'https://bulbapedia.bulbagarden.net/wiki/Snorunt_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/6/6b/361Snorunt.png/250px-361Snorunt.png', 'Ice', 'None', 'Yes', ''),
(362, 'Glalie', 3, 'https://bulbapedia.bulbagarden.net/wiki/Glalie_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/6/62/362Glalie.png/250px-362Glalie.png', 'Ice', 'None', 'Yes', ''),
(363, 'Spheal', 3, 'https://bulbapedia.bulbagarden.net/wiki/Spheal_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/9/9f/363Spheal.png/250px-363Spheal.png', 'Ice', 'Water', '', ''),
(364, 'Sealeo', 3, 'https://bulbapedia.bulbagarden.net/wiki/Sealeo_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/f/f6/364Sealeo.png/250px-364Sealeo.png', 'Ice', 'Water', '', ''),
(365, 'Walrein', 3, 'https://bulbapedia.bulbagarden.net/wiki/Walrein_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/6/61/365Walrein.png/250px-365Walrein.png', 'Ice', 'Water', '', ''),
(366, 'Clamperl', 3, 'https://bulbapedia.bulbagarden.net/wiki/Clamperl_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/1/11/366Clamperl.png/250px-366Clamperl.png', 'Water', 'None', 'Yes', ''),
(367, 'Huntail', 3, 'https://bulbapedia.bulbagarden.net/wiki/Huntail_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/1/11/367Huntail.png/250px-367Huntail.png', 'Water', 'None', 'Yes', ''),
(368, 'Gorebyss', 3, 'https://bulbapedia.bulbagarden.net/wiki/Gorebyss_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/3/37/368Gorebyss.png/250px-368Gorebyss.png', 'Water', 'None', 'Yes', ''),
(369, 'Relicanth', 3, 'https://bulbapedia.bulbagarden.net/wiki/Relicanth_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/7/78/369Relicanth.png/250px-369Relicanth.png', 'Water', 'Rock', 'Yes', ''),
(370, 'Luvdisc', 3, 'https://bulbapedia.bulbagarden.net/wiki/Luvdisc_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/1/1d/370Luvdisc.png/250px-370Luvdisc.png', 'Water', 'None', 'Yes', ''),
(371, 'Bagon', 3, 'https://bulbapedia.bulbagarden.net/wiki/Bagon_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/d/d2/371Bagon.png/250px-371Bagon.png', 'Dragon', 'None', '', ''),
(372, 'Shelgon', 3, 'https://bulbapedia.bulbagarden.net/wiki/Shelgon_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/a/a5/372Shelgon.png/250px-372Shelgon.png', 'Dragon', 'None', '', ''),
(373, 'Salamence', 3, 'https://bulbapedia.bulbagarden.net/wiki/Salamence_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/4/41/373Salamence.png/250px-373Salamence.png', 'Dragon', 'Flying', '', ''),
(374, 'Beldum', 3, 'https://bulbapedia.bulbagarden.net/wiki/Beldum_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/d/d4/374Beldum.png/250px-374Beldum.png', 'Steel', 'Psychic', 'Yes', ''),
(375, 'Metang', 3, 'https://bulbapedia.bulbagarden.net/wiki/Metang_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/6/62/375Metang.png/250px-375Metang.png', 'Steel', 'Psychic', 'Yes', ''),
(376, 'Metagross', 3, 'https://bulbapedia.bulbagarden.net/wiki/Metagross_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/0/05/376Metagross.png/250px-376Metagross.png', 'Steel', 'Psychic', 'Yes', ''),
(377, 'Regirock', 3, 'https://bulbapedia.bulbagarden.net/wiki/Regirock_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/a/aa/377Regirock.png/250px-377Regirock.png', 'Rock', 'None', '', ''),
(378, 'Regice', 3, 'https://bulbapedia.bulbagarden.net/wiki/Regice_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/f/fe/378Regice.png/250px-378Regice.png', 'Ice', 'None', '', ''),
(379, 'Registeel', 3, 'https://bulbapedia.bulbagarden.net/wiki/Registeel_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/2/22/379Registeel.png/250px-379Registeel.png', 'Steel', 'None', '', ''),
(380, 'Latias', 3, 'https://bulbapedia.bulbagarden.net/wiki/Latias_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/2/24/380Latias.png/250px-380Latias.png', 'Dragon', 'Psychic', 'Yes', ''),
(381, 'Latios', 3, 'https://bulbapedia.bulbagarden.net/wiki/Latios_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/5/52/381Latios.png/250px-381Latios.png', 'Dragon', 'Psychic', '', ''),
(382, 'Kyogre', 3, 'https://bulbapedia.bulbagarden.net/wiki/Kyogre_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/4/41/382Kyogre.png/250px-382Kyogre.png', 'Water', 'None', 'Yes', ''),
(383, 'Groudon', 3, 'https://bulbapedia.bulbagarden.net/wiki/Groudon_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/7/70/383Groudon.png/250px-383Groudon.png', 'Ground', 'None', 'Yes', ''),
(384, 'Rayquaza', 3, 'https://bulbapedia.bulbagarden.net/wiki/Rayquaza_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/e/e4/384Rayquaza.png/250px-384Rayquaza.png', 'Dragon', 'Flying', 'Yes', ''),
(385, 'Jirachi', 3, 'https://bulbapedia.bulbagarden.net/wiki/Jirachi_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/8/85/385Jirachi.png/250px-385Jirachi.png', 'Steel', 'Psychic', '', ''),
(386, 'Deoxys', 3, 'https://bulbapedia.bulbagarden.net/wiki/Deoxys_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/e/e7/386Deoxys.png/250px-386Deoxys.png', 'Psychic', 'None', 'Yes', ''),
(387, 'Turtwig', 4, 'https://bulbapedia.bulbagarden.net/wiki/Turtwig_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/5/5c/387Turtwig.png/250px-387Turtwig.png', 'Grass', 'None', '', ''),
(388, 'Grotle', 4, 'https://bulbapedia.bulbagarden.net/wiki/Grotle_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/5/53/388Grotle.png/250px-388Grotle.png', 'Grass', 'None', '', ''),
(389, 'Torterra', 4, 'https://bulbapedia.bulbagarden.net/wiki/Torterra_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/d/df/389Torterra.png/250px-389Torterra.png', 'Grass', 'Ground', '', ''),
(390, 'Chimchar', 4, 'https://bulbapedia.bulbagarden.net/wiki/Chimchar_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/7/76/390Chimchar.png/250px-390Chimchar.png', 'Fire', 'None', '', ''),
(391, 'Monferno', 4, 'https://bulbapedia.bulbagarden.net/wiki/Monferno_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/2/2e/391Monferno.png/250px-391Monferno.png', 'Fire', 'Fighting', '', ''),
(392, 'Infernape', 4, 'https://bulbapedia.bulbagarden.net/wiki/Infernape_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/f/fb/392Infernape.png/250px-392Infernape.png', 'Fire', 'Fighting', '', ''),
(393, 'Piplup', 4, 'https://bulbapedia.bulbagarden.net/wiki/Piplup_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/b/b1/393Piplup.png/250px-393Piplup.png', 'Water', 'None', '', ''),
(394, 'Prinplup', 4, 'https://bulbapedia.bulbagarden.net/wiki/Prinplup_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/d/df/394Prinplup.png/250px-394Prinplup.png', 'Water', 'None', '', ''),
(395, 'Empoleon', 4, 'https://bulbapedia.bulbagarden.net/wiki/Empoleon_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/7/7f/395Empoleon.png/250px-395Empoleon.png', 'Water', 'Steel', '', ''),
(396, 'Starly', 4, 'https://bulbapedia.bulbagarden.net/wiki/Starly_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/a/af/396Starly.png/250px-396Starly.png', 'Normal', 'Flying', 'Yes', ''),
(397, 'Staravia', 4, 'https://bulbapedia.bulbagarden.net/wiki/Staravia_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/f/f8/397Staravia.png/250px-397Staravia.png', 'Normal', 'Flying', 'Yes', ''),
(398, 'Staraptor', 4, 'https://bulbapedia.bulbagarden.net/wiki/Staraptor_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/5/5e/398Staraptor.png/250px-398Staraptor.png', 'Normal', 'Flying', 'Yes', ''),
(399, 'Bidoof', 4, 'https://bulbapedia.bulbagarden.net/wiki/Bidoof_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/f/f5/399Bidoof.png/250px-399Bidoof.png', 'Normal', 'None', '', ''),
(400, 'Bibarel', 4, 'https://bulbapedia.bulbagarden.net/wiki/Bibarel_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/9/91/400Bibarel.png/250px-400Bibarel.png', 'Normal', 'Water', '', ''),
(401, 'Kricketot', 4, 'https://bulbapedia.bulbagarden.net/wiki/Kricketot_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/3/33/401Kricketot.png/250px-401Kricketot.png', 'Bug', 'None', 'Yes', ''),
(402, 'Kricketune', 4, 'https://bulbapedia.bulbagarden.net/wiki/Kricketune_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/e/e5/402Kricketune.png/250px-402Kricketune.png', 'Bug', 'None', 'Yes', ''),
(403, 'Shinx', 4, 'https://bulbapedia.bulbagarden.net/wiki/Shinx_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/3/32/403Shinx.png/250px-403Shinx.png', 'Electric', 'None', 'Yes', ''),
(404, 'Luxio', 4, 'https://bulbapedia.bulbagarden.net/wiki/Luxio_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/4/49/404Luxio.png/250px-404Luxio.png', 'Electric', 'None', 'Yes', ''),
(405, 'Luxray', 4, 'https://bulbapedia.bulbagarden.net/wiki/Luxray_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/a/a7/405Luxray.png/250px-405Luxray.png', 'Electric', 'None', 'Yes', ''),
(406, 'Budew', 4, 'https://bulbapedia.bulbagarden.net/wiki/Budew_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/d/d3/406Budew.png/250px-406Budew.png', 'Grass', 'Poison', 'Yes', ''),
(407, 'Roserade', 4, 'https://bulbapedia.bulbagarden.net/wiki/Roserade_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/0/05/407Roserade.png/250px-407Roserade.png', 'Grass', 'Poison', '', ''),
(408, 'Cranidos', 4, 'https://bulbapedia.bulbagarden.net/wiki/Cranidos_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/c/cd/408Cranidos.png/250px-408Cranidos.png', 'Rock', 'None', '', ''),
(409, 'Rampardos', 4, 'https://bulbapedia.bulbagarden.net/wiki/Rampardos_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/8/8a/409Rampardos.png/250px-409Rampardos.png', 'Rock', 'None', '', ''),
(410, 'Shieldon', 4, 'https://bulbapedia.bulbagarden.net/wiki/Shieldon_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/e/e2/410Shieldon.png/250px-410Shieldon.png', 'Rock', 'Steel', '', ''),
(411, 'Bastiodon', 4, 'https://bulbapedia.bulbagarden.net/wiki/Bastiodon_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/b/bc/411Bastiodon.png/250px-411Bastiodon.png', 'Rock', 'Steel', '', ''),
(412, 'Burmy', 4, 'https://bulbapedia.bulbagarden.net/wiki/Burmy_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/c/c9/412Burmy-Plant.png/250px-412Burmy-Plant.png', 'Bug', 'None', '', ''),
(413, 'Wormadam', 4, 'https://bulbapedia.bulbagarden.net/wiki/Wormadam_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/d/db/413Wormadam-Plant.png/250px-413Wormadam-Plant.png', 'Bug', 'Grass', '', ''),
(414, 'Mothim', 4, 'https://bulbapedia.bulbagarden.net/wiki/Mothim_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/1/18/414Mothim.png/250px-414Mothim.png', 'Bug', 'Flying', '', ''),
(415, 'Combee', 4, 'https://bulbapedia.bulbagarden.net/wiki/Combee_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/b/b6/415Combee.png/250px-415Combee.png', 'Bug', 'Flying', 'Yes', ''),
(416, 'Vespiquen', 4, 'https://bulbapedia.bulbagarden.net/wiki/Vespiquen_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/2/2c/416Vespiquen.png/250px-416Vespiquen.png', 'Bug', 'Flying', 'Yes', ''),
(417, 'Pachirisu', 4, 'https://bulbapedia.bulbagarden.net/wiki/Pachirisu_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/f/f4/417Pachirisu.png/250px-417Pachirisu.png', 'Electric', 'None', 'Yes', ''),
(418, 'Buizel', 4, 'https://bulbapedia.bulbagarden.net/wiki/Buizel_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/8/83/418Buizel.png/250px-418Buizel.png', 'Water', 'None', 'Yes', ''),
(419, 'Floatzel', 4, 'https://bulbapedia.bulbagarden.net/wiki/Floatzel_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/b/bf/419Floatzel.png/250px-419Floatzel.png', 'Water', 'None', 'Yes', ''),
(420, 'Cherubi', 4, 'https://bulbapedia.bulbagarden.net/wiki/Cherubi_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/a/a7/420Cherubi.png/250px-420Cherubi.png', 'Grass', 'None', '', ''),
(421, 'Cherrim', 4, 'https://bulbapedia.bulbagarden.net/wiki/Cherrim_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/2/25/421Cherrim-Overcast.png/250px-421Cherrim-Overcast.png', 'Grass', 'None', '', ''),
(422, 'Shellos', 4, 'https://bulbapedia.bulbagarden.net/wiki/Shellos_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/7/72/422Shellos.png/250px-422Shellos.png', 'Water', 'None', '', ''),
(423, 'Gastrodon', 4, 'https://bulbapedia.bulbagarden.net/wiki/Gastrodon_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/1/18/423Gastrodon.png/250px-423Gastrodon.png', 'Water', 'Ground', '', ''),
(424, 'Ambipom', 4, 'https://bulbapedia.bulbagarden.net/wiki/Ambipom_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/8/86/424Ambipom.png/250px-424Ambipom.png', 'Normal', 'None', 'Yes', ''),
(425, 'Drifloon', 4, 'https://bulbapedia.bulbagarden.net/wiki/Drifloon_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/e/eb/425Drifloon.png/250px-425Drifloon.png', 'Ghost', 'Flying', '', ''),
(426, 'Drifblim', 4, 'https://bulbapedia.bulbagarden.net/wiki/Drifblim_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/7/71/426Drifblim.png/250px-426Drifblim.png', 'Ghost', 'Flying', '', ''),
(427, 'Buneary', 4, 'https://bulbapedia.bulbagarden.net/wiki/Buneary_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/a/a7/427Buneary.png/250px-427Buneary.png', 'Normal', 'None', '', ''),
(428, 'Lopunny', 4, 'https://bulbapedia.bulbagarden.net/wiki/Lopunny_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/c/c9/428Lopunny.png/250px-428Lopunny.png', 'Normal', 'None', '', ''),
(429, 'Mismagius', 4, 'https://bulbapedia.bulbagarden.net/wiki/Mismagius_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/b/b4/429Mismagius.png/250px-429Mismagius.png', 'Ghost', 'None', '', ''),
(430, 'Honchkrow', 4, 'https://bulbapedia.bulbagarden.net/wiki/Honchkrow_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/4/46/430Honchkrow.png/250px-430Honchkrow.png', 'Dark', 'Flying', 'Yes', ''),
(431, 'Glameow', 4, 'https://bulbapedia.bulbagarden.net/wiki/Glameow_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/2/26/431Glameow.png/250px-431Glameow.png', 'Normal', 'None', 'Yes', ''),
(432, 'Purugly', 4, 'https://bulbapedia.bulbagarden.net/wiki/Purugly_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/8/80/432Purugly.png/250px-432Purugly.png', 'Normal', 'None', 'Yes', ''),
(433, 'Chingling', 4, 'https://bulbapedia.bulbagarden.net/wiki/Chingling_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/e/ed/433Chingling.png/250px-433Chingling.png', 'Psychic', 'None', 'Yes', ''),
(434, 'Stunky', 4, 'https://bulbapedia.bulbagarden.net/wiki/Stunky_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/7/75/434Stunky.png/250px-434Stunky.png', 'Poison', 'Dark', 'Yes', ''),
(435, 'Skuntank', 4, 'https://bulbapedia.bulbagarden.net/wiki/Skuntank_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/b/bc/435Skuntank.png/250px-435Skuntank.png', 'Poison', 'Dark', 'Yes', ''),
(436, 'Bronzor', 4, 'https://bulbapedia.bulbagarden.net/wiki/Bronzor_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/c/c1/436Bronzor.png/250px-436Bronzor.png', 'Steel', 'Psychic', 'Yes', ''),
(437, 'Bronzong', 4, 'https://bulbapedia.bulbagarden.net/wiki/Bronzong_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/a/aa/437Bronzong.png/250px-437Bronzong.png', 'Steel', 'Psychic', 'Yes', ''),
(438, 'Bonsly', 4, 'https://bulbapedia.bulbagarden.net/wiki/Bonsly_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/e/e2/438Bonsly.png/250px-438Bonsly.png', 'Rock', 'None', 'Yes', ''),
(439, 'Mime Jr.', 4, 'https://bulbapedia.bulbagarden.net/wiki/Mime%20Jr._(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/3/37/439Mime_Jr.png/250px-439Mime_Jr.png', 'Psychic', 'Fairy', 'Yes', ''),
(440, 'Happiny', 4, 'https://bulbapedia.bulbagarden.net/wiki/Happiny_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/2/27/440Happiny.png/250px-440Happiny.png', 'Normal', 'None', '', ''),
(441, 'Chatot', 4, 'https://bulbapedia.bulbagarden.net/wiki/Chatot_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/b/bf/441Chatot.png/250px-441Chatot.png', 'Normal', 'Flying', 'Yes', ''),
(442, 'Spiritomb', 4, 'https://bulbapedia.bulbagarden.net/wiki/Spiritomb_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/8/8e/442Spiritomb.png/250px-442Spiritomb.png', 'Ghost', 'Dark', '', ''),
(443, 'Gible', 4, 'https://bulbapedia.bulbagarden.net/wiki/Gible_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/6/68/443Gible.png/250px-443Gible.png', 'Dragon', 'Ground', '', ''),
(444, 'Gabite', 4, 'https://bulbapedia.bulbagarden.net/wiki/Gabite_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/9/9d/444Gabite.png/250px-444Gabite.png', 'Dragon', 'Ground', '', ''),
(445, 'Garchomp', 4, 'https://bulbapedia.bulbagarden.net/wiki/Garchomp_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/f/fa/445Garchomp.png/250px-445Garchomp.png', 'Dragon', 'Ground', '', ''),
(446, 'Munchlax', 4, 'https://bulbapedia.bulbagarden.net/wiki/Munchlax_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/b/b2/446Munchlax.png/250px-446Munchlax.png', 'Normal', 'None', 'Yes', ''),
(447, 'Riolu', 4, 'https://bulbapedia.bulbagarden.net/wiki/Riolu_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/a/a2/447Riolu.png/250px-447Riolu.png', 'Fighting', 'None', 'Yes', ''),
(448, 'Lucario', 4, 'https://bulbapedia.bulbagarden.net/wiki/Lucario_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/d/d7/448Lucario.png/250px-448Lucario.png', 'Fighting', 'Steel', 'Yes', ''),
(449, 'Hippopotas', 4, 'https://bulbapedia.bulbagarden.net/wiki/Hippopotas_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/a/ab/449Hippopotas.png/250px-449Hippopotas.png', 'Ground', 'None', 'Yes', ''),
(450, 'Hippowdon', 4, 'https://bulbapedia.bulbagarden.net/wiki/Hippowdon_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/5/5f/450Hippowdon.png/250px-450Hippowdon.png', 'Ground', 'None', 'Yes', ''),
(451, 'Skorupi', 4, 'https://bulbapedia.bulbagarden.net/wiki/Skorupi_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/4/47/451Skorupi.png/250px-451Skorupi.png', 'Poison', 'Bug', '', ''),
(452, 'Drapion', 4, 'https://bulbapedia.bulbagarden.net/wiki/Drapion_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/1/13/452Drapion.png/250px-452Drapion.png', 'Poison', 'Dark', '', ''),
(453, 'Croagunk', 4, 'https://bulbapedia.bulbagarden.net/wiki/Croagunk_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/f/fa/453Croagunk.png/250px-453Croagunk.png', 'Poison', 'Fighting', '', ''),
(454, 'Toxicroak', 4, 'https://bulbapedia.bulbagarden.net/wiki/Toxicroak_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/8/8b/454Toxicroak.png/250px-454Toxicroak.png', 'Poison', 'Fighting', '', ''),
(455, 'Carnivine', 4, 'https://bulbapedia.bulbagarden.net/wiki/Carnivine_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/d/df/455Carnivine.png/250px-455Carnivine.png', 'Grass', 'None', '', ''),
(456, 'Finneon', 4, 'https://bulbapedia.bulbagarden.net/wiki/Finneon_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/4/45/456Finneon.png/250px-456Finneon.png', 'Water', 'None', '', ''),
(457, 'Lumineon', 4, 'https://bulbapedia.bulbagarden.net/wiki/Lumineon_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/f/f0/457Lumineon.png/250px-457Lumineon.png', 'Water', 'None', '', ''),
(458, 'Mantyke', 4, 'https://bulbapedia.bulbagarden.net/wiki/Mantyke_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/b/bc/458Mantyke.png/250px-458Mantyke.png', 'Water', 'Flying', '', ''),
(459, 'Snover', 4, 'https://bulbapedia.bulbagarden.net/wiki/Snover_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/d/d2/459Snover.png/250px-459Snover.png', 'Grass', 'Ice', '', ''),
(460, 'Abomasnow', 4, 'https://bulbapedia.bulbagarden.net/wiki/Abomasnow_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/3/3b/460Abomasnow.png/250px-460Abomasnow.png', 'Grass', 'Ice', '', ''),
(461, 'Weavile', 4, 'https://bulbapedia.bulbagarden.net/wiki/Weavile_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/d/d2/461Weavile.png/250px-461Weavile.png', 'Dark', 'Ice', '', ''),
(462, 'Magnezone', 4, 'https://bulbapedia.bulbagarden.net/wiki/Magnezone_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/5/53/462Magnezone.png/250px-462Magnezone.png', 'Electric', 'Steel', '', ''),
(463, 'Lickilicky', 4, 'https://bulbapedia.bulbagarden.net/wiki/Lickilicky_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/8/8e/463Lickilicky.png/250px-463Lickilicky.png', 'Normal', 'None', 'Yes', ''),
(464, 'Rhyperior', 4, 'https://bulbapedia.bulbagarden.net/wiki/Rhyperior_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/d/d9/464Rhyperior.png/250px-464Rhyperior.png', 'Ground', 'Rock', 'Yes', ''),
(465, 'Tangrowth', 4, 'https://bulbapedia.bulbagarden.net/wiki/Tangrowth_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/3/32/465Tangrowth.png/250px-465Tangrowth.png', 'Grass', 'None', '', ''),
(466, 'Electivire', 4, 'https://bulbapedia.bulbagarden.net/wiki/Electivire_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/2/23/466Electivire.png/250px-466Electivire.png', 'Electric', 'None', 'Yes', ''),
(467, 'Magmortar', 4, 'https://bulbapedia.bulbagarden.net/wiki/Magmortar_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/6/60/467Magmortar.png/250px-467Magmortar.png', 'Fire', 'None', '', ''),
(468, 'Togekiss', 4, 'https://bulbapedia.bulbagarden.net/wiki/Togekiss_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/8/87/468Togekiss.png/250px-468Togekiss.png', 'Fairy', 'Flying', '', ''),
(469, 'Yanmega', 4, 'https://bulbapedia.bulbagarden.net/wiki/Yanmega_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/e/e6/469Yanmega.png/250px-469Yanmega.png', 'Bug', 'Flying', '', ''),
(470, 'Leafeon', 4, 'https://bulbapedia.bulbagarden.net/wiki/Leafeon_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/f/f5/470Leafeon.png/250px-470Leafeon.png', 'Grass', 'None', '', ''),
(471, 'Glaceon', 4, 'https://bulbapedia.bulbagarden.net/wiki/Glaceon_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/2/23/471Glaceon.png/250px-471Glaceon.png', 'Ice', 'None', '', ''),
(472, 'Gliscor', 4, 'https://bulbapedia.bulbagarden.net/wiki/Gliscor_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/a/ac/472Gliscor.png/250px-472Gliscor.png', 'Ground', 'Flying', '', ''),
(473, 'Mamoswine', 4, 'https://bulbapedia.bulbagarden.net/wiki/Mamoswine_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/d/d0/473Mamoswine.png/250px-473Mamoswine.png', 'Ice', 'Ground', '', ''),
(474, 'Porygon-Z', 4, 'https://bulbapedia.bulbagarden.net/wiki/Porygon-Z_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/2/24/474Porygon-Z.png/250px-474Porygon-Z.png', 'Normal', 'None', 'Yes', ''),
(475, 'Gallade', 4, 'https://bulbapedia.bulbagarden.net/wiki/Gallade_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/5/58/475Gallade.png/250px-475Gallade.png', 'Psychic', 'Fighting', 'Yes', ''),
(476, 'Probopass', 4, 'https://bulbapedia.bulbagarden.net/wiki/Probopass_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/a/a6/476Probopass.png/250px-476Probopass.png', 'Rock', 'Steel', 'Yes', ''),
(477, 'Dusknoir', 4, 'https://bulbapedia.bulbagarden.net/wiki/Dusknoir_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/4/4f/477Dusknoir.png/250px-477Dusknoir.png', 'Ghost', 'None', '', ''),
(478, 'Froslass', 4, 'https://bulbapedia.bulbagarden.net/wiki/Froslass_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/a/a2/478Froslass.png/250px-478Froslass.png', 'Ice', 'Ghost', 'Yes', ''),
(479, 'Rotom', 4, 'https://bulbapedia.bulbagarden.net/wiki/Rotom_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/c/c5/479Rotom.png/250px-479Rotom.png', 'Electric', 'Ghost', 'Yes', ''),
(480, 'Uxie', 4, 'https://bulbapedia.bulbagarden.net/wiki/Uxie_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/e/ef/480Uxie.png/250px-480Uxie.png', 'Psychic', 'None', 'Yes', ''),
(481, 'Mesprit', 4, 'https://bulbapedia.bulbagarden.net/wiki/Mesprit_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/4/40/481Mesprit.png/250px-481Mesprit.png', 'Psychic', 'None', 'Yes', ''),
(482, 'Azelf', 4, 'https://bulbapedia.bulbagarden.net/wiki/Azelf_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/d/d0/482Azelf.png/250px-482Azelf.png', 'Psychic', 'None', 'Yes', ''),
(483, 'Dialga', 4, 'https://bulbapedia.bulbagarden.net/wiki/Dialga_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/8/8a/483Dialga.png/250px-483Dialga.png', 'Steel', 'Dragon', 'Yes', ''),
(484, 'Palkia', 4, 'https://bulbapedia.bulbagarden.net/wiki/Palkia_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/6/66/484Palkia.png/250px-484Palkia.png', 'Water', 'Dragon', 'Yes', ''),
(485, 'Heatran', 4, 'https://bulbapedia.bulbagarden.net/wiki/Heatran_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/b/b7/485Heatran.png/250px-485Heatran.png', 'Fire', 'Steel', '', ''),
(486, 'Regigigas', 4, 'https://bulbapedia.bulbagarden.net/wiki/Regigigas_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/a/a1/486Regigigas.png/250px-486Regigigas.png', 'Normal', 'None', '', ''),
(487, 'Giratina', 4, 'https://bulbapedia.bulbagarden.net/wiki/Giratina_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/c/c5/487Giratina-Altered.png/250px-487Giratina-Altered.png', 'Ghost', 'Dragon', 'Yes', ''),
(488, '	Cresselia', 4, 'https://bulbapedia.bulbagarden.net/wiki/Cresselia_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/4/4a/488Cresselia.png/375px-488Cresselia.png', 'Psychic', 'None', '', ''),
(489, 'Phione', 4, 'https://bulbapedia.bulbagarden.net/wiki/Phione_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/7/72/489Phione.png/250px-489Phione.png', 'Water', 'None', '', ''),
(490, '	Manaphy', 4, 'https://bulbapedia.bulbagarden.net/wiki/Manaphy_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/2/2e/490Manaphy.png/375px-490Manaphy.png', 'Water', 'None', '', ''),
(491, 'Darkrai', 4, 'https://bulbapedia.bulbagarden.net/wiki/Darkrai_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/6/6d/491Darkrai.png/250px-491Darkrai.png', 'Dark', 'None', '', ''),
(492, 'Shaymin', 4, 'https://bulbapedia.bulbagarden.net/wiki/Shaymin_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/0/05/492Shaymin-Land.png/250px-492Shaymin-Land.png', 'Grass', 'None', '', ''),
(493, 'Arceus', 4, 'https://bulbapedia.bulbagarden.net/wiki/Arceus_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/f/fc/493Arceus.png/250px-493Arceus.png', 'Normal', 'None', '', ''),
(494, 'Victini', 5, 'https://bulbapedia.bulbagarden.net/wiki/Victini_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/6/60/494Victini.png/250px-494Victini.png', 'Psychic', 'Fire', '', ''),
(495, 'Snivy', 5, 'https://bulbapedia.bulbagarden.net/wiki/Snivy_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/7/75/495Snivy.png/250px-495Snivy.png', 'Grass', 'None', '', ''),
(496, 'Servine', 5, 'https://bulbapedia.bulbagarden.net/wiki/Servine_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/7/73/496Servine.png/250px-496Servine.png', 'Grass', 'None', '', ''),
(497, 'Serperior', 5, 'https://bulbapedia.bulbagarden.net/wiki/Serperior_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/b/b7/497Serperior.png/250px-497Serperior.png', 'Grass', 'None', '', ''),
(498, 'Tepig', 5, 'https://bulbapedia.bulbagarden.net/wiki/Tepig_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/5/5b/498Tepig.png/250px-498Tepig.png', 'Fire', 'None', '', ''),
(499, 'Pignite', 5, 'https://bulbapedia.bulbagarden.net/wiki/Pignite_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/e/e8/499Pignite.png/250px-499Pignite.png', 'Fire', 'Fighting', '', ''),
(500, 'Emboar', 5, 'https://bulbapedia.bulbagarden.net/wiki/Emboar_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/1/18/500Emboar.png/250px-500Emboar.png', 'Fire', 'Fighting', 'Yes', ''),
(501, 'Oshawott', 5, 'https://bulbapedia.bulbagarden.net/wiki/Oshawott_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/3/3b/501Oshawott.png/250px-501Oshawott.png', 'Water', 'None', '', ''),
(502, 'Dewott', 5, 'https://bulbapedia.bulbagarden.net/wiki/Dewott_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/e/e4/502Dewott.png/250px-502Dewott.png', 'Water', 'None', '', ''),
(503, 'Samurott', 5, 'https://bulbapedia.bulbagarden.net/wiki/Samurott_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/b/b5/503Samurott.png/250px-503Samurott.png', 'Water', 'None', '', ''),
(504, 'Patrat', 5, 'https://bulbapedia.bulbagarden.net/wiki/Patrat_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/c/cb/504Patrat.png/250px-504Patrat.png', 'Normal', 'None', 'Yes', ''),
(505, 'Watchog', 5, 'https://bulbapedia.bulbagarden.net/wiki/Watchog_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/3/3e/505Watchog.png/250px-505Watchog.png', 'Normal', 'None', 'Yes', ''),
(506, 'Lillipup', 5, 'https://bulbapedia.bulbagarden.net/wiki/Lillipup_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/7/7e/506Lillipup.png/250px-506Lillipup.png', 'Normal', 'None', 'Yes', ''),
(507, 'Herdier', 5, 'https://bulbapedia.bulbagarden.net/wiki/Herdier_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/9/96/507Herdier.png/250px-507Herdier.png', 'Normal', 'None', 'Yes', ''),
(508, 'Stoutland', 5, 'https://bulbapedia.bulbagarden.net/wiki/Stoutland_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/3/3e/508Stoutland.png/250px-508Stoutland.png', 'Normal', 'None', 'Yes', ''),
(509, 'Purrloin', 5, 'https://bulbapedia.bulbagarden.net/wiki/Purrloin_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/4/46/509Purrloin.png/250px-509Purrloin.png', 'Dark', 'None', 'Yes', ''),
(510, 'Liepard', 5, 'https://bulbapedia.bulbagarden.net/wiki/Liepard_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/0/09/510Liepard.png/250px-510Liepard.png', 'Dark', 'None', 'Yes', ''),
(511, 'Pansage', 5, 'https://bulbapedia.bulbagarden.net/wiki/Pansage_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/6/6b/511Pansage.png/250px-511Pansage.png', 'Grass', 'None', 'Yes', ''),
(512, 'Simisage', 5, 'https://bulbapedia.bulbagarden.net/wiki/Simisage_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/2/24/512Simisage.png/250px-512Simisage.png', 'Grass', 'None', 'Yes', ''),
(513, 'Pansear', 5, 'https://bulbapedia.bulbagarden.net/wiki/Pansear_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/e/e1/513Pansear.png/250px-513Pansear.png', 'Fire', 'None', 'Yes', ''),
(514, 'Simisear', 5, 'https://bulbapedia.bulbagarden.net/wiki/Simisear_(Pokémon)', 'https://cdn.bulbagarden.net/upload/thumb/7/7c/514Simisear.png/250px-514Simisear.png', 'Fire', 'None', 'Yes', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `poketch_app_pokemon`
--

CREATE TABLE `poketch_app_pokemon` (
  `id` bigint(20) NOT NULL,
  `pokemon_number` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `generation` int(11) NOT NULL,
  `article_link` varchar(255) NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `type1` varchar(255) NOT NULL,
  `type2` varchar(255) NOT NULL,
  `console_owned` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `poketch_app_pokemon`
--

INSERT INTO `poketch_app_pokemon` (`id`, `pokemon_number`, `name`, `generation`, `article_link`, `image_link`, `type1`, `type2`, `console_owned`, `note`) VALUES
(1, 1, 'Bulbasaur', 1, 'https://bulbapedia.bulbagarden.net/wiki/Bulbasaur_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/21/001Bulbasaur.png/250px-001Bulbasaur.png', 'Grass', 'Poison', 'Yes', ''),
(2, 2, 'Ivysaur', 1, 'https://bulbapedia.bulbagarden.net/wiki/Ivysaur_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/73/002Ivysaur.png/250px-002Ivysaur.png', 'Grass', 'Poison', 'Yes', ''),
(3, 3, 'Venusaur', 1, 'https://bulbapedia.bulbagarden.net/wiki/Venusaur_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/ae/003Venusaur.png/250px-003Venusaur.png', 'Grass', 'Poison', 'Yes', ''),
(4, 4, 'Charmander', 1, 'https://bulbapedia.bulbagarden.net/wiki/Charmander_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/73/004Charmander.png/250px-004Charmander.png', 'Fire', 'None', 'Yes', ''),
(5, 5, 'Charmeleon', 1, 'https://bulbapedia.bulbagarden.net/wiki/Charmeleon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4a/005Charmeleon.png/250px-005Charmeleon.png', 'Fire', 'None', 'Yes', ''),
(6, 6, 'Charizard', 1, 'https://bulbapedia.bulbagarden.net/wiki/Charizard_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/7e/006Charizard.png/250px-006Charizard.png', 'Fire', 'Flying', 'Yes', ''),
(7, 7, 'Squirtle', 1, 'https://bulbapedia.bulbagarden.net/wiki/Squirtle_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/39/007Squirtle.png/250px-007Squirtle.png', 'Water', 'None', 'Yes', ''),
(8, 8, 'Wartortle', 1, 'https://bulbapedia.bulbagarden.net/wiki/Wartortle_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/0c/008Wartortle.png/250px-008Wartortle.png', 'Water', 'None', 'Yes', ''),
(9, 9, 'Blastoise', 1, 'https://bulbapedia.bulbagarden.net/wiki/Blastoise_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/02/009Blastoise.png/250px-009Blastoise.png', 'Water', 'None', 'Yes', ''),
(10, 10, 'Caterpie', 1, 'https://bulbapedia.bulbagarden.net/wiki/Caterpie_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/5d/010Caterpie.png/250px-010Caterpie.png', 'Bug', 'None', 'Yes', ''),
(11, 11, 'Metapod', 1, 'https://bulbapedia.bulbagarden.net/wiki/Metapod_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/cd/011Metapod.png/250px-011Metapod.png', 'Bug', 'None', 'Yes', ''),
(12, 12, 'Butterfree', 1, 'https://bulbapedia.bulbagarden.net/wiki/Butterfree_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d1/012Butterfree.png/250px-012Butterfree.png', 'Bug', 'Flying', 'Yes', ''),
(13, 13, 'Weedle', 1, 'https://bulbapedia.bulbagarden.net/wiki/Weedle_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/df/013Weedle.png/250px-013Weedle.png', 'Bug', 'Poison', 'Yes', ''),
(14, 14, 'Kakuna', 1, 'https://bulbapedia.bulbagarden.net/wiki/Kakuna_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f0/014Kakuna.png/250px-014Kakuna.png', 'Bug', 'Poison', 'Yes', ''),
(15, 15, 'Beedrill', 1, 'https://bulbapedia.bulbagarden.net/wiki/Beedrill_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/61/015Beedrill.png/250px-015Beedrill.png', 'Bug', 'Poison', 'Yes', ''),
(16, 16, 'Pidgey', 1, 'https://bulbapedia.bulbagarden.net/wiki/Pidgey_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/55/016Pidgey.png/250px-016Pidgey.png', 'Normal', 'Flying', 'Yes', ''),
(17, 17, 'Pidgeotto', 1, 'https://bulbapedia.bulbagarden.net/wiki/Pidgeotto_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/7a/017Pidgeotto.png/250px-017Pidgeotto.png', 'Normal', 'Flying', 'Yes', ''),
(18, 18, 'Pidgeot', 1, 'https://bulbapedia.bulbagarden.net/wiki/Pidgeot_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/57/018Pidgeot.png/250px-018Pidgeot.png', 'Normal', 'Flying', 'Yes', ''),
(19, 19, 'Rattata', 1, 'https://bulbapedia.bulbagarden.net/wiki/Rattata_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/46/019Rattata.png/250px-019Rattata.png', 'Normal', 'None', 'Yes', ''),
(20, 20, 'Raticate', 1, 'https://bulbapedia.bulbagarden.net/wiki/Raticate_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f4/020Raticate.png/250px-020Raticate.png', 'Normal', 'None', 'Yes', ''),
(21, 21, 'Spearow', 1, 'https://bulbapedia.bulbagarden.net/wiki/Spearow_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/8b/021Spearow.png/250px-021Spearow.png', 'Normal', 'Flying', 'Yes', ''),
(22, 22, 'Fearow', 1, 'https://bulbapedia.bulbagarden.net/wiki/Fearow_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a0/022Fearow.png/250px-022Fearow.png', 'Normal', 'Flying', 'Yes', ''),
(23, 23, 'Ekans', 1, 'https://bulbapedia.bulbagarden.net/wiki/Ekans_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/fa/023Ekans.png/250px-023Ekans.png', 'Poison', 'None', 'Yes', ''),
(24, 24, 'Arbok', 1, 'https://bulbapedia.bulbagarden.net/wiki/Arbok_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/cd/024Arbok.png/250px-024Arbok.png', 'Poison', 'None', 'Yes', ''),
(25, 25, 'Pikachu', 1, 'https://bulbapedia.bulbagarden.net/wiki/Pikachu_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/0d/025Pikachu.png/250px-025Pikachu.png', 'Electric', 'None', 'Yes', ''),
(26, 26, 'Raichu', 1, 'https://bulbapedia.bulbagarden.net/wiki/Raichu_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/88/026Raichu.png/250px-026Raichu.png', 'Electric', 'None', 'Yes', ''),
(27, 27, 'Sandshrew', 1, 'https://bulbapedia.bulbagarden.net/wiki/Sandshrew_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/9e/027Sandshrew.png/250px-027Sandshrew.png', 'Ground', 'None', '', ''),
(28, 28, 'Sandslash', 1, 'https://bulbapedia.bulbagarden.net/wiki/Sandslash_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/0b/028Sandslash.png/250px-028Sandslash.png', 'Ground', 'None', '', ''),
(29, 29, 'Nidoran♀', 1, 'https://bulbapedia.bulbagarden.net/wiki/Nidoran%E2%99%80_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/81/029Nidoran.png/250px-029Nidoran.png', 'Poison', 'None', 'Yes', ''),
(30, 30, 'Nidorina', 1, 'https://bulbapedia.bulbagarden.net/wiki/Nidorina_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/cd/030Nidorina.png/250px-030Nidorina.png', 'Poison', 'None', '', ''),
(31, 31, 'Nidoqueen', 1, 'https://bulbapedia.bulbagarden.net/wiki/Nidoqueen_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/bf/031Nidoqueen.png/250px-031Nidoqueen.png', 'Poison', 'Ground', '', ''),
(32, 32, 'Nidoran♂', 1, 'https://bulbapedia.bulbagarden.net/wiki/Nidoran%E2%99%82_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4a/032Nidoran.png/250px-032Nidoran.png', 'Poison', 'None', '', ''),
(33, 33, 'Nidorino', 1, 'https://bulbapedia.bulbagarden.net/wiki/Nidorino_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/9f/033Nidorino.png/250px-033Nidorino.png', 'Poison', 'None', 'Yes', ''),
(34, 34, 'Nidoking', 1, 'https://bulbapedia.bulbagarden.net/wiki/Nidoking_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c6/034Nidoking.png/250px-034Nidoking.png', 'Poison', 'Ground', '', ''),
(35, 35, 'Clefairy', 1, 'https://bulbapedia.bulbagarden.net/wiki/Clefairy_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f4/035Clefairy.png/250px-035Clefairy.png', 'Fairy', 'None', '', ''),
(36, 36, 'Clefable', 1, 'https://bulbapedia.bulbagarden.net/wiki/Clefable_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a9/036Clefable.png/250px-036Clefable.png', 'Fairy', 'None', '', ''),
(37, 37, 'Vulpix', 1, 'https://bulbapedia.bulbagarden.net/wiki/Vulpix_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/60/037Vulpix.png/250px-037Vulpix.png', 'Fire', 'None', 'Yes', ''),
(38, 38, 'Ninetales', 1, 'https://bulbapedia.bulbagarden.net/wiki/Ninetales_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/05/038Ninetales.png/250px-038Ninetales.png', 'Fire', 'None', 'Yes', ''),
(39, 39, 'Jigglypuff', 1, 'https://bulbapedia.bulbagarden.net/wiki/Jigglypuff_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/3e/039Jigglypuff.png/250px-039Jigglypuff.png', 'Normal', 'Fairy', 'Yes', ''),
(40, 40, 'Wigglytuff', 1, 'https://bulbapedia.bulbagarden.net/wiki/Wigglytuff_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/92/040Wigglytuff.png/250px-040Wigglytuff.png', 'Normal', 'Fairy', 'Yes', ''),
(41, 41, 'Zubat', 1, 'https://bulbapedia.bulbagarden.net/wiki/Zubat_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/da/041Zubat.png/250px-041Zubat.png', 'Poison', 'Flying', 'Yes', ''),
(42, 42, 'Golbat', 1, 'https://bulbapedia.bulbagarden.net/wiki/Golbat_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/0c/042Golbat.png/250px-042Golbat.png', 'Poison', 'Flying', 'Yes', ''),
(43, 43, 'Oddish', 1, 'https://bulbapedia.bulbagarden.net/wiki/Oddish_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/43/043Oddish.png/250px-043Oddish.png', 'Grass', 'Poison', 'Yes', ''),
(44, 44, 'Gloom', 1, 'https://bulbapedia.bulbagarden.net/wiki/Gloom_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/2a/044Gloom.png/250px-044Gloom.png', 'Grass', 'Poison', 'Yes', ''),
(45, 45, 'Vileplume', 1, 'https://bulbapedia.bulbagarden.net/wiki/Vileplume_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/6a/045Vileplume.png/250px-045Vileplume.png', 'Grass', 'Poison', 'Yes', ''),
(46, 46, 'Paras', 1, 'https://bulbapedia.bulbagarden.net/wiki/Paras_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d4/046Paras.png/250px-046Paras.png', 'Bug', 'Grass', '', ''),
(47, 47, 'Parasect', 1, 'https://bulbapedia.bulbagarden.net/wiki/Parasect_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/80/047Parasect.png/250px-047Parasect.png', 'Bug', 'Grass', '', ''),
(48, 48, 'Venonat', 1, 'https://bulbapedia.bulbagarden.net/wiki/Venonat_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/ad/048Venonat.png/250px-048Venonat.png', 'Bug', 'Poison', 'Yes', ''),
(49, 49, 'Venomoth', 1, 'https://bulbapedia.bulbagarden.net/wiki/Venomoth_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d3/049Venomoth.png/250px-049Venomoth.png', 'Bug', 'Poison', 'Yes', ''),
(50, 50, 'Diglett', 1, 'https://bulbapedia.bulbagarden.net/wiki/Diglett_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/31/050Diglett.png/250px-050Diglett.png', 'Ground', 'None', '', ''),
(51, 51, 'Dugtrio', 1, 'https://bulbapedia.bulbagarden.net/wiki/Dugtrio_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e5/051Dugtrio.png/250px-051Dugtrio.png', 'Ground', 'None', '', ''),
(52, 52, 'Meowth', 1, 'https://bulbapedia.bulbagarden.net/wiki/Meowth_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d6/052Meowth.png/250px-052Meowth.png', 'Normal', 'None', '', ''),
(53, 53, 'Persian', 1, 'https://bulbapedia.bulbagarden.net/wiki/Persian_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/13/053Persian.png/250px-053Persian.png', 'Normal', 'None', '', ''),
(54, 54, 'Psyduck', 1, 'https://bulbapedia.bulbagarden.net/wiki/Psyduck_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/53/054Psyduck.png/250px-054Psyduck.png', 'Water', 'None', 'Yes', ''),
(55, 55, 'Golduck', 1, 'https://bulbapedia.bulbagarden.net/wiki/Golduck_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/fe/055Golduck.png/250px-055Golduck.png', 'Water', 'None', 'Yes', ''),
(56, 56, 'Mankey', 1, 'https://bulbapedia.bulbagarden.net/wiki/Mankey_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/41/056Mankey.png/250px-056Mankey.png', 'Fighting', 'None', '', ''),
(57, 57, 'Primeape', 1, 'https://bulbapedia.bulbagarden.net/wiki/Primeape_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/9a/057Primeape.png/250px-057Primeape.png', 'Fighting', 'None', '', ''),
(58, 58, 'Growlithe', 1, 'https://bulbapedia.bulbagarden.net/wiki/Growlithe_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/3d/058Growlithe.png/250px-058Growlithe.png', 'Fire', 'None', 'Yes', ''),
(59, 59, 'Arcanine', 1, 'https://bulbapedia.bulbagarden.net/wiki/Arcanine_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b8/059Arcanine.png/250px-059Arcanine.png', 'Fire', 'None', 'Yes', ''),
(60, 60, 'Poliwag', 1, 'https://bulbapedia.bulbagarden.net/wiki/Poliwag_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/49/060Poliwag.png/250px-060Poliwag.png', 'Water', 'None', '', ''),
(61, 61, 'Poliwhirl', 1, 'https://bulbapedia.bulbagarden.net/wiki/Poliwhirl_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a9/061Poliwhirl.png/250px-061Poliwhirl.png', 'Water', 'None', '', ''),
(62, 62, 'Poliwrath', 1, 'https://bulbapedia.bulbagarden.net/wiki/Poliwrath_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/2d/062Poliwrath.png/250px-062Poliwrath.png', 'Water', 'Fighting', '', ''),
(63, 63, 'Abra', 1, 'https://bulbapedia.bulbagarden.net/wiki/Abra_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/62/063Abra.png/250px-063Abra.png', 'Psychic', 'None', 'Yes', ''),
(64, 64, 'Kadabra', 1, 'https://bulbapedia.bulbagarden.net/wiki/Kadabra_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/97/064Kadabra.png/250px-064Kadabra.png', 'Psychic', 'None', 'Yes', ''),
(65, 65, 'Alakazam', 1, 'https://bulbapedia.bulbagarden.net/wiki/Alakazam_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/cc/065Alakazam.png/250px-065Alakazam.png', 'Psychic', 'None', 'Yes', ''),
(66, 66, 'Machop', 1, 'https://bulbapedia.bulbagarden.net/wiki/Machop_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/85/066Machop.png/250px-066Machop.png', 'Fighting', 'None', 'Yes', ''),
(67, 67, 'Machoke', 1, 'https://bulbapedia.bulbagarden.net/wiki/Machoke_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/8e/067Machoke.png/250px-067Machoke.png', 'Fighting', 'None', 'Yes', ''),
(68, 68, 'Machamp', 1, 'https://bulbapedia.bulbagarden.net/wiki/Machamp_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/8f/068Machamp.png/250px-068Machamp.png', 'Fighting', 'None', 'Yes', ''),
(69, 69, 'Bellsprout', 1, 'https://bulbapedia.bulbagarden.net/wiki/Bellsprout_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a2/069Bellsprout.png/250px-069Bellsprout.png', 'Grass', 'Poison', '', ''),
(70, 70, 'Weepinbell', 1, 'https://bulbapedia.bulbagarden.net/wiki/Weepinbell_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/9f/070Weepinbell.png/250px-070Weepinbell.png', 'Grass', 'Poison', '', ''),
(71, 71, 'Victreebel', 1, 'https://bulbapedia.bulbagarden.net/wiki/Victreebel_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/be/071Victreebel.png/250px-071Victreebel.png', 'Grass', 'Poison', '', ''),
(72, 72, 'Tentacool', 1, 'https://bulbapedia.bulbagarden.net/wiki/Tentacool_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4e/072Tentacool.png/250px-072Tentacool.png', 'Water', 'Poison', 'Yes', ''),
(73, 73, 'Tentacruel', 1, 'https://bulbapedia.bulbagarden.net/wiki/Tentacruel_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f6/073Tentacruel.png/250px-073Tentacruel.png', 'Water', 'Poison', 'Yes', ''),
(74, 74, 'Geodude', 1, 'https://bulbapedia.bulbagarden.net/wiki/Geodude_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/98/074Geodude.png/250px-074Geodude.png', 'Rock', 'Ground', 'Yes', ''),
(75, 75, 'Graveler', 1, 'https://bulbapedia.bulbagarden.net/wiki/Graveler_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/75/075Graveler.png/250px-075Graveler.png', 'Rock', 'Ground', 'Yes', ''),
(76, 76, 'Golem', 1, 'https://bulbapedia.bulbagarden.net/wiki/Golem_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f2/076Golem.png/250px-076Golem.png', 'Rock', 'Ground', 'Yes', ''),
(77, 77, 'Ponyta', 1, 'https://bulbapedia.bulbagarden.net/wiki/Ponyta_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/3b/077Ponyta.png/250px-077Ponyta.png', 'Fire', 'None', '', ''),
(78, 78, 'Rapidash', 1, 'https://bulbapedia.bulbagarden.net/wiki/Rapidash_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/3f/078Rapidash.png/250px-078Rapidash.png', 'Fire', 'None', '', ''),
(79, 79, 'Slowpoke', 1, 'https://bulbapedia.bulbagarden.net/wiki/Slowpoke_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/70/079Slowpoke.png/250px-079Slowpoke.png', 'Water', 'Psychic', 'Yes', ''),
(80, 80, 'Slowbro', 1, 'https://bulbapedia.bulbagarden.net/wiki/Slowbro_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/80/080Slowbro.png/250px-080Slowbro.png', 'Water', 'Psychic', 'Yes', ''),
(81, 81, 'Magnemite', 1, 'https://bulbapedia.bulbagarden.net/wiki/Magnemite_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/6c/081Magnemite.png/250px-081Magnemite.png', 'Electric', 'Steel', '', ''),
(82, 82, 'Magneton', 1, 'https://bulbapedia.bulbagarden.net/wiki/Magneton_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/72/082Magneton.png/250px-082Magneton.png', 'Electric', 'Steel', '', ''),
(83, 83, 'Farfetch\'d', 1, 'https://bulbapedia.bulbagarden.net/wiki/Farfetch%27d_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f8/083Farfetch%27d.png/250px-083Farfetch%27d.png', 'Normal', 'Flying', '', ''),
(84, 84, 'Doduo', 1, 'https://bulbapedia.bulbagarden.net/wiki/Doduo_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/54/084Doduo.png/250px-084Doduo.png', 'Normal', 'Flying', 'Yes', ''),
(85, 85, 'Dodrio', 1, 'https://bulbapedia.bulbagarden.net/wiki/Dodrio_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/93/085Dodrio.png/250px-085Dodrio.png', 'Normal', 'Flying', 'Yes', ''),
(86, 86, 'Seel', 1, 'https://bulbapedia.bulbagarden.net/wiki/Seel_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/1f/086Seel.png/250px-086Seel.png', 'Water', 'None', '', ''),
(87, 87, 'Dewgong', 1, 'https://bulbapedia.bulbagarden.net/wiki/Dewgong_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c7/087Dewgong.png/250px-087Dewgong.png', 'Water', 'Ice', '', ''),
(88, 88, 'Grimer', 1, 'https://bulbapedia.bulbagarden.net/wiki/Grimer_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a0/088Grimer.png/250px-088Grimer.png', 'Poison', 'None', 'Yes', ''),
(89, 89, 'Muk', 1, 'https://bulbapedia.bulbagarden.net/wiki/Muk_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/7c/089Muk.png/250px-089Muk.png', 'Poison', 'None', 'Yes', ''),
(90, 90, 'Shellder', 1, 'https://bulbapedia.bulbagarden.net/wiki/Shellder_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/40/090Shellder.png/250px-090Shellder.png', 'Water', 'None', '', ''),
(91, 91, 'Cloyster', 1, 'https://bulbapedia.bulbagarden.net/wiki/Cloyster_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/1d/091Cloyster.png/250px-091Cloyster.png', 'Water', 'Ice', '', ''),
(92, 92, 'Gastly', 1, 'https://bulbapedia.bulbagarden.net/wiki/Gastly_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/ca/092Gastly.png/250px-092Gastly.png', 'Ghost', 'Poison', '', ''),
(93, 93, 'Haunter', 1, 'https://bulbapedia.bulbagarden.net/wiki/Haunter_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/62/093Haunter.png/250px-093Haunter.png', 'Ghost', 'Poison', '', ''),
(94, 94, 'Gengar', 1, 'https://bulbapedia.bulbagarden.net/wiki/Gengar_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c6/094Gengar.png/250px-094Gengar.png', 'Ghost', 'Poison', '', ''),
(95, 95, 'Onix', 1, 'https://bulbapedia.bulbagarden.net/wiki/Onix_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/9a/095Onix.png/250px-095Onix.png', 'Rock', 'Ground', '', ''),
(96, 96, 'Drowzee', 1, 'https://bulbapedia.bulbagarden.net/wiki/Drowzee_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/3e/096Drowzee.png/250px-096Drowzee.png', 'Psychic', 'None', '', ''),
(97, 97, 'Hypno', 1, 'https://bulbapedia.bulbagarden.net/wiki/Hypno_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/0a/097Hypno.png/250px-097Hypno.png', 'Psychic', 'None', '', ''),
(98, 98, 'Krabby', 1, 'https://bulbapedia.bulbagarden.net/wiki/Krabby_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a7/098Krabby.png/250px-098Krabby.png', 'Water', 'None', '', ''),
(99, 99, 'Kingler', 1, 'https://bulbapedia.bulbagarden.net/wiki/Kingler_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/71/099Kingler.png/250px-099Kingler.png', 'Water', 'None', '', ''),
(100, 100, 'Voltorb', 1, 'https://bulbapedia.bulbagarden.net/wiki/Voltorb_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/da/100Voltorb.png/250px-100Voltorb.png', 'Electric', 'None', 'Yes', ''),
(101, 101, 'Electrode', 1, 'https://bulbapedia.bulbagarden.net/wiki/Electrode_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/84/101Electrode.png/250px-101Electrode.png', 'Electric', 'None', 'Yes', ''),
(102, 102, 'Exeggcute', 1, 'https://bulbapedia.bulbagarden.net/wiki/Exeggcute_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/af/102Exeggcute.png/250px-102Exeggcute.png', 'Grass', 'Psychic', 'Yes', ''),
(103, 103, 'Exeggutor', 1, 'https://bulbapedia.bulbagarden.net/wiki/Exeggutor_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/24/103Exeggutor.png/250px-103Exeggutor.png', 'Grass', 'Psychic', 'Yes', ''),
(104, 104, 'Cubone', 1, 'https://bulbapedia.bulbagarden.net/wiki/Cubone_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/2a/104Cubone.png/250px-104Cubone.png', 'Ground', 'None', '', ''),
(105, 105, 'Marowak', 1, 'https://bulbapedia.bulbagarden.net/wiki/Marowak_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/98/105Marowak.png/250px-105Marowak.png', 'Ground', 'None', '', ''),
(106, 106, 'Hitmonlee', 1, 'https://bulbapedia.bulbagarden.net/wiki/Hitmonlee_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/32/106Hitmonlee.png/250px-106Hitmonlee.png', 'Fighting', 'None', '', ''),
(107, 107, 'Hitmonchan', 1, 'https://bulbapedia.bulbagarden.net/wiki/Hitmonchan_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a3/107Hitmonchan.png/250px-107Hitmonchan.png', 'Fighting', 'None', '', ''),
(108, 108, 'Lickitung', 1, 'https://bulbapedia.bulbagarden.net/wiki/Lickitung_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/00/108Lickitung.png/250px-108Lickitung.png', 'Normal', 'None', 'Yes', ''),
(109, 109, 'Koffing', 1, 'https://bulbapedia.bulbagarden.net/wiki/Koffing_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/17/109Koffing.png/250px-109Koffing.png', 'Poison', 'None', 'Yes', ''),
(110, 110, 'Weezing', 1, 'https://bulbapedia.bulbagarden.net/wiki/Weezing_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/42/110Weezing.png/250px-110Weezing.png', 'Poison', 'None', 'Yes', ''),
(111, 111, 'Rhyhorn', 1, 'https://bulbapedia.bulbagarden.net/wiki/Rhyhorn_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/9b/111Rhyhorn.png/250px-111Rhyhorn.png', 'Ground', 'Rock', 'Yes', ''),
(112, 112, 'Rhydon', 1, 'https://bulbapedia.bulbagarden.net/wiki/Rhydon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/47/112Rhydon.png/250px-112Rhydon.png', 'Ground', 'Rock', 'Yes', ''),
(113, 113, 'Chansey', 1, 'https://bulbapedia.bulbagarden.net/wiki/Chansey_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/cd/113Chansey.png/250px-113Chansey.png', 'Normal', 'None', '', ''),
(114, 114, 'Tangela', 1, 'https://bulbapedia.bulbagarden.net/wiki/Tangela_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/3e/114Tangela.png/250px-114Tangela.png', 'Grass', 'None', '', ''),
(115, 115, 'Kangaskhan', 1, 'https://bulbapedia.bulbagarden.net/wiki/Kangaskhan_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4e/115Kangaskhan.png/250px-115Kangaskhan.png', 'Normal', 'None', 'Yes', ''),
(116, 116, 'Horsea', 1, 'https://bulbapedia.bulbagarden.net/wiki/Horsea_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/5a/116Horsea.png/250px-116Horsea.png', 'Water', 'None', '', ''),
(117, 117, 'Seadra', 1, 'https://bulbapedia.bulbagarden.net/wiki/Seadra_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/26/117Seadra.png/250px-117Seadra.png', 'Water', 'None', '', ''),
(118, 118, 'Goldeen', 1, 'https://bulbapedia.bulbagarden.net/wiki/Goldeen_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/7b/118Goldeen.png/250px-118Goldeen.png', 'Water', 'None', '', ''),
(119, 119, 'Seaking', 1, 'https://bulbapedia.bulbagarden.net/wiki/Seaking_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/6a/119Seaking.png/250px-119Seaking.png', 'Water', 'None', '', ''),
(120, 120, 'Staryu', 1, 'https://bulbapedia.bulbagarden.net/wiki/Staryu_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4f/120Staryu.png/250px-120Staryu.png', 'Water', 'None', '', ''),
(121, 121, 'Starmie', 1, 'https://bulbapedia.bulbagarden.net/wiki/Starmie_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/cd/121Starmie.png/250px-121Starmie.png', 'Water', 'Psychic', '', ''),
(122, 122, 'Mr. Mime', 1, 'https://bulbapedia.bulbagarden.net/wiki/Mr.%20Mime_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/ec/122Mr._Mime.png/250px-122Mr._Mime.png', 'Psychic', 'Fairy', 'Yes', ''),
(123, 123, 'Scyther', 1, 'https://bulbapedia.bulbagarden.net/wiki/Scyther_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/ba/123Scyther.png/250px-123Scyther.png', 'Bug', 'Flying', '', ''),
(124, 124, 'Jynx', 1, 'https://bulbapedia.bulbagarden.net/wiki/Jynx_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/7c/124Jynx.png/250px-124Jynx.png', 'Ice', 'Psychic', '', ''),
(125, 125, 'Electabuzz', 1, 'https://bulbapedia.bulbagarden.net/wiki/Electabuzz_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/de/125Electabuzz.png/250px-125Electabuzz.png', 'Electric', 'None', 'Yes', ''),
(126, 126, 'Magmar', 1, 'https://bulbapedia.bulbagarden.net/wiki/Magmar_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/8c/126Magmar.png/250px-126Magmar.png', 'Fire', 'None', '', ''),
(127, 127, 'Pinsir', 1, 'https://bulbapedia.bulbagarden.net/wiki/Pinsir_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/71/127Pinsir.png/250px-127Pinsir.png', 'Bug', 'None', '', ''),
(128, 128, 'Tauros', 1, 'https://bulbapedia.bulbagarden.net/wiki/Tauros_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b8/128Tauros.png/250px-128Tauros.png', 'Normal', 'None', 'Yes', ''),
(129, 129, 'Magikarp', 1, 'https://bulbapedia.bulbagarden.net/wiki/Magikarp_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/02/129Magikarp.png/250px-129Magikarp.png', 'Water', 'None', 'Yes', ''),
(130, 130, 'Gyarados', 1, 'https://bulbapedia.bulbagarden.net/wiki/Gyarados_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/41/130Gyarados.png/250px-130Gyarados.png', 'Water', 'Flying', 'Yes', ''),
(131, 131, 'Lapras', 1, 'https://bulbapedia.bulbagarden.net/wiki/Lapras_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/ab/131Lapras.png/250px-131Lapras.png', 'Water', 'Ice', 'Yes', ''),
(132, 132, 'Ditto', 1, 'https://bulbapedia.bulbagarden.net/wiki/Ditto_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/36/132Ditto.png/250px-132Ditto.png', 'Normal', 'None', 'Yes', ''),
(133, 133, 'Eevee', 1, 'https://bulbapedia.bulbagarden.net/wiki/Eevee_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e2/133Eevee.png/250px-133Eevee.png', 'Normal', 'None', 'Yes', ''),
(134, 134, 'Vaporeon', 1, 'https://bulbapedia.bulbagarden.net/wiki/Vaporeon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/fd/134Vaporeon.png/250px-134Vaporeon.png', 'Water', 'None', 'Yes', ''),
(135, 135, 'Jolteon', 1, 'https://bulbapedia.bulbagarden.net/wiki/Jolteon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/bb/135Jolteon.png/250px-135Jolteon.png', 'Electric', 'None', 'Yes', ''),
(136, 136, 'Flareon', 1, 'https://bulbapedia.bulbagarden.net/wiki/Flareon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/dd/136Flareon.png/250px-136Flareon.png', 'Fire', 'None', 'Yes', ''),
(137, 137, 'Porygon', 1, 'https://bulbapedia.bulbagarden.net/wiki/Porygon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/6b/137Porygon.png/250px-137Porygon.png', 'Normal', 'None', 'Yes', ''),
(138, 138, 'Omanyte', 1, 'https://bulbapedia.bulbagarden.net/wiki/Omanyte_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/79/138Omanyte.png/250px-138Omanyte.png', 'Rock', 'Water', '', ''),
(139, 139, 'Omastar', 1, 'https://bulbapedia.bulbagarden.net/wiki/Omastar_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/43/139Omastar.png/250px-139Omastar.png', 'Rock', 'Water', '', ''),
(140, 140, 'Kabuto', 1, 'https://bulbapedia.bulbagarden.net/wiki/Kabuto_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f9/140Kabuto.png/250px-140Kabuto.png', 'Rock', 'Water', '', ''),
(141, 141, 'Kabutops', 1, 'https://bulbapedia.bulbagarden.net/wiki/Kabutops_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/29/141Kabutops.png/250px-141Kabutops.png', 'Rock', 'Water', '', ''),
(142, 142, 'Aerodactyl', 1, 'https://bulbapedia.bulbagarden.net/wiki/Aerodactyl_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e8/142Aerodactyl.png/250px-142Aerodactyl.png', 'Rock', 'Flying', '', ''),
(143, 143, 'Snorlax', 1, 'https://bulbapedia.bulbagarden.net/wiki/Snorlax_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/fb/143Snorlax.png/250px-143Snorlax.png', 'Normal', 'None', 'Yes', ''),
(144, 144, 'Articuno', 1, 'https://bulbapedia.bulbagarden.net/wiki/Articuno_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4e/144Articuno.png/250px-144Articuno.png', 'Ice', 'Flying', '', ''),
(145, 145, 'Zapdos', 1, 'https://bulbapedia.bulbagarden.net/wiki/Zapdos_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e3/145Zapdos.png/250px-145Zapdos.png', 'Electric', 'Flying', '', ''),
(146, 146, 'Moltres', 1, 'https://bulbapedia.bulbagarden.net/wiki/Moltres_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/1b/146Moltres.png/250px-146Moltres.png', 'Fire', 'Flying', '', ''),
(147, 147, 'Dratini', 1, 'https://bulbapedia.bulbagarden.net/wiki/Dratini_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/cc/147Dratini.png/250px-147Dratini.png', 'Dragon', 'None', '', ''),
(148, 148, 'Dragonair', 1, 'https://bulbapedia.bulbagarden.net/wiki/Dragonair_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/93/148Dragonair.png/250px-148Dragonair.png', 'Dragon', 'None', '', ''),
(149, 149, 'Dragonite', 1, 'https://bulbapedia.bulbagarden.net/wiki/Dragonite_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/8b/149Dragonite.png/250px-149Dragonite.png', 'Dragon', 'Flying', '', ''),
(150, 150, 'Mewtwo', 1, 'https://bulbapedia.bulbagarden.net/wiki/Mewtwo_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/78/150Mewtwo.png/250px-150Mewtwo.png', 'Psychic', 'None', 'Yes', ''),
(151, 151, 'Mew', 1, 'https://bulbapedia.bulbagarden.net/wiki/Mew_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b1/151Mew.png/250px-151Mew.png', 'Psychic', 'None', '', ''),
(152, 152, 'Chikorita', 2, 'https://bulbapedia.bulbagarden.net/wiki/Chikorita_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/bf/152Chikorita.png/250px-152Chikorita.png', 'Grass', 'None', 'Yes', ''),
(153, 153, 'Bayleef', 2, 'https://bulbapedia.bulbagarden.net/wiki/Bayleef_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/ca/153Bayleef.png/250px-153Bayleef.png', 'Grass', 'None', 'Yes', ''),
(154, 154, 'Meganium', 2, 'https://bulbapedia.bulbagarden.net/wiki/Meganium_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d1/154Meganium.png/250px-154Meganium.png', 'Grass', 'None', 'Yes', ''),
(155, 155, 'Cyndaquil', 2, 'https://bulbapedia.bulbagarden.net/wiki/Cyndaquil_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/9b/155Cyndaquil.png/250px-155Cyndaquil.png', 'Fire', 'None', '', ''),
(156, 156, 'Quilava', 2, 'https://bulbapedia.bulbagarden.net/wiki/Quilava_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b6/156Quilava.png/250px-156Quilava.png', 'Fire', 'None', 'Yes', ''),
(157, 157, 'Typhlosion', 2, 'https://bulbapedia.bulbagarden.net/wiki/Typhlosion_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/47/157Typhlosion.png/250px-157Typhlosion.png', 'Fire', 'None', 'Yes', ''),
(158, 158, 'Totodile', 2, 'https://bulbapedia.bulbagarden.net/wiki/Totodile_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/df/158Totodile.png/250px-158Totodile.png', 'Water', 'None', 'Yes', ''),
(159, 159, 'Croconaw', 2, 'https://bulbapedia.bulbagarden.net/wiki/Croconaw_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a5/159Croconaw.png/250px-159Croconaw.png', 'Water', 'None', 'Yes', ''),
(160, 160, 'Feraligatr', 2, 'https://bulbapedia.bulbagarden.net/wiki/Feraligatr_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d5/160Feraligatr.png/250px-160Feraligatr.png', 'Water', 'None', 'Yes', ''),
(161, 161, 'Sentret', 2, 'https://bulbapedia.bulbagarden.net/wiki/Sentret_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c5/161Sentret.png/250px-161Sentret.png', 'Normal', 'None', '', ''),
(162, 162, 'Furret', 2, 'https://bulbapedia.bulbagarden.net/wiki/Furret_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4b/162Furret.png/250px-162Furret.png', 'Normal', 'None', '', ''),
(163, 163, 'Hoothoot', 2, 'https://bulbapedia.bulbagarden.net/wiki/Hoothoot_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/53/163Hoothoot.png/250px-163Hoothoot.png', 'Normal', 'Flying', 'Yes', ''),
(164, 164, 'Noctowl', 2, 'https://bulbapedia.bulbagarden.net/wiki/Noctowl_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/fa/164Noctowl.png/250px-164Noctowl.png', 'Normal', 'Flying', 'Yes', ''),
(165, 165, 'Ledyba', 2, 'https://bulbapedia.bulbagarden.net/wiki/Ledyba_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/bb/165Ledyba.png/250px-165Ledyba.png', 'Bug', 'Flying', 'Yes', ''),
(166, 166, 'Ledian', 2, 'https://bulbapedia.bulbagarden.net/wiki/Ledian_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/5b/166Ledian.png/250px-166Ledian.png', 'Bug', 'Flying', 'Yes', ''),
(167, 167, 'Spinarak', 2, 'https://bulbapedia.bulbagarden.net/wiki/Spinarak_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/75/167Spinarak.png/250px-167Spinarak.png', 'Bug', 'Poison', 'Yes', ''),
(168, 168, 'Ariados', 2, 'https://bulbapedia.bulbagarden.net/wiki/Ariados_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/76/168Ariados.png/250px-168Ariados.png', 'Bug', 'Poison', 'Yes', ''),
(169, 169, 'Crobat', 2, 'https://bulbapedia.bulbagarden.net/wiki/Crobat_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/17/169Crobat.png/250px-169Crobat.png', 'Poison', 'Flying', 'Yes', ''),
(170, 170, 'Chinchou', 2, 'https://bulbapedia.bulbagarden.net/wiki/Chinchou_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d9/170Chinchou.png/250px-170Chinchou.png', 'Water', 'Electric', 'Yes', ''),
(171, 171, 'Lanturn', 2, 'https://bulbapedia.bulbagarden.net/wiki/Lanturn_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/9b/171Lanturn.png/250px-171Lanturn.png', 'Water', 'Electric', 'Yes', ''),
(172, 172, 'Pichu', 2, 'https://bulbapedia.bulbagarden.net/wiki/Pichu_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b9/172Pichu.png/250px-172Pichu.png', 'Electric', 'None', 'Yes', ''),
(173, 173, 'Cleffa', 2, 'https://bulbapedia.bulbagarden.net/wiki/Cleffa_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e4/173Cleffa.png/250px-173Cleffa.png', 'Fairy', 'None', '', ''),
(174, 174, 'Igglybuff', 2, 'https://bulbapedia.bulbagarden.net/wiki/Igglybuff_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4d/174Igglybuff.png/250px-174Igglybuff.png', 'Normal', 'Fairy', 'Yes', ''),
(175, 175, 'Togepi', 2, 'https://bulbapedia.bulbagarden.net/wiki/Togepi_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/6b/175Togepi.png/250px-175Togepi.png', 'Fairy', 'None', '', ''),
(176, 176, 'Togetic', 2, 'https://bulbapedia.bulbagarden.net/wiki/Togetic_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/11/176Togetic.png/250px-176Togetic.png', 'Fairy', 'Flying', '', ''),
(177, 177, 'Natu', 2, 'https://bulbapedia.bulbagarden.net/wiki/Natu_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/5b/177Natu.png/250px-177Natu.png', 'Psychic', 'Flying', 'Yes', ''),
(178, 178, 'Xatu', 2, 'https://bulbapedia.bulbagarden.net/wiki/Xatu_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f4/178Xatu.png/250px-178Xatu.png', 'Psychic', 'Flying', 'Yes', ''),
(179, 179, 'Mareep', 2, 'https://bulbapedia.bulbagarden.net/wiki/Mareep_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/6b/179Mareep.png/250px-179Mareep.png', 'Electric', 'None', '', ''),
(180, 180, 'Flaaffy', 2, 'https://bulbapedia.bulbagarden.net/wiki/Flaaffy_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/6f/180Flaaffy.png/250px-180Flaaffy.png', 'Electric', 'None', '', ''),
(181, 181, 'Ampharos', 2, 'https://bulbapedia.bulbagarden.net/wiki/Ampharos_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/47/181Ampharos.png/250px-181Ampharos.png', 'Electric', 'None', '', ''),
(182, 182, 'Bellossom', 2, 'https://bulbapedia.bulbagarden.net/wiki/Bellossom_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/cd/182Bellossom.png/250px-182Bellossom.png', 'Grass', 'None', 'Yes', ''),
(183, 183, 'Marill', 2, 'https://bulbapedia.bulbagarden.net/wiki/Marill_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/42/183Marill.png/250px-183Marill.png', 'Water', 'Fairy', 'Yes', ''),
(184, 184, 'Azumarill', 2, 'https://bulbapedia.bulbagarden.net/wiki/Azumarill_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a5/184Azumarill.png/250px-184Azumarill.png', 'Water', 'Fairy', 'Yes', ''),
(185, 185, 'Sudowoodo', 2, 'https://bulbapedia.bulbagarden.net/wiki/Sudowoodo_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/1e/185Sudowoodo.png/250px-185Sudowoodo.png', 'Rock', 'None', 'Yes', ''),
(186, 186, 'Politoed', 2, 'https://bulbapedia.bulbagarden.net/wiki/Politoed_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a4/186Politoed.png/250px-186Politoed.png', 'Water', 'None', '', ''),
(187, 187, 'Hoppip', 2, 'https://bulbapedia.bulbagarden.net/wiki/Hoppip_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f8/187Hoppip.png/250px-187Hoppip.png', 'Grass', 'Flying', '', ''),
(188, 188, 'Skiploom', 2, 'https://bulbapedia.bulbagarden.net/wiki/Skiploom_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4f/188Skiploom.png/250px-188Skiploom.png', 'Grass', 'Flying', '', ''),
(189, 189, 'Jumpluff', 2, 'https://bulbapedia.bulbagarden.net/wiki/Jumpluff_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/5e/189Jumpluff.png/250px-189Jumpluff.png', 'Grass', 'Flying', '', ''),
(190, 190, 'Aipom', 2, 'https://bulbapedia.bulbagarden.net/wiki/Aipom_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/42/190Aipom.png/250px-190Aipom.png', 'Normal', 'None', 'Yes', ''),
(191, 191, 'Sunkern', 2, 'https://bulbapedia.bulbagarden.net/wiki/Sunkern_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/95/191Sunkern.png/250px-191Sunkern.png', 'Grass', 'None', 'Yes', ''),
(192, 192, 'Sunflora', 2, 'https://bulbapedia.bulbagarden.net/wiki/Sunflora_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/98/192Sunflora.png/250px-192Sunflora.png', 'Grass', 'None', 'Yes', ''),
(193, 193, 'Yanma', 2, 'https://bulbapedia.bulbagarden.net/wiki/Yanma_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/dd/193Yanma.png/250px-193Yanma.png', 'Bug', 'Flying', '', ''),
(194, 194, 'Wooper', 2, 'https://bulbapedia.bulbagarden.net/wiki/Wooper_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/78/194Wooper.png/250px-194Wooper.png', 'Water', 'Ground', 'Yes', ''),
(195, 195, 'Quagsire', 2, 'https://bulbapedia.bulbagarden.net/wiki/Quagsire_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a4/195Quagsire.png/250px-195Quagsire.png', 'Water', 'Ground', 'Yes', ''),
(196, 196, 'Espeon', 2, 'https://bulbapedia.bulbagarden.net/wiki/Espeon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a7/196Espeon.png/250px-196Espeon.png', 'Psychic', 'None', '', ''),
(197, 197, 'Umbreon', 2, 'https://bulbapedia.bulbagarden.net/wiki/Umbreon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/3d/197Umbreon.png/250px-197Umbreon.png', 'Dark', 'None', '', ''),
(198, 198, 'Murkrow', 2, 'https://bulbapedia.bulbagarden.net/wiki/Murkrow_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/33/198Murkrow.png/250px-198Murkrow.png', 'Dark', 'Flying', 'Yes', ''),
(199, 199, 'Slowking', 2, 'https://bulbapedia.bulbagarden.net/wiki/Slowking_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e1/199Slowking.png/250px-199Slowking.png', 'Water', 'Psychic', 'Yes', ''),
(200, 200, 'Misdreavus', 2, 'https://bulbapedia.bulbagarden.net/wiki/Misdreavus_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/be/200Misdreavus.png/250px-200Misdreavus.png', 'Ghost', 'None', '', ''),
(201, 201, 'Unown', 2, 'https://bulbapedia.bulbagarden.net/wiki/Unown_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/77/201Unown.png/250px-201Unown.png', 'Psychic', 'None', '', ''),
(202, 202, 'Wobbuffet', 2, 'https://bulbapedia.bulbagarden.net/wiki/Wobbuffet_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/17/202Wobbuffet.png/250px-202Wobbuffet.png', 'Psychic', 'None', 'Yes', ''),
(203, 203, 'Girafarig', 2, 'https://bulbapedia.bulbagarden.net/wiki/Girafarig_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/11/203Girafarig.png/250px-203Girafarig.png', 'Normal', 'Psychic', '', ''),
(204, 204, 'Pineco', 2, 'https://bulbapedia.bulbagarden.net/wiki/Pineco_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/0b/204Pineco.png/250px-204Pineco.png', 'Bug', 'None', 'Yes', ''),
(205, 205, 'Forretress', 2, 'https://bulbapedia.bulbagarden.net/wiki/Forretress_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/68/205Forretress.png/250px-205Forretress.png', 'Bug', 'Steel', 'Yes', ''),
(206, 206, 'Dunsparce', 2, 'https://bulbapedia.bulbagarden.net/wiki/Dunsparce_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/20/206Dunsparce.png/250px-206Dunsparce.png', 'Normal', 'None', 'Yes', ''),
(207, 207, 'Gligar', 2, 'https://bulbapedia.bulbagarden.net/wiki/Gligar_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/04/207Gligar.png/250px-207Gligar.png', 'Ground', 'Flying', '', ''),
(208, 208, 'Steelix', 2, 'https://bulbapedia.bulbagarden.net/wiki/Steelix_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/ba/208Steelix.png/250px-208Steelix.png', 'Steel', 'Ground', '', ''),
(209, 209, 'Snubbull', 2, 'https://bulbapedia.bulbagarden.net/wiki/Snubbull_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/7f/209Snubbull.png/250px-209Snubbull.png', 'Fairy', 'None', '', ''),
(210, 210, 'Granbull', 2, 'https://bulbapedia.bulbagarden.net/wiki/Granbull_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b1/210Granbull.png/250px-210Granbull.png', 'Fairy', 'None', '', ''),
(211, 211, 'Qwilfish', 2, 'https://bulbapedia.bulbagarden.net/wiki/Qwilfish_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/21/211Qwilfish.png/250px-211Qwilfish.png', 'Water', 'Poison', 'Yes', ''),
(212, 212, 'Scizor', 2, 'https://bulbapedia.bulbagarden.net/wiki/Scizor_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/55/212Scizor.png/250px-212Scizor.png', 'Bug', 'Steel', '', ''),
(213, 213, 'Shuckle', 2, 'https://bulbapedia.bulbagarden.net/wiki/Shuckle_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c7/213Shuckle.png/250px-213Shuckle.png', 'Bug', 'Rock', '', ''),
(214, 214, 'Heracross', 2, 'https://bulbapedia.bulbagarden.net/wiki/Heracross_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/47/214Heracross.png/250px-214Heracross.png', 'Bug', 'Fighting', '', ''),
(215, 215, 'Sneasel', 2, 'https://bulbapedia.bulbagarden.net/wiki/Sneasel_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/71/215Sneasel.png/250px-215Sneasel.png', 'Dark', 'Ice', '', ''),
(216, 216, 'Teddiursa', 2, 'https://bulbapedia.bulbagarden.net/wiki/Teddiursa_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e9/216Teddiursa.png/250px-216Teddiursa.png', 'Normal', 'None', '', ''),
(217, 217, 'Ursaring', 2, 'https://bulbapedia.bulbagarden.net/wiki/Ursaring_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e9/217Ursaring.png/250px-217Ursaring.png', 'Normal', 'None', '', ''),
(218, 218, 'Slugma', 2, 'https://bulbapedia.bulbagarden.net/wiki/Slugma_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/68/218Slugma.png/250px-218Slugma.png', 'Fire', 'None', 'Yes', ''),
(219, 219, 'Magcargo', 2, 'https://bulbapedia.bulbagarden.net/wiki/Magcargo_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/65/219Magcargo.png/250px-219Magcargo.png', 'Fire', 'Rock', 'Yes', ''),
(220, 220, 'Swinub', 2, 'https://bulbapedia.bulbagarden.net/wiki/Swinub_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b5/220Swinub.png/250px-220Swinub.png', 'Ice', 'Ground', '', ''),
(221, 221, 'Piloswine', 2, 'https://bulbapedia.bulbagarden.net/wiki/Piloswine_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/49/221Piloswine.png/250px-221Piloswine.png', 'Ice', 'Ground', '', ''),
(222, 222, 'Corsola', 2, 'https://bulbapedia.bulbagarden.net/wiki/Corsola_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/fc/222Corsola.png/250px-222Corsola.png', 'Water', 'Rock', '', ''),
(223, 223, 'Remoraid', 2, 'https://bulbapedia.bulbagarden.net/wiki/Remoraid_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/95/223Remoraid.png/250px-223Remoraid.png', 'Water', 'None', '', ''),
(224, 224, 'Octillery', 2, 'https://bulbapedia.bulbagarden.net/wiki/Octillery_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/cb/224Octillery.png/250px-224Octillery.png', 'Water', 'None', '', ''),
(225, 225, 'Delibird', 2, 'https://bulbapedia.bulbagarden.net/wiki/Delibird_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/3f/225Delibird.png/250px-225Delibird.png', 'Ice', 'Flying', '', ''),
(226, 226, 'Mantine', 2, 'https://bulbapedia.bulbagarden.net/wiki/Mantine_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c5/226Mantine.png/250px-226Mantine.png', 'Water', 'Flying', '', ''),
(227, 227, 'Skarmory', 2, 'https://bulbapedia.bulbagarden.net/wiki/Skarmory_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/35/227Skarmory.png/250px-227Skarmory.png', 'Steel', 'Flying', 'Yes', ''),
(228, 228, 'Houndour', 2, 'https://bulbapedia.bulbagarden.net/wiki/Houndour_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/53/228Houndour.png/250px-228Houndour.png', 'Dark', 'Fire', '', ''),
(229, 229, 'Houndoom', 2, 'https://bulbapedia.bulbagarden.net/wiki/Houndoom_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/51/229Houndoom.png/250px-229Houndoom.png', 'Dark', 'Fire', '', ''),
(230, 230, 'Kingdra', 2, 'https://bulbapedia.bulbagarden.net/wiki/Kingdra_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/3c/230Kingdra.png/250px-230Kingdra.png', 'Water', 'Dragon', '', ''),
(231, 231, 'Phanpy', 2, 'https://bulbapedia.bulbagarden.net/wiki/Phanpy_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d3/231Phanpy.png/250px-231Phanpy.png', 'Ground', 'None', '', ''),
(232, 232, 'Donphan', 2, 'https://bulbapedia.bulbagarden.net/wiki/Donphan_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/53/232Donphan.png/250px-232Donphan.png', 'Ground', 'None', '', ''),
(233, 233, 'Porygon2', 2, 'https://bulbapedia.bulbagarden.net/wiki/Porygon2_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/99/233Porygon2.png/250px-233Porygon2.png', 'Normal', 'None', 'Yes', ''),
(234, 234, 'Stantler', 2, 'https://bulbapedia.bulbagarden.net/wiki/Stantler_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/50/234Stantler.png/250px-234Stantler.png', 'Normal', 'None', '', ''),
(235, 235, 'Smeargle', 2, 'https://bulbapedia.bulbagarden.net/wiki/Smeargle_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/92/235Smeargle.png/250px-235Smeargle.png', 'Normal', 'None', 'Yes', ''),
(236, 236, 'Tyrogue', 2, 'https://bulbapedia.bulbagarden.net/wiki/Tyrogue_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c7/236Tyrogue.png/250px-236Tyrogue.png', 'Fighting', 'None', '', ''),
(237, 237, 'Hitmontop', 2, 'https://bulbapedia.bulbagarden.net/wiki/Hitmontop_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/94/237Hitmontop.png/250px-237Hitmontop.png', 'Fighting', 'None', '', ''),
(238, 238, 'Smoochum', 2, 'https://bulbapedia.bulbagarden.net/wiki/Smoochum_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/0e/238Smoochum.png/250px-238Smoochum.png', 'Ice', 'Psychic', '', ''),
(239, 239, 'Elekid', 2, 'https://bulbapedia.bulbagarden.net/wiki/Elekid_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/5d/239Elekid.png/250px-239Elekid.png', 'Electric', 'None', 'Yes', ''),
(240, 240, 'Magby', 2, 'https://bulbapedia.bulbagarden.net/wiki/Magby_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/cb/240Magby.png/250px-240Magby.png', 'Fire', 'None', '', ''),
(241, 241, 'Miltank', 2, 'https://bulbapedia.bulbagarden.net/wiki/Miltank_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/13/241Miltank.png/250px-241Miltank.png', 'Normal', 'None', '', ''),
(242, 242, 'Blissey', 2, 'https://bulbapedia.bulbagarden.net/wiki/Blissey_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/56/242Blissey.png/250px-242Blissey.png', 'Normal', 'None', '', ''),
(243, 243, 'Raikou', 2, 'https://bulbapedia.bulbagarden.net/wiki/Raikou_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c1/243Raikou.png/250px-243Raikou.png', 'Electric', 'None', 'Yes', ''),
(244, 244, 'Entei', 2, 'https://bulbapedia.bulbagarden.net/wiki/Entei_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f9/244Entei.png/250px-244Entei.png', 'Fire', 'None', 'Yes', ''),
(245, 245, 'Suicune', 2, 'https://bulbapedia.bulbagarden.net/wiki/Suicune_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/da/245Suicune.png/250px-245Suicune.png', 'Water', 'None', 'Yes', ''),
(246, 246, 'Larvitar', 2, 'https://bulbapedia.bulbagarden.net/wiki/Larvitar_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/70/246Larvitar.png/250px-246Larvitar.png', 'Rock', 'Ground', 'Yes', ''),
(247, 247, 'Pupitar', 2, 'https://bulbapedia.bulbagarden.net/wiki/Pupitar_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a1/247Pupitar.png/250px-247Pupitar.png', 'Rock', 'Ground', 'Yes', ''),
(248, 248, 'Tyranitar', 2, 'https://bulbapedia.bulbagarden.net/wiki/Tyranitar_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/82/248Tyranitar.png/250px-248Tyranitar.png', 'Rock', 'Dark', 'Yes', ''),
(249, 249, 'Lugia', 2, 'https://bulbapedia.bulbagarden.net/wiki/Lugia_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/44/249Lugia.png/250px-249Lugia.png', 'Psychic', 'Flying', 'Yes', ''),
(250, 250, 'Ho-Oh', 2, 'https://bulbapedia.bulbagarden.net/wiki/Ho-Oh_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/67/250Ho-Oh.png/250px-250Ho-Oh.png', 'Fire', 'Flying', 'Yes', '');
INSERT INTO `poketch_app_pokemon` (`id`, `pokemon_number`, `name`, `generation`, `article_link`, `image_link`, `type1`, `type2`, `console_owned`, `note`) VALUES
(251, 251, 'Celebi', 2, 'https://bulbapedia.bulbagarden.net/wiki/Celebi_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e7/251Celebi.png/250px-251Celebi.png', 'Psychic', 'Grass', '', ''),
(252, 252, 'Treecko', 3, 'https://bulbapedia.bulbagarden.net/wiki/Treecko_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/2c/252Treecko.png/250px-252Treecko.png', 'Grass', 'None', 'Yes', ''),
(253, 253, 'Grovyle', 3, 'https://bulbapedia.bulbagarden.net/wiki/Grovyle_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/ea/253Grovyle.png/250px-253Grovyle.png', 'Grass', 'None', 'Yes', ''),
(254, 254, 'Sceptile', 3, 'https://bulbapedia.bulbagarden.net/wiki/Sceptile_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/3e/254Sceptile.png/250px-254Sceptile.png', 'Grass', 'None', 'Yes', ''),
(255, 255, 'Torchic', 3, 'https://bulbapedia.bulbagarden.net/wiki/Torchic_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/91/255Torchic.png/250px-255Torchic.png', 'Fire', 'None', 'Yes', ''),
(256, 256, 'Combusken', 3, 'https://bulbapedia.bulbagarden.net/wiki/Combusken_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/29/256Combusken.png/250px-256Combusken.png', 'Fire', 'Fighting', 'Yes', ''),
(257, 257, 'Blaziken', 3, 'https://bulbapedia.bulbagarden.net/wiki/Blaziken_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/90/257Blaziken.png/250px-257Blaziken.png', 'Fire', 'Fighting', 'Yes', ''),
(258, 258, 'Mudkip', 3, 'https://bulbapedia.bulbagarden.net/wiki/Mudkip_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/60/258Mudkip.png/250px-258Mudkip.png', 'Water', 'None', 'Yes', ''),
(259, 259, 'Marshtomp', 3, 'https://bulbapedia.bulbagarden.net/wiki/Marshtomp_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/27/259Marshtomp.png/250px-259Marshtomp.png', 'Water', 'Ground', 'Yes', ''),
(260, 260, 'Swampert', 3, 'https://bulbapedia.bulbagarden.net/wiki/Swampert_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b6/260Swampert.png/250px-260Swampert.png', 'Water', 'Ground', 'Yes', ''),
(261, 261, 'Poochyena', 3, 'https://bulbapedia.bulbagarden.net/wiki/Poochyena_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/fc/261Poochyena.png/250px-261Poochyena.png', 'Dark', 'None', 'Yes', ''),
(262, 262, 'Mightyena', 3, 'https://bulbapedia.bulbagarden.net/wiki/Mightyena_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f1/262Mightyena.png/250px-262Mightyena.png', 'Dark', 'None', 'Yes', ''),
(263, 263, 'Zigzagoon', 3, 'https://bulbapedia.bulbagarden.net/wiki/Zigzagoon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/47/263Zigzagoon.png/250px-263Zigzagoon.png', 'Normal', 'None', 'Yes', ''),
(264, 264, 'Linoone', 3, 'https://bulbapedia.bulbagarden.net/wiki/Linoone_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f7/264Linoone.png/250px-264Linoone.png', 'Normal', 'None', 'Yes', ''),
(265, 265, 'Wurmple', 3, 'https://bulbapedia.bulbagarden.net/wiki/Wurmple_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/76/265Wurmple.png/250px-265Wurmple.png', 'Bug', 'None', 'Yes', ''),
(266, 266, 'Silcoon', 3, 'https://bulbapedia.bulbagarden.net/wiki/Silcoon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/ef/266Silcoon.png/250px-266Silcoon.png', 'Bug', 'None', 'Yes', ''),
(267, 267, 'Beautifly', 3, 'https://bulbapedia.bulbagarden.net/wiki/Beautifly_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4c/267Beautifly.png/250px-267Beautifly.png', 'Bug', 'Flying', 'Yes', ''),
(268, 268, 'Cascoon', 3, 'https://bulbapedia.bulbagarden.net/wiki/Cascoon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a3/268Cascoon.png/250px-268Cascoon.png', 'Bug', 'None', 'Yes', ''),
(269, 269, 'Dustox', 3, 'https://bulbapedia.bulbagarden.net/wiki/Dustox_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/34/269Dustox.png/250px-269Dustox.png', 'Bug', 'Poison', 'Yes', ''),
(270, 270, 'Lotad', 3, 'https://bulbapedia.bulbagarden.net/wiki/Lotad_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/ee/270Lotad.png/250px-270Lotad.png', 'Water', 'Grass', '', ''),
(271, 271, 'Lombre', 3, 'https://bulbapedia.bulbagarden.net/wiki/Lombre_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/8b/271Lombre.png/250px-271Lombre.png', 'Water', 'Grass', '', ''),
(272, 272, 'Ludicolo', 3, 'https://bulbapedia.bulbagarden.net/wiki/Ludicolo_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/ff/272Ludicolo.png/250px-272Ludicolo.png', 'Water', 'Grass', '', ''),
(273, 273, 'Seedot', 3, 'https://bulbapedia.bulbagarden.net/wiki/Seedot_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/84/273Seedot.png/250px-273Seedot.png', 'Grass', 'None', 'Yes', ''),
(274, 274, 'Nuzleaf', 3, 'https://bulbapedia.bulbagarden.net/wiki/Nuzleaf_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/07/274Nuzleaf.png/250px-274Nuzleaf.png', 'Grass', 'Dark', 'Yes', ''),
(275, 275, 'Shiftry', 3, 'https://bulbapedia.bulbagarden.net/wiki/Shiftry_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f7/275Shiftry.png/250px-275Shiftry.png', 'Grass', 'Dark', 'Yes', ''),
(276, 276, 'Taillow', 3, 'https://bulbapedia.bulbagarden.net/wiki/Taillow_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e4/276Taillow.png/250px-276Taillow.png', 'Normal', 'Flying', 'Yes', ''),
(277, 277, 'Swellow', 3, 'https://bulbapedia.bulbagarden.net/wiki/Swellow_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/45/277Swellow.png/250px-277Swellow.png', 'Normal', 'Flying', 'Yes', ''),
(278, 278, 'Wingull', 3, 'https://bulbapedia.bulbagarden.net/wiki/Wingull_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/39/278Wingull.png/250px-278Wingull.png', 'Water', 'Flying', 'Yes', ''),
(279, 279, 'Pelipper', 3, 'https://bulbapedia.bulbagarden.net/wiki/Pelipper_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f2/279Pelipper.png/250px-279Pelipper.png', 'Water', 'Flying', 'Yes', ''),
(280, 280, 'Ralts', 3, 'https://bulbapedia.bulbagarden.net/wiki/Ralts_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e1/280Ralts.png/250px-280Ralts.png', 'Psychic', 'Fairy', 'Yes', ''),
(281, 281, 'Kirlia', 3, 'https://bulbapedia.bulbagarden.net/wiki/Kirlia_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/00/281Kirlia.png/250px-281Kirlia.png', 'Psychic', 'Fairy', 'Yes', ''),
(282, 282, 'Gardevoir', 3, 'https://bulbapedia.bulbagarden.net/wiki/Gardevoir_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/99/282Gardevoir.png/250px-282Gardevoir.png', 'Psychic', 'Fairy', 'Yes', ''),
(283, 283, 'Surskit', 3, 'https://bulbapedia.bulbagarden.net/wiki/Surskit_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f6/283Surskit.png/250px-283Surskit.png', 'Bug', 'Water', 'Yes', ''),
(284, 284, 'Masquerain', 3, 'https://bulbapedia.bulbagarden.net/wiki/Masquerain_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/0a/284Masquerain.png/250px-284Masquerain.png', 'Bug', 'Flying', 'Yes', ''),
(285, 285, 'Shroomish', 3, 'https://bulbapedia.bulbagarden.net/wiki/Shroomish_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d8/285Shroomish.png/250px-285Shroomish.png', 'Grass', 'None', '', ''),
(286, 286, 'Breloom', 3, 'https://bulbapedia.bulbagarden.net/wiki/Breloom_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/de/286Breloom.png/250px-286Breloom.png', 'Grass', 'Fighting', '', ''),
(287, 287, 'Slakoth', 3, 'https://bulbapedia.bulbagarden.net/wiki/Slakoth_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d2/287Slakoth.png/250px-287Slakoth.png', 'Normal', 'None', 'Yes', ''),
(288, 288, 'Vigoroth', 3, 'https://bulbapedia.bulbagarden.net/wiki/Vigoroth_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/61/288Vigoroth.png/250px-288Vigoroth.png', 'Normal', 'None', 'Yes', ''),
(289, 289, 'Slaking', 3, 'https://bulbapedia.bulbagarden.net/wiki/Slaking_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/71/289Slaking.png/250px-289Slaking.png', 'Normal', 'None', 'Yes', ''),
(290, 290, 'Nincada', 3, 'https://bulbapedia.bulbagarden.net/wiki/Nincada_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/90/290Nincada.png/250px-290Nincada.png', 'Bug', 'Ground', 'Yes', ''),
(291, 291, 'Ninjask', 3, 'https://bulbapedia.bulbagarden.net/wiki/Ninjask_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/76/291Ninjask.png/250px-291Ninjask.png', 'Bug', 'Flying', 'Yes', ''),
(292, 292, 'Shedinja', 3, 'https://bulbapedia.bulbagarden.net/wiki/Shedinja_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/59/292Shedinja.png/250px-292Shedinja.png', 'Bug', 'Ghost', 'Yes', ''),
(293, 293, 'Whismur', 3, 'https://bulbapedia.bulbagarden.net/wiki/Whismur_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/6c/293Whismur.png/250px-293Whismur.png', 'Normal', 'None', 'Yes', ''),
(294, 294, 'Loudred', 3, 'https://bulbapedia.bulbagarden.net/wiki/Loudred_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/12/294Loudred.png/250px-294Loudred.png', 'Normal', 'None', 'Yes', ''),
(295, 295, 'Exploud', 3, 'https://bulbapedia.bulbagarden.net/wiki/Exploud_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/12/295Exploud.png/250px-295Exploud.png', 'Normal', 'None', 'Yes', ''),
(296, 296, 'Makuhita', 3, 'https://bulbapedia.bulbagarden.net/wiki/Makuhita_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b6/296Makuhita.png/250px-296Makuhita.png', 'Fighting', 'None', 'Yes', ''),
(297, 297, 'Hariyama', 3, 'https://bulbapedia.bulbagarden.net/wiki/Hariyama_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/6f/297Hariyama.png/250px-297Hariyama.png', 'Fighting', 'None', 'Yes', ''),
(298, 298, 'Azurill', 3, 'https://bulbapedia.bulbagarden.net/wiki/Azurill_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/ac/298Azurill.png/250px-298Azurill.png', 'Normal', 'Fairy', 'Yes', ''),
(299, 299, 'Nosepass', 3, 'https://bulbapedia.bulbagarden.net/wiki/Nosepass_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/89/299Nosepass.png/250px-299Nosepass.png', 'Rock', 'None', 'Yes', ''),
(300, 300, 'Skitty', 3, 'https://bulbapedia.bulbagarden.net/wiki/Skitty_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/8a/300Skitty.png/250px-300Skitty.png', 'Normal', 'None', 'Yes', ''),
(301, 301, 'Delcatty', 3, 'https://bulbapedia.bulbagarden.net/wiki/Delcatty_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f4/301Delcatty.png/250px-301Delcatty.png', 'Normal', 'None', 'Yes', ''),
(302, 302, 'Sableye', 3, 'https://bulbapedia.bulbagarden.net/wiki/Sableye_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d3/302Sableye.png/250px-302Sableye.png', 'Dark', 'Ghost', '', ''),
(303, 303, 'Mawile', 3, 'https://bulbapedia.bulbagarden.net/wiki/Mawile_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c0/303Mawile.png/250px-303Mawile.png', 'Steel', 'Fairy', '', ''),
(304, 304, 'Aron', 3, 'https://bulbapedia.bulbagarden.net/wiki/Aron_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/bb/304Aron.png/250px-304Aron.png', 'Steel', 'Rock', 'Yes', ''),
(305, 305, 'Lairon', 3, 'https://bulbapedia.bulbagarden.net/wiki/Lairon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/bf/305Lairon.png/250px-305Lairon.png', 'Steel', 'Rock', 'Yes', ''),
(306, 306, 'Aggron', 3, 'https://bulbapedia.bulbagarden.net/wiki/Aggron_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/6d/306Aggron.png/250px-306Aggron.png', 'Steel', 'Rock', 'Yes', ''),
(307, 307, 'Meditite', 3, 'https://bulbapedia.bulbagarden.net/wiki/Meditite_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/71/307Meditite.png/250px-307Meditite.png', 'Fighting', 'Psychic', 'Yes', ''),
(308, 308, 'Medicham', 3, 'https://bulbapedia.bulbagarden.net/wiki/Medicham_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/05/308Medicham.png/250px-308Medicham.png', 'Fighting', 'Psychic', 'Yes', ''),
(309, 309, 'Electrike', 3, 'https://bulbapedia.bulbagarden.net/wiki/Electrike_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/47/309Electrike.png/250px-309Electrike.png', 'Electric', 'None', 'Yes', ''),
(310, 310, 'Manectric', 3, 'https://bulbapedia.bulbagarden.net/wiki/Manectric_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/bb/310Manectric.png/250px-310Manectric.png', 'Electric', 'None', 'Yes', ''),
(311, 311, 'Plusle', 3, 'https://bulbapedia.bulbagarden.net/wiki/Plusle_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a3/311Plusle.png/250px-311Plusle.png', 'Electric', 'None', '', ''),
(312, 312, 'Minun', 3, 'https://bulbapedia.bulbagarden.net/wiki/Minun_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e7/312Minun.png/250px-312Minun.png', 'Electric', 'None', 'Yes', ''),
(313, 313, 'Volbeat', 3, 'https://bulbapedia.bulbagarden.net/wiki/Volbeat_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d6/313Volbeat.png/250px-313Volbeat.png', 'Bug', 'None', 'Yes', ''),
(314, 314, 'Illumise', 3, 'https://bulbapedia.bulbagarden.net/wiki/Illumise_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/55/314Illumise.png/250px-314Illumise.png', 'Bug', 'None', 'Yes', ''),
(315, 315, 'Roselia', 3, 'https://bulbapedia.bulbagarden.net/wiki/Roselia_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f1/315Roselia.png/250px-315Roselia.png', 'Grass', 'Poison', 'Yes', ''),
(316, 316, 'Gulpin', 3, 'https://bulbapedia.bulbagarden.net/wiki/Gulpin_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f0/316Gulpin.png/250px-316Gulpin.png', 'Poison', 'None', 'Yes', ''),
(317, 317, 'Swalot', 3, 'https://bulbapedia.bulbagarden.net/wiki/Swalot_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/ad/317Swalot.png/250px-317Swalot.png', 'Poison', 'None', 'Yes', ''),
(318, 318, 'Carvanha', 3, 'https://bulbapedia.bulbagarden.net/wiki/Carvanha_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/98/318Carvanha.png/250px-318Carvanha.png', 'Water', 'Dark', 'Yes', ''),
(319, 319, 'Sharpedo', 3, 'https://bulbapedia.bulbagarden.net/wiki/Sharpedo_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a8/319Sharpedo.png/250px-319Sharpedo.png', 'Water', 'Dark', 'Yes', ''),
(320, 320, 'Wailmer', 3, 'https://bulbapedia.bulbagarden.net/wiki/Wailmer_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/71/320Wailmer.png/250px-320Wailmer.png', 'Water', 'None', 'Yes', ''),
(321, 321, 'Wailord', 3, 'https://bulbapedia.bulbagarden.net/wiki/Wailord_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b9/321Wailord.png/250px-321Wailord.png', 'Water', 'None', 'Yes', ''),
(322, 322, 'Numel', 3, 'https://bulbapedia.bulbagarden.net/wiki/Numel_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c6/322Numel.png/250px-322Numel.png', 'Fire', 'Ground', 'Yes', ''),
(323, 323, 'Camerupt', 3, 'https://bulbapedia.bulbagarden.net/wiki/Camerupt_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/7d/323Camerupt.png/250px-323Camerupt.png', 'Fire', 'Ground', 'Yes', ''),
(324, 324, 'Torkoal', 3, 'https://bulbapedia.bulbagarden.net/wiki/Torkoal_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/3b/324Torkoal.png/250px-324Torkoal.png', 'Fire', 'None', 'Yes', ''),
(325, 325, 'Spoink', 3, 'https://bulbapedia.bulbagarden.net/wiki/Spoink_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/9e/325Spoink.png/250px-325Spoink.png', 'Psychic', 'None', 'Yes', ''),
(326, 326, 'Grumpig', 3, 'https://bulbapedia.bulbagarden.net/wiki/Grumpig_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/54/326Grumpig.png/250px-326Grumpig.png', 'Psychic', 'None', 'Yes', ''),
(327, 327, 'Spinda', 3, 'https://bulbapedia.bulbagarden.net/wiki/Spinda_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/8f/327Spinda.png/250px-327Spinda.png', 'Normal', 'None', 'Yes', ''),
(328, 328, 'Trapinch', 3, 'https://bulbapedia.bulbagarden.net/wiki/Trapinch_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/76/328Trapinch.png/250px-328Trapinch.png', 'Ground', 'None', '', ''),
(329, 329, 'Vibrava', 3, 'https://bulbapedia.bulbagarden.net/wiki/Vibrava_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/af/329Vibrava.png/250px-329Vibrava.png', 'Ground', 'Dragon', '', ''),
(330, 330, 'Flygon', 3, 'https://bulbapedia.bulbagarden.net/wiki/Flygon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f1/330Flygon.png/250px-330Flygon.png', 'Ground', 'Dragon', '', ''),
(331, 331, 'Cacnea', 3, 'https://bulbapedia.bulbagarden.net/wiki/Cacnea_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/12/331Cacnea.png/250px-331Cacnea.png', 'Grass', 'None', 'Yes', ''),
(332, 332, 'Cacturne', 3, 'https://bulbapedia.bulbagarden.net/wiki/Cacturne_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/41/332Cacturne.png/250px-332Cacturne.png', 'Grass', 'Dark', 'Yes', ''),
(333, 333, 'Swablu', 3, 'https://bulbapedia.bulbagarden.net/wiki/Swablu_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/99/333Swablu.png/250px-333Swablu.png', 'Normal', 'Flying', 'Yes', ''),
(334, 334, 'Altaria', 3, 'https://bulbapedia.bulbagarden.net/wiki/Altaria_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/da/334Altaria.png/250px-334Altaria.png', 'Dragon', 'Flying', 'Yes', ''),
(335, 335, 'Zangoose', 3, 'https://bulbapedia.bulbagarden.net/wiki/Zangoose_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d3/335Zangoose.png/250px-335Zangoose.png', 'Normal', 'None', 'Yes', ''),
(336, 336, 'Seviper', 3, 'https://bulbapedia.bulbagarden.net/wiki/Seviper_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d6/336Seviper.png/250px-336Seviper.png', 'Poison', 'None', 'Yes', ''),
(337, 337, 'Lunatone', 3, 'https://bulbapedia.bulbagarden.net/wiki/Lunatone_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/eb/337Lunatone.png/250px-337Lunatone.png', 'Rock', 'Psychic', 'Yes', ''),
(338, 338, 'Solrock', 3, 'https://bulbapedia.bulbagarden.net/wiki/Solrock_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/90/338Solrock.png/250px-338Solrock.png', 'Rock', 'Psychic', 'Yes', ''),
(339, 339, 'Barboach', 3, 'https://bulbapedia.bulbagarden.net/wiki/Barboach_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/60/339Barboach.png/250px-339Barboach.png', 'Water', 'Ground', '', ''),
(340, 340, 'Whiscash', 3, 'https://bulbapedia.bulbagarden.net/wiki/Whiscash_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/60/340Whiscash.png/250px-340Whiscash.png', 'Water', 'Ground', '', ''),
(341, 341, 'Corphish', 3, 'https://bulbapedia.bulbagarden.net/wiki/Corphish_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/3d/341Corphish.png/250px-341Corphish.png', 'Water', 'None', '', ''),
(342, 342, 'Crawdaunt', 3, 'https://bulbapedia.bulbagarden.net/wiki/Crawdaunt_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f4/342Crawdaunt.png/250px-342Crawdaunt.png', 'Water', 'Dark', '', ''),
(343, 343, 'Baltoy', 3, 'https://bulbapedia.bulbagarden.net/wiki/Baltoy_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/8b/343Baltoy.png/250px-343Baltoy.png', 'Ground', 'Psychic', 'Yes', ''),
(344, 344, 'Claydol', 3, 'https://bulbapedia.bulbagarden.net/wiki/Claydol_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/07/344Claydol.png/250px-344Claydol.png', 'Ground', 'Psychic', 'Yes', ''),
(345, 345, 'Lileep', 3, 'https://bulbapedia.bulbagarden.net/wiki/Lileep_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/34/345Lileep.png/250px-345Lileep.png', 'Rock', 'Grass', '', ''),
(346, 346, 'Cradily', 3, 'https://bulbapedia.bulbagarden.net/wiki/Cradily_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/38/346Cradily.png/250px-346Cradily.png', 'Rock', 'Grass', '', ''),
(347, 347, 'Anorith', 3, 'https://bulbapedia.bulbagarden.net/wiki/Anorith_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/45/347Anorith.png/250px-347Anorith.png', 'Rock', 'Bug', '', ''),
(348, 348, 'Armaldo', 3, 'https://bulbapedia.bulbagarden.net/wiki/Armaldo_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/1d/348Armaldo.png/250px-348Armaldo.png', 'Rock', 'Bug', '', ''),
(349, 349, 'Feebas', 3, 'https://bulbapedia.bulbagarden.net/wiki/Feebas_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4b/349Feebas.png/250px-349Feebas.png', 'Water', 'None', 'Yes', ''),
(350, 350, 'Milotic', 3, 'https://bulbapedia.bulbagarden.net/wiki/Milotic_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/36/350Milotic.png/250px-350Milotic.png', 'Water', 'None', '', ''),
(351, 351, 'Castform', 3, 'https://bulbapedia.bulbagarden.net/wiki/Castform_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f3/351Castform.png/250px-351Castform.png', 'Normal', 'None', 'Yes', ''),
(352, 352, 'Kecleon', 3, 'https://bulbapedia.bulbagarden.net/wiki/Kecleon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/50/352Kecleon.png/250px-352Kecleon.png', 'Normal', 'None', 'Yes', ''),
(353, 353, 'Shuppet', 3, 'https://bulbapedia.bulbagarden.net/wiki/Shuppet_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4b/353Shuppet.png/250px-353Shuppet.png', 'Ghost', 'None', 'Yes', ''),
(354, 354, 'Banette', 3, 'https://bulbapedia.bulbagarden.net/wiki/Banette_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/0a/354Banette.png/250px-354Banette.png', 'Ghost', 'None', 'Yes', ''),
(355, 355, 'Duskull', 3, 'https://bulbapedia.bulbagarden.net/wiki/Duskull_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e2/355Duskull.png/250px-355Duskull.png', 'Ghost', 'None', '', ''),
(356, 356, 'Dusclops', 3, 'https://bulbapedia.bulbagarden.net/wiki/Dusclops_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/12/356Dusclops.png/250px-356Dusclops.png', 'Ghost', 'None', '', ''),
(357, 357, 'Tropius', 3, 'https://bulbapedia.bulbagarden.net/wiki/Tropius_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/dd/357Tropius.png/250px-357Tropius.png', 'Grass', 'Flying', '', ''),
(358, 358, 'Chimecho', 3, 'https://bulbapedia.bulbagarden.net/wiki/Chimecho_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e5/358Chimecho.png/250px-358Chimecho.png', 'Psychic', 'None', 'Yes', ''),
(359, 359, 'Absol', 3, 'https://bulbapedia.bulbagarden.net/wiki/Absol_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/00/359Absol.png/250px-359Absol.png', 'Dark', 'None', '', ''),
(360, 360, 'Wynaut', 3, 'https://bulbapedia.bulbagarden.net/wiki/Wynaut_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d0/360Wynaut.png/250px-360Wynaut.png', 'Psychic', 'None', 'Yes', ''),
(361, 361, 'Snorunt', 3, 'https://bulbapedia.bulbagarden.net/wiki/Snorunt_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/6b/361Snorunt.png/250px-361Snorunt.png', 'Ice', 'None', 'Yes', ''),
(362, 362, 'Glalie', 3, 'https://bulbapedia.bulbagarden.net/wiki/Glalie_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/62/362Glalie.png/250px-362Glalie.png', 'Ice', 'None', 'Yes', ''),
(363, 363, 'Spheal', 3, 'https://bulbapedia.bulbagarden.net/wiki/Spheal_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/9f/363Spheal.png/250px-363Spheal.png', 'Ice', 'Water', '', ''),
(364, 364, 'Sealeo', 3, 'https://bulbapedia.bulbagarden.net/wiki/Sealeo_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f6/364Sealeo.png/250px-364Sealeo.png', 'Ice', 'Water', '', ''),
(365, 365, 'Walrein', 3, 'https://bulbapedia.bulbagarden.net/wiki/Walrein_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/61/365Walrein.png/250px-365Walrein.png', 'Ice', 'Water', '', ''),
(366, 366, 'Clamperl', 3, 'https://bulbapedia.bulbagarden.net/wiki/Clamperl_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/11/366Clamperl.png/250px-366Clamperl.png', 'Water', 'None', 'Yes', ''),
(367, 367, 'Huntail', 3, 'https://bulbapedia.bulbagarden.net/wiki/Huntail_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/11/367Huntail.png/250px-367Huntail.png', 'Water', 'None', 'Yes', ''),
(368, 368, 'Gorebyss', 3, 'https://bulbapedia.bulbagarden.net/wiki/Gorebyss_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/37/368Gorebyss.png/250px-368Gorebyss.png', 'Water', 'None', 'Yes', ''),
(369, 369, 'Relicanth', 3, 'https://bulbapedia.bulbagarden.net/wiki/Relicanth_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/78/369Relicanth.png/250px-369Relicanth.png', 'Water', 'Rock', 'Yes', ''),
(370, 370, 'Luvdisc', 3, 'https://bulbapedia.bulbagarden.net/wiki/Luvdisc_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/1d/370Luvdisc.png/250px-370Luvdisc.png', 'Water', 'None', 'Yes', ''),
(371, 371, 'Bagon', 3, 'https://bulbapedia.bulbagarden.net/wiki/Bagon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d2/371Bagon.png/250px-371Bagon.png', 'Dragon', 'None', '', ''),
(372, 372, 'Shelgon', 3, 'https://bulbapedia.bulbagarden.net/wiki/Shelgon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a5/372Shelgon.png/250px-372Shelgon.png', 'Dragon', 'None', '', ''),
(373, 373, 'Salamence', 3, 'https://bulbapedia.bulbagarden.net/wiki/Salamence_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/41/373Salamence.png/250px-373Salamence.png', 'Dragon', 'Flying', '', ''),
(374, 374, 'Beldum', 3, 'https://bulbapedia.bulbagarden.net/wiki/Beldum_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d4/374Beldum.png/250px-374Beldum.png', 'Steel', 'Psychic', 'Yes', ''),
(375, 375, 'Metang', 3, 'https://bulbapedia.bulbagarden.net/wiki/Metang_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/62/375Metang.png/250px-375Metang.png', 'Steel', 'Psychic', 'Yes', ''),
(376, 376, 'Metagross', 3, 'https://bulbapedia.bulbagarden.net/wiki/Metagross_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/05/376Metagross.png/250px-376Metagross.png', 'Steel', 'Psychic', 'Yes', ''),
(377, 377, 'Regirock', 3, 'https://bulbapedia.bulbagarden.net/wiki/Regirock_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/aa/377Regirock.png/250px-377Regirock.png', 'Rock', 'None', '', ''),
(378, 378, 'Regice', 3, 'https://bulbapedia.bulbagarden.net/wiki/Regice_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/fe/378Regice.png/250px-378Regice.png', 'Ice', 'None', '', ''),
(379, 379, 'Registeel', 3, 'https://bulbapedia.bulbagarden.net/wiki/Registeel_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/22/379Registeel.png/250px-379Registeel.png', 'Steel', 'None', '', ''),
(380, 380, 'Latias', 3, 'https://bulbapedia.bulbagarden.net/wiki/Latias_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/24/380Latias.png/250px-380Latias.png', 'Dragon', 'Psychic', 'Yes', ''),
(381, 381, 'Latios', 3, 'https://bulbapedia.bulbagarden.net/wiki/Latios_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/52/381Latios.png/250px-381Latios.png', 'Dragon', 'Psychic', '', ''),
(382, 382, 'Kyogre', 3, 'https://bulbapedia.bulbagarden.net/wiki/Kyogre_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/41/382Kyogre.png/250px-382Kyogre.png', 'Water', 'None', 'Yes', ''),
(383, 383, 'Groudon', 3, 'https://bulbapedia.bulbagarden.net/wiki/Groudon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/70/383Groudon.png/250px-383Groudon.png', 'Ground', 'None', 'Yes', ''),
(384, 384, 'Rayquaza', 3, 'https://bulbapedia.bulbagarden.net/wiki/Rayquaza_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e4/384Rayquaza.png/250px-384Rayquaza.png', 'Dragon', 'Flying', 'Yes', ''),
(385, 385, 'Jirachi', 3, 'https://bulbapedia.bulbagarden.net/wiki/Jirachi_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/85/385Jirachi.png/250px-385Jirachi.png', 'Steel', 'Psychic', '', ''),
(386, 386, 'Deoxys', 3, 'https://bulbapedia.bulbagarden.net/wiki/Deoxys_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e7/386Deoxys.png/250px-386Deoxys.png', 'Psychic', 'None', 'Yes', ''),
(387, 387, 'Turtwig', 4, 'https://bulbapedia.bulbagarden.net/wiki/Turtwig_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/5c/387Turtwig.png/250px-387Turtwig.png', 'Grass', 'None', '', ''),
(388, 388, 'Grotle', 4, 'https://bulbapedia.bulbagarden.net/wiki/Grotle_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/53/388Grotle.png/250px-388Grotle.png', 'Grass', 'None', '', ''),
(389, 389, 'Torterra', 4, 'https://bulbapedia.bulbagarden.net/wiki/Torterra_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/df/389Torterra.png/250px-389Torterra.png', 'Grass', 'Ground', '', ''),
(390, 390, 'Chimchar', 4, 'https://bulbapedia.bulbagarden.net/wiki/Chimchar_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/76/390Chimchar.png/250px-390Chimchar.png', 'Fire', 'None', '', ''),
(391, 391, 'Monferno', 4, 'https://bulbapedia.bulbagarden.net/wiki/Monferno_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/2e/391Monferno.png/250px-391Monferno.png', 'Fire', 'Fighting', '', ''),
(392, 392, 'Infernape', 4, 'https://bulbapedia.bulbagarden.net/wiki/Infernape_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/fb/392Infernape.png/250px-392Infernape.png', 'Fire', 'Fighting', '', ''),
(393, 393, 'Piplup', 4, 'https://bulbapedia.bulbagarden.net/wiki/Piplup_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b1/393Piplup.png/250px-393Piplup.png', 'Water', 'None', '', ''),
(394, 394, 'Prinplup', 4, 'https://bulbapedia.bulbagarden.net/wiki/Prinplup_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/df/394Prinplup.png/250px-394Prinplup.png', 'Water', 'None', '', ''),
(395, 395, 'Empoleon', 4, 'https://bulbapedia.bulbagarden.net/wiki/Empoleon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/7f/395Empoleon.png/250px-395Empoleon.png', 'Water', 'Steel', '', ''),
(396, 396, 'Starly', 4, 'https://bulbapedia.bulbagarden.net/wiki/Starly_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/af/396Starly.png/250px-396Starly.png', 'Normal', 'Flying', 'Yes', ''),
(397, 397, 'Staravia', 4, 'https://bulbapedia.bulbagarden.net/wiki/Staravia_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f8/397Staravia.png/250px-397Staravia.png', 'Normal', 'Flying', 'Yes', ''),
(398, 398, 'Staraptor', 4, 'https://bulbapedia.bulbagarden.net/wiki/Staraptor_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/5e/398Staraptor.png/250px-398Staraptor.png', 'Normal', 'Flying', 'Yes', ''),
(399, 399, 'Bidoof', 4, 'https://bulbapedia.bulbagarden.net/wiki/Bidoof_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f5/399Bidoof.png/250px-399Bidoof.png', 'Normal', 'None', '', ''),
(400, 400, 'Bibarel', 4, 'https://bulbapedia.bulbagarden.net/wiki/Bibarel_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/91/400Bibarel.png/250px-400Bibarel.png', 'Normal', 'Water', '', ''),
(401, 401, 'Kricketot', 4, 'https://bulbapedia.bulbagarden.net/wiki/Kricketot_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/33/401Kricketot.png/250px-401Kricketot.png', 'Bug', 'None', 'Yes', ''),
(402, 402, 'Kricketune', 4, 'https://bulbapedia.bulbagarden.net/wiki/Kricketune_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e5/402Kricketune.png/250px-402Kricketune.png', 'Bug', 'None', 'Yes', ''),
(403, 403, 'Shinx', 4, 'https://bulbapedia.bulbagarden.net/wiki/Shinx_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/32/403Shinx.png/250px-403Shinx.png', 'Electric', 'None', 'Yes', ''),
(404, 404, 'Luxio', 4, 'https://bulbapedia.bulbagarden.net/wiki/Luxio_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/49/404Luxio.png/250px-404Luxio.png', 'Electric', 'None', 'Yes', ''),
(405, 405, 'Luxray', 4, 'https://bulbapedia.bulbagarden.net/wiki/Luxray_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a7/405Luxray.png/250px-405Luxray.png', 'Electric', 'None', 'Yes', ''),
(406, 406, 'Budew', 4, 'https://bulbapedia.bulbagarden.net/wiki/Budew_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d3/406Budew.png/250px-406Budew.png', 'Grass', 'Poison', 'Yes', ''),
(407, 407, 'Roserade', 4, 'https://bulbapedia.bulbagarden.net/wiki/Roserade_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/05/407Roserade.png/250px-407Roserade.png', 'Grass', 'Poison', '', ''),
(408, 408, 'Cranidos', 4, 'https://bulbapedia.bulbagarden.net/wiki/Cranidos_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/cd/408Cranidos.png/250px-408Cranidos.png', 'Rock', 'None', '', ''),
(409, 409, 'Rampardos', 4, 'https://bulbapedia.bulbagarden.net/wiki/Rampardos_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/8a/409Rampardos.png/250px-409Rampardos.png', 'Rock', 'None', '', ''),
(410, 410, 'Shieldon', 4, 'https://bulbapedia.bulbagarden.net/wiki/Shieldon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e2/410Shieldon.png/250px-410Shieldon.png', 'Rock', 'Steel', '', ''),
(411, 411, 'Bastiodon', 4, 'https://bulbapedia.bulbagarden.net/wiki/Bastiodon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/bc/411Bastiodon.png/250px-411Bastiodon.png', 'Rock', 'Steel', '', ''),
(412, 412, 'Burmy', 4, 'https://bulbapedia.bulbagarden.net/wiki/Burmy_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c9/412Burmy-Plant.png/250px-412Burmy-Plant.png', 'Bug', 'None', '', ''),
(413, 413, 'Wormadam', 4, 'https://bulbapedia.bulbagarden.net/wiki/Wormadam_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/db/413Wormadam-Plant.png/250px-413Wormadam-Plant.png', 'Bug', 'Grass', '', ''),
(414, 414, 'Mothim', 4, 'https://bulbapedia.bulbagarden.net/wiki/Mothim_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/18/414Mothim.png/250px-414Mothim.png', 'Bug', 'Flying', '', ''),
(415, 415, 'Combee', 4, 'https://bulbapedia.bulbagarden.net/wiki/Combee_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b6/415Combee.png/250px-415Combee.png', 'Bug', 'Flying', 'Yes', ''),
(416, 416, 'Vespiquen', 4, 'https://bulbapedia.bulbagarden.net/wiki/Vespiquen_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/2c/416Vespiquen.png/250px-416Vespiquen.png', 'Bug', 'Flying', 'Yes', ''),
(417, 417, 'Pachirisu', 4, 'https://bulbapedia.bulbagarden.net/wiki/Pachirisu_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f4/417Pachirisu.png/250px-417Pachirisu.png', 'Electric', 'None', 'Yes', ''),
(418, 418, 'Buizel', 4, 'https://bulbapedia.bulbagarden.net/wiki/Buizel_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/83/418Buizel.png/250px-418Buizel.png', 'Water', 'None', 'Yes', ''),
(419, 419, 'Floatzel', 4, 'https://bulbapedia.bulbagarden.net/wiki/Floatzel_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/bf/419Floatzel.png/250px-419Floatzel.png', 'Water', 'None', 'Yes', ''),
(420, 420, 'Cherubi', 4, 'https://bulbapedia.bulbagarden.net/wiki/Cherubi_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a7/420Cherubi.png/250px-420Cherubi.png', 'Grass', 'None', '', ''),
(421, 421, 'Cherrim', 4, 'https://bulbapedia.bulbagarden.net/wiki/Cherrim_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/25/421Cherrim-Overcast.png/250px-421Cherrim-Overcast.png', 'Grass', 'None', '', ''),
(422, 422, 'Shellos', 4, 'https://bulbapedia.bulbagarden.net/wiki/Shellos_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/72/422Shellos.png/250px-422Shellos.png', 'Water', 'None', '', ''),
(423, 423, 'Gastrodon', 4, 'https://bulbapedia.bulbagarden.net/wiki/Gastrodon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/18/423Gastrodon.png/250px-423Gastrodon.png', 'Water', 'Ground', '', ''),
(424, 424, 'Ambipom', 4, 'https://bulbapedia.bulbagarden.net/wiki/Ambipom_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/86/424Ambipom.png/250px-424Ambipom.png', 'Normal', 'None', 'Yes', ''),
(425, 425, 'Drifloon', 4, 'https://bulbapedia.bulbagarden.net/wiki/Drifloon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/eb/425Drifloon.png/250px-425Drifloon.png', 'Ghost', 'Flying', '', ''),
(426, 426, 'Drifblim', 4, 'https://bulbapedia.bulbagarden.net/wiki/Drifblim_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/71/426Drifblim.png/250px-426Drifblim.png', 'Ghost', 'Flying', '', ''),
(427, 427, 'Buneary', 4, 'https://bulbapedia.bulbagarden.net/wiki/Buneary_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a7/427Buneary.png/250px-427Buneary.png', 'Normal', 'None', '', ''),
(428, 428, 'Lopunny', 4, 'https://bulbapedia.bulbagarden.net/wiki/Lopunny_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c9/428Lopunny.png/250px-428Lopunny.png', 'Normal', 'None', '', ''),
(429, 429, 'Mismagius', 4, 'https://bulbapedia.bulbagarden.net/wiki/Mismagius_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b4/429Mismagius.png/250px-429Mismagius.png', 'Ghost', 'None', '', ''),
(430, 430, 'Honchkrow', 4, 'https://bulbapedia.bulbagarden.net/wiki/Honchkrow_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/46/430Honchkrow.png/250px-430Honchkrow.png', 'Dark', 'Flying', 'Yes', ''),
(431, 431, 'Glameow', 4, 'https://bulbapedia.bulbagarden.net/wiki/Glameow_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/26/431Glameow.png/250px-431Glameow.png', 'Normal', 'None', 'Yes', ''),
(432, 432, 'Purugly', 4, 'https://bulbapedia.bulbagarden.net/wiki/Purugly_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/80/432Purugly.png/250px-432Purugly.png', 'Normal', 'None', 'Yes', ''),
(433, 433, 'Chingling', 4, 'https://bulbapedia.bulbagarden.net/wiki/Chingling_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/ed/433Chingling.png/250px-433Chingling.png', 'Psychic', 'None', 'Yes', ''),
(434, 434, 'Stunky', 4, 'https://bulbapedia.bulbagarden.net/wiki/Stunky_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/75/434Stunky.png/250px-434Stunky.png', 'Poison', 'Dark', 'Yes', ''),
(435, 435, 'Skuntank', 4, 'https://bulbapedia.bulbagarden.net/wiki/Skuntank_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/bc/435Skuntank.png/250px-435Skuntank.png', 'Poison', 'Dark', 'Yes', ''),
(436, 436, 'Bronzor', 4, 'https://bulbapedia.bulbagarden.net/wiki/Bronzor_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c1/436Bronzor.png/250px-436Bronzor.png', 'Steel', 'Psychic', 'Yes', ''),
(437, 437, 'Bronzong', 4, 'https://bulbapedia.bulbagarden.net/wiki/Bronzong_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/aa/437Bronzong.png/250px-437Bronzong.png', 'Steel', 'Psychic', 'Yes', ''),
(438, 438, 'Bonsly', 4, 'https://bulbapedia.bulbagarden.net/wiki/Bonsly_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e2/438Bonsly.png/250px-438Bonsly.png', 'Rock', 'None', 'Yes', ''),
(439, 439, 'Mime Jr.', 4, 'https://bulbapedia.bulbagarden.net/wiki/Mime%20Jr._(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/37/439Mime_Jr.png/250px-439Mime_Jr.png', 'Psychic', 'Fairy', 'Yes', ''),
(440, 440, 'Happiny', 4, 'https://bulbapedia.bulbagarden.net/wiki/Happiny_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/27/440Happiny.png/250px-440Happiny.png', 'Normal', 'None', '', ''),
(441, 441, 'Chatot', 4, 'https://bulbapedia.bulbagarden.net/wiki/Chatot_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/bf/441Chatot.png/250px-441Chatot.png', 'Normal', 'Flying', 'Yes', ''),
(442, 442, 'Spiritomb', 4, 'https://bulbapedia.bulbagarden.net/wiki/Spiritomb_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/8e/442Spiritomb.png/250px-442Spiritomb.png', 'Ghost', 'Dark', '', ''),
(443, 443, 'Gible', 4, 'https://bulbapedia.bulbagarden.net/wiki/Gible_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/68/443Gible.png/250px-443Gible.png', 'Dragon', 'Ground', '', ''),
(444, 444, 'Gabite', 4, 'https://bulbapedia.bulbagarden.net/wiki/Gabite_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/9d/444Gabite.png/250px-444Gabite.png', 'Dragon', 'Ground', '', ''),
(445, 445, 'Garchomp', 4, 'https://bulbapedia.bulbagarden.net/wiki/Garchomp_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/fa/445Garchomp.png/250px-445Garchomp.png', 'Dragon', 'Ground', '', ''),
(446, 446, 'Munchlax', 4, 'https://bulbapedia.bulbagarden.net/wiki/Munchlax_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b2/446Munchlax.png/250px-446Munchlax.png', 'Normal', 'None', 'Yes', ''),
(447, 447, 'Riolu', 4, 'https://bulbapedia.bulbagarden.net/wiki/Riolu_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a2/447Riolu.png/250px-447Riolu.png', 'Fighting', 'None', 'Yes', ''),
(448, 448, 'Lucario', 4, 'https://bulbapedia.bulbagarden.net/wiki/Lucario_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d7/448Lucario.png/250px-448Lucario.png', 'Fighting', 'Steel', 'Yes', ''),
(449, 449, 'Hippopotas', 4, 'https://bulbapedia.bulbagarden.net/wiki/Hippopotas_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/ab/449Hippopotas.png/250px-449Hippopotas.png', 'Ground', 'None', 'Yes', ''),
(450, 450, 'Hippowdon', 4, 'https://bulbapedia.bulbagarden.net/wiki/Hippowdon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/5f/450Hippowdon.png/250px-450Hippowdon.png', 'Ground', 'None', 'Yes', ''),
(451, 451, 'Skorupi', 4, 'https://bulbapedia.bulbagarden.net/wiki/Skorupi_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/47/451Skorupi.png/250px-451Skorupi.png', 'Poison', 'Bug', '', ''),
(452, 452, 'Drapion', 4, 'https://bulbapedia.bulbagarden.net/wiki/Drapion_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/13/452Drapion.png/250px-452Drapion.png', 'Poison', 'Dark', '', ''),
(453, 453, 'Croagunk', 4, 'https://bulbapedia.bulbagarden.net/wiki/Croagunk_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/fa/453Croagunk.png/250px-453Croagunk.png', 'Poison', 'Fighting', '', ''),
(454, 454, 'Toxicroak', 4, 'https://bulbapedia.bulbagarden.net/wiki/Toxicroak_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/8b/454Toxicroak.png/250px-454Toxicroak.png', 'Poison', 'Fighting', '', ''),
(455, 455, 'Carnivine', 4, 'https://bulbapedia.bulbagarden.net/wiki/Carnivine_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/df/455Carnivine.png/250px-455Carnivine.png', 'Grass', 'None', '', ''),
(456, 456, 'Finneon', 4, 'https://bulbapedia.bulbagarden.net/wiki/Finneon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/45/456Finneon.png/250px-456Finneon.png', 'Water', 'None', '', ''),
(457, 457, 'Lumineon', 4, 'https://bulbapedia.bulbagarden.net/wiki/Lumineon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f0/457Lumineon.png/250px-457Lumineon.png', 'Water', 'None', '', ''),
(458, 458, 'Mantyke', 4, 'https://bulbapedia.bulbagarden.net/wiki/Mantyke_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/bc/458Mantyke.png/250px-458Mantyke.png', 'Water', 'Flying', '', ''),
(459, 459, 'Snover', 4, 'https://bulbapedia.bulbagarden.net/wiki/Snover_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d2/459Snover.png/250px-459Snover.png', 'Grass', 'Ice', '', ''),
(460, 460, 'Abomasnow', 4, 'https://bulbapedia.bulbagarden.net/wiki/Abomasnow_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/3b/460Abomasnow.png/250px-460Abomasnow.png', 'Grass', 'Ice', '', ''),
(461, 461, 'Weavile', 4, 'https://bulbapedia.bulbagarden.net/wiki/Weavile_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d2/461Weavile.png/250px-461Weavile.png', 'Dark', 'Ice', '', ''),
(462, 462, 'Magnezone', 4, 'https://bulbapedia.bulbagarden.net/wiki/Magnezone_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/53/462Magnezone.png/250px-462Magnezone.png', 'Electric', 'Steel', '', ''),
(463, 463, 'Lickilicky', 4, 'https://bulbapedia.bulbagarden.net/wiki/Lickilicky_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/8e/463Lickilicky.png/250px-463Lickilicky.png', 'Normal', 'None', 'Yes', ''),
(464, 464, 'Rhyperior', 4, 'https://bulbapedia.bulbagarden.net/wiki/Rhyperior_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d9/464Rhyperior.png/250px-464Rhyperior.png', 'Ground', 'Rock', 'Yes', ''),
(465, 465, 'Tangrowth', 4, 'https://bulbapedia.bulbagarden.net/wiki/Tangrowth_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/32/465Tangrowth.png/250px-465Tangrowth.png', 'Grass', 'None', '', ''),
(466, 466, 'Electivire', 4, 'https://bulbapedia.bulbagarden.net/wiki/Electivire_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/23/466Electivire.png/250px-466Electivire.png', 'Electric', 'None', 'Yes', ''),
(467, 467, 'Magmortar', 4, 'https://bulbapedia.bulbagarden.net/wiki/Magmortar_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/60/467Magmortar.png/250px-467Magmortar.png', 'Fire', 'None', '', ''),
(468, 468, 'Togekiss', 4, 'https://bulbapedia.bulbagarden.net/wiki/Togekiss_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/87/468Togekiss.png/250px-468Togekiss.png', 'Fairy', 'Flying', '', ''),
(469, 469, 'Yanmega', 4, 'https://bulbapedia.bulbagarden.net/wiki/Yanmega_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e6/469Yanmega.png/250px-469Yanmega.png', 'Bug', 'Flying', '', ''),
(470, 470, 'Leafeon', 4, 'https://bulbapedia.bulbagarden.net/wiki/Leafeon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f5/470Leafeon.png/250px-470Leafeon.png', 'Grass', 'None', '', ''),
(471, 471, 'Glaceon', 4, 'https://bulbapedia.bulbagarden.net/wiki/Glaceon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/23/471Glaceon.png/250px-471Glaceon.png', 'Ice', 'None', 'Yes', ''),
(472, 472, 'Gliscor', 4, 'https://bulbapedia.bulbagarden.net/wiki/Gliscor_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/ac/472Gliscor.png/250px-472Gliscor.png', 'Ground', 'Flying', '', ''),
(473, 473, 'Mamoswine', 4, 'https://bulbapedia.bulbagarden.net/wiki/Mamoswine_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d0/473Mamoswine.png/250px-473Mamoswine.png', 'Ice', 'Ground', '', ''),
(474, 474, 'Porygon-Z', 4, 'https://bulbapedia.bulbagarden.net/wiki/Porygon-Z_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/24/474Porygon-Z.png/250px-474Porygon-Z.png', 'Normal', 'None', 'Yes', ''),
(475, 475, 'Gallade', 4, 'https://bulbapedia.bulbagarden.net/wiki/Gallade_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/58/475Gallade.png/250px-475Gallade.png', 'Psychic', 'Fighting', 'Yes', ''),
(476, 476, 'Probopass', 4, 'https://bulbapedia.bulbagarden.net/wiki/Probopass_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a6/476Probopass.png/250px-476Probopass.png', 'Rock', 'Steel', 'Yes', ''),
(477, 477, 'Dusknoir', 4, 'https://bulbapedia.bulbagarden.net/wiki/Dusknoir_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4f/477Dusknoir.png/250px-477Dusknoir.png', 'Ghost', 'None', '', ''),
(478, 478, 'Froslass', 4, 'https://bulbapedia.bulbagarden.net/wiki/Froslass_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a2/478Froslass.png/250px-478Froslass.png', 'Ice', 'Ghost', 'Yes', ''),
(479, 479, 'Rotom', 4, 'https://bulbapedia.bulbagarden.net/wiki/Rotom_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c5/479Rotom.png/250px-479Rotom.png', 'Electric', 'Ghost', 'Yes', ''),
(480, 480, 'Uxie', 4, 'https://bulbapedia.bulbagarden.net/wiki/Uxie_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/ef/480Uxie.png/250px-480Uxie.png', 'Psychic', 'None', 'Yes', ''),
(481, 481, 'Mesprit', 4, 'https://bulbapedia.bulbagarden.net/wiki/Mesprit_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/40/481Mesprit.png/250px-481Mesprit.png', 'Psychic', 'None', 'Yes', ''),
(482, 482, 'Azelf', 4, 'https://bulbapedia.bulbagarden.net/wiki/Azelf_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d0/482Azelf.png/250px-482Azelf.png', 'Psychic', 'None', 'Yes', ''),
(483, 483, 'Dialga', 4, 'https://bulbapedia.bulbagarden.net/wiki/Dialga_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/8a/483Dialga.png/250px-483Dialga.png', 'Steel', 'Dragon', 'Yes', ''),
(484, 484, 'Palkia', 4, 'https://bulbapedia.bulbagarden.net/wiki/Palkia_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/66/484Palkia.png/250px-484Palkia.png', 'Water', 'Dragon', 'Yes', ''),
(485, 485, 'Heatran', 4, 'https://bulbapedia.bulbagarden.net/wiki/Heatran_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b7/485Heatran.png/250px-485Heatran.png', 'Fire', 'Steel', '', ''),
(486, 486, 'Regigigas', 4, 'https://bulbapedia.bulbagarden.net/wiki/Regigigas_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a1/486Regigigas.png/250px-486Regigigas.png', 'Normal', 'None', '', ''),
(487, 487, 'Giratina', 4, 'https://bulbapedia.bulbagarden.net/wiki/Giratina_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c5/487Giratina-Altered.png/250px-487Giratina-Altered.png', 'Ghost', 'Dragon', 'Yes', ''),
(488, 488, '	Cresselia', 4, 'https://bulbapedia.bulbagarden.net/wiki/Cresselia_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4a/488Cresselia.png/375px-488Cresselia.png', 'Psychic', 'None', '', ''),
(489, 489, 'Phione', 4, 'https://bulbapedia.bulbagarden.net/wiki/Phione_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/72/489Phione.png/250px-489Phione.png', 'Water', 'None', '', ''),
(490, 490, '	Manaphy', 4, 'https://bulbapedia.bulbagarden.net/wiki/Manaphy_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/2e/490Manaphy.png/375px-490Manaphy.png', 'Water', 'None', '', ''),
(491, 491, 'Darkrai', 4, 'https://bulbapedia.bulbagarden.net/wiki/Darkrai_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/6d/491Darkrai.png/250px-491Darkrai.png', 'Dark', 'None', '', ''),
(492, 492, 'Shaymin', 4, 'https://bulbapedia.bulbagarden.net/wiki/Shaymin_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/05/492Shaymin-Land.png/250px-492Shaymin-Land.png', 'Grass', 'None', '', ''),
(493, 493, 'Arceus', 4, 'https://bulbapedia.bulbagarden.net/wiki/Arceus_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/fc/493Arceus.png/250px-493Arceus.png', 'Normal', 'None', '', ''),
(494, 494, 'Victini', 5, 'https://bulbapedia.bulbagarden.net/wiki/Victini_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/60/494Victini.png/250px-494Victini.png', 'Psychic', 'Fire', '', ''),
(495, 495, 'Snivy', 5, 'https://bulbapedia.bulbagarden.net/wiki/Snivy_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/75/495Snivy.png/250px-495Snivy.png', 'Grass', 'None', '', ''),
(496, 496, 'Servine', 5, 'https://bulbapedia.bulbagarden.net/wiki/Servine_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/73/496Servine.png/250px-496Servine.png', 'Grass', 'None', '', ''),
(497, 497, 'Serperior', 5, 'https://bulbapedia.bulbagarden.net/wiki/Serperior_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b7/497Serperior.png/250px-497Serperior.png', 'Grass', 'None', '', ''),
(498, 498, 'Tepig', 5, 'https://bulbapedia.bulbagarden.net/wiki/Tepig_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/5b/498Tepig.png/250px-498Tepig.png', 'Fire', 'None', '', ''),
(499, 499, 'Pignite', 5, 'https://bulbapedia.bulbagarden.net/wiki/Pignite_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e8/499Pignite.png/250px-499Pignite.png', 'Fire', 'Fighting', '', '');
INSERT INTO `poketch_app_pokemon` (`id`, `pokemon_number`, `name`, `generation`, `article_link`, `image_link`, `type1`, `type2`, `console_owned`, `note`) VALUES
(500, 500, 'Emboar', 5, 'https://bulbapedia.bulbagarden.net/wiki/Emboar_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/18/500Emboar.png/250px-500Emboar.png', 'Fire', 'Fighting', 'Yes', ''),
(501, 501, 'Oshawott', 5, 'https://bulbapedia.bulbagarden.net/wiki/Oshawott_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/3b/501Oshawott.png/250px-501Oshawott.png', 'Water', 'None', '', ''),
(502, 502, 'Dewott', 5, 'https://bulbapedia.bulbagarden.net/wiki/Dewott_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e4/502Dewott.png/250px-502Dewott.png', 'Water', 'None', '', ''),
(503, 503, 'Samurott', 5, 'https://bulbapedia.bulbagarden.net/wiki/Samurott_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b5/503Samurott.png/250px-503Samurott.png', 'Water', 'None', '', ''),
(504, 504, 'Patrat', 5, 'https://bulbapedia.bulbagarden.net/wiki/Patrat_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/cb/504Patrat.png/250px-504Patrat.png', 'Normal', 'None', 'Yes', ''),
(505, 505, 'Watchog', 5, 'https://bulbapedia.bulbagarden.net/wiki/Watchog_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/3e/505Watchog.png/250px-505Watchog.png', 'Normal', 'None', 'Yes', ''),
(506, 506, 'Lillipup', 5, 'https://bulbapedia.bulbagarden.net/wiki/Lillipup_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/7e/506Lillipup.png/250px-506Lillipup.png', 'Normal', 'None', 'Yes', ''),
(507, 507, 'Herdier', 5, 'https://bulbapedia.bulbagarden.net/wiki/Herdier_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/96/507Herdier.png/250px-507Herdier.png', 'Normal', 'None', 'Yes', ''),
(508, 508, 'Stoutland', 5, 'https://bulbapedia.bulbagarden.net/wiki/Stoutland_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/3e/508Stoutland.png/250px-508Stoutland.png', 'Normal', 'None', 'Yes', ''),
(509, 509, 'Purrloin', 5, 'https://bulbapedia.bulbagarden.net/wiki/Purrloin_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/46/509Purrloin.png/250px-509Purrloin.png', 'Dark', 'None', 'Yes', ''),
(510, 510, 'Liepard', 5, 'https://bulbapedia.bulbagarden.net/wiki/Liepard_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/09/510Liepard.png/250px-510Liepard.png', 'Dark', 'None', 'Yes', ''),
(511, 511, 'Pansage', 5, 'https://bulbapedia.bulbagarden.net/wiki/Pansage_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/6b/511Pansage.png/250px-511Pansage.png', 'Grass', 'None', 'Yes', ''),
(512, 512, 'Simisage', 5, 'https://bulbapedia.bulbagarden.net/wiki/Simisage_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/24/512Simisage.png/250px-512Simisage.png', 'Grass', 'None', 'Yes', ''),
(513, 513, 'Pansear', 5, 'https://bulbapedia.bulbagarden.net/wiki/Pansear_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e1/513Pansear.png/250px-513Pansear.png', 'Fire', 'None', 'Yes', ''),
(514, 514, 'Simisear', 5, 'https://bulbapedia.bulbagarden.net/wiki/Simisear_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/7c/514Simisear.png/250px-514Simisear.png', 'Fire', 'None', 'Yes', ''),
(515, 515, 'Panpour', 5, 'https://bulbapedia.bulbagarden.net/wiki/Panpour_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/2f/515Panpour.png/250px-515Panpour.png', 'Water', 'None', 'Yes', ''),
(516, 516, 'Simipour', 5, 'https://bulbapedia.bulbagarden.net/wiki/Simipour_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/83/516Simipour.png/250px-516Simipour.png', 'Water', 'None', 'Yes', ''),
(517, 517, 'Munna', 5, 'https://bulbapedia.bulbagarden.net/wiki/Munna_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/61/517Munna.png/250px-517Munna.png', 'Psychic', 'None', 'Yes', ''),
(518, 518, 'Musharna', 5, 'https://bulbapedia.bulbagarden.net/wiki/Musharna_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/2d/518Musharna.png/250px-518Musharna.png', 'Psychic', 'None', 'Yes', ''),
(519, 519, 'Pidove', 5, 'https://bulbapedia.bulbagarden.net/wiki/Pidove_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c3/519Pidove.png/250px-519Pidove.png', 'Normal', 'Flying', 'Yes', ''),
(520, 520, 'Tranquill', 5, 'https://bulbapedia.bulbagarden.net/wiki/Tranquill_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a3/520Tranquill.png/250px-520Tranquill.png', 'Normal', 'Flying', '', ''),
(521, 521, 'Unfezant', 5, 'https://bulbapedia.bulbagarden.net/wiki/Unfezant_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d0/521Unfezant.png/250px-521Unfezant.png', 'Normal', 'Flying', '', ''),
(522, 522, 'Blitzle', 5, 'https://bulbapedia.bulbagarden.net/wiki/Blitzle_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/af/522Blitzle.png/250px-522Blitzle.png', 'Electric', 'None', 'Yes', ''),
(523, 523, 'Zebstrika', 5, 'https://bulbapedia.bulbagarden.net/wiki/Zebstrika_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a1/523Zebstrika.png/250px-523Zebstrika.png', 'Electric', 'None', 'Yes', ''),
(524, 524, 'Roggenrola', 5, 'https://bulbapedia.bulbagarden.net/wiki/Roggenrola_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/69/524Roggenrola.png/250px-524Roggenrola.png', 'Rock', 'None', 'Yes', ''),
(525, 525, 'Boldore', 5, 'https://bulbapedia.bulbagarden.net/wiki/Boldore_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/ce/525Boldore.png/250px-525Boldore.png', 'Rock', 'None', 'Yes', ''),
(526, 526, 'Gigalith', 5, 'https://bulbapedia.bulbagarden.net/wiki/Gigalith_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/59/526Gigalith.png/250px-526Gigalith.png', 'Rock', 'None', 'Yes', ''),
(527, 527, 'Woobat', 5, 'https://bulbapedia.bulbagarden.net/wiki/Woobat_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/36/527Woobat.png/250px-527Woobat.png', 'Psychic', 'Flying', 'Yes', ''),
(528, 528, 'Swoobat', 5, 'https://bulbapedia.bulbagarden.net/wiki/Swoobat_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/9d/528Swoobat.png/250px-528Swoobat.png', 'Psychic', 'Flying', '', ''),
(529, 529, 'Drilbur', 5, 'https://bulbapedia.bulbagarden.net/wiki/Drilbur_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/cf/529Drilbur.png/250px-529Drilbur.png', 'Ground', 'None', 'Yes', ''),
(530, 530, 'Excadrill', 5, 'https://bulbapedia.bulbagarden.net/wiki/Excadrill_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/63/530Excadrill.png/250px-530Excadrill.png', 'Ground', 'Steel', 'Yes', ''),
(531, 531, 'Audino', 5, 'https://bulbapedia.bulbagarden.net/wiki/Audino_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f5/531Audino.png/250px-531Audino.png', 'Normal', 'None', 'Yes', ''),
(532, 532, 'Timburr', 5, 'https://bulbapedia.bulbagarden.net/wiki/Timburr_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/69/532Timburr.png/250px-532Timburr.png', 'Fighting', 'None', 'Yes', ''),
(533, 533, 'Gurdurr', 5, 'https://bulbapedia.bulbagarden.net/wiki/Gurdurr_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/ad/533Gurdurr.png/250px-533Gurdurr.png', 'Fighting', 'None', '', ''),
(534, 534, 'Conkeldurr', 5, 'https://bulbapedia.bulbagarden.net/wiki/Conkeldurr_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/11/534Conkeldurr.png/250px-534Conkeldurr.png', 'Fighting', 'None', '', ''),
(535, 535, 'Tympole', 5, 'https://bulbapedia.bulbagarden.net/wiki/Tympole_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c9/535Tympole.png/250px-535Tympole.png', 'Water', 'None', 'Yes', ''),
(536, 536, 'Palpitoad', 5, 'https://bulbapedia.bulbagarden.net/wiki/Palpitoad_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c9/536Palpitoad.png/250px-536Palpitoad.png', 'Water', 'Ground', '', ''),
(537, 537, 'Seismitoad', 5, 'https://bulbapedia.bulbagarden.net/wiki/Seismitoad_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/35/537Seismitoad.png/250px-537Seismitoad.png', 'Water', 'Ground', '', ''),
(538, 538, 'Throh', 5, 'https://bulbapedia.bulbagarden.net/wiki/Throh_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/74/538Throh.png/250px-538Throh.png', 'Fighting', 'None', 'Yes', ''),
(539, 539, 'Sawk', 5, 'https://bulbapedia.bulbagarden.net/wiki/Sawk_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a8/539Sawk.png/250px-539Sawk.png', 'Fighting', 'None', 'Yes', ''),
(540, 540, 'Sewaddle', 5, 'https://bulbapedia.bulbagarden.net/wiki/Sewaddle_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4a/540Sewaddle.png/250px-540Sewaddle.png', 'Bug', 'Grass', 'Yes', ''),
(541, 541, 'Swadloon', 5, 'https://bulbapedia.bulbagarden.net/wiki/Swadloon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/2b/541Swadloon.png/250px-541Swadloon.png', 'Bug', 'Grass', 'Yes', ''),
(542, 542, 'Leavanny', 5, 'https://bulbapedia.bulbagarden.net/wiki/Leavanny_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/8e/542Leavanny.png/250px-542Leavanny.png', 'Bug', 'Grass', 'Yes', ''),
(543, 543, 'Venipede', 5, 'https://bulbapedia.bulbagarden.net/wiki/Venipede_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/0e/543Venipede.png/250px-543Venipede.png', 'Bug', 'Poison', 'Yes', ''),
(544, 544, 'Whirlipede', 5, 'https://bulbapedia.bulbagarden.net/wiki/Whirlipede_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/bc/544Whirlipede.png/250px-544Whirlipede.png', 'Bug', 'Poison', '', ''),
(545, 545, 'Scolipede', 5, 'https://bulbapedia.bulbagarden.net/wiki/Scolipede_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/cb/545Scolipede.png/250px-545Scolipede.png', 'Bug', 'Poison', '', ''),
(546, 546, 'Cottonee', 5, 'https://bulbapedia.bulbagarden.net/wiki/Cottonee_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/44/546Cottonee.png/250px-546Cottonee.png', 'Grass', 'Fairy', '', ''),
(547, 547, 'Whimsicott', 5, 'https://bulbapedia.bulbagarden.net/wiki/Whimsicott_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a2/547Whimsicott.png/250px-547Whimsicott.png', 'Grass', 'Fairy', '', ''),
(548, 548, 'Petilil', 5, 'https://bulbapedia.bulbagarden.net/wiki/Petilil_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/0b/548Petilil.png/250px-548Petilil.png', 'Grass', 'None', 'Yes', ''),
(549, 549, 'Lilligant', 5, 'https://bulbapedia.bulbagarden.net/wiki/Lilligant_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/21/549Lilligant.png/250px-549Lilligant.png', 'Grass', 'None', '', ''),
(550, 550, 'Basculin', 5, 'https://bulbapedia.bulbagarden.net/wiki/Basculin_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/2f/550Basculin.png/250px-550Basculin.png', 'Water', 'None', '', ''),
(551, 551, 'Sandile', 5, 'https://bulbapedia.bulbagarden.net/wiki/Sandile_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/26/551Sandile.png/250px-551Sandile.png', 'Ground', 'Dark', 'Yes', ''),
(552, 552, 'Krokorok', 5, 'https://bulbapedia.bulbagarden.net/wiki/Krokorok_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d4/552Krokorok.png/250px-552Krokorok.png', 'Ground', 'Dark', 'Yes', ''),
(553, 553, 'Krookodile', 5, 'https://bulbapedia.bulbagarden.net/wiki/Krookodile_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e5/553Krookodile.png/250px-553Krookodile.png', 'Ground', 'Dark', 'Yes', ''),
(554, 554, 'Darumaka', 5, 'https://bulbapedia.bulbagarden.net/wiki/Darumaka_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4c/554Darumaka.png/250px-554Darumaka.png', 'Fire', 'None', 'Yes', ''),
(555, 555, 'Darmanitan', 5, 'https://bulbapedia.bulbagarden.net/wiki/Darmanitan_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/40/555Darmanitan.png/250px-555Darmanitan.png', 'Fire', 'None', 'Yes', ''),
(556, 556, 'Maractus', 5, 'https://bulbapedia.bulbagarden.net/wiki/Maractus_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/35/556Maractus.png/250px-556Maractus.png', 'Grass', 'None', 'Yes', ''),
(557, 557, 'Dwebble', 5, 'https://bulbapedia.bulbagarden.net/wiki/Dwebble_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/6b/557Dwebble.png/250px-557Dwebble.png', 'Bug', 'Rock', 'Yes', ''),
(558, 558, 'Crustle', 5, 'https://bulbapedia.bulbagarden.net/wiki/Crustle_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/19/558Crustle.png/250px-558Crustle.png', 'Bug', 'Rock', '', ''),
(559, 559, 'Scraggy', 5, 'https://bulbapedia.bulbagarden.net/wiki/Scraggy_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/dc/559Scraggy.png/250px-559Scraggy.png', 'Dark', 'Fighting', 'Yes', ''),
(560, 560, 'Scrafty', 5, 'https://bulbapedia.bulbagarden.net/wiki/Scrafty_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e8/560Scrafty.png/250px-560Scrafty.png', 'Dark', 'Fighting', '', ''),
(561, 561, 'Sigilyph', 5, 'https://bulbapedia.bulbagarden.net/wiki/Sigilyph_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/67/561Sigilyph.png/250px-561Sigilyph.png', 'Psychic', 'Flying', 'Yes', ''),
(562, 562, 'Yamask', 5, 'https://bulbapedia.bulbagarden.net/wiki/Yamask_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a4/562Yamask.png/250px-562Yamask.png', 'Ghost', 'None', 'Yes', ''),
(563, 563, 'Cofagrigus', 5, 'https://bulbapedia.bulbagarden.net/wiki/Cofagrigus_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f8/563Cofagrigus.png/250px-563Cofagrigus.png', 'Ghost', 'None', 'Yes', ''),
(564, 564, 'Tirtouga', 5, 'https://bulbapedia.bulbagarden.net/wiki/Tirtouga_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/1a/564Tirtouga.png/250px-564Tirtouga.png', 'Water', 'Rock', '', ''),
(565, 565, 'Carracosta', 5, 'https://bulbapedia.bulbagarden.net/wiki/Carracosta_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d0/565Carracosta.png/250px-565Carracosta.png', 'Water', 'Rock', '', ''),
(566, 566, 'Archen', 5, 'https://bulbapedia.bulbagarden.net/wiki/Archen_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a3/566Archen.png/250px-566Archen.png', 'Rock', 'Flying', '', ''),
(567, 567, 'Archeops', 5, 'https://bulbapedia.bulbagarden.net/wiki/Archeops_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/14/567Archeops.png/250px-567Archeops.png', 'Rock', 'Flying', '', ''),
(568, 568, 'Trubbish', 5, 'https://bulbapedia.bulbagarden.net/wiki/Trubbish_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e2/568Trubbish.png/250px-568Trubbish.png', 'Poison', 'None', 'Yes', ''),
(569, 569, 'Garbodor', 5, 'https://bulbapedia.bulbagarden.net/wiki/Garbodor_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c4/569Garbodor.png/250px-569Garbodor.png', 'Poison', 'None', 'Yes', ''),
(570, 570, 'Zorua', 5, 'https://bulbapedia.bulbagarden.net/wiki/Zorua_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/2b/570Zorua.png/250px-570Zorua.png', 'Dark', 'None', 'Yes', ''),
(571, 571, 'Zoroark', 5, 'https://bulbapedia.bulbagarden.net/wiki/Zoroark_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a6/571Zoroark.png/250px-571Zoroark.png', 'Dark', 'None', 'Yes', ''),
(572, 572, 'Minccino', 5, 'https://bulbapedia.bulbagarden.net/wiki/Minccino_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/ec/572Minccino.png/250px-572Minccino.png', 'Normal', 'None', 'Yes', ''),
(573, 573, 'Cinccino', 5, 'https://bulbapedia.bulbagarden.net/wiki/Cinccino_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/94/573Cinccino.png/250px-573Cinccino.png', 'Normal', 'None', '', ''),
(574, 574, 'Gothita', 5, 'https://bulbapedia.bulbagarden.net/wiki/Gothita_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/71/574Gothita.png/250px-574Gothita.png', 'Psychic', 'None', 'Yes', ''),
(575, 575, 'Gothorita', 5, 'https://bulbapedia.bulbagarden.net/wiki/Gothorita_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/67/575Gothorita.png/250px-575Gothorita.png', 'Psychic', 'None', 'Yes', ''),
(576, 576, 'Gothitelle', 5, 'https://bulbapedia.bulbagarden.net/wiki/Gothitelle_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/38/576Gothitelle.png/250px-576Gothitelle.png', 'Psychic', 'None', 'Yes', ''),
(577, 577, 'Solosis', 5, 'https://bulbapedia.bulbagarden.net/wiki/Solosis_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/1e/577Solosis.png/250px-577Solosis.png', 'Psychic', 'None', 'Yes', ''),
(578, 578, 'Duosion', 5, 'https://bulbapedia.bulbagarden.net/wiki/Duosion_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/83/578Duosion.png/250px-578Duosion.png', 'Psychic', 'None', 'Yes', ''),
(579, 579, 'Reuniclus', 5, 'https://bulbapedia.bulbagarden.net/wiki/Reuniclus_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/19/579Reuniclus.png/250px-579Reuniclus.png', 'Psychic', 'None', '', ''),
(580, 580, 'Ducklett', 5, 'https://bulbapedia.bulbagarden.net/wiki/Ducklett_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4b/580Ducklett.png/250px-580Ducklett.png', 'Water', 'Flying', 'Yes', ''),
(581, 581, 'Swanna', 5, 'https://bulbapedia.bulbagarden.net/wiki/Swanna_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/76/581Swanna.png/250px-581Swanna.png', 'Water', 'Flying', 'Yes', ''),
(582, 582, 'Vanillite', 5, 'https://bulbapedia.bulbagarden.net/wiki/Vanillite_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/3f/582Vanillite.png/250px-582Vanillite.png', 'Ice', 'None', 'Yes', ''),
(583, 583, 'Vanillish', 5, 'https://bulbapedia.bulbagarden.net/wiki/Vanillish_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/2f/583Vanillish.png/250px-583Vanillish.png', 'Ice', 'None', '', ''),
(584, 584, 'Vanilluxe', 5, 'https://bulbapedia.bulbagarden.net/wiki/Vanilluxe_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/39/584Vanilluxe.png/250px-584Vanilluxe.png', 'Ice', 'None', '', ''),
(585, 585, 'Deerling', 5, 'https://bulbapedia.bulbagarden.net/wiki/Deerling_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/68/585Deerling-Spring.png/250px-585Deerling-Spring.png', 'Normal', 'Grass', 'Yes', ''),
(586, 586, 'Sawsbuck', 5, 'https://bulbapedia.bulbagarden.net/wiki/Sawsbuck_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/8d/586Sawsbuck-Spring.png/250px-586Sawsbuck-Spring.png', 'Normal', 'Grass', '', ''),
(587, 587, 'Emolga', 5, 'https://bulbapedia.bulbagarden.net/wiki/Emolga_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b4/587Emolga.png/250px-587Emolga.png', 'Electric', 'Flying', '', ''),
(588, 588, 'Karrablast', 5, 'https://bulbapedia.bulbagarden.net/wiki/Karrablast_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/60/588Karrablast.png/250px-588Karrablast.png', 'Bug', 'None', 'Yes', ''),
(589, 589, 'Escavalier', 5, 'https://bulbapedia.bulbagarden.net/wiki/Escavalier_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/63/589Escavalier.png/250px-589Escavalier.png', 'Bug', 'Steel', '', ''),
(590, 590, 'Foongus', 5, 'https://bulbapedia.bulbagarden.net/wiki/Foongus_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/cc/590Foongus.png/250px-590Foongus.png', 'Grass', 'Poison', 'Yes', ''),
(591, 591, 'Amoonguss', 5, 'https://bulbapedia.bulbagarden.net/wiki/Amoonguss_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/13/591Amoonguss.png/250px-591Amoonguss.png', 'Grass', 'Poison', 'Yes', ''),
(592, 592, 'Frillish', 5, 'https://bulbapedia.bulbagarden.net/wiki/Frillish_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/88/592Frillish.png/250px-592Frillish.png', 'Water', 'Ghost', 'Yes', ''),
(593, 593, 'Jellicent', 5, 'https://bulbapedia.bulbagarden.net/wiki/Jellicent_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/5c/593Jellicent.png/250px-593Jellicent.png', 'Water', 'Ghost', '', ''),
(594, 594, 'Alomomola', 5, 'https://bulbapedia.bulbagarden.net/wiki/Alomomola_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/10/594Alomomola.png/250px-594Alomomola.png', 'Water', 'None', '', ''),
(595, 595, 'Joltik', 5, 'https://bulbapedia.bulbagarden.net/wiki/Joltik_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f8/595Joltik.png/250px-595Joltik.png', 'Bug', 'Electric', 'Yes', ''),
(596, 596, 'Galvantula', 5, 'https://bulbapedia.bulbagarden.net/wiki/Galvantula_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/7a/596Galvantula.png/250px-596Galvantula.png', 'Bug', 'Electric', '', ''),
(597, 597, 'Ferroseed', 5, 'https://bulbapedia.bulbagarden.net/wiki/Ferroseed_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/28/597Ferroseed.png/250px-597Ferroseed.png', 'Grass', 'Steel', 'Yes', ''),
(598, 598, 'Ferrothorn', 5, 'https://bulbapedia.bulbagarden.net/wiki/Ferrothorn_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/6c/598Ferrothorn.png/250px-598Ferrothorn.png', 'Grass', 'Steel', '', ''),
(599, 599, 'Klink', 5, 'https://bulbapedia.bulbagarden.net/wiki/Klink_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/ea/599Klink.png/250px-599Klink.png', 'Steel', 'None', 'Yes', ''),
(600, 600, 'Klang', 5, 'https://bulbapedia.bulbagarden.net/wiki/Klang_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/80/600Klang.png/250px-600Klang.png', 'Steel', 'None', '', ''),
(601, 601, 'Klinklang', 5, 'https://bulbapedia.bulbagarden.net/wiki/Klinklang_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/cf/601Klinklang.png/250px-601Klinklang.png', 'Steel', 'None', '', ''),
(602, 602, 'Tynamo', 5, 'https://bulbapedia.bulbagarden.net/wiki/Tynamo_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/5e/602Tynamo.png/250px-602Tynamo.png', 'Electric', 'None', 'Yes', ''),
(603, 603, 'Eelektrik', 5, 'https://bulbapedia.bulbagarden.net/wiki/Eelektrik_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c7/603Eelektrik.png/250px-603Eelektrik.png', 'Electric', 'None', 'Yes', ''),
(604, 604, 'Eelektross', 5, 'https://bulbapedia.bulbagarden.net/wiki/Eelektross_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/6c/604Eelektross.png/250px-604Eelektross.png', 'Electric', 'None', 'Yes', ''),
(605, 605, 'Elgyem', 5, 'https://bulbapedia.bulbagarden.net/wiki/Elgyem_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/fd/605Elgyem.png/250px-605Elgyem.png', 'Psychic', 'None', 'Yes', ''),
(606, 606, 'Beheeyem', 5, 'https://bulbapedia.bulbagarden.net/wiki/Beheeyem_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/2c/606Beheeyem.png/250px-606Beheeyem.png', 'Psychic', 'None', 'Yes', ''),
(607, 607, 'Litwick', 5, 'https://bulbapedia.bulbagarden.net/wiki/Litwick_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/8e/607Litwick.png/250px-607Litwick.png', 'Ghost', 'Fire', 'Yes', ''),
(608, 608, 'Lampent', 5, 'https://bulbapedia.bulbagarden.net/wiki/Lampent_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a5/608Lampent.png/250px-608Lampent.png', 'Ghost', 'Fire', '', ''),
(609, 609, 'Chandelure', 5, 'https://bulbapedia.bulbagarden.net/wiki/Chandelure_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/65/609Chandelure.png/250px-609Chandelure.png', 'Ghost', 'Fire', '', ''),
(610, 610, 'Axew', 5, 'https://bulbapedia.bulbagarden.net/wiki/Axew_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/5c/610Axew.png/250px-610Axew.png', 'Dragon', 'None', 'Yes', ''),
(611, 611, 'Fraxure', 5, 'https://bulbapedia.bulbagarden.net/wiki/Fraxure_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/05/611Fraxure.png/250px-611Fraxure.png', 'Dragon', 'None', 'Yes', ''),
(612, 612, 'Haxorus', 5, 'https://bulbapedia.bulbagarden.net/wiki/Haxorus_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/8f/612Haxorus.png/250px-612Haxorus.png', 'Dragon', 'None', 'Yes', ''),
(613, 613, 'Cubchoo', 5, 'https://bulbapedia.bulbagarden.net/wiki/Cubchoo_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/72/613Cubchoo.png/250px-613Cubchoo.png', 'Ice', 'None', 'Yes', ''),
(614, 614, 'Beartic', 5, 'https://bulbapedia.bulbagarden.net/wiki/Beartic_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/40/614Beartic.png/250px-614Beartic.png', 'Ice', 'None', '', ''),
(615, 615, 'Cryogonal', 5, 'https://bulbapedia.bulbagarden.net/wiki/Cryogonal_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/11/615Cryogonal.png/250px-615Cryogonal.png', 'Ice', 'None', '', ''),
(616, 616, 'Shelmet', 5, 'https://bulbapedia.bulbagarden.net/wiki/Shelmet_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f6/616Shelmet.png/250px-616Shelmet.png', 'Bug', 'None', 'Yes', ''),
(617, 617, 'Accelgor', 5, 'https://bulbapedia.bulbagarden.net/wiki/Accelgor_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/34/617Accelgor.png/250px-617Accelgor.png', 'Bug', 'None', '', ''),
(618, 618, 'Stunfisk', 5, 'https://bulbapedia.bulbagarden.net/wiki/Stunfisk_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d2/618Stunfisk.png/250px-618Stunfisk.png', 'Ground', 'Electric', 'Yes', ''),
(619, 619, 'Mienfoo', 5, 'https://bulbapedia.bulbagarden.net/wiki/Mienfoo_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/41/619Mienfoo.png/250px-619Mienfoo.png', 'Fighting', 'None', 'Yes', ''),
(620, 620, 'Mienshao', 5, 'https://bulbapedia.bulbagarden.net/wiki/Mienshao_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/20/620Mienshao.png/250px-620Mienshao.png', 'Fighting', 'None', '', ''),
(621, 621, 'Druddigon', 5, 'https://bulbapedia.bulbagarden.net/wiki/Druddigon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/ad/621Druddigon.png/250px-621Druddigon.png', 'Dragon', 'None', 'Yes', ''),
(622, 622, 'Golett', 5, 'https://bulbapedia.bulbagarden.net/wiki/Golett_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/ac/622Golett.png/250px-622Golett.png', 'Ground', 'Ghost', 'Yes', ''),
(623, 623, 'Golurk', 5, 'https://bulbapedia.bulbagarden.net/wiki/Golurk_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/68/623Golurk.png/250px-623Golurk.png', 'Ground', 'Ghost', '', ''),
(624, 624, 'Pawniard', 5, 'https://bulbapedia.bulbagarden.net/wiki/Pawniard_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/9c/624Pawniard.png/250px-624Pawniard.png', 'Dark', 'Steel', 'Yes', ''),
(625, 625, 'Bisharp', 5, 'https://bulbapedia.bulbagarden.net/wiki/Bisharp_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/74/625Bisharp.png/250px-625Bisharp.png', 'Dark', 'Steel', 'Yes', ''),
(626, 626, 'Bouffalant', 5, 'https://bulbapedia.bulbagarden.net/wiki/Bouffalant_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a4/626Bouffalant.png/250px-626Bouffalant.png', 'Normal', 'None', 'Yes', ''),
(627, 627, 'Rufflet', 5, 'https://bulbapedia.bulbagarden.net/wiki/Rufflet_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/bb/627Rufflet.png/250px-627Rufflet.png', 'Normal', 'Flying', '', ''),
(628, 628, 'Braviary', 5, 'https://bulbapedia.bulbagarden.net/wiki/Braviary_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/cf/628Braviary.png/250px-628Braviary.png', 'Normal', 'Flying', 'Yes', ''),
(629, 629, 'Vullaby', 5, 'https://bulbapedia.bulbagarden.net/wiki/Vullaby_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f2/629Vullaby.png/250px-629Vullaby.png', 'Dark', 'Flying', '', ''),
(630, 630, 'Mandibuzz', 5, 'https://bulbapedia.bulbagarden.net/wiki/Mandibuzz_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/00/630Mandibuzz.png/250px-630Mandibuzz.png', 'Dark', 'Flying', '', ''),
(631, 631, 'Heatmor', 5, 'https://bulbapedia.bulbagarden.net/wiki/Heatmor_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b0/631Heatmor.png/250px-631Heatmor.png', 'Fire', 'None', 'Yes', ''),
(632, 632, 'Durant', 5, 'https://bulbapedia.bulbagarden.net/wiki/Durant_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/1a/632Durant.png/250px-632Durant.png', 'Bug', 'Steel', 'Yes', ''),
(633, 633, 'Deino', 5, 'https://bulbapedia.bulbagarden.net/wiki/Deino_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f7/633Deino.png/250px-633Deino.png', 'Dark', 'Dragon', 'Yes', ''),
(634, 634, 'Zweilous', 5, 'https://bulbapedia.bulbagarden.net/wiki/Zweilous_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a6/634Zweilous.png/250px-634Zweilous.png', 'Dark', 'Dragon', 'Yes', ''),
(635, 635, 'Hydreigon', 5, 'https://bulbapedia.bulbagarden.net/wiki/Hydreigon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/3e/635Hydreigon.png/250px-635Hydreigon.png', 'Dark', 'Dragon', '', ''),
(636, 636, 'Larvesta', 5, 'https://bulbapedia.bulbagarden.net/wiki/Larvesta_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f4/636Larvesta.png/250px-636Larvesta.png', 'Bug', 'Fire', 'Yes', ''),
(637, 637, 'Volcarona', 5, 'https://bulbapedia.bulbagarden.net/wiki/Volcarona_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/6b/637Volcarona.png/250px-637Volcarona.png', 'Bug', 'Fire', '', ''),
(638, 638, 'Cobalion', 5, 'https://bulbapedia.bulbagarden.net/wiki/Cobalion_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/65/638Cobalion.png/250px-638Cobalion.png', 'Steel', 'Fighting', '', ''),
(639, 639, 'Terrakion', 5, 'https://bulbapedia.bulbagarden.net/wiki/Terrakion_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/ad/639Terrakion.png/250px-639Terrakion.png', 'Rock', 'Fighting', '', ''),
(640, 640, 'Virizion', 5, 'https://bulbapedia.bulbagarden.net/wiki/Virizion_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/79/640Virizion.png/250px-640Virizion.png', 'Grass', 'Fighting', '', ''),
(641, 641, 'Tornadus', 5, 'https://bulbapedia.bulbagarden.net/wiki/Tornadus_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/08/641Tornadus.png/250px-641Tornadus.png', 'Flying', 'None', '', ''),
(642, 642, 'Thundurus', 5, 'https://bulbapedia.bulbagarden.net/wiki/Thundurus_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b8/642Thundurus.png/250px-642Thundurus.png', 'Electric', 'Flying', '', ''),
(643, 643, 'Reshiram', 5, 'https://bulbapedia.bulbagarden.net/wiki/Reshiram_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/8d/643Reshiram.png/250px-643Reshiram.png', 'Dragon', 'Fire', 'Yes', ''),
(644, 644, 'Zekrom', 5, 'https://bulbapedia.bulbagarden.net/wiki/Zekrom_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/81/644Zekrom.png/250px-644Zekrom.png', 'Dragon', 'Electric', 'Yes', ''),
(645, 645, 'Landorus', 5, 'https://bulbapedia.bulbagarden.net/wiki/Landorus_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/bb/645Landorus.png/250px-645Landorus.png', 'Ground', 'Flying', '', ''),
(646, 646, 'Kyurem', 5, 'https://bulbapedia.bulbagarden.net/wiki/Kyurem_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c3/646Kyurem.png/250px-646Kyurem.png', 'Dragon', 'Ice', 'Yes', ''),
(647, 647, 'Keldeo', 5, 'https://bulbapedia.bulbagarden.net/wiki/Keldeo_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/50/647Keldeo.png/250px-647Keldeo.png', 'Water', 'Fighting', '', ''),
(648, 648, 'Meloetta', 5, 'https://bulbapedia.bulbagarden.net/wiki/Meloetta_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a3/648Meloetta.png/250px-648Meloetta.png', 'Normal', 'Psychic', '', ''),
(649, 649, 'Genesect', 5, 'https://bulbapedia.bulbagarden.net/wiki/Genesect_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/46/649Genesect.png/250px-649Genesect.png', 'Bug', 'Steel', '', ''),
(650, 650, 'Chespin', 6, 'https://bulbapedia.bulbagarden.net/wiki/Chespin_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/ca/650Chespin.png/250px-650Chespin.png', 'Grass', 'None', 'Yes', ''),
(651, 651, 'Quilladin', 6, 'https://bulbapedia.bulbagarden.net/wiki/Quilladin_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/71/651Quilladin.png/250px-651Quilladin.png', 'Grass', 'None', 'Yes', ''),
(652, 652, 'Chesnaught', 6, 'https://bulbapedia.bulbagarden.net/wiki/Chesnaught_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/18/652Chesnaught.png/250px-652Chesnaught.png', 'Grass', 'Fighting', 'Yes', ''),
(653, 653, 'Fennekin', 6, 'https://bulbapedia.bulbagarden.net/wiki/Fennekin_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/3d/653Fennekin.png/250px-653Fennekin.png', 'Fire', 'None', 'Yes', ''),
(654, 654, 'Braixen', 6, 'https://bulbapedia.bulbagarden.net/wiki/Braixen_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/09/654Braixen.png/250px-654Braixen.png', 'Fire', 'None', 'Yes', ''),
(655, 655, 'Delphox', 6, 'https://bulbapedia.bulbagarden.net/wiki/Delphox_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/21/655Delphox.png/250px-655Delphox.png', 'Fire', 'Psychic', 'Yes', ''),
(656, 656, 'Froakie', 6, 'https://bulbapedia.bulbagarden.net/wiki/Froakie_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/18/656Froakie.png/250px-656Froakie.png', 'Water', 'None', 'Yes', ''),
(657, 657, 'Frogadier', 6, 'https://bulbapedia.bulbagarden.net/wiki/Frogadier_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/fc/657Frogadier.png/250px-657Frogadier.png', 'Water', 'None', 'Yes', ''),
(658, 658, 'Greninja', 6, 'https://bulbapedia.bulbagarden.net/wiki/Greninja_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/67/658Greninja.png/250px-658Greninja.png', 'Water', 'Dark', 'Yes', ''),
(659, 659, 'Bunnelby', 6, 'https://bulbapedia.bulbagarden.net/wiki/Bunnelby_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/70/659Bunnelby.png/250px-659Bunnelby.png', 'Normal', 'None', 'Yes', ''),
(660, 660, 'Diggersby', 6, 'https://bulbapedia.bulbagarden.net/wiki/Diggersby_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/34/660Diggersby.png/250px-660Diggersby.png', 'Normal', 'Ground', 'Yes', ''),
(661, 661, 'Fletchling', 6, 'https://bulbapedia.bulbagarden.net/wiki/Fletchling_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/7e/661Fletchling.png/250px-661Fletchling.png', 'Normal', 'Flying', '', ''),
(662, 662, 'Fletchinder', 6, 'https://bulbapedia.bulbagarden.net/wiki/Fletchinder_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/ce/662Fletchinder.png/250px-662Fletchinder.png', 'Fire', 'Flying', '', ''),
(663, 663, 'Talonflame', 6, 'https://bulbapedia.bulbagarden.net/wiki/Talonflame_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/ae/663Talonflame.png/250px-663Talonflame.png', 'Fire', 'Flying', '', ''),
(664, 664, 'Scatterbug', 6, 'https://bulbapedia.bulbagarden.net/wiki/Scatterbug_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d3/664Scatterbug.png/250px-664Scatterbug.png', 'Bug', 'None', 'Yes', ''),
(665, 665, 'Spewpa', 6, 'https://bulbapedia.bulbagarden.net/wiki/Spewpa_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b7/665Spewpa.png/250px-665Spewpa.png', 'Bug', 'None', 'Yes', ''),
(666, 666, 'Vivillon', 6, 'https://bulbapedia.bulbagarden.net/wiki/Vivillon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4c/666Vivillon.png/250px-666Vivillon.png', 'Bug', 'Flying', 'Yes', ''),
(667, 667, 'Litleo', 6, 'https://bulbapedia.bulbagarden.net/wiki/Litleo_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/1f/667Litleo.png/250px-667Litleo.png', 'Fire', 'Normal', 'Yes', ''),
(668, 668, 'Pyroar', 6, 'https://bulbapedia.bulbagarden.net/wiki/Pyroar_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/70/668Pyroar.png/250px-668Pyroar.png', 'Fire', 'Normal', 'Yes', ''),
(669, 669, 'Flabébé', 6, 'https://bulbapedia.bulbagarden.net/wiki/Flab%C3%A9b%C3%A9_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/52/669Flab%C3%A9b%C3%A9.png/250px-669Flab%C3%A9b%C3%A9.png', 'Fairy', 'None', '', ''),
(670, 670, 'Floette', 6, 'https://bulbapedia.bulbagarden.net/wiki/Floette_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/17/670Floette.png/250px-670Floette.png', 'Fairy', 'None', '', ''),
(671, 671, 'Florges', 6, 'https://bulbapedia.bulbagarden.net/wiki/Florges_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/37/671Florges.png/250px-671Florges.png', 'Fairy', 'None', '', ''),
(672, 672, 'Skiddo', 6, 'https://bulbapedia.bulbagarden.net/wiki/Skiddo_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/5d/672Skiddo.png/250px-672Skiddo.png', 'Grass', 'None', 'Yes', ''),
(673, 673, 'Gogoat', 6, 'https://bulbapedia.bulbagarden.net/wiki/Gogoat_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/bc/673Gogoat.png/250px-673Gogoat.png', 'Grass', 'None', 'Yes', ''),
(674, 674, 'Pancham', 6, 'https://bulbapedia.bulbagarden.net/wiki/Pancham_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/1c/674Pancham.png/250px-674Pancham.png', 'Fighting', 'None', 'Yes', ''),
(675, 675, 'Pangoro', 6, 'https://bulbapedia.bulbagarden.net/wiki/Pangoro_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/08/675Pangoro.png/250px-675Pangoro.png', 'Fighting', 'Dark', 'Yes', ''),
(676, 676, 'Furfrou', 6, 'https://bulbapedia.bulbagarden.net/wiki/Furfrou_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/49/676Furfrou.png/250px-676Furfrou.png', 'Normal', 'None', 'Yes', ''),
(677, 677, 'Espurr', 6, 'https://bulbapedia.bulbagarden.net/wiki/Espurr_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/09/677Espurr.png/250px-677Espurr.png', 'Psychic', 'None', '', ''),
(678, 678, 'Meowstic', 6, 'https://bulbapedia.bulbagarden.net/wiki/Meowstic_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a6/678Meowstic.png/250px-678Meowstic.png', 'Psychic', 'None', '', ''),
(679, 679, 'Honedge', 6, 'https://bulbapedia.bulbagarden.net/wiki/Honedge_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/35/679Honedge.png/250px-679Honedge.png', 'Steel', 'Ghost', '', ''),
(680, 680, 'Doublade', 6, 'https://bulbapedia.bulbagarden.net/wiki/Doublade_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/ef/680Doublade.png/250px-680Doublade.png', 'Steel', 'Ghost', '', ''),
(681, 681, 'Aegislash', 6, 'https://bulbapedia.bulbagarden.net/wiki/Aegislash_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/ad/681Aegislash.png/250px-681Aegislash.png', 'Steel', 'Ghost', '', ''),
(682, 682, 'Spritzee', 6, 'https://bulbapedia.bulbagarden.net/wiki/Spritzee_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/66/682Spritzee.png/250px-682Spritzee.png', 'Fairy', 'None', '', ''),
(683, 683, 'Aromatisse', 6, 'https://bulbapedia.bulbagarden.net/wiki/Aromatisse_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d9/683Aromatisse.png/250px-683Aromatisse.png', 'Fairy', 'None', '', ''),
(684, 684, 'Swirlix', 6, 'https://bulbapedia.bulbagarden.net/wiki/Swirlix_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/bf/684Swirlix.png/250px-684Swirlix.png', 'Fairy', 'None', 'Yes', ''),
(685, 685, 'Slurpuff', 6, 'https://bulbapedia.bulbagarden.net/wiki/Slurpuff_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/8d/685Slurpuff.png/250px-685Slurpuff.png', 'Fairy', 'None', '', ''),
(686, 686, 'Inkay', 6, 'https://bulbapedia.bulbagarden.net/wiki/Inkay_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/70/686Inkay.png/250px-686Inkay.png', 'Dark', 'Psychic', '', ''),
(687, 687, 'Malamar', 6, 'https://bulbapedia.bulbagarden.net/wiki/Malamar_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e4/687Malamar.png/250px-687Malamar.png', 'Dark', 'Psychic', '', ''),
(688, 688, 'Binacle', 6, 'https://bulbapedia.bulbagarden.net/wiki/Binacle_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/5b/688Binacle.png/250px-688Binacle.png', 'Rock', 'Water', '', ''),
(689, 689, 'Barbaracle', 6, 'https://bulbapedia.bulbagarden.net/wiki/Barbaracle_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/48/689Barbaracle.png/250px-689Barbaracle.png', 'Rock', 'Water', '', ''),
(690, 690, 'Skrelp', 6, 'https://bulbapedia.bulbagarden.net/wiki/Skrelp_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4e/690Skrelp.png/250px-690Skrelp.png', 'Poison', 'Water', '', ''),
(691, 691, 'Dragalge', 6, 'https://bulbapedia.bulbagarden.net/wiki/Dragalge_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a9/691Dragalge.png/250px-691Dragalge.png', 'Poison', 'Dragon', '', ''),
(692, 692, 'Clauncher', 6, 'https://bulbapedia.bulbagarden.net/wiki/Clauncher_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/fb/692Clauncher.png/250px-692Clauncher.png', 'Water', 'None', '', ''),
(693, 693, 'Clawitzer', 6, 'https://bulbapedia.bulbagarden.net/wiki/Clawitzer_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d3/693Clawitzer.png/250px-693Clawitzer.png', 'Water', 'None', '', ''),
(694, 694, 'Helioptile', 6, 'https://bulbapedia.bulbagarden.net/wiki/Helioptile_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/51/694Helioptile.png/250px-694Helioptile.png', 'Electric', 'Normal', 'Yes', ''),
(695, 695, 'Heliolisk', 6, 'https://bulbapedia.bulbagarden.net/wiki/Heliolisk_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f6/695Heliolisk.png/250px-695Heliolisk.png', 'Electric', 'Normal', '', ''),
(696, 696, 'Tyrunt', 6, 'https://bulbapedia.bulbagarden.net/wiki/Tyrunt_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c3/696Tyrunt.png/250px-696Tyrunt.png', 'Rock', 'Dragon', 'Yes', ''),
(697, 697, 'Tyrantrum', 6, 'https://bulbapedia.bulbagarden.net/wiki/Tyrantrum_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/8b/697Tyrantrum.png/250px-697Tyrantrum.png', 'Rock', 'Dragon', '', ''),
(698, 698, 'Amaura', 6, 'https://bulbapedia.bulbagarden.net/wiki/Amaura_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/2a/698Amaura.png/250px-698Amaura.png', 'Rock', 'Ice', '', ''),
(699, 699, 'Aurorus', 6, 'https://bulbapedia.bulbagarden.net/wiki/Aurorus_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/9e/699Aurorus.png/250px-699Aurorus.png', 'Rock', 'Ice', '', ''),
(700, 700, 'Sylveon', 6, 'https://bulbapedia.bulbagarden.net/wiki/Sylveon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e8/700Sylveon.png/250px-700Sylveon.png', 'Fairy', 'None', '', ''),
(701, 701, 'Hawlucha', 6, 'https://bulbapedia.bulbagarden.net/wiki/Hawlucha_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/44/701Hawlucha.png/250px-701Hawlucha.png', 'Fighting', 'Flying', '', ''),
(702, 702, 'Dedenne', 6, 'https://bulbapedia.bulbagarden.net/wiki/Dedenne_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c9/702Dedenne.png/250px-702Dedenne.png', 'Electric', 'Fairy', 'Yes', ''),
(703, 703, 'Carbink', 6, 'https://bulbapedia.bulbagarden.net/wiki/Carbink_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/fa/703Carbink.png/250px-703Carbink.png', 'Rock', 'Fairy', '', ''),
(704, 704, 'Goomy', 6, 'https://bulbapedia.bulbagarden.net/wiki/Goomy_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/28/704Goomy.png/250px-704Goomy.png', 'Dragon', 'None', '', ''),
(705, 705, 'Sliggoo', 6, 'https://bulbapedia.bulbagarden.net/wiki/Sliggoo_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/95/705Sliggoo.png/250px-705Sliggoo.png', 'Dragon', 'None', '', ''),
(706, 706, 'Goodra', 6, 'https://bulbapedia.bulbagarden.net/wiki/Goodra_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/df/706Goodra.png/250px-706Goodra.png', 'Dragon', 'None', '', ''),
(707, 707, 'Klefki', 6, 'https://bulbapedia.bulbagarden.net/wiki/Klefki_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/04/707Klefki.png/250px-707Klefki.png', 'Steel', 'Fairy', '', ''),
(708, 708, 'Phantump', 6, 'https://bulbapedia.bulbagarden.net/wiki/Phantump_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/72/708Phantump.png/250px-708Phantump.png', 'Ghost', 'Grass', 'Yes', ''),
(709, 709, 'Trevenant', 6, 'https://bulbapedia.bulbagarden.net/wiki/Trevenant_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4b/709Trevenant.png/250px-709Trevenant.png', 'Ghost', 'Grass', 'Yes', ''),
(710, 710, 'Pumpkaboo', 6, 'https://bulbapedia.bulbagarden.net/wiki/Pumpkaboo_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/df/710Pumpkaboo.png/250px-710Pumpkaboo.png', 'Ghost', 'Grass', '', ''),
(711, 711, 'Gourgeist', 6, 'https://bulbapedia.bulbagarden.net/wiki/Gourgeist_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/88/711Gourgeist.png/250px-711Gourgeist.png', 'Ghost', 'Grass', '', ''),
(712, 712, 'Bergmite', 6, 'https://bulbapedia.bulbagarden.net/wiki/Bergmite_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c3/712Bergmite.png/250px-712Bergmite.png', 'Ice', 'None', 'Yes', ''),
(713, 713, 'Avalugg', 6, 'https://bulbapedia.bulbagarden.net/wiki/Avalugg_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/04/713Avalugg.png/250px-713Avalugg.png', 'Ice', 'None', '', ''),
(714, 714, 'Noibat', 6, 'https://bulbapedia.bulbagarden.net/wiki/Noibat_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/07/714Noibat.png/250px-714Noibat.png', 'Flying', 'Dragon', '', ''),
(715, 715, 'Noivern', 6, 'https://bulbapedia.bulbagarden.net/wiki/Noivern_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/15/715Noivern.png/250px-715Noivern.png', 'Flying', 'Dragon', '', ''),
(716, 716, 'Xerneas', 6, 'https://bulbapedia.bulbagarden.net/wiki/Xerneas_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/13/716Xerneas.png/250px-716Xerneas.png', 'Fairy', 'None', 'Yes', ''),
(717, 717, 'Yveltal', 6, 'https://bulbapedia.bulbagarden.net/wiki/Yveltal_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/54/717Yveltal.png/250px-717Yveltal.png', 'Dark', 'Flying', '', ''),
(718, 718, 'Zygarde', 6, 'https://bulbapedia.bulbagarden.net/wiki/Zygarde_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/3a/718Zygarde.png/250px-718Zygarde.png', 'Dragon', 'Ground', 'Yes', ''),
(719, 719, 'Diancie', 6, 'https://bulbapedia.bulbagarden.net/wiki/Diancie_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b3/719Diancie.png/250px-719Diancie.png', 'Rock', 'Fairy', '', ''),
(720, 720, 'Hoopa', 6, 'https://bulbapedia.bulbagarden.net/wiki/Hoopa_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/fb/720Hoopa.png/250px-720Hoopa.png', 'Psychic', 'Ghost', '', ''),
(721, 721, 'Volcanion', 6, 'https://bulbapedia.bulbagarden.net/wiki/Volcanion_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/44/721Volcanion.png/250px-721Volcanion.png', 'Fire', 'Water', '', ''),
(722, 722, 'Rowlet', 7, 'https://bulbapedia.bulbagarden.net/wiki/Rowlet_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/74/722Rowlet.png/250px-722Rowlet.png', 'Grass', 'Flying', 'Yes', ''),
(723, 723, 'Dartrix', 7, 'https://bulbapedia.bulbagarden.net/wiki/Dartrix_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/1e/723Dartrix.png/250px-723Dartrix.png', 'Grass', 'Flying', 'Yes', ''),
(724, 724, 'Decidueye', 7, 'https://bulbapedia.bulbagarden.net/wiki/Decidueye_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a4/724Decidueye.png/250px-724Decidueye.png', 'Grass', 'Ghost', 'Yes', ''),
(725, 725, 'Litten', 7, 'https://bulbapedia.bulbagarden.net/wiki/Litten_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/0e/725Litten.png/250px-725Litten.png', 'Fire', 'None', 'Yes', ''),
(726, 726, 'Torracat', 7, 'https://bulbapedia.bulbagarden.net/wiki/Torracat_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/dc/726Torracat.png/250px-726Torracat.png', 'Fire', 'None', 'Yes', ''),
(727, 727, 'Incineroar', 7, 'https://bulbapedia.bulbagarden.net/wiki/Incineroar_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/27/727Incineroar.png/250px-727Incineroar.png', 'Fire', 'Dark', 'Yes', ''),
(728, 728, 'Popplio', 7, 'https://bulbapedia.bulbagarden.net/wiki/Popplio_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d8/728Popplio.png/250px-728Popplio.png', 'Water', 'None', 'Yes', ''),
(729, 729, 'Brionne', 7, 'https://bulbapedia.bulbagarden.net/wiki/Brionne_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/cd/729Brionne.png/250px-729Brionne.png', 'Water', 'None', 'Yes', ''),
(730, 730, 'Primarina', 7, 'https://bulbapedia.bulbagarden.net/wiki/Primarina_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/89/730Primarina.png/250px-730Primarina.png', 'Water', 'Fairy', 'Yes', ''),
(731, 731, 'Pikipek', 7, 'https://bulbapedia.bulbagarden.net/wiki/Pikipek_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/15/731Pikipek.png/250px-731Pikipek.png', 'Normal', 'Flying', 'Yes', ''),
(732, 732, 'Trumbeak', 7, 'https://bulbapedia.bulbagarden.net/wiki/Trumbeak_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/5c/732Trumbeak.png/250px-732Trumbeak.png', 'Normal', 'Flying', 'Yes', ''),
(733, 733, 'Toucannon', 7, 'https://bulbapedia.bulbagarden.net/wiki/Toucannon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/78/733Toucannon.png/250px-733Toucannon.png', 'Normal', 'Flying', 'Yes', ''),
(734, 734, 'Yungoos', 7, 'https://bulbapedia.bulbagarden.net/wiki/Yungoos_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/08/734Yungoos.png/250px-734Yungoos.png', 'Normal', 'None', 'Yes', ''),
(735, 735, 'Gumshoos', 7, 'https://bulbapedia.bulbagarden.net/wiki/Gumshoos_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/ba/735Gumshoos.png/250px-735Gumshoos.png', 'Normal', 'None', 'Yes', ''),
(736, 736, 'Grubbin', 7, 'https://bulbapedia.bulbagarden.net/wiki/Grubbin_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/14/736Grubbin.png/250px-736Grubbin.png', 'Bug', 'None', 'Yes', ''),
(737, 737, 'Charjabug', 7, 'https://bulbapedia.bulbagarden.net/wiki/Charjabug_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/ec/737Charjabug.png/250px-737Charjabug.png', 'Bug', 'Electric', 'Yes', ''),
(738, 738, 'Vikavolt', 7, 'https://bulbapedia.bulbagarden.net/wiki/Vikavolt_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4e/738Vikavolt.png/250px-738Vikavolt.png', 'Bug', 'Electric', 'Yes', ''),
(739, 739, 'Crabrawler', 7, 'https://bulbapedia.bulbagarden.net/wiki/Crabrawler_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/98/739Crabrawler.png/250px-739Crabrawler.png', 'Fighting', 'None', 'Yes', ''),
(740, 740, 'Crabominable', 7, 'https://bulbapedia.bulbagarden.net/wiki/Crabominable_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/17/740Crabominable.png/250px-740Crabominable.png', 'Fighting', 'Ice', 'Yes', ''),
(741, 741, 'Oricorio', 7, 'https://bulbapedia.bulbagarden.net/wiki/Oricorio_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/ed/741Oricorio-Baile.png/250px-741Oricorio-Baile.png', 'Fire', 'Flying', 'Yes', ''),
(742, 742, 'Cutiefly', 7, 'https://bulbapedia.bulbagarden.net/wiki/Cutiefly_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/fa/742Cutiefly.png/250px-742Cutiefly.png', 'Bug', 'Fairy', 'Yes', ''),
(743, 743, 'Ribombee', 7, 'https://bulbapedia.bulbagarden.net/wiki/Ribombee_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e4/743Ribombee.png/250px-743Ribombee.png', 'Bug', 'Fairy', 'Yes', ''),
(744, 744, 'Rockruff', 7, 'https://bulbapedia.bulbagarden.net/wiki/Rockruff_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/51/744Rockruff.png/250px-744Rockruff.png', 'Rock', 'None', 'Yes', ''),
(745, 745, 'Lycanroc', 7, 'https://bulbapedia.bulbagarden.net/wiki/Lycanroc_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/14/745Lycanroc.png/250px-745Lycanroc.png', 'Rock', 'None', 'Yes', '');
INSERT INTO `poketch_app_pokemon` (`id`, `pokemon_number`, `name`, `generation`, `article_link`, `image_link`, `type1`, `type2`, `console_owned`, `note`) VALUES
(746, 746, 'Wishiwashi', 7, 'https://bulbapedia.bulbagarden.net/wiki/Wishiwashi_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/18/746Wishiwashi-Solo.png/250px-746Wishiwashi-Solo.png', 'Water', 'None', 'Yes', ''),
(747, 747, 'Mareanie', 7, 'https://bulbapedia.bulbagarden.net/wiki/Mareanie_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d3/747Mareanie.png/250px-747Mareanie.png', 'Poison', 'Water', 'Yes', ''),
(748, 748, 'Toxapex', 7, 'https://bulbapedia.bulbagarden.net/wiki/Toxapex_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/06/748Toxapex.png/250px-748Toxapex.png', 'Poison', 'Water', '', ''),
(749, 749, 'Mudbray', 7, 'https://bulbapedia.bulbagarden.net/wiki/Mudbray_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/12/749Mudbray.png/250px-749Mudbray.png', 'Ground', 'None', 'Yes', ''),
(750, 750, 'Mudsdale', 7, 'https://bulbapedia.bulbagarden.net/wiki/Mudsdale_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f7/750Mudsdale.png/250px-750Mudsdale.png', 'Ground', 'None', 'Yes', ''),
(751, 751, 'Dewpider', 7, 'https://bulbapedia.bulbagarden.net/wiki/Dewpider_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/29/751Dewpider.png/250px-751Dewpider.png', 'Water', 'Bug', 'Yes', ''),
(752, 752, 'Araquanid', 7, 'https://bulbapedia.bulbagarden.net/wiki/Araquanid_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/82/752Araquanid.png/250px-752Araquanid.png', 'Water', 'Bug', 'Yes', ''),
(753, 753, 'Fomantis', 7, 'https://bulbapedia.bulbagarden.net/wiki/Fomantis_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/10/753Fomantis.png/250px-753Fomantis.png', 'Grass', 'None', 'Yes', ''),
(754, 754, 'Lurantis', 7, 'https://bulbapedia.bulbagarden.net/wiki/Lurantis_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/19/754Lurantis.png/250px-754Lurantis.png', 'Grass', 'None', 'Yes', ''),
(755, 755, 'Morelull', 7, 'https://bulbapedia.bulbagarden.net/wiki/Morelull_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c9/755Morelull.png/250px-755Morelull.png', 'Grass', 'Fairy', 'Yes', ''),
(756, 756, 'Shiinotic', 7, 'https://bulbapedia.bulbagarden.net/wiki/Shiinotic_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/36/756Shiinotic.png/250px-756Shiinotic.png', 'Grass', 'Fairy', 'Yes', ''),
(757, 757, 'Salandit', 7, 'https://bulbapedia.bulbagarden.net/wiki/Salandit_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/27/757Salandit.png/250px-757Salandit.png', 'Poison', 'Fire', 'Yes', ''),
(758, 758, 'Salazzle', 7, 'https://bulbapedia.bulbagarden.net/wiki/Salazzle_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/72/758Salazzle.png/250px-758Salazzle.png', 'Poison', 'Fire', 'Yes', ''),
(759, 759, 'Stufful', 7, 'https://bulbapedia.bulbagarden.net/wiki/Stufful_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e5/759Stufful.png/250px-759Stufful.png', 'Normal', 'Fighting', 'Yes', ''),
(760, 760, 'Bewear', 7, 'https://bulbapedia.bulbagarden.net/wiki/Bewear_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a4/760Bewear.png/250px-760Bewear.png', 'Normal', 'Fighting', 'Yes', ''),
(761, 761, 'Bounsweet', 7, 'https://bulbapedia.bulbagarden.net/wiki/Bounsweet_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a1/761Bounsweet.png/250px-761Bounsweet.png', 'Grass', 'None', 'Yes', ''),
(762, 762, 'Steenee', 7, 'https://bulbapedia.bulbagarden.net/wiki/Steenee_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/78/762Steenee.png/250px-762Steenee.png', 'Grass', 'None', 'Yes', ''),
(763, 763, 'Tsareena', 7, 'https://bulbapedia.bulbagarden.net/wiki/Tsareena_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/23/763Tsareena.png/250px-763Tsareena.png', 'Grass', 'None', 'Yes', ''),
(764, 764, 'Comfey', 7, 'https://bulbapedia.bulbagarden.net/wiki/Comfey_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c9/764Comfey.png/250px-764Comfey.png', 'Fairy', 'None', 'Yes', ''),
(765, 765, 'Oranguru', 7, 'https://bulbapedia.bulbagarden.net/wiki/Oranguru_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d8/765Oranguru.png/250px-765Oranguru.png', 'Normal', 'Psychic', 'Yes', ''),
(766, 766, 'Passimian', 7, 'https://bulbapedia.bulbagarden.net/wiki/Passimian_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/ba/766Passimian.png/250px-766Passimian.png', 'Fighting', 'None', 'Yes', ''),
(767, 767, 'Wimpod', 7, 'https://bulbapedia.bulbagarden.net/wiki/Wimpod_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/ef/767Wimpod.png/250px-767Wimpod.png', 'Bug', 'Water', 'Yes', ''),
(768, 768, 'Golisopod', 7, 'https://bulbapedia.bulbagarden.net/wiki/Golisopod_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b6/768Golisopod.png/250px-768Golisopod.png', 'Bug', 'Water', 'Yes', ''),
(769, 769, 'Sandygast', 7, 'https://bulbapedia.bulbagarden.net/wiki/Sandygast_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f0/769Sandygast.png/250px-769Sandygast.png', 'Ghost', 'Ground', 'Yes', ''),
(770, 770, 'Palossand', 7, 'https://bulbapedia.bulbagarden.net/wiki/Palossand_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/32/770Palossand.png/250px-770Palossand.png', 'Ghost', 'Ground', '', ''),
(771, 771, 'Pyukumuku', 7, 'https://bulbapedia.bulbagarden.net/wiki/Pyukumuku_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4f/771Pyukumuku.png/250px-771Pyukumuku.png', 'Water', 'None', 'Yes', ''),
(772, 772, 'Type: Null', 7, 'https://bulbapedia.bulbagarden.net/wiki/Type%3A%20Null_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/fd/772Type_Null.png/250px-772Type_Null.png', 'Normal', 'None', 'Yes', ''),
(773, 773, 'Silvally', 7, 'https://bulbapedia.bulbagarden.net/wiki/Silvally_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/be/773Silvally.png/250px-773Silvally.png', 'Normal', 'None', '', ''),
(774, 774, 'Minior', 7, 'https://bulbapedia.bulbagarden.net/wiki/Minior_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/90/774Minior.png/250px-774Minior.png', 'Rock', 'Flying', 'Yes', ''),
(775, 775, 'Komala', 7, 'https://bulbapedia.bulbagarden.net/wiki/Komala_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/7d/775Komala.png/250px-775Komala.png', 'Normal', 'None', 'Yes', ''),
(776, 776, 'Turtonator', 7, 'https://bulbapedia.bulbagarden.net/wiki/Turtonator_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/15/776Turtonator.png/250px-776Turtonator.png', 'Fire', 'Dragon', 'Yes', ''),
(777, 777, 'Togedemaru', 7, 'https://bulbapedia.bulbagarden.net/wiki/Togedemaru_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/5a/777Togedemaru.png/250px-777Togedemaru.png', 'Electric', 'Steel', 'Yes', ''),
(778, 778, 'Mimikyu', 7, 'https://bulbapedia.bulbagarden.net/wiki/Mimikyu_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/9b/778Mimikyu.png/250px-778Mimikyu.png', 'Ghost', 'Fairy', 'Yes', ''),
(779, 779, 'Bruxish', 7, 'https://bulbapedia.bulbagarden.net/wiki/Bruxish_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/92/779Bruxish.png/250px-779Bruxish.png', 'Water', 'Psychic', 'Yes', ''),
(780, 780, 'Drampa', 7, 'https://bulbapedia.bulbagarden.net/wiki/Drampa_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/dc/780Drampa.png/250px-780Drampa.png', 'Normal', 'Dragon', '', ''),
(781, 781, 'Dhelmise', 7, 'https://bulbapedia.bulbagarden.net/wiki/Dhelmise_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/2f/781Dhelmise.png/250px-781Dhelmise.png', 'Ghost', 'Grass', 'Yes', ''),
(782, 782, 'Jangmo-o', 7, 'https://bulbapedia.bulbagarden.net/wiki/Jangmo-o_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a0/782Jangmo-o.png/250px-782Jangmo-o.png', 'Dragon', 'None', 'Yes', ''),
(783, 783, 'Hakamo-o', 7, 'https://bulbapedia.bulbagarden.net/wiki/Hakamo-o_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/0d/783Hakamo-o.png/250px-783Hakamo-o.png', 'Dragon', 'Fighting', 'Yes', ''),
(784, 784, 'Kommo-o', 7, 'https://bulbapedia.bulbagarden.net/wiki/Kommo-o_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/84/784Kommo-o.png/250px-784Kommo-o.png', 'Dragon', 'Fighting', 'Yes', ''),
(785, 785, 'Tapu Koko', 7, 'https://bulbapedia.bulbagarden.net/wiki/Tapu%20Koko_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d0/785Tapu_Koko.png/250px-785Tapu_Koko.png', 'Electric', 'Fairy', 'Yes', ''),
(786, 786, 'Tapu Lele', 7, 'https://bulbapedia.bulbagarden.net/wiki/Tapu%20Lele_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4d/786Tapu_Lele.png/250px-786Tapu_Lele.png', 'Psychic', 'Fairy', 'Yes', ''),
(787, 787, 'Tapu Bulu', 7, 'https://bulbapedia.bulbagarden.net/wiki/Tapu%20Bulu_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/67/787Tapu_Bulu.png/250px-787Tapu_Bulu.png', 'Grass', 'Fairy', 'Yes', ''),
(788, 788, 'Tapu Fini', 7, 'https://bulbapedia.bulbagarden.net/wiki/Tapu%20Fini_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/66/788Tapu_Fini.png/250px-788Tapu_Fini.png', 'Water', 'Fairy', 'Yes', ''),
(789, 789, 'Cosmog', 7, 'https://bulbapedia.bulbagarden.net/wiki/Cosmog_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/17/789Cosmog.png/250px-789Cosmog.png', 'Psychic', 'None', 'Yes', ''),
(790, 790, 'Cosmoem', 7, 'https://bulbapedia.bulbagarden.net/wiki/Cosmoem_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/1b/790Cosmoem.png/250px-790Cosmoem.png', 'Psychic', 'None', '', ''),
(791, 791, 'Solgaleo', 7, 'https://bulbapedia.bulbagarden.net/wiki/Solgaleo_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/57/791Solgaleo.png/250px-791Solgaleo.png', 'Psychic', 'Steel', 'Yes', ''),
(792, 792, 'Lunala', 7, 'https://bulbapedia.bulbagarden.net/wiki/Lunala_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/9d/792Lunala.png/250px-792Lunala.png', 'Psychic', 'Ghost', '', ''),
(793, 793, 'Nihilego', 7, 'https://bulbapedia.bulbagarden.net/wiki/Nihilego_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/2c/793Nihilego.png/250px-793Nihilego.png', 'Rock', 'Poison', 'Yes', ''),
(794, 794, 'Buzzwole', 7, 'https://bulbapedia.bulbagarden.net/wiki/Buzzwole_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/fa/794Buzzwole.png/250px-794Buzzwole.png', 'Bug', 'Fighting', 'Yes', ''),
(795, 795, 'Pheromosa', 7, 'https://bulbapedia.bulbagarden.net/wiki/Pheromosa_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c7/795Pheromosa.png/250px-795Pheromosa.png', 'Bug', 'Fighting', '', ''),
(796, 796, 'Xurkitree', 7, 'https://bulbapedia.bulbagarden.net/wiki/Xurkitree_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d2/796Xurkitree.png/250px-796Xurkitree.png', 'Electric', 'None', 'Yes', ''),
(797, 797, 'Celesteela', 7, 'https://bulbapedia.bulbagarden.net/wiki/Celesteela_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/89/797Celesteela.png/250px-797Celesteela.png', 'Steel', 'Flying', '', ''),
(798, 798, 'Kartana', 7, 'https://bulbapedia.bulbagarden.net/wiki/Kartana_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/fe/798Kartana.png/250px-798Kartana.png', 'Grass', 'Steel', '', ''),
(799, 799, 'Guzzlord', 7, 'https://bulbapedia.bulbagarden.net/wiki/Guzzlord_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/47/799Guzzlord.png/250px-799Guzzlord.png', 'Dark', 'Dragon', '', ''),
(800, 800, 'Necrozma', 7, 'https://bulbapedia.bulbagarden.net/wiki/Necrozma_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/44/800Necrozma.png/250px-800Necrozma.png', 'Psychic', 'None', '', ''),
(801, 801, 'Magearna', 7, 'https://bulbapedia.bulbagarden.net/wiki/Magearna_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/0a/801Magearna.png/250px-801Magearna.png', 'Steel', 'Fairy', '', ''),
(802, 802, 'Marshadow', 7, 'https://bulbapedia.bulbagarden.net/wiki/Marshadow_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/89/802Marshadow.png/250px-802Marshadow.png', 'Fighting', 'Ghost', '', ''),
(803, 803, 'Poipole', 7, 'https://bulbapedia.bulbagarden.net/wiki/Poipole_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e5/803Poipole.png/250px-803Poipole.png', 'Poison', 'None', '', ''),
(804, 804, 'Naganadel', 7, 'https://bulbapedia.bulbagarden.net/wiki/Naganadel_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/de/804Naganadel.png/250px-804Naganadel.png', 'Poison', 'Dragon', '', ''),
(805, 805, 'Stakataka', 7, 'https://bulbapedia.bulbagarden.net/wiki/Stakataka_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/27/805Stakataka.png/250px-805Stakataka.png', 'Rock', 'Steel', '', ''),
(806, 806, 'Blacephalon', 7, 'https://bulbapedia.bulbagarden.net/wiki/Blacephalon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a5/806Blacephalon.png/250px-806Blacephalon.png', 'Fire', 'Ghost', '', ''),
(807, 807, 'Zeraora', 7, 'https://bulbapedia.bulbagarden.net/wiki/Zeraora_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a7/807Zeraora.png/250px-807Zeraora.png', 'Electric', 'None', '', ''),
(808, 808, 'Meltan', 7, 'https://bulbapedia.bulbagarden.net/wiki/Meltan_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d1/808Meltan.png/250px-808Meltan.png', 'Steel', 'None', '', ''),
(809, 809, 'Melmetal', 7, 'https://bulbapedia.bulbagarden.net/wiki/Melmetal_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/ea/809Melmetal.png/250px-809Melmetal.png', 'Steel', 'None', '', ''),
(810, 810, 'Grookey', 8, 'https://bulbapedia.bulbagarden.net/wiki/Grookey_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/93/810Grookey.png/250px-810Grookey.png', 'Grass', 'None', '', ''),
(811, 811, 'Thwackey', 8, 'https://bulbapedia.bulbagarden.net/wiki/Thwackey_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/8f/811Thwackey.png/250px-811Thwackey.png', 'Grass', 'None', '', ''),
(812, 812, 'Rillaboom', 8, 'https://bulbapedia.bulbagarden.net/wiki/Rillaboom_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/47/812Rillaboom.png/250px-812Rillaboom.png', 'Grass', 'None', '', ''),
(813, 813, 'Scorbunny', 8, 'https://bulbapedia.bulbagarden.net/wiki/Scorbunny_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/06/813Scorbunny.png/250px-813Scorbunny.png', 'Fire', 'None', '', ''),
(814, 814, 'Raboot', 8, 'https://bulbapedia.bulbagarden.net/wiki/Raboot_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/bc/814Raboot.png/250px-814Raboot.png', 'Fire', 'None', '', ''),
(815, 815, 'Cinderace', 8, 'https://bulbapedia.bulbagarden.net/wiki/Cinderace_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b0/815Cinderace.png/250px-815Cinderace.png', 'Fire', 'None', '', ''),
(816, 816, 'Sobble', 8, 'https://bulbapedia.bulbagarden.net/wiki/Sobble_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/9b/816Sobble.png/250px-816Sobble.png', 'Water', 'None', '', ''),
(817, 817, 'Drizzile', 8, 'https://bulbapedia.bulbagarden.net/wiki/Drizzile_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/6c/817Drizzile.png/250px-817Drizzile.png', 'Water', 'None', '', ''),
(818, 818, 'Inteleon', 8, 'https://bulbapedia.bulbagarden.net/wiki/Inteleon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e4/818Inteleon.png/250px-818Inteleon.png', 'Water', 'None', '', ''),
(819, 819, 'Skwovet', 8, 'https://bulbapedia.bulbagarden.net/wiki/Skwovet_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/ce/819Skwovet.png/250px-819Skwovet.png', 'Normal', 'None', '', ''),
(820, 820, 'Greedent', 8, 'https://bulbapedia.bulbagarden.net/wiki/Greedent_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/6b/820Greedent.png/250px-820Greedent.png', 'Normal', 'None', '', ''),
(821, 821, 'Rookidee', 8, 'https://bulbapedia.bulbagarden.net/wiki/Rookidee_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/79/821Rookidee.png/250px-821Rookidee.png', 'Flying', 'None', '', ''),
(822, 822, 'Corvisquire', 8, 'https://bulbapedia.bulbagarden.net/wiki/Corvisquire_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/ec/822Corvisquire.png/250px-822Corvisquire.png', 'Flying', 'None', '', ''),
(823, 823, 'Corviknight', 8, 'https://bulbapedia.bulbagarden.net/wiki/Corviknight_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/0c/823Corviknight.png/250px-823Corviknight.png', 'Flying', 'Steel', '', ''),
(824, 824, 'Blipbug', 8, 'https://bulbapedia.bulbagarden.net/wiki/Blipbug_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4c/824Blipbug.png/250px-824Blipbug.png', 'Bug', 'None', '', ''),
(825, 825, 'Dottler', 8, 'https://bulbapedia.bulbagarden.net/wiki/Dottler_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/95/825Dottler.png/250px-825Dottler.png', 'Bug', 'Psychic', '', ''),
(826, 826, 'Orbeetle', 8, 'https://bulbapedia.bulbagarden.net/wiki/Orbeetle_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/79/826Orbeetle.png/250px-826Orbeetle.png', 'Bug', 'Psychic', '', ''),
(827, 827, 'Nickit', 8, 'https://bulbapedia.bulbagarden.net/wiki/Nickit_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/22/827Nickit.png/250px-827Nickit.png', 'Dark', 'None', '', ''),
(828, 828, 'Thievul', 8, 'https://bulbapedia.bulbagarden.net/wiki/Thievul_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e7/828Thievul.png/250px-828Thievul.png', 'Dark', 'None', '', ''),
(829, 829, 'Gossifleur', 8, 'https://bulbapedia.bulbagarden.net/wiki/Gossifleur_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4c/829Gossifleur.png/250px-829Gossifleur.png', 'Grass', 'None', '', ''),
(830, 830, 'Eldegoss', 8, 'https://bulbapedia.bulbagarden.net/wiki/Eldegoss_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/34/830Eldegoss.png/250px-830Eldegoss.png', 'Grass', 'None', '', ''),
(831, 831, 'Wooloo', 8, 'https://bulbapedia.bulbagarden.net/wiki/Wooloo_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/1f/831Wooloo.png/250px-831Wooloo.png', 'Normal', 'None', '', ''),
(832, 832, 'Dubwool', 8, 'https://bulbapedia.bulbagarden.net/wiki/Dubwool_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/9a/832Dubwool.png/250px-832Dubwool.png', 'Normal', 'None', '', ''),
(833, 833, 'Chewtle', 8, 'https://bulbapedia.bulbagarden.net/wiki/Chewtle_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/22/833Chewtle.png/250px-833Chewtle.png', 'Water', 'None', '', ''),
(834, 834, 'Drednaw', 8, 'https://bulbapedia.bulbagarden.net/wiki/Drednaw_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/be/834Drednaw.png/250px-834Drednaw.png', 'Water', 'Rock', '', ''),
(835, 835, 'Yamper', 8, 'https://bulbapedia.bulbagarden.net/wiki/Yamper_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/63/835Yamper.png/250px-835Yamper.png', 'Electric', 'None', '', ''),
(836, 836, 'Boltund', 8, 'https://bulbapedia.bulbagarden.net/wiki/Boltund_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e4/836Boltund.png/250px-836Boltund.png', 'Electric', 'None', '', ''),
(837, 837, 'Rolycoly', 8, 'https://bulbapedia.bulbagarden.net/wiki/Rolycoly_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a1/837Rolycoly.png/250px-837Rolycoly.png', 'Rock', 'None', '', ''),
(838, 838, 'Carkol', 8, 'https://bulbapedia.bulbagarden.net/wiki/Carkol_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e1/838Carkol.png/250px-838Carkol.png', 'Rock', 'Fire', '', ''),
(839, 839, 'Coalossal', 8, 'https://bulbapedia.bulbagarden.net/wiki/Coalossal_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/0c/839Coalossal.png/250px-839Coalossal.png', 'Rock', 'Fire', '', ''),
(840, 840, 'Applin', 8, 'https://bulbapedia.bulbagarden.net/wiki/Applin_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/cc/840Applin.png/250px-840Applin.png', 'Grass', 'Dragon', '', ''),
(841, 841, 'Flapple', 8, 'https://bulbapedia.bulbagarden.net/wiki/Flapple_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/01/841Flapple.png/250px-841Flapple.png', 'Grass', 'Dragon', '', ''),
(842, 842, 'Appletun', 8, 'https://bulbapedia.bulbagarden.net/wiki/Appletun_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/36/842Appletun.png/250px-842Appletun.png', 'Grass', 'Dragon', '', ''),
(843, 843, 'Silicobra', 8, 'https://bulbapedia.bulbagarden.net/wiki/Silicobra_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b5/843Silicobra.png/250px-843Silicobra.png', 'Ground', 'None', '', ''),
(844, 844, 'Sandaconda', 8, 'https://bulbapedia.bulbagarden.net/wiki/Sandaconda_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/11/844Sandaconda.png/250px-844Sandaconda.png', 'Ground', 'None', '', ''),
(845, 845, 'Cramorant', 8, 'https://bulbapedia.bulbagarden.net/wiki/Cramorant_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f3/845Cramorant.png/250px-845Cramorant.png', 'Flying', 'Water', '', ''),
(846, 846, 'Arrokuda', 8, 'https://bulbapedia.bulbagarden.net/wiki/Arrokuda_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a9/846Arrokuda.png/250px-846Arrokuda.png', 'Water', 'None', '', ''),
(847, 847, 'Barraskewda', 8, 'https://bulbapedia.bulbagarden.net/wiki/Barraskewda_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d9/847Barraskewda.png/250px-847Barraskewda.png', 'Water', 'None', '', ''),
(848, 848, 'Toxel', 8, 'https://bulbapedia.bulbagarden.net/wiki/Toxel_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/d5/848Toxel.png/250px-848Toxel.png', 'Electric', 'Poison', '', ''),
(849, 849, 'Toxtricity', 8, 'https://bulbapedia.bulbagarden.net/wiki/Toxtricity_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/56/849Toxtricity-Amped.png/250px-849Toxtricity-Amped.png', 'Electric', 'Poison', '', ''),
(850, 850, 'Sizzlipede', 8, 'https://bulbapedia.bulbagarden.net/wiki/Sizzlipede_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f2/850Sizzlipede.png/250px-850Sizzlipede.png', 'Fire', 'Bug', '', ''),
(851, 851, 'Centiskorch', 8, 'https://bulbapedia.bulbagarden.net/wiki/Centiskorch_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/ed/851Centiskorch.png/250px-851Centiskorch.png', 'Fire', 'Bug', '', ''),
(852, 852, 'Clobbopus', 8, 'https://bulbapedia.bulbagarden.net/wiki/Clobbopus_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/4e/852Clobbopus.png/250px-852Clobbopus.png', 'Fighting', 'None', '', ''),
(853, 853, 'Grapploct', 8, 'https://bulbapedia.bulbagarden.net/wiki/Grapploct_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c4/853Grapploct.png/250px-853Grapploct.png', 'Fighting', 'None', '', ''),
(854, 854, 'Sinistea', 8, 'https://bulbapedia.bulbagarden.net/wiki/Sinistea_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/b1/854Sinistea.png/250px-854Sinistea.png', 'Ghost', 'None', '', ''),
(855, 855, 'Polteageist', 8, 'https://bulbapedia.bulbagarden.net/wiki/Polteageist_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/3d/855Polteageist.png/250px-855Polteageist.png', 'Ghost', 'None', '', ''),
(856, 856, 'Hatenna', 8, 'https://bulbapedia.bulbagarden.net/wiki/Hatenna_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/8b/856Hatenna.png/250px-856Hatenna.png', 'Psychic', 'None', '', ''),
(857, 857, 'Hattrem', 8, 'https://bulbapedia.bulbagarden.net/wiki/Hattrem_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/19/857Hattrem.png/250px-857Hattrem.png', 'Psychic', 'None', '', ''),
(858, 858, 'Hatterene', 8, 'https://bulbapedia.bulbagarden.net/wiki/Hatterene_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/10/858Hatterene.png/250px-858Hatterene.png', 'Psychic', 'Fairy', '', ''),
(859, 859, 'Impidimp', 8, 'https://bulbapedia.bulbagarden.net/wiki/Impidimp_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/fb/859Impidimp.png/250px-859Impidimp.png', 'Dark', 'Fairy', '', ''),
(860, 860, 'Morgrem', 8, 'https://bulbapedia.bulbagarden.net/wiki/Morgrem_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/66/860Morgrem.png/250px-860Morgrem.png', 'Dark', 'Fairy', '', ''),
(861, 861, 'Grimmsnarl', 8, 'https://bulbapedia.bulbagarden.net/wiki/Grimmsnarl_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/67/861Grimmsnarl.png/250px-861Grimmsnarl.png', 'Dark', 'Fairy', '', ''),
(862, 862, 'Obstagoon', 8, 'https://bulbapedia.bulbagarden.net/wiki/Obstagoon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/08/862Obstagoon.png/250px-862Obstagoon.png', 'Dark', 'Normal', '', ''),
(863, 863, 'Perrserker', 8, 'https://bulbapedia.bulbagarden.net/wiki/Perrserker_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e0/863Perrserker.png/250px-863Perrserker.png', 'Steel', 'None', '', ''),
(864, 864, 'Cursola', 8, 'https://bulbapedia.bulbagarden.net/wiki/Cursola_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/db/864Cursola.png/250px-864Cursola.png', 'Ghost', 'None', '', ''),
(865, 865, 'Sirfetch\'d', 8, 'https://bulbapedia.bulbagarden.net/wiki/Sirfetch%27d_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/38/865Sirfetch%27d.png/250px-865Sirfetch%27d.png', 'Fighting', 'None', '', ''),
(866, 866, 'Mr. Rime', 8, 'https://bulbapedia.bulbagarden.net/wiki/Mr.%20Rime_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/51/866Mr._Rime.png/250px-866Mr._Rime.png', 'Ice', 'Psychic', '', ''),
(867, 867, 'Runerigus', 8, 'https://bulbapedia.bulbagarden.net/wiki/Runerigus_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/71/867Runerigus.png/250px-867Runerigus.png', 'Ground', 'Ghost', '', ''),
(868, 868, 'Milcery', 8, 'https://bulbapedia.bulbagarden.net/wiki/Milcery_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/05/868Milcery.png/250px-868Milcery.png', 'Fairy', 'None', '', ''),
(869, 869, 'Alcremie', 8, 'https://bulbapedia.bulbagarden.net/wiki/Alcremie_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e0/869Alcremie.png/250px-869Alcremie.png', 'Fairy', 'None', '', ''),
(870, 870, 'Falinks', 8, 'https://bulbapedia.bulbagarden.net/wiki/Falinks_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/bb/870Falinks.png/250px-870Falinks.png', 'Fighting', 'None', '', ''),
(871, 871, 'Pincurchin', 8, 'https://bulbapedia.bulbagarden.net/wiki/Pincurchin_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/11/871Pincurchin.png/250px-871Pincurchin.png', 'Electric', 'None', '', ''),
(872, 872, 'Snom', 8, 'https://bulbapedia.bulbagarden.net/wiki/Snom_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f9/872Snom.png/250px-872Snom.png', 'Ice', 'Bug', '', ''),
(873, 873, 'Frosmoth', 8, 'https://bulbapedia.bulbagarden.net/wiki/Frosmoth_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/04/873Frosmoth.png/250px-873Frosmoth.png', 'Ice', 'Bug', '', ''),
(874, 874, 'Stonjourner', 8, 'https://bulbapedia.bulbagarden.net/wiki/Stonjourner_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/60/874Stonjourner.png/250px-874Stonjourner.png', 'Rock', 'None', '', ''),
(875, 875, 'Eiscue', 8, 'https://bulbapedia.bulbagarden.net/wiki/Eiscue_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/9b/875Eiscue-Ice.png/250px-875Eiscue-Ice.png', 'Ice', 'None', '', ''),
(876, 876, 'Indeedee', 8, 'https://bulbapedia.bulbagarden.net/wiki/Indeedee_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/79/876Indeedee.png/250px-876Indeedee.png', 'Psychic', 'Normal', '', ''),
(877, 877, 'Morpeko', 8, 'https://bulbapedia.bulbagarden.net/wiki/Morpeko_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/d/df/877Morpeko-Full.png/250px-877Morpeko-Full.png', 'Electric', 'Dark', '', ''),
(878, 878, 'Cufant', 8, 'https://bulbapedia.bulbagarden.net/wiki/Cufant_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/5/56/878Cufant.png/250px-878Cufant.png', 'Steel', 'None', '', ''),
(879, 879, 'Copperajah', 8, 'https://bulbapedia.bulbagarden.net/wiki/Copperajah_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/76/879Copperajah.png/250px-879Copperajah.png', 'Steel', 'None', '', ''),
(880, 880, 'Dracozolt', 8, 'https://bulbapedia.bulbagarden.net/wiki/Dracozolt_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/91/880Dracozolt.png/250px-880Dracozolt.png', 'Electric', 'Dragon', '', ''),
(881, 881, 'Arctozolt', 8, 'https://bulbapedia.bulbagarden.net/wiki/Arctozolt_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/40/881Arctozolt.png/250px-881Arctozolt.png', 'Electric', 'Ice', '', ''),
(882, 882, 'Dracovish', 8, 'https://bulbapedia.bulbagarden.net/wiki/Dracovish_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/16/882Dracovish.png/250px-882Dracovish.png', 'Water', 'Dragon', '', ''),
(883, 883, 'Arctovish', 8, 'https://bulbapedia.bulbagarden.net/wiki/Arctovish_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/03/883Arctovish.png/250px-883Arctovish.png', 'Water', 'Ice', '', ''),
(884, 884, 'Duraludon', 8, 'https://bulbapedia.bulbagarden.net/wiki/Duraludon_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/38/884Duraludon.png/250px-884Duraludon.png', 'Steel', 'Dragon', '', ''),
(885, 885, 'Dreepy', 8, 'https://bulbapedia.bulbagarden.net/wiki/Dreepy_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a9/885Dreepy.png/250px-885Dreepy.png', 'Dragon', 'Ghost', '', ''),
(886, 886, 'Drakloak', 8, 'https://bulbapedia.bulbagarden.net/wiki/Drakloak_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e1/886Drakloak.png/250px-886Drakloak.png', 'Dragon', 'Ghost', '', ''),
(887, 887, 'Dragapult', 8, 'https://bulbapedia.bulbagarden.net/wiki/Dragapult_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/f7/887Dragapult.png/250px-887Dragapult.png', 'Dragon', 'Ghost', '', ''),
(888, 888, 'Zacian', 8, 'https://bulbapedia.bulbagarden.net/wiki/Zacian_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e3/888Zacian-Hero.png/250px-888Zacian-Hero.png', 'Fairy', 'None', '', ''),
(889, 889, 'Zamazenta', 8, 'https://bulbapedia.bulbagarden.net/wiki/Zamazenta_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/97/889Zamazenta-Hero.png/250px-889Zamazenta-Hero.png', 'Fighting', 'None', '', ''),
(890, 890, 'Eternatus', 8, 'https://bulbapedia.bulbagarden.net/wiki/Eternatus_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/62/890Eternatus.png/250px-890Eternatus.png', 'Poison', 'Dragon', '', ''),
(891, 891, 'Kubfu', 8, 'https://bulbapedia.bulbagarden.net/wiki/Kubfu_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/47/891Kubfu.png/250px-891Kubfu.png', 'Fighting', 'None', '', ''),
(892, 892, 'Urshifu', 8, 'https://bulbapedia.bulbagarden.net/wiki/Urshifu_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e7/892Urshifu-Single_Strike.png/250px-892Urshifu-Single_Strike.png', 'Fighting', 'Dark', '', ''),
(893, 893, 'Zarude', 8, 'https://bulbapedia.bulbagarden.net/wiki/Zarude_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/a/a5/893Zarude.png/250px-893Zarude.png', 'Dark', 'Grass', '', ''),
(894, 894, 'Regieleki', 8, 'https://bulbapedia.bulbagarden.net/wiki/Regieleki_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/9b/894Regieleki.png/250px-894Regieleki.png', 'Electric', 'None', '', ''),
(895, 895, 'Regidrago', 8, 'https://bulbapedia.bulbagarden.net/wiki/Regidrago_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e8/895Regidrago.png/250px-895Regidrago.png', 'Dragon', 'None', '', ''),
(896, 896, 'Glastrier', 8, 'https://bulbapedia.bulbagarden.net/wiki/Glastrier_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/f/ff/896Glastrier.png/250px-896Glastrier.png', 'Ice', 'None', '', ''),
(897, 897, 'Spectrier', 8, 'https://bulbapedia.bulbagarden.net/wiki/Spectrier_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/7e/897Spectrier.png/250px-897Spectrier.png', 'Ghost', 'None', '', ''),
(898, 898, 'Calyrex', 8, 'https://bulbapedia.bulbagarden.net/wiki/Calyrex_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/3c/898Calyrex.png/250px-898Calyrex.png', 'Psychic', 'Grass', '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `poketch_app_regionalformpokemon`
--

CREATE TABLE `poketch_app_regionalformpokemon` (
  `id` bigint(20) NOT NULL,
  `form_number` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `generation` int(11) NOT NULL,
  `article_link` varchar(255) NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `type1` varchar(255) NOT NULL,
  `type2` varchar(255) NOT NULL,
  `console_owned` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `poketch_app_regionalformpokemon`
--

INSERT INTO `poketch_app_regionalformpokemon` (`id`, `form_number`, `name`, `generation`, `article_link`, `image_link`, `type1`, `type2`, `console_owned`, `note`) VALUES
(1, 1, 'Rattata', 7, 'https://bulbapedia.bulbagarden.net/wiki/Rattata_(Pokémon)', 'https://cdn2.bulbagarden.net/upload/thumb/9/91/019Rattata-Alola.png/250px-019Rattata-Alola.png', 'Dark', 'Normal', 'Yes', ''),
(2, 2, 'Raticate', 7, 'https://bulbapedia.bulbagarden.net/wiki/Raticate_(Pok%C3%A9mon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/71/020Raticate-Alola.png/250px-020Raticate-Alola.png', 'Dark', 'Normal', 'Yes', ''),
(3, 3, 'Raichu', 7, 'https://bulbapedia.bulbagarden.net/wiki/Raichu_(Pok%C3%A9mon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/3a/026Raichu-Alola.png/250px-026Raichu-Alola.png', 'Electric', 'Psychic', 'Yes', ''),
(4, 4, 'Sandshrew', 7, 'https://bulbapedia.bulbagarden.net/wiki/Sandshrew_(Pok%C3%A9mon)', 'https://cdn2.bulbagarden.net/upload/thumb/c/c9/027Sandshrew-Alola.png/250px-027Sandshrew-Alola.png', 'Ice', 'Steel', '', ''),
(5, 5, 'Sandslash', 7, 'https://bulbapedia.bulbagarden.net/wiki/Sandslash_(Pok%C3%A9mon)', 'https://cdn2.bulbagarden.net/upload/thumb/b/bd/028Sandslash-Alola.png/250px-028Sandslash-Alola.png', 'Ice', 'Steel', '', ''),
(6, 6, 'Vulpix', 7, 'https://bulbapedia.bulbagarden.net/wiki/Vulpix_(Pok%C3%A9mon)', 'https://cdn2.bulbagarden.net/upload/thumb/3/35/037Vulpix-Alola.png/250px-037Vulpix-Alola.png', 'Ice', '', 'Yes', ''),
(7, 7, 'Ninetales', 7, 'https://bulbapedia.bulbagarden.net/wiki/Ninetales_(Pok%C3%A9mon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/26/038Ninetales-Alola.png/250px-038Ninetales-Alola.png', 'Ice', 'Fairy', '', ''),
(8, 8, 'Diglett', 7, 'https://bulbapedia.bulbagarden.net/wiki/Diglett_(Pok%C3%A9mon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/10/050Diglett-Alola.png/250px-050Diglett-Alola.png', 'Ground', 'Steel', 'Yes', ''),
(9, 9, 'Dugtrio', 7, 'https://bulbapedia.bulbagarden.net/wiki/Dugtrio_(Pok%C3%A9mon)', 'https://cdn2.bulbagarden.net/upload/thumb/2/22/051Dugtrio-Alola.png/250px-051Dugtrio-Alola.png', 'Ground', 'Steel', 'Yes', ''),
(10, 10, 'Meowth', 7, 'https://bulbapedia.bulbagarden.net/wiki/Meowth_(Pok%C3%A9mon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e3/052Meowth-Alola.png/250px-052Meowth-Alola.png', 'Dark', '', 'Yes', ''),
(11, 11, 'Persian', 7, 'https://bulbapedia.bulbagarden.net/wiki/Persian_(Pok%C3%A9mon)', 'https://cdn2.bulbagarden.net/upload/thumb/8/80/053Persian-Alola.png/250px-053Persian-Alola.png', 'Dark', '', '', ''),
(12, 12, 'Geodude', 7, 'https://bulbapedia.bulbagarden.net/wiki/Geodude_(Pok%C3%A9mon)', 'https://cdn2.bulbagarden.net/upload/thumb/4/43/074Geodude-Alola.png/250px-074Geodude-Alola.png', 'Rock', 'Electric', 'Yes', ''),
(13, 13, 'Graveler', 7, 'https://bulbapedia.bulbagarden.net/wiki/Graveler_(Pok%C3%A9mon)', 'https://cdn2.bulbagarden.net/upload/thumb/6/62/075Graveler-Alola.png/250px-075Graveler-Alola.png', 'Rock', 'Electric', 'Yes', ''),
(14, 14, 'Golem', 7, 'https://bulbapedia.bulbagarden.net/wiki/Golem_(Pok%C3%A9mon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/07/076Golem-Alola.png/250px-076Golem-Alola.png', 'Rock', 'Electric', 'Yes', ''),
(15, 15, 'Grimer', 7, 'https://bulbapedia.bulbagarden.net/wiki/Grimer_(Pok%C3%A9mon)', 'https://cdn2.bulbagarden.net/upload/thumb/e/e0/088Grimer-Alola.png/250px-088Grimer-Alola.png', 'Poison', 'Dark', 'Yes', ''),
(16, 16, 'Muk', 7, 'https://bulbapedia.bulbagarden.net/wiki/Muk_(Pok%C3%A9mon)', 'https://cdn2.bulbagarden.net/upload/thumb/1/15/089Muk-Alola.png/250px-089Muk-Alola.png', 'Poison', 'Dark', 'Yes', ''),
(17, 17, 'Exeggutor', 7, 'https://bulbapedia.bulbagarden.net/wiki/Exeggutor_(Pok%C3%A9mon)', 'https://cdn2.bulbagarden.net/upload/thumb/7/74/103Exeggutor-Alola.png/250px-103Exeggutor-Alola.png', 'Grass', 'Dragon', 'Yes', ''),
(18, 18, 'Marowak', 7, 'https://bulbapedia.bulbagarden.net/wiki/Marowak_(Pok%C3%A9mon)', 'https://cdn2.bulbagarden.net/upload/thumb/0/06/105Marowak-Alola.png/250px-105Marowak-Alola.png', 'Fire', 'Ghost', 'Yes', '');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeksy dla tabeli `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indeksy dla tabeli `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indeksy dla tabeli `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeksy dla tabeli `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indeksy dla tabeli `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indeksy dla tabeli `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indeksy dla tabeli `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indeksy dla tabeli `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indeksy dla tabeli `poketch_app_pokemon`
--
ALTER TABLE `poketch_app_pokemon`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `poketch_app_regionalformpokemon`
--
ALTER TABLE `poketch_app_regionalformpokemon`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT dla tabeli `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT dla tabeli `poketch_app_pokemon`
--
ALTER TABLE `poketch_app_pokemon`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=899;

--
-- AUTO_INCREMENT dla tabeli `poketch_app_regionalformpokemon`
--
ALTER TABLE `poketch_app_regionalformpokemon`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ograniczenia dla tabeli `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ograniczenia dla tabeli `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ograniczenia dla tabeli `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ograniczenia dla tabeli `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
