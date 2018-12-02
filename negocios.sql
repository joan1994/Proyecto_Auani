-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2018 a las 01:35:16
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `negocios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `availables`
--

CREATE TABLE `availables` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chats`
--

CREATE TABLE `chats` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coins`
--

CREATE TABLE `coins` (
  `id` int(10) UNSIGNED NOT NULL,
  `kind_coin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `details`
--

CREATE TABLE `details` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(10) UNSIGNED NOT NULL,
  `discount_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `discounts`
--

CREATE TABLE `discounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `kind_discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother´s last name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kind_employee` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rfc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(731, '2014_10_12_000000_create_users_table', 1),
(732, '2014_10_12_100000_create_password_resets_table', 1),
(733, '2018_09_17_235221_create_coins_table', 1),
(734, '2018_09_17_235603_create_discounts_table', 1),
(735, '2018_09_17_235748_create_products_table', 1),
(736, '2018_09_18_033838_create_employees_table', 1),
(737, '2018_09_18_034156_create_payments_table', 1),
(738, '2018_09_18_034334_create_details_table', 1),
(739, '2018_09_18_034612_create_sales_table', 1),
(740, '2018_09_18_034802_create_transactions_table', 1),
(741, '2018_09_18_062407_create_product_imagens_table', 1),
(742, '2018_09_24_031447_create_chats_table', 1),
(743, '2018_10_22_051514_create_produits_table', 1),
(744, '2018_10_23_045831_create_availables_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `kind_payment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coin_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kind_product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `kind_product`, `price`, `image`, `description`, `log_description`, `created_at`, `updated_at`) VALUES
(1, 'Quae iusto cumque reiciendis', 'accusantium', 9, 'maiores', 'Nostrum blanditiis aut animi quis rem aut aut adipisci deserunt sit nihil adipisci id.', 'aut', '2018-11-21 10:05:58', '2018-11-21 10:05:58'),
(2, 'Facere sed sed', 'illo', 3, 'est', 'Facere accusamus qui accusamus magni accusantium rerum sint iusto facere.', 'repellat', '2018-11-21 10:05:59', '2018-11-21 10:05:59'),
(3, 'Expedita ex quis sed', 'beatae', 9, 'illum', 'Magni incidunt aperiam non ducimus et reiciendis commodi tenetur aut possimus.', 'fugit', '2018-11-21 10:05:59', '2018-11-21 10:05:59'),
(4, 'Maiores ipsum id alias', 'tenetur', 3, 'nemo', 'Rerum omnis commodi neque dolorum ipsa voluptas.', 'similique', '2018-11-21 10:05:59', '2018-11-21 10:05:59'),
(5, 'Eligendi accusantium sapiente et', 'est', 9, 'in', 'Minima natus accusamus laboriosam et minima suscipit iure modi delectus porro magni.', 'dolor', '2018-11-21 10:05:59', '2018-11-21 10:05:59'),
(6, 'Maxime voluptate voluptate ut', 'quos', 7, 'aut', 'Tenetur quis nam voluptas laboriosam provident praesentium officia vel ut est at enim voluptatum.', 'temporibus', '2018-11-21 10:05:59', '2018-11-21 10:05:59'),
(7, 'Officia laudantium omnis', 'nesciunt', 0, 'totam', 'Quibusdam vel rem omnis iusto eveniet ullam est deleniti eos et.', 'optio', '2018-11-21 10:05:59', '2018-11-21 10:05:59'),
(8, 'Molestiae nesciunt natus qui', 'incidunt', 9, 'qui', 'Voluptatem non quas consequatur tempora ad sed veritatis beatae et assumenda quas numquam sunt.', 'aut', '2018-11-21 10:06:00', '2018-11-21 10:06:00'),
(9, 'Aut vero ut', 'sequi', 1, 'tempore', 'In omnis quaerat dolorem explicabo dolores a omnis quia.', 'at', '2018-11-21 10:06:00', '2018-11-21 10:06:00'),
(10, 'Et incidunt sed', 'dolorum', 7, 'perferendis', 'Deserunt iste ut qui fuga odit occaecati consequatur repellat.', 'consequuntur', '2018-11-21 10:06:00', '2018-11-21 10:06:00'),
(11, 'Impedit excepturi alias aut', 'sit', 9, 'aut', 'Ab ullam libero magni possimus sapiente est magnam optio ex illo aut repellat dolore perspiciatis.', 'qui', '2018-11-21 10:06:00', '2018-11-21 10:06:00'),
(12, 'Accusamus repellendus numquam', 'quia', 6, 'veniam', 'Pariatur exercitationem rem distinctio qui quisquam culpa explicabo a quos.', 'hic', '2018-11-21 10:06:00', '2018-11-21 10:06:00'),
(13, 'Est dolores dolor', 'asperiores', 4, 'rem', 'Ad non in dolor qui laudantium tenetur voluptatem.', 'ducimus', '2018-11-21 10:06:00', '2018-11-21 10:06:00'),
(14, 'Magni deserunt unde', 'magni', 1, 'sint', 'Nam aperiam vel illo porro sit ea voluptatem.', 'voluptate', '2018-11-21 10:06:00', '2018-11-21 10:06:00'),
(15, 'Ut aut reprehenderit ipsa', 'adipisci', 4, 'iusto', 'Ipsam qui voluptatem quia dolor voluptatem tenetur numquam ex omnis non et.', 'fugiat', '2018-11-21 10:06:00', '2018-11-21 10:06:00'),
(16, 'Id sequi nisi', 'reiciendis', 0, 'id', 'A vel ut fugiat voluptates minima modi.', 'fuga', '2018-11-21 10:06:00', '2018-11-21 10:06:00'),
(17, 'Facilis atque', 'unde', 1, 'consequatur', 'Enim et illo est soluta nihil nihil est dolore provident.', 'doloremque', '2018-11-21 10:06:00', '2018-11-21 10:06:00'),
(18, 'Delectus velit voluptates libero', 'velit', 5, 'id', 'Qui sed labore nulla laudantium perspiciatis asperiores.', 'consequuntur', '2018-11-21 10:06:00', '2018-11-21 10:06:00'),
(19, 'Est dolore', 'repellendus', 3, 'ut', 'Nemo impedit dolorem quia eum odio repudiandae omnis quisquam nostrum provident qui harum.', 'occaecati', '2018-11-21 10:06:00', '2018-11-21 10:06:00'),
(20, 'Harum et labore', 'voluptatem', 8, 'repellat', 'Voluptatum distinctio temporibus iusto molestiae omnis nulla aut dolorem qui inventore laudantium et.', 'non', '2018-11-21 10:06:00', '2018-11-21 10:06:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_imagens`
--

CREATE TABLE `product_imagens` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product_imagens`
--

INSERT INTO `product_imagens` (`id`, `image`, `featured`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'https://lorempixel.com/250/250/?11485', 0, 1, '2018-11-21 10:06:00', '2018-11-21 10:06:00'),
(2, 'https://lorempixel.com/250/250/?28985', 0, 1, '2018-11-21 10:06:00', '2018-11-21 10:06:00'),
(3, 'https://lorempixel.com/250/250/?38701', 0, 1, '2018-11-21 10:06:00', '2018-11-21 10:06:00'),
(4, 'https://lorempixel.com/250/250/?26022', 0, 1, '2018-11-21 10:06:01', '2018-11-21 10:06:01'),
(5, 'https://lorempixel.com/250/250/?70652', 0, 1, '2018-11-21 10:06:01', '2018-11-21 10:06:01'),
(6, 'https://lorempixel.com/250/250/?81803', 0, 1, '2018-11-21 10:06:01', '2018-11-21 10:06:01'),
(7, 'https://lorempixel.com/250/250/?29129', 0, 1, '2018-11-21 10:06:01', '2018-11-21 10:06:01'),
(8, 'https://lorempixel.com/250/250/?31912', 0, 1, '2018-11-21 10:06:01', '2018-11-21 10:06:01'),
(9, 'https://lorempixel.com/250/250/?97727', 0, 1, '2018-11-21 10:06:01', '2018-11-21 10:06:01'),
(10, 'https://lorempixel.com/250/250/?54936', 0, 1, '2018-11-21 10:06:01', '2018-11-21 10:06:01'),
(11, 'https://lorempixel.com/250/250/?48017', 0, 1, '2018-11-21 10:06:01', '2018-11-21 10:06:01'),
(12, 'https://lorempixel.com/250/250/?10015', 0, 1, '2018-11-21 10:06:01', '2018-11-21 10:06:01'),
(13, 'https://lorempixel.com/250/250/?56087', 0, 1, '2018-11-21 10:06:01', '2018-11-21 10:06:01'),
(14, 'https://lorempixel.com/250/250/?74818', 0, 1, '2018-11-21 10:06:01', '2018-11-21 10:06:01'),
(15, 'https://lorempixel.com/250/250/?89415', 0, 1, '2018-11-21 10:06:01', '2018-11-21 10:06:01'),
(16, 'https://lorempixel.com/250/250/?82951', 0, 1, '2018-11-21 10:06:01', '2018-11-21 10:06:01'),
(17, 'https://lorempixel.com/250/250/?37068', 0, 1, '2018-11-21 10:06:01', '2018-11-21 10:06:01'),
(18, 'https://lorempixel.com/250/250/?26270', 0, 1, '2018-11-21 10:06:01', '2018-11-21 10:06:01'),
(19, 'https://lorempixel.com/250/250/?33043', 0, 1, '2018-11-21 10:06:01', '2018-11-21 10:06:01'),
(20, 'https://lorempixel.com/250/250/?55191', 0, 1, '2018-11-21 10:06:01', '2018-11-21 10:06:01'),
(21, 'https://lorempixel.com/250/250/?81355', 0, 1, '2018-11-21 10:06:01', '2018-11-21 10:06:01'),
(22, 'https://lorempixel.com/250/250/?85825', 0, 1, '2018-11-21 10:06:01', '2018-11-21 10:06:01'),
(23, 'https://lorempixel.com/250/250/?64217', 0, 1, '2018-11-21 10:06:01', '2018-11-21 10:06:01'),
(24, 'https://lorempixel.com/250/250/?53009', 0, 1, '2018-11-21 10:06:01', '2018-11-21 10:06:01'),
(25, 'https://lorempixel.com/250/250/?33795', 0, 1, '2018-11-21 10:06:01', '2018-11-21 10:06:01'),
(26, 'https://lorempixel.com/250/250/?94766', 0, 1, '2018-11-21 10:06:02', '2018-11-21 10:06:02'),
(27, 'https://lorempixel.com/250/250/?43351', 0, 1, '2018-11-21 10:06:02', '2018-11-21 10:06:02'),
(28, 'https://lorempixel.com/250/250/?93231', 0, 1, '2018-11-21 10:06:02', '2018-11-21 10:06:02'),
(29, 'https://lorempixel.com/250/250/?33818', 0, 1, '2018-11-21 10:06:02', '2018-11-21 10:06:02'),
(30, 'https://lorempixel.com/250/250/?86266', 0, 1, '2018-11-21 10:06:02', '2018-11-21 10:06:02'),
(31, 'https://lorempixel.com/250/250/?70272', 0, 1, '2018-11-21 10:06:02', '2018-11-21 10:06:02'),
(32, 'https://lorempixel.com/250/250/?89316', 0, 1, '2018-11-21 10:06:02', '2018-11-21 10:06:02'),
(33, 'https://lorempixel.com/250/250/?96246', 0, 1, '2018-11-21 10:06:02', '2018-11-21 10:06:02'),
(34, 'https://lorempixel.com/250/250/?73814', 0, 1, '2018-11-21 10:06:02', '2018-11-21 10:06:02'),
(35, 'https://lorempixel.com/250/250/?85776', 0, 1, '2018-11-21 10:06:02', '2018-11-21 10:06:02'),
(36, 'https://lorempixel.com/250/250/?83786', 0, 1, '2018-11-21 10:06:02', '2018-11-21 10:06:02'),
(37, 'https://lorempixel.com/250/250/?60727', 0, 1, '2018-11-21 10:06:02', '2018-11-21 10:06:02'),
(38, 'https://lorempixel.com/250/250/?94213', 0, 1, '2018-11-21 10:06:02', '2018-11-21 10:06:02'),
(39, 'https://lorempixel.com/250/250/?24100', 0, 1, '2018-11-21 10:06:02', '2018-11-21 10:06:02'),
(40, 'https://lorempixel.com/250/250/?58078', 0, 1, '2018-11-21 10:06:02', '2018-11-21 10:06:02'),
(41, 'https://lorempixel.com/250/250/?17160', 0, 1, '2018-11-21 10:06:02', '2018-11-21 10:06:02'),
(42, 'https://lorempixel.com/250/250/?95752', 0, 1, '2018-11-21 10:06:02', '2018-11-21 10:06:02'),
(43, 'https://lorempixel.com/250/250/?98795', 0, 1, '2018-11-21 10:06:02', '2018-11-21 10:06:02'),
(44, 'https://lorempixel.com/250/250/?58510', 0, 1, '2018-11-21 10:06:02', '2018-11-21 10:06:02'),
(45, 'https://lorempixel.com/250/250/?13608', 0, 1, '2018-11-21 10:06:02', '2018-11-21 10:06:02'),
(46, 'https://lorempixel.com/250/250/?91111', 0, 1, '2018-11-21 10:06:02', '2018-11-21 10:06:02'),
(47, 'https://lorempixel.com/250/250/?73464', 0, 1, '2018-11-21 10:06:02', '2018-11-21 10:06:02'),
(48, 'https://lorempixel.com/250/250/?68777', 0, 1, '2018-11-21 10:06:02', '2018-11-21 10:06:02'),
(49, 'https://lorempixel.com/250/250/?65687', 0, 1, '2018-11-21 10:06:02', '2018-11-21 10:06:02'),
(50, 'https://lorempixel.com/250/250/?20305', 0, 1, '2018-11-21 10:06:03', '2018-11-21 10:06:03'),
(51, 'https://lorempixel.com/250/250/?97437', 0, 1, '2018-11-21 10:06:03', '2018-11-21 10:06:03'),
(52, 'https://lorempixel.com/250/250/?50381', 0, 1, '2018-11-21 10:06:03', '2018-11-21 10:06:03'),
(53, 'https://lorempixel.com/250/250/?87665', 0, 1, '2018-11-21 10:06:03', '2018-11-21 10:06:03'),
(54, 'https://lorempixel.com/250/250/?43075', 0, 1, '2018-11-21 10:06:03', '2018-11-21 10:06:03'),
(55, 'https://lorempixel.com/250/250/?49315', 0, 1, '2018-11-21 10:06:03', '2018-11-21 10:06:03'),
(56, 'https://lorempixel.com/250/250/?50355', 0, 1, '2018-11-21 10:06:03', '2018-11-21 10:06:03'),
(57, 'https://lorempixel.com/250/250/?95367', 0, 1, '2018-11-21 10:06:03', '2018-11-21 10:06:03'),
(58, 'https://lorempixel.com/250/250/?13142', 0, 1, '2018-11-21 10:06:03', '2018-11-21 10:06:03'),
(59, 'https://lorempixel.com/250/250/?85070', 0, 1, '2018-11-21 10:06:03', '2018-11-21 10:06:03'),
(60, 'https://lorempixel.com/250/250/?47388', 0, 1, '2018-11-21 10:06:03', '2018-11-21 10:06:03'),
(61, 'https://lorempixel.com/250/250/?98819', 0, 2, '2018-11-21 10:06:03', '2018-11-21 10:06:03'),
(62, 'https://lorempixel.com/250/250/?76478', 0, 2, '2018-11-21 10:06:03', '2018-11-21 10:06:03'),
(63, 'https://lorempixel.com/250/250/?55349', 0, 2, '2018-11-21 10:06:03', '2018-11-21 10:06:03'),
(64, 'https://lorempixel.com/250/250/?67577', 0, 2, '2018-11-21 10:06:03', '2018-11-21 10:06:03'),
(65, 'https://lorempixel.com/250/250/?65378', 0, 2, '2018-11-21 10:06:03', '2018-11-21 10:06:03'),
(66, 'https://lorempixel.com/250/250/?31032', 0, 2, '2018-11-21 10:06:03', '2018-11-21 10:06:03'),
(67, 'https://lorempixel.com/250/250/?19199', 0, 2, '2018-11-21 10:06:03', '2018-11-21 10:06:03'),
(68, 'https://lorempixel.com/250/250/?57921', 0, 2, '2018-11-21 10:06:03', '2018-11-21 10:06:03'),
(69, 'https://lorempixel.com/250/250/?76277', 0, 2, '2018-11-21 10:06:03', '2018-11-21 10:06:03'),
(70, 'https://lorempixel.com/250/250/?60985', 0, 2, '2018-11-21 10:06:03', '2018-11-21 10:06:03'),
(71, 'https://lorempixel.com/250/250/?58077', 0, 2, '2018-11-21 10:06:03', '2018-11-21 10:06:03'),
(72, 'https://lorempixel.com/250/250/?23890', 0, 2, '2018-11-21 10:06:03', '2018-11-21 10:06:03'),
(73, 'https://lorempixel.com/250/250/?90155', 0, 2, '2018-11-21 10:06:03', '2018-11-21 10:06:03'),
(74, 'https://lorempixel.com/250/250/?30025', 0, 2, '2018-11-21 10:06:04', '2018-11-21 10:06:04'),
(75, 'https://lorempixel.com/250/250/?56864', 0, 2, '2018-11-21 10:06:04', '2018-11-21 10:06:04'),
(76, 'https://lorempixel.com/250/250/?21249', 0, 2, '2018-11-21 10:06:04', '2018-11-21 10:06:04'),
(77, 'https://lorempixel.com/250/250/?88090', 0, 2, '2018-11-21 10:06:04', '2018-11-21 10:06:04'),
(78, 'https://lorempixel.com/250/250/?49183', 0, 2, '2018-11-21 10:06:04', '2018-11-21 10:06:04'),
(79, 'https://lorempixel.com/250/250/?46105', 0, 2, '2018-11-21 10:06:04', '2018-11-21 10:06:04'),
(80, 'https://lorempixel.com/250/250/?52762', 0, 2, '2018-11-21 10:06:04', '2018-11-21 10:06:04'),
(81, 'https://lorempixel.com/250/250/?89897', 0, 2, '2018-11-21 10:06:04', '2018-11-21 10:06:04'),
(82, 'https://lorempixel.com/250/250/?93098', 0, 2, '2018-11-21 10:06:04', '2018-11-21 10:06:04'),
(83, 'https://lorempixel.com/250/250/?20235', 0, 2, '2018-11-21 10:06:04', '2018-11-21 10:06:04'),
(84, 'https://lorempixel.com/250/250/?35042', 0, 2, '2018-11-21 10:06:04', '2018-11-21 10:06:04'),
(85, 'https://lorempixel.com/250/250/?64186', 0, 2, '2018-11-21 10:06:04', '2018-11-21 10:06:04'),
(86, 'https://lorempixel.com/250/250/?29281', 0, 2, '2018-11-21 10:06:04', '2018-11-21 10:06:04'),
(87, 'https://lorempixel.com/250/250/?62274', 0, 2, '2018-11-21 10:06:04', '2018-11-21 10:06:04'),
(88, 'https://lorempixel.com/250/250/?23870', 0, 2, '2018-11-21 10:06:04', '2018-11-21 10:06:04'),
(89, 'https://lorempixel.com/250/250/?51639', 0, 2, '2018-11-21 10:06:04', '2018-11-21 10:06:04'),
(90, 'https://lorempixel.com/250/250/?22878', 0, 2, '2018-11-21 10:06:04', '2018-11-21 10:06:04'),
(91, 'https://lorempixel.com/250/250/?92152', 0, 2, '2018-11-21 10:06:04', '2018-11-21 10:06:04'),
(92, 'https://lorempixel.com/250/250/?25789', 0, 2, '2018-11-21 10:06:04', '2018-11-21 10:06:04'),
(93, 'https://lorempixel.com/250/250/?88967', 0, 2, '2018-11-21 10:06:04', '2018-11-21 10:06:04'),
(94, 'https://lorempixel.com/250/250/?58696', 0, 2, '2018-11-21 10:06:04', '2018-11-21 10:06:04'),
(95, 'https://lorempixel.com/250/250/?58566', 0, 2, '2018-11-21 10:06:05', '2018-11-21 10:06:05'),
(96, 'https://lorempixel.com/250/250/?57159', 0, 2, '2018-11-21 10:06:05', '2018-11-21 10:06:05'),
(97, 'https://lorempixel.com/250/250/?79791', 0, 2, '2018-11-21 10:06:05', '2018-11-21 10:06:05'),
(98, 'https://lorempixel.com/250/250/?89754', 0, 2, '2018-11-21 10:06:05', '2018-11-21 10:06:05'),
(99, 'https://lorempixel.com/250/250/?30938', 0, 2, '2018-11-21 10:06:05', '2018-11-21 10:06:05'),
(100, 'https://lorempixel.com/250/250/?87902', 0, 2, '2018-11-21 10:06:05', '2018-11-21 10:06:05'),
(101, 'https://lorempixel.com/250/250/?13275', 0, 2, '2018-11-21 10:06:05', '2018-11-21 10:06:05'),
(102, 'https://lorempixel.com/250/250/?22251', 0, 2, '2018-11-21 10:06:05', '2018-11-21 10:06:05'),
(103, 'https://lorempixel.com/250/250/?54829', 0, 2, '2018-11-21 10:06:05', '2018-11-21 10:06:05'),
(104, 'https://lorempixel.com/250/250/?69478', 0, 2, '2018-11-21 10:06:05', '2018-11-21 10:06:05'),
(105, 'https://lorempixel.com/250/250/?84778', 0, 2, '2018-11-21 10:06:05', '2018-11-21 10:06:05'),
(106, 'https://lorempixel.com/250/250/?59731', 0, 2, '2018-11-21 10:06:05', '2018-11-21 10:06:05'),
(107, 'https://lorempixel.com/250/250/?95066', 0, 2, '2018-11-21 10:06:05', '2018-11-21 10:06:05'),
(108, 'https://lorempixel.com/250/250/?24973', 0, 2, '2018-11-21 10:06:05', '2018-11-21 10:06:05'),
(109, 'https://lorempixel.com/250/250/?16266', 0, 2, '2018-11-21 10:06:05', '2018-11-21 10:06:05'),
(110, 'https://lorempixel.com/250/250/?14743', 0, 2, '2018-11-21 10:06:05', '2018-11-21 10:06:05'),
(111, 'https://lorempixel.com/250/250/?90853', 0, 2, '2018-11-21 10:06:05', '2018-11-21 10:06:05'),
(112, 'https://lorempixel.com/250/250/?40648', 0, 2, '2018-11-21 10:06:05', '2018-11-21 10:06:05'),
(113, 'https://lorempixel.com/250/250/?22915', 0, 2, '2018-11-21 10:06:05', '2018-11-21 10:06:05'),
(114, 'https://lorempixel.com/250/250/?65558', 0, 2, '2018-11-21 10:06:06', '2018-11-21 10:06:06'),
(115, 'https://lorempixel.com/250/250/?33262', 0, 2, '2018-11-21 10:06:06', '2018-11-21 10:06:06'),
(116, 'https://lorempixel.com/250/250/?96615', 0, 2, '2018-11-21 10:06:06', '2018-11-21 10:06:06'),
(117, 'https://lorempixel.com/250/250/?56502', 0, 2, '2018-11-21 10:06:06', '2018-11-21 10:06:06'),
(118, 'https://lorempixel.com/250/250/?14818', 0, 2, '2018-11-21 10:06:06', '2018-11-21 10:06:06'),
(119, 'https://lorempixel.com/250/250/?99080', 0, 2, '2018-11-21 10:06:06', '2018-11-21 10:06:06'),
(120, 'https://lorempixel.com/250/250/?87698', 0, 2, '2018-11-21 10:06:06', '2018-11-21 10:06:06'),
(121, 'https://lorempixel.com/250/250/?55103', 0, 3, '2018-11-21 10:06:06', '2018-11-21 10:06:06'),
(122, 'https://lorempixel.com/250/250/?87440', 0, 3, '2018-11-21 10:06:06', '2018-11-21 10:06:06'),
(123, 'https://lorempixel.com/250/250/?70144', 0, 3, '2018-11-21 10:06:06', '2018-11-21 10:06:06'),
(124, 'https://lorempixel.com/250/250/?42868', 0, 3, '2018-11-21 10:06:06', '2018-11-21 10:06:06'),
(125, 'https://lorempixel.com/250/250/?81536', 0, 3, '2018-11-21 10:06:06', '2018-11-21 10:06:06'),
(126, 'https://lorempixel.com/250/250/?56868', 0, 3, '2018-11-21 10:06:06', '2018-11-21 10:06:06'),
(127, 'https://lorempixel.com/250/250/?41669', 0, 3, '2018-11-21 10:06:06', '2018-11-21 10:06:06'),
(128, 'https://lorempixel.com/250/250/?77979', 0, 3, '2018-11-21 10:06:06', '2018-11-21 10:06:06'),
(129, 'https://lorempixel.com/250/250/?23666', 0, 3, '2018-11-21 10:06:06', '2018-11-21 10:06:06'),
(130, 'https://lorempixel.com/250/250/?60667', 0, 3, '2018-11-21 10:06:06', '2018-11-21 10:06:06'),
(131, 'https://lorempixel.com/250/250/?61335', 0, 3, '2018-11-21 10:06:06', '2018-11-21 10:06:06'),
(132, 'https://lorempixel.com/250/250/?64234', 0, 3, '2018-11-21 10:06:06', '2018-11-21 10:06:06'),
(133, 'https://lorempixel.com/250/250/?92284', 0, 3, '2018-11-21 10:06:06', '2018-11-21 10:06:06'),
(134, 'https://lorempixel.com/250/250/?46347', 0, 3, '2018-11-21 10:06:06', '2018-11-21 10:06:06'),
(135, 'https://lorempixel.com/250/250/?98390', 0, 3, '2018-11-21 10:06:07', '2018-11-21 10:06:07'),
(136, 'https://lorempixel.com/250/250/?25520', 0, 3, '2018-11-21 10:06:07', '2018-11-21 10:06:07'),
(137, 'https://lorempixel.com/250/250/?55776', 0, 3, '2018-11-21 10:06:07', '2018-11-21 10:06:07'),
(138, 'https://lorempixel.com/250/250/?70164', 0, 3, '2018-11-21 10:06:07', '2018-11-21 10:06:07'),
(139, 'https://lorempixel.com/250/250/?99549', 0, 3, '2018-11-21 10:06:07', '2018-11-21 10:06:07'),
(140, 'https://lorempixel.com/250/250/?21989', 0, 3, '2018-11-21 10:06:07', '2018-11-21 10:06:07'),
(141, 'https://lorempixel.com/250/250/?58194', 0, 3, '2018-11-21 10:06:07', '2018-11-21 10:06:07'),
(142, 'https://lorempixel.com/250/250/?71640', 0, 3, '2018-11-21 10:06:07', '2018-11-21 10:06:07'),
(143, 'https://lorempixel.com/250/250/?61937', 0, 3, '2018-11-21 10:06:07', '2018-11-21 10:06:07'),
(144, 'https://lorempixel.com/250/250/?15751', 0, 3, '2018-11-21 10:06:07', '2018-11-21 10:06:07'),
(145, 'https://lorempixel.com/250/250/?19783', 0, 3, '2018-11-21 10:06:07', '2018-11-21 10:06:07'),
(146, 'https://lorempixel.com/250/250/?71877', 0, 3, '2018-11-21 10:06:07', '2018-11-21 10:06:07'),
(147, 'https://lorempixel.com/250/250/?88251', 0, 3, '2018-11-21 10:06:07', '2018-11-21 10:06:07'),
(148, 'https://lorempixel.com/250/250/?16341', 0, 3, '2018-11-21 10:06:07', '2018-11-21 10:06:07'),
(149, 'https://lorempixel.com/250/250/?74025', 0, 3, '2018-11-21 10:06:07', '2018-11-21 10:06:07'),
(150, 'https://lorempixel.com/250/250/?39764', 0, 3, '2018-11-21 10:06:07', '2018-11-21 10:06:07'),
(151, 'https://lorempixel.com/250/250/?73798', 0, 3, '2018-11-21 10:06:07', '2018-11-21 10:06:07'),
(152, 'https://lorempixel.com/250/250/?95487', 0, 3, '2018-11-21 10:06:07', '2018-11-21 10:06:07'),
(153, 'https://lorempixel.com/250/250/?20503', 0, 3, '2018-11-21 10:06:07', '2018-11-21 10:06:07'),
(154, 'https://lorempixel.com/250/250/?74939', 0, 3, '2018-11-21 10:06:07', '2018-11-21 10:06:07'),
(155, 'https://lorempixel.com/250/250/?47394', 0, 3, '2018-11-21 10:06:07', '2018-11-21 10:06:07'),
(156, 'https://lorempixel.com/250/250/?27483', 0, 3, '2018-11-21 10:06:07', '2018-11-21 10:06:07'),
(157, 'https://lorempixel.com/250/250/?15779', 0, 3, '2018-11-21 10:06:08', '2018-11-21 10:06:08'),
(158, 'https://lorempixel.com/250/250/?66940', 0, 3, '2018-11-21 10:06:08', '2018-11-21 10:06:08'),
(159, 'https://lorempixel.com/250/250/?40577', 0, 3, '2018-11-21 10:06:08', '2018-11-21 10:06:08'),
(160, 'https://lorempixel.com/250/250/?68390', 0, 3, '2018-11-21 10:06:08', '2018-11-21 10:06:08'),
(161, 'https://lorempixel.com/250/250/?31125', 0, 3, '2018-11-21 10:06:08', '2018-11-21 10:06:08'),
(162, 'https://lorempixel.com/250/250/?31084', 0, 3, '2018-11-21 10:06:08', '2018-11-21 10:06:08'),
(163, 'https://lorempixel.com/250/250/?75460', 0, 3, '2018-11-21 10:06:08', '2018-11-21 10:06:08'),
(164, 'https://lorempixel.com/250/250/?70479', 0, 3, '2018-11-21 10:06:08', '2018-11-21 10:06:08'),
(165, 'https://lorempixel.com/250/250/?63528', 0, 3, '2018-11-21 10:06:08', '2018-11-21 10:06:08'),
(166, 'https://lorempixel.com/250/250/?19923', 0, 3, '2018-11-21 10:06:08', '2018-11-21 10:06:08'),
(167, 'https://lorempixel.com/250/250/?68640', 0, 3, '2018-11-21 10:06:08', '2018-11-21 10:06:08'),
(168, 'https://lorempixel.com/250/250/?60259', 0, 3, '2018-11-21 10:06:08', '2018-11-21 10:06:08'),
(169, 'https://lorempixel.com/250/250/?94250', 0, 3, '2018-11-21 10:06:08', '2018-11-21 10:06:08'),
(170, 'https://lorempixel.com/250/250/?12781', 0, 3, '2018-11-21 10:06:08', '2018-11-21 10:06:08'),
(171, 'https://lorempixel.com/250/250/?60414', 0, 3, '2018-11-21 10:06:08', '2018-11-21 10:06:08'),
(172, 'https://lorempixel.com/250/250/?10181', 0, 3, '2018-11-21 10:06:08', '2018-11-21 10:06:08'),
(173, 'https://lorempixel.com/250/250/?86644', 0, 3, '2018-11-21 10:06:08', '2018-11-21 10:06:08'),
(174, 'https://lorempixel.com/250/250/?42428', 0, 3, '2018-11-21 10:06:08', '2018-11-21 10:06:08'),
(175, 'https://lorempixel.com/250/250/?64959', 0, 3, '2018-11-21 10:06:08', '2018-11-21 10:06:08'),
(176, 'https://lorempixel.com/250/250/?91127', 0, 3, '2018-11-21 10:06:08', '2018-11-21 10:06:08'),
(177, 'https://lorempixel.com/250/250/?87188', 0, 3, '2018-11-21 10:06:08', '2018-11-21 10:06:08'),
(178, 'https://lorempixel.com/250/250/?40914', 0, 3, '2018-11-21 10:06:08', '2018-11-21 10:06:08'),
(179, 'https://lorempixel.com/250/250/?91532', 0, 3, '2018-11-21 10:06:09', '2018-11-21 10:06:09'),
(180, 'https://lorempixel.com/250/250/?50837', 0, 3, '2018-11-21 10:06:09', '2018-11-21 10:06:09'),
(181, 'https://lorempixel.com/250/250/?21317', 0, 4, '2018-11-21 10:06:09', '2018-11-21 10:06:09'),
(182, 'https://lorempixel.com/250/250/?12089', 0, 4, '2018-11-21 10:06:09', '2018-11-21 10:06:09'),
(183, 'https://lorempixel.com/250/250/?43672', 0, 4, '2018-11-21 10:06:09', '2018-11-21 10:06:09'),
(184, 'https://lorempixel.com/250/250/?42004', 0, 4, '2018-11-21 10:06:09', '2018-11-21 10:06:09'),
(185, 'https://lorempixel.com/250/250/?64469', 0, 4, '2018-11-21 10:06:09', '2018-11-21 10:06:09'),
(186, 'https://lorempixel.com/250/250/?54100', 0, 4, '2018-11-21 10:06:09', '2018-11-21 10:06:09'),
(187, 'https://lorempixel.com/250/250/?93567', 0, 4, '2018-11-21 10:06:09', '2018-11-21 10:06:09'),
(188, 'https://lorempixel.com/250/250/?47348', 0, 4, '2018-11-21 10:06:09', '2018-11-21 10:06:09'),
(189, 'https://lorempixel.com/250/250/?75199', 0, 4, '2018-11-21 10:06:09', '2018-11-21 10:06:09'),
(190, 'https://lorempixel.com/250/250/?83426', 0, 4, '2018-11-21 10:06:09', '2018-11-21 10:06:09'),
(191, 'https://lorempixel.com/250/250/?73057', 0, 4, '2018-11-21 10:06:09', '2018-11-21 10:06:09'),
(192, 'https://lorempixel.com/250/250/?54839', 0, 4, '2018-11-21 10:06:09', '2018-11-21 10:06:09'),
(193, 'https://lorempixel.com/250/250/?60638', 0, 4, '2018-11-21 10:06:09', '2018-11-21 10:06:09'),
(194, 'https://lorempixel.com/250/250/?24941', 0, 4, '2018-11-21 10:06:09', '2018-11-21 10:06:09'),
(195, 'https://lorempixel.com/250/250/?82793', 0, 4, '2018-11-21 10:06:09', '2018-11-21 10:06:09'),
(196, 'https://lorempixel.com/250/250/?73075', 0, 4, '2018-11-21 10:06:09', '2018-11-21 10:06:09'),
(197, 'https://lorempixel.com/250/250/?92688', 0, 4, '2018-11-21 10:06:09', '2018-11-21 10:06:09'),
(198, 'https://lorempixel.com/250/250/?26630', 0, 4, '2018-11-21 10:06:10', '2018-11-21 10:06:10'),
(199, 'https://lorempixel.com/250/250/?32671', 0, 4, '2018-11-21 10:06:10', '2018-11-21 10:06:10'),
(200, 'https://lorempixel.com/250/250/?38127', 0, 4, '2018-11-21 10:06:10', '2018-11-21 10:06:10'),
(201, 'https://lorempixel.com/250/250/?16258', 0, 4, '2018-11-21 10:06:10', '2018-11-21 10:06:10'),
(202, 'https://lorempixel.com/250/250/?67305', 0, 4, '2018-11-21 10:06:10', '2018-11-21 10:06:10'),
(203, 'https://lorempixel.com/250/250/?66642', 0, 4, '2018-11-21 10:06:10', '2018-11-21 10:06:10'),
(204, 'https://lorempixel.com/250/250/?34085', 0, 4, '2018-11-21 10:06:10', '2018-11-21 10:06:10'),
(205, 'https://lorempixel.com/250/250/?23899', 0, 4, '2018-11-21 10:06:10', '2018-11-21 10:06:10'),
(206, 'https://lorempixel.com/250/250/?74933', 0, 4, '2018-11-21 10:06:10', '2018-11-21 10:06:10'),
(207, 'https://lorempixel.com/250/250/?50027', 0, 4, '2018-11-21 10:06:10', '2018-11-21 10:06:10'),
(208, 'https://lorempixel.com/250/250/?45744', 0, 4, '2018-11-21 10:06:10', '2018-11-21 10:06:10'),
(209, 'https://lorempixel.com/250/250/?19990', 0, 4, '2018-11-21 10:06:10', '2018-11-21 10:06:10'),
(210, 'https://lorempixel.com/250/250/?71386', 0, 4, '2018-11-21 10:06:10', '2018-11-21 10:06:10'),
(211, 'https://lorempixel.com/250/250/?62641', 0, 4, '2018-11-21 10:06:10', '2018-11-21 10:06:10'),
(212, 'https://lorempixel.com/250/250/?80305', 0, 4, '2018-11-21 10:06:10', '2018-11-21 10:06:10'),
(213, 'https://lorempixel.com/250/250/?62691', 0, 4, '2018-11-21 10:06:10', '2018-11-21 10:06:10'),
(214, 'https://lorempixel.com/250/250/?44512', 0, 4, '2018-11-21 10:06:10', '2018-11-21 10:06:10'),
(215, 'https://lorempixel.com/250/250/?70543', 0, 4, '2018-11-21 10:06:10', '2018-11-21 10:06:10'),
(216, 'https://lorempixel.com/250/250/?38028', 0, 4, '2018-11-21 10:06:10', '2018-11-21 10:06:10'),
(217, 'https://lorempixel.com/250/250/?68604', 0, 4, '2018-11-21 10:06:10', '2018-11-21 10:06:10'),
(218, 'https://lorempixel.com/250/250/?62577', 0, 4, '2018-11-21 10:06:10', '2018-11-21 10:06:10'),
(219, 'https://lorempixel.com/250/250/?62257', 0, 4, '2018-11-21 10:06:10', '2018-11-21 10:06:10'),
(220, 'https://lorempixel.com/250/250/?33055', 0, 4, '2018-11-21 10:06:11', '2018-11-21 10:06:11'),
(221, 'https://lorempixel.com/250/250/?89500', 0, 4, '2018-11-21 10:06:11', '2018-11-21 10:06:11'),
(222, 'https://lorempixel.com/250/250/?81038', 0, 4, '2018-11-21 10:06:11', '2018-11-21 10:06:11'),
(223, 'https://lorempixel.com/250/250/?78883', 0, 4, '2018-11-21 10:06:11', '2018-11-21 10:06:11'),
(224, 'https://lorempixel.com/250/250/?70178', 0, 4, '2018-11-21 10:06:11', '2018-11-21 10:06:11'),
(225, 'https://lorempixel.com/250/250/?45918', 0, 4, '2018-11-21 10:06:11', '2018-11-21 10:06:11'),
(226, 'https://lorempixel.com/250/250/?55333', 0, 4, '2018-11-21 10:06:11', '2018-11-21 10:06:11'),
(227, 'https://lorempixel.com/250/250/?12840', 0, 4, '2018-11-21 10:06:11', '2018-11-21 10:06:11'),
(228, 'https://lorempixel.com/250/250/?45559', 0, 4, '2018-11-21 10:06:11', '2018-11-21 10:06:11'),
(229, 'https://lorempixel.com/250/250/?48493', 0, 4, '2018-11-21 10:06:11', '2018-11-21 10:06:11'),
(230, 'https://lorempixel.com/250/250/?59981', 0, 4, '2018-11-21 10:06:11', '2018-11-21 10:06:11'),
(231, 'https://lorempixel.com/250/250/?81035', 0, 4, '2018-11-21 10:06:11', '2018-11-21 10:06:11'),
(232, 'https://lorempixel.com/250/250/?62997', 0, 4, '2018-11-21 10:06:11', '2018-11-21 10:06:11'),
(233, 'https://lorempixel.com/250/250/?58309', 0, 4, '2018-11-21 10:06:11', '2018-11-21 10:06:11'),
(234, 'https://lorempixel.com/250/250/?94357', 0, 4, '2018-11-21 10:06:11', '2018-11-21 10:06:11'),
(235, 'https://lorempixel.com/250/250/?50671', 0, 4, '2018-11-21 10:06:11', '2018-11-21 10:06:11'),
(236, 'https://lorempixel.com/250/250/?69881', 0, 4, '2018-11-21 10:06:11', '2018-11-21 10:06:11'),
(237, 'https://lorempixel.com/250/250/?23871', 0, 4, '2018-11-21 10:06:11', '2018-11-21 10:06:11'),
(238, 'https://lorempixel.com/250/250/?15099', 0, 4, '2018-11-21 10:06:12', '2018-11-21 10:06:12'),
(239, 'https://lorempixel.com/250/250/?67630', 0, 4, '2018-11-21 10:06:12', '2018-11-21 10:06:12'),
(240, 'https://lorempixel.com/250/250/?75663', 0, 4, '2018-11-21 10:06:12', '2018-11-21 10:06:12'),
(241, 'https://lorempixel.com/250/250/?11631', 0, 5, '2018-11-21 10:06:12', '2018-11-21 10:06:12'),
(242, 'https://lorempixel.com/250/250/?48845', 0, 5, '2018-11-21 10:06:12', '2018-11-21 10:06:12'),
(243, 'https://lorempixel.com/250/250/?20149', 0, 5, '2018-11-21 10:06:12', '2018-11-21 10:06:12'),
(244, 'https://lorempixel.com/250/250/?97056', 0, 5, '2018-11-21 10:06:12', '2018-11-21 10:06:12'),
(245, 'https://lorempixel.com/250/250/?39046', 0, 5, '2018-11-21 10:06:12', '2018-11-21 10:06:12'),
(246, 'https://lorempixel.com/250/250/?66425', 0, 5, '2018-11-21 10:06:12', '2018-11-21 10:06:12'),
(247, 'https://lorempixel.com/250/250/?33035', 0, 5, '2018-11-21 10:06:12', '2018-11-21 10:06:12'),
(248, 'https://lorempixel.com/250/250/?90496', 0, 5, '2018-11-21 10:06:12', '2018-11-21 10:06:12'),
(249, 'https://lorempixel.com/250/250/?84498', 0, 5, '2018-11-21 10:06:12', '2018-11-21 10:06:12'),
(250, 'https://lorempixel.com/250/250/?14748', 0, 5, '2018-11-21 10:06:12', '2018-11-21 10:06:12'),
(251, 'https://lorempixel.com/250/250/?63010', 0, 5, '2018-11-21 10:06:12', '2018-11-21 10:06:12'),
(252, 'https://lorempixel.com/250/250/?51130', 0, 5, '2018-11-21 10:06:12', '2018-11-21 10:06:12'),
(253, 'https://lorempixel.com/250/250/?70059', 0, 5, '2018-11-21 10:06:12', '2018-11-21 10:06:12'),
(254, 'https://lorempixel.com/250/250/?94744', 0, 5, '2018-11-21 10:06:12', '2018-11-21 10:06:12'),
(255, 'https://lorempixel.com/250/250/?72760', 0, 5, '2018-11-21 10:06:13', '2018-11-21 10:06:13'),
(256, 'https://lorempixel.com/250/250/?46076', 0, 5, '2018-11-21 10:06:13', '2018-11-21 10:06:13'),
(257, 'https://lorempixel.com/250/250/?87593', 0, 5, '2018-11-21 10:06:13', '2018-11-21 10:06:13'),
(258, 'https://lorempixel.com/250/250/?69769', 0, 5, '2018-11-21 10:06:13', '2018-11-21 10:06:13'),
(259, 'https://lorempixel.com/250/250/?68893', 0, 5, '2018-11-21 10:06:13', '2018-11-21 10:06:13'),
(260, 'https://lorempixel.com/250/250/?11283', 0, 5, '2018-11-21 10:06:13', '2018-11-21 10:06:13'),
(261, 'https://lorempixel.com/250/250/?76597', 0, 5, '2018-11-21 10:06:13', '2018-11-21 10:06:13'),
(262, 'https://lorempixel.com/250/250/?10953', 0, 5, '2018-11-21 10:06:13', '2018-11-21 10:06:13'),
(263, 'https://lorempixel.com/250/250/?58325', 0, 5, '2018-11-21 10:06:13', '2018-11-21 10:06:13'),
(264, 'https://lorempixel.com/250/250/?51652', 0, 5, '2018-11-21 10:06:13', '2018-11-21 10:06:13'),
(265, 'https://lorempixel.com/250/250/?59614', 0, 5, '2018-11-21 10:06:13', '2018-11-21 10:06:13'),
(266, 'https://lorempixel.com/250/250/?38260', 0, 5, '2018-11-21 10:06:13', '2018-11-21 10:06:13'),
(267, 'https://lorempixel.com/250/250/?74236', 0, 5, '2018-11-21 10:06:13', '2018-11-21 10:06:13'),
(268, 'https://lorempixel.com/250/250/?26627', 0, 5, '2018-11-21 10:06:13', '2018-11-21 10:06:13'),
(269, 'https://lorempixel.com/250/250/?84625', 0, 5, '2018-11-21 10:06:13', '2018-11-21 10:06:13'),
(270, 'https://lorempixel.com/250/250/?54612', 0, 5, '2018-11-21 10:06:13', '2018-11-21 10:06:13'),
(271, 'https://lorempixel.com/250/250/?99020', 0, 5, '2018-11-21 10:06:13', '2018-11-21 10:06:13'),
(272, 'https://lorempixel.com/250/250/?86345', 0, 5, '2018-11-21 10:06:13', '2018-11-21 10:06:13'),
(273, 'https://lorempixel.com/250/250/?57478', 0, 5, '2018-11-21 10:06:13', '2018-11-21 10:06:13'),
(274, 'https://lorempixel.com/250/250/?31953', 0, 5, '2018-11-21 10:06:13', '2018-11-21 10:06:13'),
(275, 'https://lorempixel.com/250/250/?23255', 0, 5, '2018-11-21 10:06:13', '2018-11-21 10:06:13'),
(276, 'https://lorempixel.com/250/250/?27624', 0, 5, '2018-11-21 10:06:14', '2018-11-21 10:06:14'),
(277, 'https://lorempixel.com/250/250/?18291', 0, 5, '2018-11-21 10:06:14', '2018-11-21 10:06:14'),
(278, 'https://lorempixel.com/250/250/?70482', 0, 5, '2018-11-21 10:06:14', '2018-11-21 10:06:14'),
(279, 'https://lorempixel.com/250/250/?47343', 0, 5, '2018-11-21 10:06:14', '2018-11-21 10:06:14'),
(280, 'https://lorempixel.com/250/250/?33714', 0, 5, '2018-11-21 10:06:14', '2018-11-21 10:06:14'),
(281, 'https://lorempixel.com/250/250/?90367', 0, 5, '2018-11-21 10:06:14', '2018-11-21 10:06:14'),
(282, 'https://lorempixel.com/250/250/?33641', 0, 5, '2018-11-21 10:06:14', '2018-11-21 10:06:14'),
(283, 'https://lorempixel.com/250/250/?94724', 0, 5, '2018-11-21 10:06:14', '2018-11-21 10:06:14'),
(284, 'https://lorempixel.com/250/250/?56122', 0, 5, '2018-11-21 10:06:14', '2018-11-21 10:06:14'),
(285, 'https://lorempixel.com/250/250/?41904', 0, 5, '2018-11-21 10:06:14', '2018-11-21 10:06:14'),
(286, 'https://lorempixel.com/250/250/?33674', 0, 5, '2018-11-21 10:06:14', '2018-11-21 10:06:14'),
(287, 'https://lorempixel.com/250/250/?95773', 0, 5, '2018-11-21 10:06:14', '2018-11-21 10:06:14'),
(288, 'https://lorempixel.com/250/250/?46378', 0, 5, '2018-11-21 10:06:14', '2018-11-21 10:06:14'),
(289, 'https://lorempixel.com/250/250/?32125', 0, 5, '2018-11-21 10:06:14', '2018-11-21 10:06:14'),
(290, 'https://lorempixel.com/250/250/?53454', 0, 5, '2018-11-21 10:06:14', '2018-11-21 10:06:14'),
(291, 'https://lorempixel.com/250/250/?13467', 0, 5, '2018-11-21 10:06:14', '2018-11-21 10:06:14'),
(292, 'https://lorempixel.com/250/250/?88595', 0, 5, '2018-11-21 10:06:14', '2018-11-21 10:06:14'),
(293, 'https://lorempixel.com/250/250/?15794', 0, 5, '2018-11-21 10:06:14', '2018-11-21 10:06:14'),
(294, 'https://lorempixel.com/250/250/?20803', 0, 5, '2018-11-21 10:06:14', '2018-11-21 10:06:14'),
(295, 'https://lorempixel.com/250/250/?97111', 0, 5, '2018-11-21 10:06:14', '2018-11-21 10:06:14'),
(296, 'https://lorempixel.com/250/250/?16310', 0, 5, '2018-11-21 10:06:14', '2018-11-21 10:06:14'),
(297, 'https://lorempixel.com/250/250/?60792', 0, 5, '2018-11-21 10:06:14', '2018-11-21 10:06:14'),
(298, 'https://lorempixel.com/250/250/?42316', 0, 5, '2018-11-21 10:06:15', '2018-11-21 10:06:15'),
(299, 'https://lorempixel.com/250/250/?35579', 0, 5, '2018-11-21 10:06:15', '2018-11-21 10:06:15'),
(300, 'https://lorempixel.com/250/250/?90655', 0, 5, '2018-11-21 10:06:15', '2018-11-21 10:06:15'),
(301, 'https://lorempixel.com/250/250/?40993', 0, 6, '2018-11-21 10:06:15', '2018-11-21 10:06:15'),
(302, 'https://lorempixel.com/250/250/?15488', 0, 6, '2018-11-21 10:06:15', '2018-11-21 10:06:15'),
(303, 'https://lorempixel.com/250/250/?87564', 0, 6, '2018-11-21 10:06:15', '2018-11-21 10:06:15'),
(304, 'https://lorempixel.com/250/250/?69625', 0, 6, '2018-11-21 10:06:15', '2018-11-21 10:06:15'),
(305, 'https://lorempixel.com/250/250/?53854', 0, 6, '2018-11-21 10:06:15', '2018-11-21 10:06:15'),
(306, 'https://lorempixel.com/250/250/?45573', 0, 6, '2018-11-21 10:06:15', '2018-11-21 10:06:15'),
(307, 'https://lorempixel.com/250/250/?80212', 0, 6, '2018-11-21 10:06:15', '2018-11-21 10:06:15'),
(308, 'https://lorempixel.com/250/250/?14759', 0, 6, '2018-11-21 10:06:15', '2018-11-21 10:06:15'),
(309, 'https://lorempixel.com/250/250/?24976', 0, 6, '2018-11-21 10:06:15', '2018-11-21 10:06:15'),
(310, 'https://lorempixel.com/250/250/?76669', 0, 6, '2018-11-21 10:06:15', '2018-11-21 10:06:15'),
(311, 'https://lorempixel.com/250/250/?25362', 0, 6, '2018-11-21 10:06:15', '2018-11-21 10:06:15'),
(312, 'https://lorempixel.com/250/250/?58896', 0, 6, '2018-11-21 10:06:15', '2018-11-21 10:06:15'),
(313, 'https://lorempixel.com/250/250/?39959', 0, 6, '2018-11-21 10:06:15', '2018-11-21 10:06:15'),
(314, 'https://lorempixel.com/250/250/?74298', 0, 6, '2018-11-21 10:06:15', '2018-11-21 10:06:15'),
(315, 'https://lorempixel.com/250/250/?24958', 0, 6, '2018-11-21 10:06:15', '2018-11-21 10:06:15'),
(316, 'https://lorempixel.com/250/250/?13772', 0, 6, '2018-11-21 10:06:15', '2018-11-21 10:06:15'),
(317, 'https://lorempixel.com/250/250/?86256', 0, 6, '2018-11-21 10:06:15', '2018-11-21 10:06:15'),
(318, 'https://lorempixel.com/250/250/?64593', 0, 6, '2018-11-21 10:06:15', '2018-11-21 10:06:15'),
(319, 'https://lorempixel.com/250/250/?38572', 0, 6, '2018-11-21 10:06:15', '2018-11-21 10:06:15'),
(320, 'https://lorempixel.com/250/250/?55578', 0, 6, '2018-11-21 10:06:16', '2018-11-21 10:06:16'),
(321, 'https://lorempixel.com/250/250/?67962', 0, 6, '2018-11-21 10:06:16', '2018-11-21 10:06:16'),
(322, 'https://lorempixel.com/250/250/?29979', 0, 6, '2018-11-21 10:06:16', '2018-11-21 10:06:16'),
(323, 'https://lorempixel.com/250/250/?19111', 0, 6, '2018-11-21 10:06:16', '2018-11-21 10:06:16'),
(324, 'https://lorempixel.com/250/250/?45737', 0, 6, '2018-11-21 10:06:16', '2018-11-21 10:06:16'),
(325, 'https://lorempixel.com/250/250/?72258', 0, 6, '2018-11-21 10:06:16', '2018-11-21 10:06:16'),
(326, 'https://lorempixel.com/250/250/?16150', 0, 6, '2018-11-21 10:06:16', '2018-11-21 10:06:16'),
(327, 'https://lorempixel.com/250/250/?47712', 0, 6, '2018-11-21 10:06:16', '2018-11-21 10:06:16'),
(328, 'https://lorempixel.com/250/250/?38842', 0, 6, '2018-11-21 10:06:16', '2018-11-21 10:06:16'),
(329, 'https://lorempixel.com/250/250/?15658', 0, 6, '2018-11-21 10:06:16', '2018-11-21 10:06:16'),
(330, 'https://lorempixel.com/250/250/?53388', 0, 6, '2018-11-21 10:06:16', '2018-11-21 10:06:16'),
(331, 'https://lorempixel.com/250/250/?78923', 0, 6, '2018-11-21 10:06:16', '2018-11-21 10:06:16'),
(332, 'https://lorempixel.com/250/250/?15092', 0, 6, '2018-11-21 10:06:16', '2018-11-21 10:06:16'),
(333, 'https://lorempixel.com/250/250/?39285', 0, 6, '2018-11-21 10:06:16', '2018-11-21 10:06:16'),
(334, 'https://lorempixel.com/250/250/?76093', 0, 6, '2018-11-21 10:06:16', '2018-11-21 10:06:16'),
(335, 'https://lorempixel.com/250/250/?55660', 0, 6, '2018-11-21 10:06:16', '2018-11-21 10:06:16'),
(336, 'https://lorempixel.com/250/250/?76733', 0, 6, '2018-11-21 10:06:16', '2018-11-21 10:06:16'),
(337, 'https://lorempixel.com/250/250/?47443', 0, 6, '2018-11-21 10:06:16', '2018-11-21 10:06:16'),
(338, 'https://lorempixel.com/250/250/?93266', 0, 6, '2018-11-21 10:06:16', '2018-11-21 10:06:16'),
(339, 'https://lorempixel.com/250/250/?69299', 0, 6, '2018-11-21 10:06:16', '2018-11-21 10:06:16'),
(340, 'https://lorempixel.com/250/250/?83481', 0, 6, '2018-11-21 10:06:16', '2018-11-21 10:06:16'),
(341, 'https://lorempixel.com/250/250/?86570', 0, 6, '2018-11-21 10:06:16', '2018-11-21 10:06:16'),
(342, 'https://lorempixel.com/250/250/?49562', 0, 6, '2018-11-21 10:06:16', '2018-11-21 10:06:16'),
(343, 'https://lorempixel.com/250/250/?56373', 0, 6, '2018-11-21 10:06:17', '2018-11-21 10:06:17'),
(344, 'https://lorempixel.com/250/250/?43492', 0, 6, '2018-11-21 10:06:17', '2018-11-21 10:06:17'),
(345, 'https://lorempixel.com/250/250/?11292', 0, 6, '2018-11-21 10:06:17', '2018-11-21 10:06:17'),
(346, 'https://lorempixel.com/250/250/?10905', 0, 6, '2018-11-21 10:06:17', '2018-11-21 10:06:17'),
(347, 'https://lorempixel.com/250/250/?69091', 0, 6, '2018-11-21 10:06:17', '2018-11-21 10:06:17'),
(348, 'https://lorempixel.com/250/250/?41803', 0, 6, '2018-11-21 10:06:17', '2018-11-21 10:06:17'),
(349, 'https://lorempixel.com/250/250/?93450', 0, 6, '2018-11-21 10:06:17', '2018-11-21 10:06:17'),
(350, 'https://lorempixel.com/250/250/?47996', 0, 6, '2018-11-21 10:06:17', '2018-11-21 10:06:17'),
(351, 'https://lorempixel.com/250/250/?60112', 0, 6, '2018-11-21 10:06:17', '2018-11-21 10:06:17'),
(352, 'https://lorempixel.com/250/250/?49440', 0, 6, '2018-11-21 10:06:17', '2018-11-21 10:06:17'),
(353, 'https://lorempixel.com/250/250/?27801', 0, 6, '2018-11-21 10:06:17', '2018-11-21 10:06:17'),
(354, 'https://lorempixel.com/250/250/?77073', 0, 6, '2018-11-21 10:06:17', '2018-11-21 10:06:17'),
(355, 'https://lorempixel.com/250/250/?29368', 0, 6, '2018-11-21 10:06:17', '2018-11-21 10:06:17'),
(356, 'https://lorempixel.com/250/250/?88659', 0, 6, '2018-11-21 10:06:17', '2018-11-21 10:06:17'),
(357, 'https://lorempixel.com/250/250/?70199', 0, 6, '2018-11-21 10:06:17', '2018-11-21 10:06:17'),
(358, 'https://lorempixel.com/250/250/?14401', 0, 6, '2018-11-21 10:06:17', '2018-11-21 10:06:17'),
(359, 'https://lorempixel.com/250/250/?36192', 0, 6, '2018-11-21 10:06:17', '2018-11-21 10:06:17'),
(360, 'https://lorempixel.com/250/250/?65018', 0, 6, '2018-11-21 10:06:17', '2018-11-21 10:06:17'),
(361, 'https://lorempixel.com/250/250/?22093', 0, 7, '2018-11-21 10:06:18', '2018-11-21 10:06:18'),
(362, 'https://lorempixel.com/250/250/?15324', 0, 7, '2018-11-21 10:06:18', '2018-11-21 10:06:18'),
(363, 'https://lorempixel.com/250/250/?19413', 0, 7, '2018-11-21 10:06:18', '2018-11-21 10:06:18'),
(364, 'https://lorempixel.com/250/250/?97469', 0, 7, '2018-11-21 10:06:18', '2018-11-21 10:06:18'),
(365, 'https://lorempixel.com/250/250/?81078', 0, 7, '2018-11-21 10:06:18', '2018-11-21 10:06:18'),
(366, 'https://lorempixel.com/250/250/?26081', 0, 7, '2018-11-21 10:06:18', '2018-11-21 10:06:18'),
(367, 'https://lorempixel.com/250/250/?92206', 0, 7, '2018-11-21 10:06:18', '2018-11-21 10:06:18'),
(368, 'https://lorempixel.com/250/250/?18301', 0, 7, '2018-11-21 10:06:18', '2018-11-21 10:06:18'),
(369, 'https://lorempixel.com/250/250/?98644', 0, 7, '2018-11-21 10:06:18', '2018-11-21 10:06:18'),
(370, 'https://lorempixel.com/250/250/?21407', 0, 7, '2018-11-21 10:06:18', '2018-11-21 10:06:18'),
(371, 'https://lorempixel.com/250/250/?20422', 0, 7, '2018-11-21 10:06:18', '2018-11-21 10:06:18'),
(372, 'https://lorempixel.com/250/250/?11822', 0, 7, '2018-11-21 10:06:18', '2018-11-21 10:06:18'),
(373, 'https://lorempixel.com/250/250/?43027', 0, 7, '2018-11-21 10:06:18', '2018-11-21 10:06:18'),
(374, 'https://lorempixel.com/250/250/?34475', 0, 7, '2018-11-21 10:06:18', '2018-11-21 10:06:18'),
(375, 'https://lorempixel.com/250/250/?67226', 0, 7, '2018-11-21 10:06:18', '2018-11-21 10:06:18'),
(376, 'https://lorempixel.com/250/250/?18448', 0, 7, '2018-11-21 10:06:18', '2018-11-21 10:06:18'),
(377, 'https://lorempixel.com/250/250/?23382', 0, 7, '2018-11-21 10:06:18', '2018-11-21 10:06:18'),
(378, 'https://lorempixel.com/250/250/?11686', 0, 7, '2018-11-21 10:06:18', '2018-11-21 10:06:18'),
(379, 'https://lorempixel.com/250/250/?95764', 0, 7, '2018-11-21 10:06:18', '2018-11-21 10:06:18'),
(380, 'https://lorempixel.com/250/250/?93608', 0, 7, '2018-11-21 10:06:19', '2018-11-21 10:06:19'),
(381, 'https://lorempixel.com/250/250/?54084', 0, 7, '2018-11-21 10:06:19', '2018-11-21 10:06:19'),
(382, 'https://lorempixel.com/250/250/?65552', 0, 7, '2018-11-21 10:06:19', '2018-11-21 10:06:19'),
(383, 'https://lorempixel.com/250/250/?15336', 0, 7, '2018-11-21 10:06:19', '2018-11-21 10:06:19'),
(384, 'https://lorempixel.com/250/250/?20893', 0, 7, '2018-11-21 10:06:19', '2018-11-21 10:06:19'),
(385, 'https://lorempixel.com/250/250/?39627', 0, 7, '2018-11-21 10:06:19', '2018-11-21 10:06:19'),
(386, 'https://lorempixel.com/250/250/?33329', 0, 7, '2018-11-21 10:06:19', '2018-11-21 10:06:19'),
(387, 'https://lorempixel.com/250/250/?23212', 0, 7, '2018-11-21 10:06:19', '2018-11-21 10:06:19'),
(388, 'https://lorempixel.com/250/250/?32499', 0, 7, '2018-11-21 10:06:19', '2018-11-21 10:06:19'),
(389, 'https://lorempixel.com/250/250/?79669', 0, 7, '2018-11-21 10:06:19', '2018-11-21 10:06:19'),
(390, 'https://lorempixel.com/250/250/?80841', 0, 7, '2018-11-21 10:06:19', '2018-11-21 10:06:19'),
(391, 'https://lorempixel.com/250/250/?18004', 0, 7, '2018-11-21 10:06:19', '2018-11-21 10:06:19'),
(392, 'https://lorempixel.com/250/250/?79127', 0, 7, '2018-11-21 10:06:19', '2018-11-21 10:06:19'),
(393, 'https://lorempixel.com/250/250/?30270', 0, 7, '2018-11-21 10:06:19', '2018-11-21 10:06:19'),
(394, 'https://lorempixel.com/250/250/?77402', 0, 7, '2018-11-21 10:06:19', '2018-11-21 10:06:19'),
(395, 'https://lorempixel.com/250/250/?97984', 0, 7, '2018-11-21 10:06:19', '2018-11-21 10:06:19'),
(396, 'https://lorempixel.com/250/250/?47740', 0, 7, '2018-11-21 10:06:19', '2018-11-21 10:06:19'),
(397, 'https://lorempixel.com/250/250/?25649', 0, 7, '2018-11-21 10:06:19', '2018-11-21 10:06:19'),
(398, 'https://lorempixel.com/250/250/?65818', 0, 7, '2018-11-21 10:06:19', '2018-11-21 10:06:19'),
(399, 'https://lorempixel.com/250/250/?60262', 0, 7, '2018-11-21 10:06:19', '2018-11-21 10:06:19'),
(400, 'https://lorempixel.com/250/250/?56140', 0, 7, '2018-11-21 10:06:19', '2018-11-21 10:06:19'),
(401, 'https://lorempixel.com/250/250/?14691', 0, 7, '2018-11-21 10:06:19', '2018-11-21 10:06:19'),
(402, 'https://lorempixel.com/250/250/?58077', 0, 7, '2018-11-21 10:06:20', '2018-11-21 10:06:20'),
(403, 'https://lorempixel.com/250/250/?23156', 0, 7, '2018-11-21 10:06:20', '2018-11-21 10:06:20'),
(404, 'https://lorempixel.com/250/250/?97102', 0, 7, '2018-11-21 10:06:20', '2018-11-21 10:06:20'),
(405, 'https://lorempixel.com/250/250/?93280', 0, 7, '2018-11-21 10:06:20', '2018-11-21 10:06:20'),
(406, 'https://lorempixel.com/250/250/?25636', 0, 7, '2018-11-21 10:06:20', '2018-11-21 10:06:20'),
(407, 'https://lorempixel.com/250/250/?99795', 0, 7, '2018-11-21 10:06:20', '2018-11-21 10:06:20'),
(408, 'https://lorempixel.com/250/250/?55426', 0, 7, '2018-11-21 10:06:20', '2018-11-21 10:06:20'),
(409, 'https://lorempixel.com/250/250/?14890', 0, 7, '2018-11-21 10:06:20', '2018-11-21 10:06:20'),
(410, 'https://lorempixel.com/250/250/?69007', 0, 7, '2018-11-21 10:06:20', '2018-11-21 10:06:20'),
(411, 'https://lorempixel.com/250/250/?24289', 0, 7, '2018-11-21 10:06:20', '2018-11-21 10:06:20'),
(412, 'https://lorempixel.com/250/250/?70787', 0, 7, '2018-11-21 10:06:20', '2018-11-21 10:06:20'),
(413, 'https://lorempixel.com/250/250/?90811', 0, 7, '2018-11-21 10:06:20', '2018-11-21 10:06:20'),
(414, 'https://lorempixel.com/250/250/?64996', 0, 7, '2018-11-21 10:06:20', '2018-11-21 10:06:20'),
(415, 'https://lorempixel.com/250/250/?82493', 0, 7, '2018-11-21 10:06:20', '2018-11-21 10:06:20'),
(416, 'https://lorempixel.com/250/250/?18866', 0, 7, '2018-11-21 10:06:20', '2018-11-21 10:06:20'),
(417, 'https://lorempixel.com/250/250/?88939', 0, 7, '2018-11-21 10:06:20', '2018-11-21 10:06:20'),
(418, 'https://lorempixel.com/250/250/?15399', 0, 7, '2018-11-21 10:06:20', '2018-11-21 10:06:20'),
(419, 'https://lorempixel.com/250/250/?18535', 0, 7, '2018-11-21 10:06:20', '2018-11-21 10:06:20'),
(420, 'https://lorempixel.com/250/250/?48175', 0, 7, '2018-11-21 10:06:20', '2018-11-21 10:06:20'),
(421, 'https://lorempixel.com/250/250/?77412', 0, 8, '2018-11-21 10:06:20', '2018-11-21 10:06:20'),
(422, 'https://lorempixel.com/250/250/?91824', 0, 8, '2018-11-21 10:06:20', '2018-11-21 10:06:20'),
(423, 'https://lorempixel.com/250/250/?93601', 0, 8, '2018-11-21 10:06:20', '2018-11-21 10:06:20'),
(424, 'https://lorempixel.com/250/250/?53513', 0, 8, '2018-11-21 10:06:20', '2018-11-21 10:06:20'),
(425, 'https://lorempixel.com/250/250/?27103', 0, 8, '2018-11-21 10:06:21', '2018-11-21 10:06:21'),
(426, 'https://lorempixel.com/250/250/?21828', 0, 8, '2018-11-21 10:06:21', '2018-11-21 10:06:21'),
(427, 'https://lorempixel.com/250/250/?49937', 0, 8, '2018-11-21 10:06:21', '2018-11-21 10:06:21'),
(428, 'https://lorempixel.com/250/250/?78823', 0, 8, '2018-11-21 10:06:21', '2018-11-21 10:06:21'),
(429, 'https://lorempixel.com/250/250/?89128', 0, 8, '2018-11-21 10:06:21', '2018-11-21 10:06:21'),
(430, 'https://lorempixel.com/250/250/?37698', 0, 8, '2018-11-21 10:06:21', '2018-11-21 10:06:21'),
(431, 'https://lorempixel.com/250/250/?91152', 0, 8, '2018-11-21 10:06:21', '2018-11-21 10:06:21'),
(432, 'https://lorempixel.com/250/250/?58109', 0, 8, '2018-11-21 10:06:21', '2018-11-21 10:06:21'),
(433, 'https://lorempixel.com/250/250/?68163', 0, 8, '2018-11-21 10:06:21', '2018-11-21 10:06:21'),
(434, 'https://lorempixel.com/250/250/?36285', 0, 8, '2018-11-21 10:06:21', '2018-11-21 10:06:21'),
(435, 'https://lorempixel.com/250/250/?83216', 0, 8, '2018-11-21 10:06:21', '2018-11-21 10:06:21'),
(436, 'https://lorempixel.com/250/250/?95002', 0, 8, '2018-11-21 10:06:21', '2018-11-21 10:06:21'),
(437, 'https://lorempixel.com/250/250/?51025', 0, 8, '2018-11-21 10:06:21', '2018-11-21 10:06:21'),
(438, 'https://lorempixel.com/250/250/?17216', 0, 8, '2018-11-21 10:06:21', '2018-11-21 10:06:21'),
(439, 'https://lorempixel.com/250/250/?11615', 0, 8, '2018-11-21 10:06:21', '2018-11-21 10:06:21'),
(440, 'https://lorempixel.com/250/250/?32681', 0, 8, '2018-11-21 10:06:21', '2018-11-21 10:06:21'),
(441, 'https://lorempixel.com/250/250/?97052', 0, 8, '2018-11-21 10:06:21', '2018-11-21 10:06:21'),
(442, 'https://lorempixel.com/250/250/?73137', 0, 8, '2018-11-21 10:06:21', '2018-11-21 10:06:21'),
(443, 'https://lorempixel.com/250/250/?73452', 0, 8, '2018-11-21 10:06:21', '2018-11-21 10:06:21'),
(444, 'https://lorempixel.com/250/250/?14929', 0, 8, '2018-11-21 10:06:22', '2018-11-21 10:06:22'),
(445, 'https://lorempixel.com/250/250/?37653', 0, 8, '2018-11-21 10:06:22', '2018-11-21 10:06:22'),
(446, 'https://lorempixel.com/250/250/?25520', 0, 8, '2018-11-21 10:06:22', '2018-11-21 10:06:22'),
(447, 'https://lorempixel.com/250/250/?46987', 0, 8, '2018-11-21 10:06:22', '2018-11-21 10:06:22'),
(448, 'https://lorempixel.com/250/250/?99147', 0, 8, '2018-11-21 10:06:22', '2018-11-21 10:06:22'),
(449, 'https://lorempixel.com/250/250/?74139', 0, 8, '2018-11-21 10:06:22', '2018-11-21 10:06:22'),
(450, 'https://lorempixel.com/250/250/?66339', 0, 8, '2018-11-21 10:06:22', '2018-11-21 10:06:22'),
(451, 'https://lorempixel.com/250/250/?18974', 0, 8, '2018-11-21 10:06:22', '2018-11-21 10:06:22'),
(452, 'https://lorempixel.com/250/250/?76800', 0, 8, '2018-11-21 10:06:22', '2018-11-21 10:06:22'),
(453, 'https://lorempixel.com/250/250/?43965', 0, 8, '2018-11-21 10:06:22', '2018-11-21 10:06:22'),
(454, 'https://lorempixel.com/250/250/?88093', 0, 8, '2018-11-21 10:06:22', '2018-11-21 10:06:22'),
(455, 'https://lorempixel.com/250/250/?33852', 0, 8, '2018-11-21 10:06:22', '2018-11-21 10:06:22'),
(456, 'https://lorempixel.com/250/250/?70259', 0, 8, '2018-11-21 10:06:22', '2018-11-21 10:06:22'),
(457, 'https://lorempixel.com/250/250/?68336', 0, 8, '2018-11-21 10:06:22', '2018-11-21 10:06:22'),
(458, 'https://lorempixel.com/250/250/?31424', 0, 8, '2018-11-21 10:06:22', '2018-11-21 10:06:22'),
(459, 'https://lorempixel.com/250/250/?44995', 0, 8, '2018-11-21 10:06:22', '2018-11-21 10:06:22'),
(460, 'https://lorempixel.com/250/250/?53986', 0, 8, '2018-11-21 10:06:22', '2018-11-21 10:06:22'),
(461, 'https://lorempixel.com/250/250/?45240', 0, 8, '2018-11-21 10:06:22', '2018-11-21 10:06:22'),
(462, 'https://lorempixel.com/250/250/?67064', 0, 8, '2018-11-21 10:06:23', '2018-11-21 10:06:23'),
(463, 'https://lorempixel.com/250/250/?24148', 0, 8, '2018-11-21 10:06:23', '2018-11-21 10:06:23'),
(464, 'https://lorempixel.com/250/250/?11554', 0, 8, '2018-11-21 10:06:23', '2018-11-21 10:06:23'),
(465, 'https://lorempixel.com/250/250/?79837', 0, 8, '2018-11-21 10:06:23', '2018-11-21 10:06:23'),
(466, 'https://lorempixel.com/250/250/?83517', 0, 8, '2018-11-21 10:06:23', '2018-11-21 10:06:23'),
(467, 'https://lorempixel.com/250/250/?95854', 0, 8, '2018-11-21 10:06:23', '2018-11-21 10:06:23'),
(468, 'https://lorempixel.com/250/250/?52976', 0, 8, '2018-11-21 10:06:23', '2018-11-21 10:06:23'),
(469, 'https://lorempixel.com/250/250/?67382', 0, 8, '2018-11-21 10:06:23', '2018-11-21 10:06:23'),
(470, 'https://lorempixel.com/250/250/?40648', 0, 8, '2018-11-21 10:06:23', '2018-11-21 10:06:23'),
(471, 'https://lorempixel.com/250/250/?24677', 0, 8, '2018-11-21 10:06:23', '2018-11-21 10:06:23'),
(472, 'https://lorempixel.com/250/250/?69769', 0, 8, '2018-11-21 10:06:23', '2018-11-21 10:06:23'),
(473, 'https://lorempixel.com/250/250/?31067', 0, 8, '2018-11-21 10:06:23', '2018-11-21 10:06:23'),
(474, 'https://lorempixel.com/250/250/?99920', 0, 8, '2018-11-21 10:06:23', '2018-11-21 10:06:23'),
(475, 'https://lorempixel.com/250/250/?59744', 0, 8, '2018-11-21 10:06:23', '2018-11-21 10:06:23'),
(476, 'https://lorempixel.com/250/250/?36464', 0, 8, '2018-11-21 10:06:23', '2018-11-21 10:06:23'),
(477, 'https://lorempixel.com/250/250/?77184', 0, 8, '2018-11-21 10:06:23', '2018-11-21 10:06:23'),
(478, 'https://lorempixel.com/250/250/?17390', 0, 8, '2018-11-21 10:06:23', '2018-11-21 10:06:23'),
(479, 'https://lorempixel.com/250/250/?48861', 0, 8, '2018-11-21 10:06:23', '2018-11-21 10:06:23'),
(480, 'https://lorempixel.com/250/250/?24375', 0, 8, '2018-11-21 10:06:23', '2018-11-21 10:06:23'),
(481, 'https://lorempixel.com/250/250/?79492', 0, 9, '2018-11-21 10:06:23', '2018-11-21 10:06:23'),
(482, 'https://lorempixel.com/250/250/?93286', 0, 9, '2018-11-21 10:06:24', '2018-11-21 10:06:24'),
(483, 'https://lorempixel.com/250/250/?76982', 0, 9, '2018-11-21 10:06:24', '2018-11-21 10:06:24'),
(484, 'https://lorempixel.com/250/250/?83361', 0, 9, '2018-11-21 10:06:24', '2018-11-21 10:06:24'),
(485, 'https://lorempixel.com/250/250/?45888', 0, 9, '2018-11-21 10:06:24', '2018-11-21 10:06:24'),
(486, 'https://lorempixel.com/250/250/?21903', 0, 9, '2018-11-21 10:06:24', '2018-11-21 10:06:24'),
(487, 'https://lorempixel.com/250/250/?16446', 0, 9, '2018-11-21 10:06:24', '2018-11-21 10:06:24'),
(488, 'https://lorempixel.com/250/250/?18397', 0, 9, '2018-11-21 10:06:24', '2018-11-21 10:06:24'),
(489, 'https://lorempixel.com/250/250/?15003', 0, 9, '2018-11-21 10:06:24', '2018-11-21 10:06:24'),
(490, 'https://lorempixel.com/250/250/?37759', 0, 9, '2018-11-21 10:06:24', '2018-11-21 10:06:24'),
(491, 'https://lorempixel.com/250/250/?85258', 0, 9, '2018-11-21 10:06:24', '2018-11-21 10:06:24'),
(492, 'https://lorempixel.com/250/250/?14898', 0, 9, '2018-11-21 10:06:24', '2018-11-21 10:06:24'),
(493, 'https://lorempixel.com/250/250/?93396', 0, 9, '2018-11-21 10:06:24', '2018-11-21 10:06:24'),
(494, 'https://lorempixel.com/250/250/?44773', 0, 9, '2018-11-21 10:06:24', '2018-11-21 10:06:24'),
(495, 'https://lorempixel.com/250/250/?12411', 0, 9, '2018-11-21 10:06:24', '2018-11-21 10:06:24'),
(496, 'https://lorempixel.com/250/250/?16111', 0, 9, '2018-11-21 10:06:24', '2018-11-21 10:06:24'),
(497, 'https://lorempixel.com/250/250/?51066', 0, 9, '2018-11-21 10:06:25', '2018-11-21 10:06:25'),
(498, 'https://lorempixel.com/250/250/?94236', 0, 9, '2018-11-21 10:06:25', '2018-11-21 10:06:25'),
(499, 'https://lorempixel.com/250/250/?77639', 0, 9, '2018-11-21 10:06:25', '2018-11-21 10:06:25'),
(500, 'https://lorempixel.com/250/250/?56960', 0, 9, '2018-11-21 10:06:25', '2018-11-21 10:06:25'),
(501, 'https://lorempixel.com/250/250/?67247', 0, 9, '2018-11-21 10:06:25', '2018-11-21 10:06:25'),
(502, 'https://lorempixel.com/250/250/?53795', 0, 9, '2018-11-21 10:06:25', '2018-11-21 10:06:25'),
(503, 'https://lorempixel.com/250/250/?78049', 0, 9, '2018-11-21 10:06:25', '2018-11-21 10:06:25'),
(504, 'https://lorempixel.com/250/250/?44934', 0, 9, '2018-11-21 10:06:25', '2018-11-21 10:06:25'),
(505, 'https://lorempixel.com/250/250/?47798', 0, 9, '2018-11-21 10:06:25', '2018-11-21 10:06:25'),
(506, 'https://lorempixel.com/250/250/?76580', 0, 9, '2018-11-21 10:06:25', '2018-11-21 10:06:25'),
(507, 'https://lorempixel.com/250/250/?23958', 0, 9, '2018-11-21 10:06:25', '2018-11-21 10:06:25'),
(508, 'https://lorempixel.com/250/250/?41278', 0, 9, '2018-11-21 10:06:25', '2018-11-21 10:06:25'),
(509, 'https://lorempixel.com/250/250/?79185', 0, 9, '2018-11-21 10:06:25', '2018-11-21 10:06:25'),
(510, 'https://lorempixel.com/250/250/?10316', 0, 9, '2018-11-21 10:06:25', '2018-11-21 10:06:25');
INSERT INTO `product_imagens` (`id`, `image`, `featured`, `product_id`, `created_at`, `updated_at`) VALUES
(511, 'https://lorempixel.com/250/250/?17845', 0, 9, '2018-11-21 10:06:25', '2018-11-21 10:06:25'),
(512, 'https://lorempixel.com/250/250/?13711', 0, 9, '2018-11-21 10:06:25', '2018-11-21 10:06:25'),
(513, 'https://lorempixel.com/250/250/?73106', 0, 9, '2018-11-21 10:06:25', '2018-11-21 10:06:25'),
(514, 'https://lorempixel.com/250/250/?28657', 0, 9, '2018-11-21 10:06:25', '2018-11-21 10:06:25'),
(515, 'https://lorempixel.com/250/250/?31824', 0, 9, '2018-11-21 10:06:25', '2018-11-21 10:06:25'),
(516, 'https://lorempixel.com/250/250/?63380', 0, 9, '2018-11-21 10:06:25', '2018-11-21 10:06:25'),
(517, 'https://lorempixel.com/250/250/?11953', 0, 9, '2018-11-21 10:06:26', '2018-11-21 10:06:26'),
(518, 'https://lorempixel.com/250/250/?74099', 0, 9, '2018-11-21 10:06:26', '2018-11-21 10:06:26'),
(519, 'https://lorempixel.com/250/250/?41825', 0, 9, '2018-11-21 10:06:26', '2018-11-21 10:06:26'),
(520, 'https://lorempixel.com/250/250/?58873', 0, 9, '2018-11-21 10:06:26', '2018-11-21 10:06:26'),
(521, 'https://lorempixel.com/250/250/?19347', 0, 9, '2018-11-21 10:06:26', '2018-11-21 10:06:26'),
(522, 'https://lorempixel.com/250/250/?95620', 0, 9, '2018-11-21 10:06:26', '2018-11-21 10:06:26'),
(523, 'https://lorempixel.com/250/250/?43752', 0, 9, '2018-11-21 10:06:26', '2018-11-21 10:06:26'),
(524, 'https://lorempixel.com/250/250/?99232', 0, 9, '2018-11-21 10:06:26', '2018-11-21 10:06:26'),
(525, 'https://lorempixel.com/250/250/?69312', 0, 9, '2018-11-21 10:06:26', '2018-11-21 10:06:26'),
(526, 'https://lorempixel.com/250/250/?26233', 0, 9, '2018-11-21 10:06:26', '2018-11-21 10:06:26'),
(527, 'https://lorempixel.com/250/250/?37332', 0, 9, '2018-11-21 10:06:26', '2018-11-21 10:06:26'),
(528, 'https://lorempixel.com/250/250/?50710', 0, 9, '2018-11-21 10:06:26', '2018-11-21 10:06:26'),
(529, 'https://lorempixel.com/250/250/?46070', 0, 9, '2018-11-21 10:06:26', '2018-11-21 10:06:26'),
(530, 'https://lorempixel.com/250/250/?20603', 0, 9, '2018-11-21 10:06:26', '2018-11-21 10:06:26'),
(531, 'https://lorempixel.com/250/250/?24988', 0, 9, '2018-11-21 10:06:26', '2018-11-21 10:06:26'),
(532, 'https://lorempixel.com/250/250/?88217', 0, 9, '2018-11-21 10:06:26', '2018-11-21 10:06:26'),
(533, 'https://lorempixel.com/250/250/?69323', 0, 9, '2018-11-21 10:06:26', '2018-11-21 10:06:26'),
(534, 'https://lorempixel.com/250/250/?30278', 0, 9, '2018-11-21 10:06:26', '2018-11-21 10:06:26'),
(535, 'https://lorempixel.com/250/250/?67759', 0, 9, '2018-11-21 10:06:26', '2018-11-21 10:06:26'),
(536, 'https://lorempixel.com/250/250/?73816', 0, 9, '2018-11-21 10:06:26', '2018-11-21 10:06:26'),
(537, 'https://lorempixel.com/250/250/?32445', 0, 9, '2018-11-21 10:06:26', '2018-11-21 10:06:26'),
(538, 'https://lorempixel.com/250/250/?35407', 0, 9, '2018-11-21 10:06:26', '2018-11-21 10:06:26'),
(539, 'https://lorempixel.com/250/250/?37732', 0, 9, '2018-11-21 10:06:26', '2018-11-21 10:06:26'),
(540, 'https://lorempixel.com/250/250/?33529', 0, 9, '2018-11-21 10:06:26', '2018-11-21 10:06:26'),
(541, 'https://lorempixel.com/250/250/?30562', 0, 10, '2018-11-21 10:06:27', '2018-11-21 10:06:27'),
(542, 'https://lorempixel.com/250/250/?95142', 0, 10, '2018-11-21 10:06:27', '2018-11-21 10:06:27'),
(543, 'https://lorempixel.com/250/250/?28751', 0, 10, '2018-11-21 10:06:27', '2018-11-21 10:06:27'),
(544, 'https://lorempixel.com/250/250/?78795', 0, 10, '2018-11-21 10:06:27', '2018-11-21 10:06:27'),
(545, 'https://lorempixel.com/250/250/?23907', 0, 10, '2018-11-21 10:06:27', '2018-11-21 10:06:27'),
(546, 'https://lorempixel.com/250/250/?39791', 0, 10, '2018-11-21 10:06:27', '2018-11-21 10:06:27'),
(547, 'https://lorempixel.com/250/250/?67416', 0, 10, '2018-11-21 10:06:27', '2018-11-21 10:06:27'),
(548, 'https://lorempixel.com/250/250/?76497', 0, 10, '2018-11-21 10:06:27', '2018-11-21 10:06:27'),
(549, 'https://lorempixel.com/250/250/?19051', 0, 10, '2018-11-21 10:06:27', '2018-11-21 10:06:27'),
(550, 'https://lorempixel.com/250/250/?54728', 0, 10, '2018-11-21 10:06:27', '2018-11-21 10:06:27'),
(551, 'https://lorempixel.com/250/250/?33980', 0, 10, '2018-11-21 10:06:27', '2018-11-21 10:06:27'),
(552, 'https://lorempixel.com/250/250/?65348', 0, 10, '2018-11-21 10:06:27', '2018-11-21 10:06:27'),
(553, 'https://lorempixel.com/250/250/?67175', 0, 10, '2018-11-21 10:06:27', '2018-11-21 10:06:27'),
(554, 'https://lorempixel.com/250/250/?55186', 0, 10, '2018-11-21 10:06:27', '2018-11-21 10:06:27'),
(555, 'https://lorempixel.com/250/250/?81368', 0, 10, '2018-11-21 10:06:27', '2018-11-21 10:06:27'),
(556, 'https://lorempixel.com/250/250/?29405', 0, 10, '2018-11-21 10:06:27', '2018-11-21 10:06:27'),
(557, 'https://lorempixel.com/250/250/?23511', 0, 10, '2018-11-21 10:06:27', '2018-11-21 10:06:27'),
(558, 'https://lorempixel.com/250/250/?11423', 0, 10, '2018-11-21 10:06:27', '2018-11-21 10:06:27'),
(559, 'https://lorempixel.com/250/250/?58268', 0, 10, '2018-11-21 10:06:27', '2018-11-21 10:06:27'),
(560, 'https://lorempixel.com/250/250/?61583', 0, 10, '2018-11-21 10:06:27', '2018-11-21 10:06:27'),
(561, 'https://lorempixel.com/250/250/?66803', 0, 10, '2018-11-21 10:06:27', '2018-11-21 10:06:27'),
(562, 'https://lorempixel.com/250/250/?85515', 0, 10, '2018-11-21 10:06:27', '2018-11-21 10:06:27'),
(563, 'https://lorempixel.com/250/250/?43414', 0, 10, '2018-11-21 10:06:27', '2018-11-21 10:06:27'),
(564, 'https://lorempixel.com/250/250/?27653', 0, 10, '2018-11-21 10:06:28', '2018-11-21 10:06:28'),
(565, 'https://lorempixel.com/250/250/?99610', 0, 10, '2018-11-21 10:06:28', '2018-11-21 10:06:28'),
(566, 'https://lorempixel.com/250/250/?88841', 0, 10, '2018-11-21 10:06:28', '2018-11-21 10:06:28'),
(567, 'https://lorempixel.com/250/250/?75172', 0, 10, '2018-11-21 10:06:28', '2018-11-21 10:06:28'),
(568, 'https://lorempixel.com/250/250/?24034', 0, 10, '2018-11-21 10:06:28', '2018-11-21 10:06:28'),
(569, 'https://lorempixel.com/250/250/?43054', 0, 10, '2018-11-21 10:06:28', '2018-11-21 10:06:28'),
(570, 'https://lorempixel.com/250/250/?43235', 0, 10, '2018-11-21 10:06:28', '2018-11-21 10:06:28'),
(571, 'https://lorempixel.com/250/250/?30302', 0, 10, '2018-11-21 10:06:28', '2018-11-21 10:06:28'),
(572, 'https://lorempixel.com/250/250/?40533', 0, 10, '2018-11-21 10:06:28', '2018-11-21 10:06:28'),
(573, 'https://lorempixel.com/250/250/?87114', 0, 10, '2018-11-21 10:06:28', '2018-11-21 10:06:28'),
(574, 'https://lorempixel.com/250/250/?11049', 0, 10, '2018-11-21 10:06:28', '2018-11-21 10:06:28'),
(575, 'https://lorempixel.com/250/250/?90718', 0, 10, '2018-11-21 10:06:28', '2018-11-21 10:06:28'),
(576, 'https://lorempixel.com/250/250/?14432', 0, 10, '2018-11-21 10:06:28', '2018-11-21 10:06:28'),
(577, 'https://lorempixel.com/250/250/?15516', 0, 10, '2018-11-21 10:06:28', '2018-11-21 10:06:28'),
(578, 'https://lorempixel.com/250/250/?69414', 0, 10, '2018-11-21 10:06:28', '2018-11-21 10:06:28'),
(579, 'https://lorempixel.com/250/250/?73689', 0, 10, '2018-11-21 10:06:29', '2018-11-21 10:06:29'),
(580, 'https://lorempixel.com/250/250/?56823', 0, 10, '2018-11-21 10:06:29', '2018-11-21 10:06:29'),
(581, 'https://lorempixel.com/250/250/?31531', 0, 10, '2018-11-21 10:06:29', '2018-11-21 10:06:29'),
(582, 'https://lorempixel.com/250/250/?13928', 0, 10, '2018-11-21 10:06:29', '2018-11-21 10:06:29'),
(583, 'https://lorempixel.com/250/250/?37925', 0, 10, '2018-11-21 10:06:29', '2018-11-21 10:06:29'),
(584, 'https://lorempixel.com/250/250/?74020', 0, 10, '2018-11-21 10:06:29', '2018-11-21 10:06:29'),
(585, 'https://lorempixel.com/250/250/?24964', 0, 10, '2018-11-21 10:06:29', '2018-11-21 10:06:29'),
(586, 'https://lorempixel.com/250/250/?32653', 0, 10, '2018-11-21 10:06:29', '2018-11-21 10:06:29'),
(587, 'https://lorempixel.com/250/250/?56178', 0, 10, '2018-11-21 10:06:29', '2018-11-21 10:06:29'),
(588, 'https://lorempixel.com/250/250/?96267', 0, 10, '2018-11-21 10:06:29', '2018-11-21 10:06:29'),
(589, 'https://lorempixel.com/250/250/?91475', 0, 10, '2018-11-21 10:06:29', '2018-11-21 10:06:29'),
(590, 'https://lorempixel.com/250/250/?37977', 0, 10, '2018-11-21 10:06:29', '2018-11-21 10:06:29'),
(591, 'https://lorempixel.com/250/250/?33492', 0, 10, '2018-11-21 10:06:29', '2018-11-21 10:06:29'),
(592, 'https://lorempixel.com/250/250/?68975', 0, 10, '2018-11-21 10:06:29', '2018-11-21 10:06:29'),
(593, 'https://lorempixel.com/250/250/?14713', 0, 10, '2018-11-21 10:06:29', '2018-11-21 10:06:29'),
(594, 'https://lorempixel.com/250/250/?59834', 0, 10, '2018-11-21 10:06:29', '2018-11-21 10:06:29'),
(595, 'https://lorempixel.com/250/250/?13887', 0, 10, '2018-11-21 10:06:29', '2018-11-21 10:06:29'),
(596, 'https://lorempixel.com/250/250/?62163', 0, 10, '2018-11-21 10:06:30', '2018-11-21 10:06:30'),
(597, 'https://lorempixel.com/250/250/?89814', 0, 10, '2018-11-21 10:06:30', '2018-11-21 10:06:30'),
(598, 'https://lorempixel.com/250/250/?46456', 0, 10, '2018-11-21 10:06:30', '2018-11-21 10:06:30'),
(599, 'https://lorempixel.com/250/250/?26379', 0, 10, '2018-11-21 10:06:30', '2018-11-21 10:06:30'),
(600, 'https://lorempixel.com/250/250/?92247', 0, 10, '2018-11-21 10:06:30', '2018-11-21 10:06:30'),
(601, 'https://lorempixel.com/250/250/?36760', 0, 11, '2018-11-21 10:06:30', '2018-11-21 10:06:30'),
(602, 'https://lorempixel.com/250/250/?41996', 0, 11, '2018-11-21 10:06:30', '2018-11-21 10:06:30'),
(603, 'https://lorempixel.com/250/250/?37287', 0, 11, '2018-11-21 10:06:30', '2018-11-21 10:06:30'),
(604, 'https://lorempixel.com/250/250/?80550', 0, 11, '2018-11-21 10:06:30', '2018-11-21 10:06:30'),
(605, 'https://lorempixel.com/250/250/?91429', 0, 11, '2018-11-21 10:06:30', '2018-11-21 10:06:30'),
(606, 'https://lorempixel.com/250/250/?19458', 0, 11, '2018-11-21 10:06:30', '2018-11-21 10:06:30'),
(607, 'https://lorempixel.com/250/250/?98430', 0, 11, '2018-11-21 10:06:30', '2018-11-21 10:06:30'),
(608, 'https://lorempixel.com/250/250/?14069', 0, 11, '2018-11-21 10:06:30', '2018-11-21 10:06:30'),
(609, 'https://lorempixel.com/250/250/?47481', 0, 11, '2018-11-21 10:06:30', '2018-11-21 10:06:30'),
(610, 'https://lorempixel.com/250/250/?33724', 0, 11, '2018-11-21 10:06:30', '2018-11-21 10:06:30'),
(611, 'https://lorempixel.com/250/250/?28364', 0, 11, '2018-11-21 10:06:30', '2018-11-21 10:06:30'),
(612, 'https://lorempixel.com/250/250/?84360', 0, 11, '2018-11-21 10:06:30', '2018-11-21 10:06:30'),
(613, 'https://lorempixel.com/250/250/?84099', 0, 11, '2018-11-21 10:06:30', '2018-11-21 10:06:30'),
(614, 'https://lorempixel.com/250/250/?31458', 0, 11, '2018-11-21 10:06:31', '2018-11-21 10:06:31'),
(615, 'https://lorempixel.com/250/250/?80365', 0, 11, '2018-11-21 10:06:31', '2018-11-21 10:06:31'),
(616, 'https://lorempixel.com/250/250/?12707', 0, 11, '2018-11-21 10:06:31', '2018-11-21 10:06:31'),
(617, 'https://lorempixel.com/250/250/?98437', 0, 11, '2018-11-21 10:06:31', '2018-11-21 10:06:31'),
(618, 'https://lorempixel.com/250/250/?87891', 0, 11, '2018-11-21 10:06:31', '2018-11-21 10:06:31'),
(619, 'https://lorempixel.com/250/250/?94950', 0, 11, '2018-11-21 10:06:31', '2018-11-21 10:06:31'),
(620, 'https://lorempixel.com/250/250/?32692', 0, 11, '2018-11-21 10:06:31', '2018-11-21 10:06:31'),
(621, 'https://lorempixel.com/250/250/?86727', 0, 11, '2018-11-21 10:06:31', '2018-11-21 10:06:31'),
(622, 'https://lorempixel.com/250/250/?44474', 0, 11, '2018-11-21 10:06:31', '2018-11-21 10:06:31'),
(623, 'https://lorempixel.com/250/250/?40307', 0, 11, '2018-11-21 10:06:31', '2018-11-21 10:06:31'),
(624, 'https://lorempixel.com/250/250/?15134', 0, 11, '2018-11-21 10:06:31', '2018-11-21 10:06:31'),
(625, 'https://lorempixel.com/250/250/?62410', 0, 11, '2018-11-21 10:06:31', '2018-11-21 10:06:31'),
(626, 'https://lorempixel.com/250/250/?99477', 0, 11, '2018-11-21 10:06:31', '2018-11-21 10:06:31'),
(627, 'https://lorempixel.com/250/250/?95878', 0, 11, '2018-11-21 10:06:31', '2018-11-21 10:06:31'),
(628, 'https://lorempixel.com/250/250/?34994', 0, 11, '2018-11-21 10:06:32', '2018-11-21 10:06:32'),
(629, 'https://lorempixel.com/250/250/?31039', 0, 11, '2018-11-21 10:06:32', '2018-11-21 10:06:32'),
(630, 'https://lorempixel.com/250/250/?67423', 0, 11, '2018-11-21 10:06:32', '2018-11-21 10:06:32'),
(631, 'https://lorempixel.com/250/250/?52995', 0, 11, '2018-11-21 10:06:32', '2018-11-21 10:06:32'),
(632, 'https://lorempixel.com/250/250/?48145', 0, 11, '2018-11-21 10:06:32', '2018-11-21 10:06:32'),
(633, 'https://lorempixel.com/250/250/?52822', 0, 11, '2018-11-21 10:06:32', '2018-11-21 10:06:32'),
(634, 'https://lorempixel.com/250/250/?55396', 0, 11, '2018-11-21 10:06:32', '2018-11-21 10:06:32'),
(635, 'https://lorempixel.com/250/250/?96258', 0, 11, '2018-11-21 10:06:32', '2018-11-21 10:06:32'),
(636, 'https://lorempixel.com/250/250/?73547', 0, 11, '2018-11-21 10:06:32', '2018-11-21 10:06:32'),
(637, 'https://lorempixel.com/250/250/?86303', 0, 11, '2018-11-21 10:06:32', '2018-11-21 10:06:32'),
(638, 'https://lorempixel.com/250/250/?21591', 0, 11, '2018-11-21 10:06:32', '2018-11-21 10:06:32'),
(639, 'https://lorempixel.com/250/250/?67666', 0, 11, '2018-11-21 10:06:32', '2018-11-21 10:06:32'),
(640, 'https://lorempixel.com/250/250/?73903', 0, 11, '2018-11-21 10:06:32', '2018-11-21 10:06:32'),
(641, 'https://lorempixel.com/250/250/?59740', 0, 11, '2018-11-21 10:06:32', '2018-11-21 10:06:32'),
(642, 'https://lorempixel.com/250/250/?46027', 0, 11, '2018-11-21 10:06:32', '2018-11-21 10:06:32'),
(643, 'https://lorempixel.com/250/250/?42016', 0, 11, '2018-11-21 10:06:32', '2018-11-21 10:06:32'),
(644, 'https://lorempixel.com/250/250/?17075', 0, 11, '2018-11-21 10:06:32', '2018-11-21 10:06:32'),
(645, 'https://lorempixel.com/250/250/?95260', 0, 11, '2018-11-21 10:06:32', '2018-11-21 10:06:32'),
(646, 'https://lorempixel.com/250/250/?77602', 0, 11, '2018-11-21 10:06:33', '2018-11-21 10:06:33'),
(647, 'https://lorempixel.com/250/250/?69619', 0, 11, '2018-11-21 10:06:33', '2018-11-21 10:06:33'),
(648, 'https://lorempixel.com/250/250/?42476', 0, 11, '2018-11-21 10:06:33', '2018-11-21 10:06:33'),
(649, 'https://lorempixel.com/250/250/?19740', 0, 11, '2018-11-21 10:06:33', '2018-11-21 10:06:33'),
(650, 'https://lorempixel.com/250/250/?13027', 0, 11, '2018-11-21 10:06:33', '2018-11-21 10:06:33'),
(651, 'https://lorempixel.com/250/250/?25166', 0, 11, '2018-11-21 10:06:33', '2018-11-21 10:06:33'),
(652, 'https://lorempixel.com/250/250/?44178', 0, 11, '2018-11-21 10:06:33', '2018-11-21 10:06:33'),
(653, 'https://lorempixel.com/250/250/?19414', 0, 11, '2018-11-21 10:06:33', '2018-11-21 10:06:33'),
(654, 'https://lorempixel.com/250/250/?90461', 0, 11, '2018-11-21 10:06:33', '2018-11-21 10:06:33'),
(655, 'https://lorempixel.com/250/250/?85164', 0, 11, '2018-11-21 10:06:33', '2018-11-21 10:06:33'),
(656, 'https://lorempixel.com/250/250/?93584', 0, 11, '2018-11-21 10:06:33', '2018-11-21 10:06:33'),
(657, 'https://lorempixel.com/250/250/?89895', 0, 11, '2018-11-21 10:06:33', '2018-11-21 10:06:33'),
(658, 'https://lorempixel.com/250/250/?80681', 0, 11, '2018-11-21 10:06:33', '2018-11-21 10:06:33'),
(659, 'https://lorempixel.com/250/250/?93746', 0, 11, '2018-11-21 10:06:33', '2018-11-21 10:06:33'),
(660, 'https://lorempixel.com/250/250/?16766', 0, 11, '2018-11-21 10:06:33', '2018-11-21 10:06:33'),
(661, 'https://lorempixel.com/250/250/?83580', 0, 12, '2018-11-21 10:06:33', '2018-11-21 10:06:33'),
(662, 'https://lorempixel.com/250/250/?63337', 0, 12, '2018-11-21 10:06:34', '2018-11-21 10:06:34'),
(663, 'https://lorempixel.com/250/250/?76232', 0, 12, '2018-11-21 10:06:34', '2018-11-21 10:06:34'),
(664, 'https://lorempixel.com/250/250/?47287', 0, 12, '2018-11-21 10:06:34', '2018-11-21 10:06:34'),
(665, 'https://lorempixel.com/250/250/?76897', 0, 12, '2018-11-21 10:06:34', '2018-11-21 10:06:34'),
(666, 'https://lorempixel.com/250/250/?98556', 0, 12, '2018-11-21 10:06:34', '2018-11-21 10:06:34'),
(667, 'https://lorempixel.com/250/250/?99831', 0, 12, '2018-11-21 10:06:34', '2018-11-21 10:06:34'),
(668, 'https://lorempixel.com/250/250/?46067', 0, 12, '2018-11-21 10:06:34', '2018-11-21 10:06:34'),
(669, 'https://lorempixel.com/250/250/?19835', 0, 12, '2018-11-21 10:06:34', '2018-11-21 10:06:34'),
(670, 'https://lorempixel.com/250/250/?55130', 0, 12, '2018-11-21 10:06:34', '2018-11-21 10:06:34'),
(671, 'https://lorempixel.com/250/250/?57248', 0, 12, '2018-11-21 10:06:34', '2018-11-21 10:06:34'),
(672, 'https://lorempixel.com/250/250/?52447', 0, 12, '2018-11-21 10:06:34', '2018-11-21 10:06:34'),
(673, 'https://lorempixel.com/250/250/?76038', 0, 12, '2018-11-21 10:06:34', '2018-11-21 10:06:34'),
(674, 'https://lorempixel.com/250/250/?92845', 0, 12, '2018-11-21 10:06:34', '2018-11-21 10:06:34'),
(675, 'https://lorempixel.com/250/250/?28693', 0, 12, '2018-11-21 10:06:34', '2018-11-21 10:06:34'),
(676, 'https://lorempixel.com/250/250/?50489', 0, 12, '2018-11-21 10:06:34', '2018-11-21 10:06:34'),
(677, 'https://lorempixel.com/250/250/?53893', 0, 12, '2018-11-21 10:06:34', '2018-11-21 10:06:34'),
(678, 'https://lorempixel.com/250/250/?33198', 0, 12, '2018-11-21 10:06:34', '2018-11-21 10:06:34'),
(679, 'https://lorempixel.com/250/250/?35674', 0, 12, '2018-11-21 10:06:34', '2018-11-21 10:06:34'),
(680, 'https://lorempixel.com/250/250/?18194', 0, 12, '2018-11-21 10:06:34', '2018-11-21 10:06:34'),
(681, 'https://lorempixel.com/250/250/?48370', 0, 12, '2018-11-21 10:06:35', '2018-11-21 10:06:35'),
(682, 'https://lorempixel.com/250/250/?42653', 0, 12, '2018-11-21 10:06:35', '2018-11-21 10:06:35'),
(683, 'https://lorempixel.com/250/250/?83500', 0, 12, '2018-11-21 10:06:35', '2018-11-21 10:06:35'),
(684, 'https://lorempixel.com/250/250/?47209', 0, 12, '2018-11-21 10:06:35', '2018-11-21 10:06:35'),
(685, 'https://lorempixel.com/250/250/?10036', 0, 12, '2018-11-21 10:06:35', '2018-11-21 10:06:35'),
(686, 'https://lorempixel.com/250/250/?36912', 0, 12, '2018-11-21 10:06:35', '2018-11-21 10:06:35'),
(687, 'https://lorempixel.com/250/250/?34150', 0, 12, '2018-11-21 10:06:35', '2018-11-21 10:06:35'),
(688, 'https://lorempixel.com/250/250/?63010', 0, 12, '2018-11-21 10:06:35', '2018-11-21 10:06:35'),
(689, 'https://lorempixel.com/250/250/?17149', 0, 12, '2018-11-21 10:06:35', '2018-11-21 10:06:35'),
(690, 'https://lorempixel.com/250/250/?37319', 0, 12, '2018-11-21 10:06:35', '2018-11-21 10:06:35'),
(691, 'https://lorempixel.com/250/250/?58777', 0, 12, '2018-11-21 10:06:35', '2018-11-21 10:06:35'),
(692, 'https://lorempixel.com/250/250/?56494', 0, 12, '2018-11-21 10:06:35', '2018-11-21 10:06:35'),
(693, 'https://lorempixel.com/250/250/?84930', 0, 12, '2018-11-21 10:06:35', '2018-11-21 10:06:35'),
(694, 'https://lorempixel.com/250/250/?93154', 0, 12, '2018-11-21 10:06:35', '2018-11-21 10:06:35'),
(695, 'https://lorempixel.com/250/250/?25666', 0, 12, '2018-11-21 10:06:36', '2018-11-21 10:06:36'),
(696, 'https://lorempixel.com/250/250/?11588', 0, 12, '2018-11-21 10:06:36', '2018-11-21 10:06:36'),
(697, 'https://lorempixel.com/250/250/?31249', 0, 12, '2018-11-21 10:06:36', '2018-11-21 10:06:36'),
(698, 'https://lorempixel.com/250/250/?63191', 0, 12, '2018-11-21 10:06:36', '2018-11-21 10:06:36'),
(699, 'https://lorempixel.com/250/250/?98551', 0, 12, '2018-11-21 10:06:36', '2018-11-21 10:06:36'),
(700, 'https://lorempixel.com/250/250/?37624', 0, 12, '2018-11-21 10:06:36', '2018-11-21 10:06:36'),
(701, 'https://lorempixel.com/250/250/?60037', 0, 12, '2018-11-21 10:06:36', '2018-11-21 10:06:36'),
(702, 'https://lorempixel.com/250/250/?72657', 0, 12, '2018-11-21 10:06:36', '2018-11-21 10:06:36'),
(703, 'https://lorempixel.com/250/250/?12695', 0, 12, '2018-11-21 10:06:36', '2018-11-21 10:06:36'),
(704, 'https://lorempixel.com/250/250/?76218', 0, 12, '2018-11-21 10:06:36', '2018-11-21 10:06:36'),
(705, 'https://lorempixel.com/250/250/?34026', 0, 12, '2018-11-21 10:06:36', '2018-11-21 10:06:36'),
(706, 'https://lorempixel.com/250/250/?71388', 0, 12, '2018-11-21 10:06:36', '2018-11-21 10:06:36'),
(707, 'https://lorempixel.com/250/250/?93139', 0, 12, '2018-11-21 10:06:36', '2018-11-21 10:06:36'),
(708, 'https://lorempixel.com/250/250/?62734', 0, 12, '2018-11-21 10:06:36', '2018-11-21 10:06:36'),
(709, 'https://lorempixel.com/250/250/?68424', 0, 12, '2018-11-21 10:06:36', '2018-11-21 10:06:36'),
(710, 'https://lorempixel.com/250/250/?21286', 0, 12, '2018-11-21 10:06:36', '2018-11-21 10:06:36'),
(711, 'https://lorempixel.com/250/250/?76703', 0, 12, '2018-11-21 10:06:36', '2018-11-21 10:06:36'),
(712, 'https://lorempixel.com/250/250/?14207', 0, 12, '2018-11-21 10:06:36', '2018-11-21 10:06:36'),
(713, 'https://lorempixel.com/250/250/?81151', 0, 12, '2018-11-21 10:06:37', '2018-11-21 10:06:37'),
(714, 'https://lorempixel.com/250/250/?66659', 0, 12, '2018-11-21 10:06:37', '2018-11-21 10:06:37'),
(715, 'https://lorempixel.com/250/250/?76611', 0, 12, '2018-11-21 10:06:37', '2018-11-21 10:06:37'),
(716, 'https://lorempixel.com/250/250/?45271', 0, 12, '2018-11-21 10:06:37', '2018-11-21 10:06:37'),
(717, 'https://lorempixel.com/250/250/?81321', 0, 12, '2018-11-21 10:06:37', '2018-11-21 10:06:37'),
(718, 'https://lorempixel.com/250/250/?41819', 0, 12, '2018-11-21 10:06:37', '2018-11-21 10:06:37'),
(719, 'https://lorempixel.com/250/250/?29227', 0, 12, '2018-11-21 10:06:37', '2018-11-21 10:06:37'),
(720, 'https://lorempixel.com/250/250/?46974', 0, 12, '2018-11-21 10:06:37', '2018-11-21 10:06:37'),
(721, 'https://lorempixel.com/250/250/?19483', 0, 13, '2018-11-21 10:06:37', '2018-11-21 10:06:37'),
(722, 'https://lorempixel.com/250/250/?39965', 0, 13, '2018-11-21 10:06:37', '2018-11-21 10:06:37'),
(723, 'https://lorempixel.com/250/250/?24814', 0, 13, '2018-11-21 10:06:37', '2018-11-21 10:06:37'),
(724, 'https://lorempixel.com/250/250/?16020', 0, 13, '2018-11-21 10:06:37', '2018-11-21 10:06:37'),
(725, 'https://lorempixel.com/250/250/?15233', 0, 13, '2018-11-21 10:06:37', '2018-11-21 10:06:37'),
(726, 'https://lorempixel.com/250/250/?35314', 0, 13, '2018-11-21 10:06:37', '2018-11-21 10:06:37'),
(727, 'https://lorempixel.com/250/250/?38914', 0, 13, '2018-11-21 10:06:37', '2018-11-21 10:06:37'),
(728, 'https://lorempixel.com/250/250/?90566', 0, 13, '2018-11-21 10:06:37', '2018-11-21 10:06:37'),
(729, 'https://lorempixel.com/250/250/?70350', 0, 13, '2018-11-21 10:06:37', '2018-11-21 10:06:37'),
(730, 'https://lorempixel.com/250/250/?76796', 0, 13, '2018-11-21 10:06:37', '2018-11-21 10:06:37'),
(731, 'https://lorempixel.com/250/250/?76038', 0, 13, '2018-11-21 10:06:37', '2018-11-21 10:06:37'),
(732, 'https://lorempixel.com/250/250/?44289', 0, 13, '2018-11-21 10:06:38', '2018-11-21 10:06:38'),
(733, 'https://lorempixel.com/250/250/?74432', 0, 13, '2018-11-21 10:06:38', '2018-11-21 10:06:38'),
(734, 'https://lorempixel.com/250/250/?72968', 0, 13, '2018-11-21 10:06:38', '2018-11-21 10:06:38'),
(735, 'https://lorempixel.com/250/250/?53894', 0, 13, '2018-11-21 10:06:38', '2018-11-21 10:06:38'),
(736, 'https://lorempixel.com/250/250/?55545', 0, 13, '2018-11-21 10:06:38', '2018-11-21 10:06:38'),
(737, 'https://lorempixel.com/250/250/?42785', 0, 13, '2018-11-21 10:06:38', '2018-11-21 10:06:38'),
(738, 'https://lorempixel.com/250/250/?97204', 0, 13, '2018-11-21 10:06:38', '2018-11-21 10:06:38'),
(739, 'https://lorempixel.com/250/250/?50429', 0, 13, '2018-11-21 10:06:38', '2018-11-21 10:06:38'),
(740, 'https://lorempixel.com/250/250/?29874', 0, 13, '2018-11-21 10:06:38', '2018-11-21 10:06:38'),
(741, 'https://lorempixel.com/250/250/?74180', 0, 13, '2018-11-21 10:06:38', '2018-11-21 10:06:38'),
(742, 'https://lorempixel.com/250/250/?91243', 0, 13, '2018-11-21 10:06:38', '2018-11-21 10:06:38'),
(743, 'https://lorempixel.com/250/250/?43945', 0, 13, '2018-11-21 10:06:38', '2018-11-21 10:06:38'),
(744, 'https://lorempixel.com/250/250/?48454', 0, 13, '2018-11-21 10:06:38', '2018-11-21 10:06:38'),
(745, 'https://lorempixel.com/250/250/?43725', 0, 13, '2018-11-21 10:06:38', '2018-11-21 10:06:38'),
(746, 'https://lorempixel.com/250/250/?46626', 0, 13, '2018-11-21 10:06:38', '2018-11-21 10:06:38'),
(747, 'https://lorempixel.com/250/250/?83994', 0, 13, '2018-11-21 10:06:38', '2018-11-21 10:06:38'),
(748, 'https://lorempixel.com/250/250/?67477', 0, 13, '2018-11-21 10:06:38', '2018-11-21 10:06:38'),
(749, 'https://lorempixel.com/250/250/?69628', 0, 13, '2018-11-21 10:06:39', '2018-11-21 10:06:39'),
(750, 'https://lorempixel.com/250/250/?63562', 0, 13, '2018-11-21 10:06:39', '2018-11-21 10:06:39'),
(751, 'https://lorempixel.com/250/250/?89315', 0, 13, '2018-11-21 10:06:39', '2018-11-21 10:06:39'),
(752, 'https://lorempixel.com/250/250/?36317', 0, 13, '2018-11-21 10:06:39', '2018-11-21 10:06:39'),
(753, 'https://lorempixel.com/250/250/?20628', 0, 13, '2018-11-21 10:06:39', '2018-11-21 10:06:39'),
(754, 'https://lorempixel.com/250/250/?24757', 0, 13, '2018-11-21 10:06:39', '2018-11-21 10:06:39'),
(755, 'https://lorempixel.com/250/250/?67194', 0, 13, '2018-11-21 10:06:39', '2018-11-21 10:06:39'),
(756, 'https://lorempixel.com/250/250/?38769', 0, 13, '2018-11-21 10:06:39', '2018-11-21 10:06:39'),
(757, 'https://lorempixel.com/250/250/?28879', 0, 13, '2018-11-21 10:06:39', '2018-11-21 10:06:39'),
(758, 'https://lorempixel.com/250/250/?85377', 0, 13, '2018-11-21 10:06:39', '2018-11-21 10:06:39'),
(759, 'https://lorempixel.com/250/250/?60201', 0, 13, '2018-11-21 10:06:39', '2018-11-21 10:06:39'),
(760, 'https://lorempixel.com/250/250/?85976', 0, 13, '2018-11-21 10:06:39', '2018-11-21 10:06:39'),
(761, 'https://lorempixel.com/250/250/?30584', 0, 13, '2018-11-21 10:06:39', '2018-11-21 10:06:39'),
(762, 'https://lorempixel.com/250/250/?77657', 0, 13, '2018-11-21 10:06:39', '2018-11-21 10:06:39'),
(763, 'https://lorempixel.com/250/250/?23714', 0, 13, '2018-11-21 10:06:39', '2018-11-21 10:06:39'),
(764, 'https://lorempixel.com/250/250/?96707', 0, 13, '2018-11-21 10:06:40', '2018-11-21 10:06:40'),
(765, 'https://lorempixel.com/250/250/?52589', 0, 13, '2018-11-21 10:06:40', '2018-11-21 10:06:40'),
(766, 'https://lorempixel.com/250/250/?63066', 0, 13, '2018-11-21 10:06:40', '2018-11-21 10:06:40'),
(767, 'https://lorempixel.com/250/250/?38020', 0, 13, '2018-11-21 10:06:40', '2018-11-21 10:06:40'),
(768, 'https://lorempixel.com/250/250/?23722', 0, 13, '2018-11-21 10:06:40', '2018-11-21 10:06:40'),
(769, 'https://lorempixel.com/250/250/?44826', 0, 13, '2018-11-21 10:06:40', '2018-11-21 10:06:40'),
(770, 'https://lorempixel.com/250/250/?77581', 0, 13, '2018-11-21 10:06:40', '2018-11-21 10:06:40'),
(771, 'https://lorempixel.com/250/250/?87137', 0, 13, '2018-11-21 10:06:40', '2018-11-21 10:06:40'),
(772, 'https://lorempixel.com/250/250/?60835', 0, 13, '2018-11-21 10:06:40', '2018-11-21 10:06:40'),
(773, 'https://lorempixel.com/250/250/?13068', 0, 13, '2018-11-21 10:06:40', '2018-11-21 10:06:40'),
(774, 'https://lorempixel.com/250/250/?27348', 0, 13, '2018-11-21 10:06:40', '2018-11-21 10:06:40'),
(775, 'https://lorempixel.com/250/250/?94584', 0, 13, '2018-11-21 10:06:40', '2018-11-21 10:06:40'),
(776, 'https://lorempixel.com/250/250/?43769', 0, 13, '2018-11-21 10:06:40', '2018-11-21 10:06:40'),
(777, 'https://lorempixel.com/250/250/?59967', 0, 13, '2018-11-21 10:06:40', '2018-11-21 10:06:40'),
(778, 'https://lorempixel.com/250/250/?95153', 0, 13, '2018-11-21 10:06:40', '2018-11-21 10:06:40'),
(779, 'https://lorempixel.com/250/250/?47172', 0, 13, '2018-11-21 10:06:40', '2018-11-21 10:06:40'),
(780, 'https://lorempixel.com/250/250/?32665', 0, 13, '2018-11-21 10:06:40', '2018-11-21 10:06:40'),
(781, 'https://lorempixel.com/250/250/?11027', 0, 14, '2018-11-21 10:06:40', '2018-11-21 10:06:40'),
(782, 'https://lorempixel.com/250/250/?49905', 0, 14, '2018-11-21 10:06:41', '2018-11-21 10:06:41'),
(783, 'https://lorempixel.com/250/250/?36514', 0, 14, '2018-11-21 10:06:41', '2018-11-21 10:06:41'),
(784, 'https://lorempixel.com/250/250/?22649', 0, 14, '2018-11-21 10:06:41', '2018-11-21 10:06:41'),
(785, 'https://lorempixel.com/250/250/?86181', 0, 14, '2018-11-21 10:06:41', '2018-11-21 10:06:41'),
(786, 'https://lorempixel.com/250/250/?34951', 0, 14, '2018-11-21 10:06:41', '2018-11-21 10:06:41'),
(787, 'https://lorempixel.com/250/250/?31667', 0, 14, '2018-11-21 10:06:41', '2018-11-21 10:06:41'),
(788, 'https://lorempixel.com/250/250/?96423', 0, 14, '2018-11-21 10:06:41', '2018-11-21 10:06:41'),
(789, 'https://lorempixel.com/250/250/?52970', 0, 14, '2018-11-21 10:06:41', '2018-11-21 10:06:41'),
(790, 'https://lorempixel.com/250/250/?47334', 0, 14, '2018-11-21 10:06:41', '2018-11-21 10:06:41'),
(791, 'https://lorempixel.com/250/250/?96549', 0, 14, '2018-11-21 10:06:41', '2018-11-21 10:06:41'),
(792, 'https://lorempixel.com/250/250/?36427', 0, 14, '2018-11-21 10:06:41', '2018-11-21 10:06:41'),
(793, 'https://lorempixel.com/250/250/?91336', 0, 14, '2018-11-21 10:06:41', '2018-11-21 10:06:41'),
(794, 'https://lorempixel.com/250/250/?75423', 0, 14, '2018-11-21 10:06:41', '2018-11-21 10:06:41'),
(795, 'https://lorempixel.com/250/250/?80618', 0, 14, '2018-11-21 10:06:41', '2018-11-21 10:06:41'),
(796, 'https://lorempixel.com/250/250/?80360', 0, 14, '2018-11-21 10:06:41', '2018-11-21 10:06:41'),
(797, 'https://lorempixel.com/250/250/?90214', 0, 14, '2018-11-21 10:06:41', '2018-11-21 10:06:41'),
(798, 'https://lorempixel.com/250/250/?75668', 0, 14, '2018-11-21 10:06:41', '2018-11-21 10:06:41'),
(799, 'https://lorempixel.com/250/250/?92109', 0, 14, '2018-11-21 10:06:42', '2018-11-21 10:06:42'),
(800, 'https://lorempixel.com/250/250/?55431', 0, 14, '2018-11-21 10:06:42', '2018-11-21 10:06:42'),
(801, 'https://lorempixel.com/250/250/?68718', 0, 14, '2018-11-21 10:06:42', '2018-11-21 10:06:42'),
(802, 'https://lorempixel.com/250/250/?48187', 0, 14, '2018-11-21 10:06:42', '2018-11-21 10:06:42'),
(803, 'https://lorempixel.com/250/250/?49395', 0, 14, '2018-11-21 10:06:42', '2018-11-21 10:06:42'),
(804, 'https://lorempixel.com/250/250/?70438', 0, 14, '2018-11-21 10:06:42', '2018-11-21 10:06:42'),
(805, 'https://lorempixel.com/250/250/?81536', 0, 14, '2018-11-21 10:06:42', '2018-11-21 10:06:42'),
(806, 'https://lorempixel.com/250/250/?52905', 0, 14, '2018-11-21 10:06:42', '2018-11-21 10:06:42'),
(807, 'https://lorempixel.com/250/250/?25875', 0, 14, '2018-11-21 10:06:42', '2018-11-21 10:06:42'),
(808, 'https://lorempixel.com/250/250/?25217', 0, 14, '2018-11-21 10:06:42', '2018-11-21 10:06:42'),
(809, 'https://lorempixel.com/250/250/?65180', 0, 14, '2018-11-21 10:06:42', '2018-11-21 10:06:42'),
(810, 'https://lorempixel.com/250/250/?95661', 0, 14, '2018-11-21 10:06:42', '2018-11-21 10:06:42'),
(811, 'https://lorempixel.com/250/250/?76644', 0, 14, '2018-11-21 10:06:42', '2018-11-21 10:06:42'),
(812, 'https://lorempixel.com/250/250/?77684', 0, 14, '2018-11-21 10:06:42', '2018-11-21 10:06:42'),
(813, 'https://lorempixel.com/250/250/?84038', 0, 14, '2018-11-21 10:06:42', '2018-11-21 10:06:42'),
(814, 'https://lorempixel.com/250/250/?33757', 0, 14, '2018-11-21 10:06:42', '2018-11-21 10:06:42'),
(815, 'https://lorempixel.com/250/250/?91201', 0, 14, '2018-11-21 10:06:42', '2018-11-21 10:06:42'),
(816, 'https://lorempixel.com/250/250/?46267', 0, 14, '2018-11-21 10:06:43', '2018-11-21 10:06:43'),
(817, 'https://lorempixel.com/250/250/?84806', 0, 14, '2018-11-21 10:06:43', '2018-11-21 10:06:43'),
(818, 'https://lorempixel.com/250/250/?92863', 0, 14, '2018-11-21 10:06:43', '2018-11-21 10:06:43'),
(819, 'https://lorempixel.com/250/250/?35633', 0, 14, '2018-11-21 10:06:43', '2018-11-21 10:06:43'),
(820, 'https://lorempixel.com/250/250/?98291', 0, 14, '2018-11-21 10:06:43', '2018-11-21 10:06:43'),
(821, 'https://lorempixel.com/250/250/?23321', 0, 14, '2018-11-21 10:06:43', '2018-11-21 10:06:43'),
(822, 'https://lorempixel.com/250/250/?87049', 0, 14, '2018-11-21 10:06:43', '2018-11-21 10:06:43'),
(823, 'https://lorempixel.com/250/250/?85246', 0, 14, '2018-11-21 10:06:43', '2018-11-21 10:06:43'),
(824, 'https://lorempixel.com/250/250/?16025', 0, 14, '2018-11-21 10:06:43', '2018-11-21 10:06:43'),
(825, 'https://lorempixel.com/250/250/?86518', 0, 14, '2018-11-21 10:06:43', '2018-11-21 10:06:43'),
(826, 'https://lorempixel.com/250/250/?66691', 0, 14, '2018-11-21 10:06:43', '2018-11-21 10:06:43'),
(827, 'https://lorempixel.com/250/250/?74625', 0, 14, '2018-11-21 10:06:43', '2018-11-21 10:06:43'),
(828, 'https://lorempixel.com/250/250/?12532', 0, 14, '2018-11-21 10:06:43', '2018-11-21 10:06:43'),
(829, 'https://lorempixel.com/250/250/?28970', 0, 14, '2018-11-21 10:06:43', '2018-11-21 10:06:43'),
(830, 'https://lorempixel.com/250/250/?41142', 0, 14, '2018-11-21 10:06:43', '2018-11-21 10:06:43'),
(831, 'https://lorempixel.com/250/250/?32180', 0, 14, '2018-11-21 10:06:44', '2018-11-21 10:06:44'),
(832, 'https://lorempixel.com/250/250/?35194', 0, 14, '2018-11-21 10:06:44', '2018-11-21 10:06:44'),
(833, 'https://lorempixel.com/250/250/?18669', 0, 14, '2018-11-21 10:06:44', '2018-11-21 10:06:44'),
(834, 'https://lorempixel.com/250/250/?90041', 0, 14, '2018-11-21 10:06:44', '2018-11-21 10:06:44'),
(835, 'https://lorempixel.com/250/250/?63478', 0, 14, '2018-11-21 10:06:44', '2018-11-21 10:06:44'),
(836, 'https://lorempixel.com/250/250/?11980', 0, 14, '2018-11-21 10:06:44', '2018-11-21 10:06:44'),
(837, 'https://lorempixel.com/250/250/?85678', 0, 14, '2018-11-21 10:06:44', '2018-11-21 10:06:44'),
(838, 'https://lorempixel.com/250/250/?86970', 0, 14, '2018-11-21 10:06:44', '2018-11-21 10:06:44'),
(839, 'https://lorempixel.com/250/250/?80658', 0, 14, '2018-11-21 10:06:44', '2018-11-21 10:06:44'),
(840, 'https://lorempixel.com/250/250/?12932', 0, 14, '2018-11-21 10:06:44', '2018-11-21 10:06:44'),
(841, 'https://lorempixel.com/250/250/?16999', 0, 15, '2018-11-21 10:06:44', '2018-11-21 10:06:44'),
(842, 'https://lorempixel.com/250/250/?66479', 0, 15, '2018-11-21 10:06:44', '2018-11-21 10:06:44'),
(843, 'https://lorempixel.com/250/250/?33032', 0, 15, '2018-11-21 10:06:44', '2018-11-21 10:06:44'),
(844, 'https://lorempixel.com/250/250/?58486', 0, 15, '2018-11-21 10:06:44', '2018-11-21 10:06:44'),
(845, 'https://lorempixel.com/250/250/?28752', 0, 15, '2018-11-21 10:06:44', '2018-11-21 10:06:44'),
(846, 'https://lorempixel.com/250/250/?26752', 0, 15, '2018-11-21 10:06:44', '2018-11-21 10:06:44'),
(847, 'https://lorempixel.com/250/250/?97567', 0, 15, '2018-11-21 10:06:45', '2018-11-21 10:06:45'),
(848, 'https://lorempixel.com/250/250/?98742', 0, 15, '2018-11-21 10:06:45', '2018-11-21 10:06:45'),
(849, 'https://lorempixel.com/250/250/?95909', 0, 15, '2018-11-21 10:06:45', '2018-11-21 10:06:45'),
(850, 'https://lorempixel.com/250/250/?73705', 0, 15, '2018-11-21 10:06:45', '2018-11-21 10:06:45'),
(851, 'https://lorempixel.com/250/250/?51662', 0, 15, '2018-11-21 10:06:45', '2018-11-21 10:06:45'),
(852, 'https://lorempixel.com/250/250/?69879', 0, 15, '2018-11-21 10:06:45', '2018-11-21 10:06:45'),
(853, 'https://lorempixel.com/250/250/?41377', 0, 15, '2018-11-21 10:06:45', '2018-11-21 10:06:45'),
(854, 'https://lorempixel.com/250/250/?67789', 0, 15, '2018-11-21 10:06:45', '2018-11-21 10:06:45'),
(855, 'https://lorempixel.com/250/250/?89545', 0, 15, '2018-11-21 10:06:45', '2018-11-21 10:06:45'),
(856, 'https://lorempixel.com/250/250/?71546', 0, 15, '2018-11-21 10:06:45', '2018-11-21 10:06:45'),
(857, 'https://lorempixel.com/250/250/?65081', 0, 15, '2018-11-21 10:06:45', '2018-11-21 10:06:45'),
(858, 'https://lorempixel.com/250/250/?21363', 0, 15, '2018-11-21 10:06:45', '2018-11-21 10:06:45'),
(859, 'https://lorempixel.com/250/250/?68560', 0, 15, '2018-11-21 10:06:45', '2018-11-21 10:06:45'),
(860, 'https://lorempixel.com/250/250/?94837', 0, 15, '2018-11-21 10:06:45', '2018-11-21 10:06:45'),
(861, 'https://lorempixel.com/250/250/?45767', 0, 15, '2018-11-21 10:06:45', '2018-11-21 10:06:45'),
(862, 'https://lorempixel.com/250/250/?12487', 0, 15, '2018-11-21 10:06:45', '2018-11-21 10:06:45'),
(863, 'https://lorempixel.com/250/250/?14426', 0, 15, '2018-11-21 10:06:45', '2018-11-21 10:06:45'),
(864, 'https://lorempixel.com/250/250/?47394', 0, 15, '2018-11-21 10:06:46', '2018-11-21 10:06:46'),
(865, 'https://lorempixel.com/250/250/?59544', 0, 15, '2018-11-21 10:06:46', '2018-11-21 10:06:46'),
(866, 'https://lorempixel.com/250/250/?44032', 0, 15, '2018-11-21 10:06:46', '2018-11-21 10:06:46'),
(867, 'https://lorempixel.com/250/250/?14160', 0, 15, '2018-11-21 10:06:46', '2018-11-21 10:06:46'),
(868, 'https://lorempixel.com/250/250/?53386', 0, 15, '2018-11-21 10:06:46', '2018-11-21 10:06:46'),
(869, 'https://lorempixel.com/250/250/?14841', 0, 15, '2018-11-21 10:06:46', '2018-11-21 10:06:46'),
(870, 'https://lorempixel.com/250/250/?71375', 0, 15, '2018-11-21 10:06:46', '2018-11-21 10:06:46'),
(871, 'https://lorempixel.com/250/250/?39040', 0, 15, '2018-11-21 10:06:46', '2018-11-21 10:06:46'),
(872, 'https://lorempixel.com/250/250/?86633', 0, 15, '2018-11-21 10:06:46', '2018-11-21 10:06:46'),
(873, 'https://lorempixel.com/250/250/?58085', 0, 15, '2018-11-21 10:06:46', '2018-11-21 10:06:46'),
(874, 'https://lorempixel.com/250/250/?79390', 0, 15, '2018-11-21 10:06:46', '2018-11-21 10:06:46'),
(875, 'https://lorempixel.com/250/250/?71461', 0, 15, '2018-11-21 10:06:46', '2018-11-21 10:06:46'),
(876, 'https://lorempixel.com/250/250/?32699', 0, 15, '2018-11-21 10:06:46', '2018-11-21 10:06:46'),
(877, 'https://lorempixel.com/250/250/?57758', 0, 15, '2018-11-21 10:06:46', '2018-11-21 10:06:46'),
(878, 'https://lorempixel.com/250/250/?20875', 0, 15, '2018-11-21 10:06:46', '2018-11-21 10:06:46'),
(879, 'https://lorempixel.com/250/250/?69850', 0, 15, '2018-11-21 10:06:47', '2018-11-21 10:06:47'),
(880, 'https://lorempixel.com/250/250/?80019', 0, 15, '2018-11-21 10:06:47', '2018-11-21 10:06:47'),
(881, 'https://lorempixel.com/250/250/?34916', 0, 15, '2018-11-21 10:06:47', '2018-11-21 10:06:47'),
(882, 'https://lorempixel.com/250/250/?99703', 0, 15, '2018-11-21 10:06:47', '2018-11-21 10:06:47'),
(883, 'https://lorempixel.com/250/250/?73668', 0, 15, '2018-11-21 10:06:47', '2018-11-21 10:06:47'),
(884, 'https://lorempixel.com/250/250/?11675', 0, 15, '2018-11-21 10:06:47', '2018-11-21 10:06:47'),
(885, 'https://lorempixel.com/250/250/?94793', 0, 15, '2018-11-21 10:06:47', '2018-11-21 10:06:47'),
(886, 'https://lorempixel.com/250/250/?56185', 0, 15, '2018-11-21 10:06:47', '2018-11-21 10:06:47'),
(887, 'https://lorempixel.com/250/250/?63834', 0, 15, '2018-11-21 10:06:47', '2018-11-21 10:06:47'),
(888, 'https://lorempixel.com/250/250/?51987', 0, 15, '2018-11-21 10:06:47', '2018-11-21 10:06:47'),
(889, 'https://lorempixel.com/250/250/?72280', 0, 15, '2018-11-21 10:06:47', '2018-11-21 10:06:47'),
(890, 'https://lorempixel.com/250/250/?46740', 0, 15, '2018-11-21 10:06:47', '2018-11-21 10:06:47'),
(891, 'https://lorempixel.com/250/250/?26007', 0, 15, '2018-11-21 10:06:47', '2018-11-21 10:06:47'),
(892, 'https://lorempixel.com/250/250/?86730', 0, 15, '2018-11-21 10:06:47', '2018-11-21 10:06:47'),
(893, 'https://lorempixel.com/250/250/?16096', 0, 15, '2018-11-21 10:06:47', '2018-11-21 10:06:47'),
(894, 'https://lorempixel.com/250/250/?91385', 0, 15, '2018-11-21 10:06:47', '2018-11-21 10:06:47'),
(895, 'https://lorempixel.com/250/250/?35029', 0, 15, '2018-11-21 10:06:47', '2018-11-21 10:06:47'),
(896, 'https://lorempixel.com/250/250/?57374', 0, 15, '2018-11-21 10:06:47', '2018-11-21 10:06:47'),
(897, 'https://lorempixel.com/250/250/?82846', 0, 15, '2018-11-21 10:06:47', '2018-11-21 10:06:47'),
(898, 'https://lorempixel.com/250/250/?90516', 0, 15, '2018-11-21 10:06:47', '2018-11-21 10:06:47'),
(899, 'https://lorempixel.com/250/250/?27078', 0, 15, '2018-11-21 10:06:47', '2018-11-21 10:06:47'),
(900, 'https://lorempixel.com/250/250/?42250', 0, 15, '2018-11-21 10:06:47', '2018-11-21 10:06:47'),
(901, 'https://lorempixel.com/250/250/?36306', 0, 16, '2018-11-21 10:06:47', '2018-11-21 10:06:47'),
(902, 'https://lorempixel.com/250/250/?97351', 0, 16, '2018-11-21 10:06:47', '2018-11-21 10:06:47'),
(903, 'https://lorempixel.com/250/250/?23014', 0, 16, '2018-11-21 10:06:47', '2018-11-21 10:06:47'),
(904, 'https://lorempixel.com/250/250/?65027', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(905, 'https://lorempixel.com/250/250/?85346', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(906, 'https://lorempixel.com/250/250/?24622', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(907, 'https://lorempixel.com/250/250/?53182', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(908, 'https://lorempixel.com/250/250/?62683', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(909, 'https://lorempixel.com/250/250/?56075', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(910, 'https://lorempixel.com/250/250/?56493', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(911, 'https://lorempixel.com/250/250/?37708', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(912, 'https://lorempixel.com/250/250/?67011', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(913, 'https://lorempixel.com/250/250/?64935', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(914, 'https://lorempixel.com/250/250/?80426', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(915, 'https://lorempixel.com/250/250/?40552', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(916, 'https://lorempixel.com/250/250/?17854', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(917, 'https://lorempixel.com/250/250/?60648', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(918, 'https://lorempixel.com/250/250/?88743', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(919, 'https://lorempixel.com/250/250/?19841', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(920, 'https://lorempixel.com/250/250/?79361', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(921, 'https://lorempixel.com/250/250/?19434', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(922, 'https://lorempixel.com/250/250/?26332', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(923, 'https://lorempixel.com/250/250/?61212', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(924, 'https://lorempixel.com/250/250/?19745', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(925, 'https://lorempixel.com/250/250/?65702', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(926, 'https://lorempixel.com/250/250/?18435', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(927, 'https://lorempixel.com/250/250/?17163', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(928, 'https://lorempixel.com/250/250/?73204', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(929, 'https://lorempixel.com/250/250/?86659', 0, 16, '2018-11-21 10:06:48', '2018-11-21 10:06:48'),
(930, 'https://lorempixel.com/250/250/?18630', 0, 16, '2018-11-21 10:06:49', '2018-11-21 10:06:49'),
(931, 'https://lorempixel.com/250/250/?81362', 0, 16, '2018-11-21 10:06:49', '2018-11-21 10:06:49'),
(932, 'https://lorempixel.com/250/250/?81149', 0, 16, '2018-11-21 10:06:49', '2018-11-21 10:06:49'),
(933, 'https://lorempixel.com/250/250/?93263', 0, 16, '2018-11-21 10:06:49', '2018-11-21 10:06:49'),
(934, 'https://lorempixel.com/250/250/?82151', 0, 16, '2018-11-21 10:06:49', '2018-11-21 10:06:49'),
(935, 'https://lorempixel.com/250/250/?68864', 0, 16, '2018-11-21 10:06:49', '2018-11-21 10:06:49'),
(936, 'https://lorempixel.com/250/250/?65254', 0, 16, '2018-11-21 10:06:49', '2018-11-21 10:06:49'),
(937, 'https://lorempixel.com/250/250/?14372', 0, 16, '2018-11-21 10:06:49', '2018-11-21 10:06:49'),
(938, 'https://lorempixel.com/250/250/?43187', 0, 16, '2018-11-21 10:06:49', '2018-11-21 10:06:49'),
(939, 'https://lorempixel.com/250/250/?26208', 0, 16, '2018-11-21 10:06:49', '2018-11-21 10:06:49'),
(940, 'https://lorempixel.com/250/250/?42559', 0, 16, '2018-11-21 10:06:49', '2018-11-21 10:06:49'),
(941, 'https://lorempixel.com/250/250/?23634', 0, 16, '2018-11-21 10:06:49', '2018-11-21 10:06:49'),
(942, 'https://lorempixel.com/250/250/?20404', 0, 16, '2018-11-21 10:06:49', '2018-11-21 10:06:49'),
(943, 'https://lorempixel.com/250/250/?31016', 0, 16, '2018-11-21 10:06:49', '2018-11-21 10:06:49'),
(944, 'https://lorempixel.com/250/250/?45905', 0, 16, '2018-11-21 10:06:49', '2018-11-21 10:06:49'),
(945, 'https://lorempixel.com/250/250/?47401', 0, 16, '2018-11-21 10:06:49', '2018-11-21 10:06:49'),
(946, 'https://lorempixel.com/250/250/?53330', 0, 16, '2018-11-21 10:06:49', '2018-11-21 10:06:49'),
(947, 'https://lorempixel.com/250/250/?86226', 0, 16, '2018-11-21 10:06:49', '2018-11-21 10:06:49'),
(948, 'https://lorempixel.com/250/250/?99934', 0, 16, '2018-11-21 10:06:49', '2018-11-21 10:06:49'),
(949, 'https://lorempixel.com/250/250/?81034', 0, 16, '2018-11-21 10:06:49', '2018-11-21 10:06:49'),
(950, 'https://lorempixel.com/250/250/?87043', 0, 16, '2018-11-21 10:06:49', '2018-11-21 10:06:49'),
(951, 'https://lorempixel.com/250/250/?58146', 0, 16, '2018-11-21 10:06:49', '2018-11-21 10:06:49'),
(952, 'https://lorempixel.com/250/250/?93245', 0, 16, '2018-11-21 10:06:50', '2018-11-21 10:06:50'),
(953, 'https://lorempixel.com/250/250/?30590', 0, 16, '2018-11-21 10:06:50', '2018-11-21 10:06:50'),
(954, 'https://lorempixel.com/250/250/?86218', 0, 16, '2018-11-21 10:06:50', '2018-11-21 10:06:50'),
(955, 'https://lorempixel.com/250/250/?84017', 0, 16, '2018-11-21 10:06:50', '2018-11-21 10:06:50'),
(956, 'https://lorempixel.com/250/250/?49720', 0, 16, '2018-11-21 10:06:50', '2018-11-21 10:06:50'),
(957, 'https://lorempixel.com/250/250/?68929', 0, 16, '2018-11-21 10:06:50', '2018-11-21 10:06:50'),
(958, 'https://lorempixel.com/250/250/?52083', 0, 16, '2018-11-21 10:06:50', '2018-11-21 10:06:50'),
(959, 'https://lorempixel.com/250/250/?64444', 0, 16, '2018-11-21 10:06:50', '2018-11-21 10:06:50'),
(960, 'https://lorempixel.com/250/250/?18227', 0, 16, '2018-11-21 10:06:50', '2018-11-21 10:06:50'),
(961, 'https://lorempixel.com/250/250/?41871', 0, 17, '2018-11-21 10:06:50', '2018-11-21 10:06:50'),
(962, 'https://lorempixel.com/250/250/?54688', 0, 17, '2018-11-21 10:06:50', '2018-11-21 10:06:50'),
(963, 'https://lorempixel.com/250/250/?25263', 0, 17, '2018-11-21 10:06:50', '2018-11-21 10:06:50'),
(964, 'https://lorempixel.com/250/250/?89749', 0, 17, '2018-11-21 10:06:50', '2018-11-21 10:06:50'),
(965, 'https://lorempixel.com/250/250/?74377', 0, 17, '2018-11-21 10:06:50', '2018-11-21 10:06:50'),
(966, 'https://lorempixel.com/250/250/?77219', 0, 17, '2018-11-21 10:06:50', '2018-11-21 10:06:50'),
(967, 'https://lorempixel.com/250/250/?77184', 0, 17, '2018-11-21 10:06:50', '2018-11-21 10:06:50'),
(968, 'https://lorempixel.com/250/250/?74698', 0, 17, '2018-11-21 10:06:50', '2018-11-21 10:06:50'),
(969, 'https://lorempixel.com/250/250/?70938', 0, 17, '2018-11-21 10:06:50', '2018-11-21 10:06:50'),
(970, 'https://lorempixel.com/250/250/?55720', 0, 17, '2018-11-21 10:06:50', '2018-11-21 10:06:50'),
(971, 'https://lorempixel.com/250/250/?99809', 0, 17, '2018-11-21 10:06:50', '2018-11-21 10:06:50'),
(972, 'https://lorempixel.com/250/250/?74067', 0, 17, '2018-11-21 10:06:51', '2018-11-21 10:06:51'),
(973, 'https://lorempixel.com/250/250/?96339', 0, 17, '2018-11-21 10:06:51', '2018-11-21 10:06:51'),
(974, 'https://lorempixel.com/250/250/?18451', 0, 17, '2018-11-21 10:06:51', '2018-11-21 10:06:51'),
(975, 'https://lorempixel.com/250/250/?53593', 0, 17, '2018-11-21 10:06:51', '2018-11-21 10:06:51'),
(976, 'https://lorempixel.com/250/250/?63916', 0, 17, '2018-11-21 10:06:51', '2018-11-21 10:06:51'),
(977, 'https://lorempixel.com/250/250/?12887', 0, 17, '2018-11-21 10:06:51', '2018-11-21 10:06:51'),
(978, 'https://lorempixel.com/250/250/?22838', 0, 17, '2018-11-21 10:06:51', '2018-11-21 10:06:51'),
(979, 'https://lorempixel.com/250/250/?56654', 0, 17, '2018-11-21 10:06:51', '2018-11-21 10:06:51'),
(980, 'https://lorempixel.com/250/250/?95845', 0, 17, '2018-11-21 10:06:51', '2018-11-21 10:06:51'),
(981, 'https://lorempixel.com/250/250/?76771', 0, 17, '2018-11-21 10:06:51', '2018-11-21 10:06:51'),
(982, 'https://lorempixel.com/250/250/?82101', 0, 17, '2018-11-21 10:06:51', '2018-11-21 10:06:51'),
(983, 'https://lorempixel.com/250/250/?10787', 0, 17, '2018-11-21 10:06:51', '2018-11-21 10:06:51'),
(984, 'https://lorempixel.com/250/250/?20271', 0, 17, '2018-11-21 10:06:51', '2018-11-21 10:06:51'),
(985, 'https://lorempixel.com/250/250/?31959', 0, 17, '2018-11-21 10:06:51', '2018-11-21 10:06:51'),
(986, 'https://lorempixel.com/250/250/?24187', 0, 17, '2018-11-21 10:06:51', '2018-11-21 10:06:51'),
(987, 'https://lorempixel.com/250/250/?79106', 0, 17, '2018-11-21 10:06:51', '2018-11-21 10:06:51'),
(988, 'https://lorempixel.com/250/250/?51024', 0, 17, '2018-11-21 10:06:51', '2018-11-21 10:06:51'),
(989, 'https://lorempixel.com/250/250/?46944', 0, 17, '2018-11-21 10:06:51', '2018-11-21 10:06:51'),
(990, 'https://lorempixel.com/250/250/?36617', 0, 17, '2018-11-21 10:06:51', '2018-11-21 10:06:51'),
(991, 'https://lorempixel.com/250/250/?51479', 0, 17, '2018-11-21 10:06:51', '2018-11-21 10:06:51'),
(992, 'https://lorempixel.com/250/250/?26764', 0, 17, '2018-11-21 10:06:51', '2018-11-21 10:06:51'),
(993, 'https://lorempixel.com/250/250/?46704', 0, 17, '2018-11-21 10:06:51', '2018-11-21 10:06:51'),
(994, 'https://lorempixel.com/250/250/?36762', 0, 17, '2018-11-21 10:06:51', '2018-11-21 10:06:51'),
(995, 'https://lorempixel.com/250/250/?13311', 0, 17, '2018-11-21 10:06:52', '2018-11-21 10:06:52'),
(996, 'https://lorempixel.com/250/250/?64566', 0, 17, '2018-11-21 10:06:52', '2018-11-21 10:06:52'),
(997, 'https://lorempixel.com/250/250/?25767', 0, 17, '2018-11-21 10:06:52', '2018-11-21 10:06:52'),
(998, 'https://lorempixel.com/250/250/?53013', 0, 17, '2018-11-21 10:06:52', '2018-11-21 10:06:52'),
(999, 'https://lorempixel.com/250/250/?35668', 0, 17, '2018-11-21 10:06:52', '2018-11-21 10:06:52'),
(1000, 'https://lorempixel.com/250/250/?59371', 0, 17, '2018-11-21 10:06:52', '2018-11-21 10:06:52'),
(1001, 'https://lorempixel.com/250/250/?28870', 0, 17, '2018-11-21 10:06:52', '2018-11-21 10:06:52'),
(1002, 'https://lorempixel.com/250/250/?27356', 0, 17, '2018-11-21 10:06:52', '2018-11-21 10:06:52'),
(1003, 'https://lorempixel.com/250/250/?41953', 0, 17, '2018-11-21 10:06:52', '2018-11-21 10:06:52'),
(1004, 'https://lorempixel.com/250/250/?80597', 0, 17, '2018-11-21 10:06:52', '2018-11-21 10:06:52'),
(1005, 'https://lorempixel.com/250/250/?21709', 0, 17, '2018-11-21 10:06:52', '2018-11-21 10:06:52'),
(1006, 'https://lorempixel.com/250/250/?94278', 0, 17, '2018-11-21 10:06:52', '2018-11-21 10:06:52'),
(1007, 'https://lorempixel.com/250/250/?27072', 0, 17, '2018-11-21 10:06:52', '2018-11-21 10:06:52'),
(1008, 'https://lorempixel.com/250/250/?98164', 0, 17, '2018-11-21 10:06:52', '2018-11-21 10:06:52'),
(1009, 'https://lorempixel.com/250/250/?81055', 0, 17, '2018-11-21 10:06:52', '2018-11-21 10:06:52'),
(1010, 'https://lorempixel.com/250/250/?34411', 0, 17, '2018-11-21 10:06:52', '2018-11-21 10:06:52'),
(1011, 'https://lorempixel.com/250/250/?25732', 0, 17, '2018-11-21 10:06:52', '2018-11-21 10:06:52'),
(1012, 'https://lorempixel.com/250/250/?39754', 0, 17, '2018-11-21 10:06:52', '2018-11-21 10:06:52'),
(1013, 'https://lorempixel.com/250/250/?91542', 0, 17, '2018-11-21 10:06:52', '2018-11-21 10:06:52'),
(1014, 'https://lorempixel.com/250/250/?26814', 0, 17, '2018-11-21 10:06:52', '2018-11-21 10:06:52');
INSERT INTO `product_imagens` (`id`, `image`, `featured`, `product_id`, `created_at`, `updated_at`) VALUES
(1015, 'https://lorempixel.com/250/250/?70185', 0, 17, '2018-11-21 10:06:52', '2018-11-21 10:06:52'),
(1016, 'https://lorempixel.com/250/250/?33910', 0, 17, '2018-11-21 10:06:52', '2018-11-21 10:06:52'),
(1017, 'https://lorempixel.com/250/250/?79595', 0, 17, '2018-11-21 10:06:52', '2018-11-21 10:06:52'),
(1018, 'https://lorempixel.com/250/250/?27576', 0, 17, '2018-11-21 10:06:52', '2018-11-21 10:06:52'),
(1019, 'https://lorempixel.com/250/250/?76011', 0, 17, '2018-11-21 10:06:53', '2018-11-21 10:06:53'),
(1020, 'https://lorempixel.com/250/250/?11321', 0, 17, '2018-11-21 10:06:53', '2018-11-21 10:06:53'),
(1021, 'https://lorempixel.com/250/250/?41398', 0, 18, '2018-11-21 10:06:53', '2018-11-21 10:06:53'),
(1022, 'https://lorempixel.com/250/250/?57124', 0, 18, '2018-11-21 10:06:53', '2018-11-21 10:06:53'),
(1023, 'https://lorempixel.com/250/250/?32688', 0, 18, '2018-11-21 10:06:53', '2018-11-21 10:06:53'),
(1024, 'https://lorempixel.com/250/250/?54229', 0, 18, '2018-11-21 10:06:53', '2018-11-21 10:06:53'),
(1025, 'https://lorempixel.com/250/250/?66512', 0, 18, '2018-11-21 10:06:53', '2018-11-21 10:06:53'),
(1026, 'https://lorempixel.com/250/250/?66362', 0, 18, '2018-11-21 10:06:53', '2018-11-21 10:06:53'),
(1027, 'https://lorempixel.com/250/250/?83823', 0, 18, '2018-11-21 10:06:53', '2018-11-21 10:06:53'),
(1028, 'https://lorempixel.com/250/250/?56797', 0, 18, '2018-11-21 10:06:53', '2018-11-21 10:06:53'),
(1029, 'https://lorempixel.com/250/250/?25079', 0, 18, '2018-11-21 10:06:53', '2018-11-21 10:06:53'),
(1030, 'https://lorempixel.com/250/250/?96388', 0, 18, '2018-11-21 10:06:53', '2018-11-21 10:06:53'),
(1031, 'https://lorempixel.com/250/250/?27916', 0, 18, '2018-11-21 10:06:53', '2018-11-21 10:06:53'),
(1032, 'https://lorempixel.com/250/250/?25996', 0, 18, '2018-11-21 10:06:53', '2018-11-21 10:06:53'),
(1033, 'https://lorempixel.com/250/250/?25366', 0, 18, '2018-11-21 10:06:53', '2018-11-21 10:06:53'),
(1034, 'https://lorempixel.com/250/250/?67682', 0, 18, '2018-11-21 10:06:53', '2018-11-21 10:06:53'),
(1035, 'https://lorempixel.com/250/250/?94599', 0, 18, '2018-11-21 10:06:53', '2018-11-21 10:06:53'),
(1036, 'https://lorempixel.com/250/250/?94965', 0, 18, '2018-11-21 10:06:53', '2018-11-21 10:06:53'),
(1037, 'https://lorempixel.com/250/250/?53185', 0, 18, '2018-11-21 10:06:53', '2018-11-21 10:06:53'),
(1038, 'https://lorempixel.com/250/250/?88517', 0, 18, '2018-11-21 10:06:53', '2018-11-21 10:06:53'),
(1039, 'https://lorempixel.com/250/250/?66869', 0, 18, '2018-11-21 10:06:53', '2018-11-21 10:06:53'),
(1040, 'https://lorempixel.com/250/250/?18045', 0, 18, '2018-11-21 10:06:53', '2018-11-21 10:06:53'),
(1041, 'https://lorempixel.com/250/250/?44947', 0, 18, '2018-11-21 10:06:53', '2018-11-21 10:06:53'),
(1042, 'https://lorempixel.com/250/250/?77811', 0, 18, '2018-11-21 10:06:53', '2018-11-21 10:06:53'),
(1043, 'https://lorempixel.com/250/250/?16870', 0, 18, '2018-11-21 10:06:54', '2018-11-21 10:06:54'),
(1044, 'https://lorempixel.com/250/250/?92567', 0, 18, '2018-11-21 10:06:54', '2018-11-21 10:06:54'),
(1045, 'https://lorempixel.com/250/250/?32452', 0, 18, '2018-11-21 10:06:54', '2018-11-21 10:06:54'),
(1046, 'https://lorempixel.com/250/250/?34227', 0, 18, '2018-11-21 10:06:54', '2018-11-21 10:06:54'),
(1047, 'https://lorempixel.com/250/250/?40140', 0, 18, '2018-11-21 10:06:54', '2018-11-21 10:06:54'),
(1048, 'https://lorempixel.com/250/250/?76113', 0, 18, '2018-11-21 10:06:54', '2018-11-21 10:06:54'),
(1049, 'https://lorempixel.com/250/250/?59132', 0, 18, '2018-11-21 10:06:54', '2018-11-21 10:06:54'),
(1050, 'https://lorempixel.com/250/250/?17875', 0, 18, '2018-11-21 10:06:54', '2018-11-21 10:06:54'),
(1051, 'https://lorempixel.com/250/250/?14775', 0, 18, '2018-11-21 10:06:54', '2018-11-21 10:06:54'),
(1052, 'https://lorempixel.com/250/250/?54819', 0, 18, '2018-11-21 10:06:54', '2018-11-21 10:06:54'),
(1053, 'https://lorempixel.com/250/250/?91728', 0, 18, '2018-11-21 10:06:54', '2018-11-21 10:06:54'),
(1054, 'https://lorempixel.com/250/250/?44510', 0, 18, '2018-11-21 10:06:54', '2018-11-21 10:06:54'),
(1055, 'https://lorempixel.com/250/250/?13516', 0, 18, '2018-11-21 10:06:54', '2018-11-21 10:06:54'),
(1056, 'https://lorempixel.com/250/250/?93664', 0, 18, '2018-11-21 10:06:54', '2018-11-21 10:06:54'),
(1057, 'https://lorempixel.com/250/250/?72369', 0, 18, '2018-11-21 10:06:54', '2018-11-21 10:06:54'),
(1058, 'https://lorempixel.com/250/250/?50805', 0, 18, '2018-11-21 10:06:54', '2018-11-21 10:06:54'),
(1059, 'https://lorempixel.com/250/250/?57405', 0, 18, '2018-11-21 10:06:54', '2018-11-21 10:06:54'),
(1060, 'https://lorempixel.com/250/250/?49530', 0, 18, '2018-11-21 10:06:54', '2018-11-21 10:06:54'),
(1061, 'https://lorempixel.com/250/250/?58141', 0, 18, '2018-11-21 10:06:54', '2018-11-21 10:06:54'),
(1062, 'https://lorempixel.com/250/250/?94492', 0, 18, '2018-11-21 10:06:54', '2018-11-21 10:06:54'),
(1063, 'https://lorempixel.com/250/250/?35434', 0, 18, '2018-11-21 10:06:54', '2018-11-21 10:06:54'),
(1064, 'https://lorempixel.com/250/250/?41130', 0, 18, '2018-11-21 10:06:54', '2018-11-21 10:06:54'),
(1065, 'https://lorempixel.com/250/250/?88063', 0, 18, '2018-11-21 10:06:54', '2018-11-21 10:06:54'),
(1066, 'https://lorempixel.com/250/250/?35985', 0, 18, '2018-11-21 10:06:54', '2018-11-21 10:06:54'),
(1067, 'https://lorempixel.com/250/250/?99889', 0, 18, '2018-11-21 10:06:54', '2018-11-21 10:06:54'),
(1068, 'https://lorempixel.com/250/250/?67038', 0, 18, '2018-11-21 10:06:55', '2018-11-21 10:06:55'),
(1069, 'https://lorempixel.com/250/250/?27031', 0, 18, '2018-11-21 10:06:55', '2018-11-21 10:06:55'),
(1070, 'https://lorempixel.com/250/250/?68088', 0, 18, '2018-11-21 10:06:55', '2018-11-21 10:06:55'),
(1071, 'https://lorempixel.com/250/250/?55683', 0, 18, '2018-11-21 10:06:55', '2018-11-21 10:06:55'),
(1072, 'https://lorempixel.com/250/250/?18658', 0, 18, '2018-11-21 10:06:55', '2018-11-21 10:06:55'),
(1073, 'https://lorempixel.com/250/250/?86261', 0, 18, '2018-11-21 10:06:55', '2018-11-21 10:06:55'),
(1074, 'https://lorempixel.com/250/250/?40748', 0, 18, '2018-11-21 10:06:55', '2018-11-21 10:06:55'),
(1075, 'https://lorempixel.com/250/250/?25705', 0, 18, '2018-11-21 10:06:55', '2018-11-21 10:06:55'),
(1076, 'https://lorempixel.com/250/250/?69510', 0, 18, '2018-11-21 10:06:55', '2018-11-21 10:06:55'),
(1077, 'https://lorempixel.com/250/250/?78573', 0, 18, '2018-11-21 10:06:55', '2018-11-21 10:06:55'),
(1078, 'https://lorempixel.com/250/250/?49612', 0, 18, '2018-11-21 10:06:55', '2018-11-21 10:06:55'),
(1079, 'https://lorempixel.com/250/250/?43637', 0, 18, '2018-11-21 10:06:55', '2018-11-21 10:06:55'),
(1080, 'https://lorempixel.com/250/250/?54221', 0, 18, '2018-11-21 10:06:55', '2018-11-21 10:06:55'),
(1081, 'https://lorempixel.com/250/250/?90449', 0, 19, '2018-11-21 10:06:55', '2018-11-21 10:06:55'),
(1082, 'https://lorempixel.com/250/250/?49835', 0, 19, '2018-11-21 10:06:55', '2018-11-21 10:06:55'),
(1083, 'https://lorempixel.com/250/250/?30193', 0, 19, '2018-11-21 10:06:55', '2018-11-21 10:06:55'),
(1084, 'https://lorempixel.com/250/250/?17042', 0, 19, '2018-11-21 10:06:55', '2018-11-21 10:06:55'),
(1085, 'https://lorempixel.com/250/250/?22131', 0, 19, '2018-11-21 10:06:55', '2018-11-21 10:06:55'),
(1086, 'https://lorempixel.com/250/250/?59840', 0, 19, '2018-11-21 10:06:55', '2018-11-21 10:06:55'),
(1087, 'https://lorempixel.com/250/250/?94660', 0, 19, '2018-11-21 10:06:55', '2018-11-21 10:06:55'),
(1088, 'https://lorempixel.com/250/250/?22498', 0, 19, '2018-11-21 10:06:55', '2018-11-21 10:06:55'),
(1089, 'https://lorempixel.com/250/250/?42861', 0, 19, '2018-11-21 10:06:55', '2018-11-21 10:06:55'),
(1090, 'https://lorempixel.com/250/250/?90769', 0, 19, '2018-11-21 10:06:55', '2018-11-21 10:06:55'),
(1091, 'https://lorempixel.com/250/250/?99788', 0, 19, '2018-11-21 10:06:55', '2018-11-21 10:06:55'),
(1092, 'https://lorempixel.com/250/250/?22029', 0, 19, '2018-11-21 10:06:56', '2018-11-21 10:06:56'),
(1093, 'https://lorempixel.com/250/250/?42411', 0, 19, '2018-11-21 10:06:56', '2018-11-21 10:06:56'),
(1094, 'https://lorempixel.com/250/250/?19684', 0, 19, '2018-11-21 10:06:56', '2018-11-21 10:06:56'),
(1095, 'https://lorempixel.com/250/250/?98856', 0, 19, '2018-11-21 10:06:56', '2018-11-21 10:06:56'),
(1096, 'https://lorempixel.com/250/250/?56337', 0, 19, '2018-11-21 10:06:56', '2018-11-21 10:06:56'),
(1097, 'https://lorempixel.com/250/250/?82393', 0, 19, '2018-11-21 10:06:56', '2018-11-21 10:06:56'),
(1098, 'https://lorempixel.com/250/250/?13666', 0, 19, '2018-11-21 10:06:56', '2018-11-21 10:06:56'),
(1099, 'https://lorempixel.com/250/250/?77838', 0, 19, '2018-11-21 10:06:56', '2018-11-21 10:06:56'),
(1100, 'https://lorempixel.com/250/250/?21855', 0, 19, '2018-11-21 10:06:56', '2018-11-21 10:06:56'),
(1101, 'https://lorempixel.com/250/250/?14394', 0, 19, '2018-11-21 10:06:56', '2018-11-21 10:06:56'),
(1102, 'https://lorempixel.com/250/250/?85414', 0, 19, '2018-11-21 10:06:56', '2018-11-21 10:06:56'),
(1103, 'https://lorempixel.com/250/250/?21913', 0, 19, '2018-11-21 10:06:56', '2018-11-21 10:06:56'),
(1104, 'https://lorempixel.com/250/250/?97162', 0, 19, '2018-11-21 10:06:56', '2018-11-21 10:06:56'),
(1105, 'https://lorempixel.com/250/250/?50938', 0, 19, '2018-11-21 10:06:56', '2018-11-21 10:06:56'),
(1106, 'https://lorempixel.com/250/250/?13915', 0, 19, '2018-11-21 10:06:56', '2018-11-21 10:06:56'),
(1107, 'https://lorempixel.com/250/250/?47900', 0, 19, '2018-11-21 10:06:56', '2018-11-21 10:06:56'),
(1108, 'https://lorempixel.com/250/250/?85999', 0, 19, '2018-11-21 10:06:56', '2018-11-21 10:06:56'),
(1109, 'https://lorempixel.com/250/250/?53198', 0, 19, '2018-11-21 10:06:56', '2018-11-21 10:06:56'),
(1110, 'https://lorempixel.com/250/250/?33214', 0, 19, '2018-11-21 10:06:56', '2018-11-21 10:06:56'),
(1111, 'https://lorempixel.com/250/250/?37801', 0, 19, '2018-11-21 10:06:56', '2018-11-21 10:06:56'),
(1112, 'https://lorempixel.com/250/250/?41152', 0, 19, '2018-11-21 10:06:56', '2018-11-21 10:06:56'),
(1113, 'https://lorempixel.com/250/250/?31393', 0, 19, '2018-11-21 10:06:56', '2018-11-21 10:06:56'),
(1114, 'https://lorempixel.com/250/250/?37701', 0, 19, '2018-11-21 10:06:56', '2018-11-21 10:06:56'),
(1115, 'https://lorempixel.com/250/250/?98482', 0, 19, '2018-11-21 10:06:56', '2018-11-21 10:06:56'),
(1116, 'https://lorempixel.com/250/250/?56722', 0, 19, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1117, 'https://lorempixel.com/250/250/?61374', 0, 19, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1118, 'https://lorempixel.com/250/250/?49807', 0, 19, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1119, 'https://lorempixel.com/250/250/?30931', 0, 19, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1120, 'https://lorempixel.com/250/250/?15666', 0, 19, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1121, 'https://lorempixel.com/250/250/?79415', 0, 19, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1122, 'https://lorempixel.com/250/250/?83005', 0, 19, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1123, 'https://lorempixel.com/250/250/?50098', 0, 19, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1124, 'https://lorempixel.com/250/250/?46610', 0, 19, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1125, 'https://lorempixel.com/250/250/?33325', 0, 19, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1126, 'https://lorempixel.com/250/250/?44126', 0, 19, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1127, 'https://lorempixel.com/250/250/?34350', 0, 19, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1128, 'https://lorempixel.com/250/250/?39658', 0, 19, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1129, 'https://lorempixel.com/250/250/?73947', 0, 19, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1130, 'https://lorempixel.com/250/250/?80562', 0, 19, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1131, 'https://lorempixel.com/250/250/?21126', 0, 19, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1132, 'https://lorempixel.com/250/250/?35514', 0, 19, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1133, 'https://lorempixel.com/250/250/?86713', 0, 19, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1134, 'https://lorempixel.com/250/250/?60410', 0, 19, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1135, 'https://lorempixel.com/250/250/?18210', 0, 19, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1136, 'https://lorempixel.com/250/250/?83121', 0, 19, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1137, 'https://lorempixel.com/250/250/?49424', 0, 19, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1138, 'https://lorempixel.com/250/250/?80651', 0, 19, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1139, 'https://lorempixel.com/250/250/?99200', 0, 19, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1140, 'https://lorempixel.com/250/250/?36630', 0, 19, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1141, 'https://lorempixel.com/250/250/?52457', 0, 20, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1142, 'https://lorempixel.com/250/250/?86579', 0, 20, '2018-11-21 10:06:57', '2018-11-21 10:06:57'),
(1143, 'https://lorempixel.com/250/250/?30964', 0, 20, '2018-11-21 10:06:58', '2018-11-21 10:06:58'),
(1144, 'https://lorempixel.com/250/250/?21512', 0, 20, '2018-11-21 10:06:58', '2018-11-21 10:06:58'),
(1145, 'https://lorempixel.com/250/250/?91070', 0, 20, '2018-11-21 10:06:58', '2018-11-21 10:06:58'),
(1146, 'https://lorempixel.com/250/250/?85528', 0, 20, '2018-11-21 10:06:58', '2018-11-21 10:06:58'),
(1147, 'https://lorempixel.com/250/250/?69445', 0, 20, '2018-11-21 10:06:58', '2018-11-21 10:06:58'),
(1148, 'https://lorempixel.com/250/250/?97529', 0, 20, '2018-11-21 10:06:58', '2018-11-21 10:06:58'),
(1149, 'https://lorempixel.com/250/250/?77449', 0, 20, '2018-11-21 10:06:58', '2018-11-21 10:06:58'),
(1150, 'https://lorempixel.com/250/250/?31545', 0, 20, '2018-11-21 10:06:58', '2018-11-21 10:06:58'),
(1151, 'https://lorempixel.com/250/250/?50055', 0, 20, '2018-11-21 10:06:58', '2018-11-21 10:06:58'),
(1152, 'https://lorempixel.com/250/250/?81088', 0, 20, '2018-11-21 10:06:58', '2018-11-21 10:06:58'),
(1153, 'https://lorempixel.com/250/250/?63449', 0, 20, '2018-11-21 10:06:58', '2018-11-21 10:06:58'),
(1154, 'https://lorempixel.com/250/250/?40002', 0, 20, '2018-11-21 10:06:58', '2018-11-21 10:06:58'),
(1155, 'https://lorempixel.com/250/250/?30359', 0, 20, '2018-11-21 10:06:58', '2018-11-21 10:06:58'),
(1156, 'https://lorempixel.com/250/250/?99581', 0, 20, '2018-11-21 10:06:58', '2018-11-21 10:06:58'),
(1157, 'https://lorempixel.com/250/250/?64414', 0, 20, '2018-11-21 10:06:58', '2018-11-21 10:06:58'),
(1158, 'https://lorempixel.com/250/250/?21555', 0, 20, '2018-11-21 10:06:58', '2018-11-21 10:06:58'),
(1159, 'https://lorempixel.com/250/250/?31223', 0, 20, '2018-11-21 10:06:58', '2018-11-21 10:06:58'),
(1160, 'https://lorempixel.com/250/250/?92432', 0, 20, '2018-11-21 10:06:58', '2018-11-21 10:06:58'),
(1161, 'https://lorempixel.com/250/250/?82259', 0, 20, '2018-11-21 10:06:58', '2018-11-21 10:06:58'),
(1162, 'https://lorempixel.com/250/250/?56200', 0, 20, '2018-11-21 10:06:58', '2018-11-21 10:06:58'),
(1163, 'https://lorempixel.com/250/250/?12294', 0, 20, '2018-11-21 10:06:58', '2018-11-21 10:06:58'),
(1164, 'https://lorempixel.com/250/250/?86414', 0, 20, '2018-11-21 10:06:58', '2018-11-21 10:06:58'),
(1165, 'https://lorempixel.com/250/250/?50702', 0, 20, '2018-11-21 10:06:58', '2018-11-21 10:06:58'),
(1166, 'https://lorempixel.com/250/250/?66380', 0, 20, '2018-11-21 10:06:58', '2018-11-21 10:06:58'),
(1167, 'https://lorempixel.com/250/250/?12196', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1168, 'https://lorempixel.com/250/250/?58366', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1169, 'https://lorempixel.com/250/250/?53439', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1170, 'https://lorempixel.com/250/250/?24028', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1171, 'https://lorempixel.com/250/250/?17588', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1172, 'https://lorempixel.com/250/250/?61548', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1173, 'https://lorempixel.com/250/250/?69758', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1174, 'https://lorempixel.com/250/250/?38897', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1175, 'https://lorempixel.com/250/250/?47498', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1176, 'https://lorempixel.com/250/250/?98396', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1177, 'https://lorempixel.com/250/250/?82525', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1178, 'https://lorempixel.com/250/250/?66931', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1179, 'https://lorempixel.com/250/250/?99894', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1180, 'https://lorempixel.com/250/250/?72207', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1181, 'https://lorempixel.com/250/250/?59092', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1182, 'https://lorempixel.com/250/250/?70669', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1183, 'https://lorempixel.com/250/250/?83654', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1184, 'https://lorempixel.com/250/250/?18741', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1185, 'https://lorempixel.com/250/250/?50591', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1186, 'https://lorempixel.com/250/250/?36460', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1187, 'https://lorempixel.com/250/250/?57144', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1188, 'https://lorempixel.com/250/250/?96998', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1189, 'https://lorempixel.com/250/250/?54388', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1190, 'https://lorempixel.com/250/250/?89081', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1191, 'https://lorempixel.com/250/250/?57130', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1192, 'https://lorempixel.com/250/250/?38628', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1193, 'https://lorempixel.com/250/250/?87281', 0, 20, '2018-11-21 10:06:59', '2018-11-21 10:06:59'),
(1194, 'https://lorempixel.com/250/250/?14835', 0, 20, '2018-11-21 10:07:00', '2018-11-21 10:07:00'),
(1195, 'https://lorempixel.com/250/250/?90968', 0, 20, '2018-11-21 10:07:00', '2018-11-21 10:07:00'),
(1196, 'https://lorempixel.com/250/250/?73712', 0, 20, '2018-11-21 10:07:00', '2018-11-21 10:07:00'),
(1197, 'https://lorempixel.com/250/250/?90491', 0, 20, '2018-11-21 10:07:00', '2018-11-21 10:07:00'),
(1198, 'https://lorempixel.com/250/250/?50430', 0, 20, '2018-11-21 10:07:00', '2018-11-21 10:07:00'),
(1199, 'https://lorempixel.com/250/250/?74585', 0, 20, '2018-11-21 10:07:00', '2018-11-21 10:07:00'),
(1200, 'https://lorempixel.com/250/250/?12607', 0, 20, '2018-11-21 10:07:00', '2018-11-21 10:07:00'),
(1201, '5bfd7ff72478dconejo.jpg', 0, 1, '2018-11-27 23:33:43', '2018-11-27 23:33:43'),
(1202, '5bfd86589ed5aorycun.jpg', 0, 1, '2018-11-28 00:00:56', '2018-11-28 00:00:56'),
(1203, '5bfd867e2a846orycun.jpg', 0, 1, '2018-11-28 00:01:34', '2018-11-28 00:01:34'),
(1204, '5bfd87a5689f1orycun.jpg', 0, 1, '2018-11-28 00:06:29', '2018-11-28 00:06:29'),
(1205, '5bfd882b4aab4orycun.jpg', 0, 1, '2018-11-28 00:08:43', '2018-11-28 00:08:43'),
(1206, '5bfd887a982b4orycun.jpg', 0, 1, '2018-11-28 00:10:02', '2018-11-28 00:10:02'),
(1207, '5bfd88d7af08forycun.jpg', 0, 1, '2018-11-28 00:11:35', '2018-11-28 00:11:35'),
(1208, '5bfd8a5144b87orycun.jpg', 0, 1, '2018-11-28 00:17:53', '2018-11-28 00:17:53'),
(1209, '5bfd8a599f1da2018-05-05_19-21-58-1322d3eedc01203292018db6155199e7.png', 0, 1, '2018-11-28 00:18:01', '2018-11-28 00:18:01'),
(1210, '5bfddda56b0dd2018-05-05_19-21-58-1322d3eedc01203292018db6155199e7.png', 0, 1, '2018-11-28 06:13:25', '2018-11-28 06:13:25'),
(1211, '5bff302b722ca2018-05-05_19-21-58-1322d3eedc01203292018db6155199e7.png', 0, 1, '2018-11-29 06:17:47', '2018-11-29 06:17:47'),
(1212, '5bff318c11180orycun.jpg', 0, 1, '2018-11-29 06:23:40', '2018-11-29 06:23:40'),
(1213, '5bff32f42c60dorycun.jpg', 0, 1, '2018-11-29 06:29:40', '2018-11-29 06:29:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `produits`
--

CREATE TABLE `produits` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `detail_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` double(8,2) NOT NULL,
  `date` date NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Luisa', 'Luisa@gmail.com', '$2y$10$zK61b6Di/y4t6FdkooGo6OdNmcqNMzn43tlvHXysHvozetKNos.La', 1, '9CpGTgQTnq2VJhRO2CkV1TQZx1EzYBY2pwaSlhBWzFy7nr3SyHOVfzEfrvxD', '2018-11-21 10:05:57', '2018-11-21 10:05:57'),
(2, 'Antonio', 'joan.martinezt01@gmail.com', '$2y$10$5JAh0Y0y1TNx61vDOo7OZu5JfKCZxEvywnuNAUlXongoNCSL0sIu.', 0, 'TJ4HSm8gWhNvQGovOGE7jD5XCHV60pZsgh5fRGwnDoeSp0Urh85FHarfTxCR', '2018-11-21 10:42:17', '2018-11-21 10:42:17');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `availables`
--
ALTER TABLE `availables`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `coins`
--
ALTER TABLE `coins`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `details_product_id_foreign` (`product_id`),
  ADD KEY `details_payment_id_foreign` (`payment_id`),
  ADD KEY `details_discount_id_foreign` (`discount_id`);

--
-- Indices de la tabla `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_coin_id_foreign` (`coin_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product_imagens`
--
ALTER TABLE `product_imagens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_imagens_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_detail_id_foreign` (`detail_id`),
  ADD KEY `sales_user_id_foreign` (`user_id`),
  ADD KEY `sales_employee_id_foreign` (`employee_id`);

--
-- Indices de la tabla `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_sale_id_foreign` (`sale_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `availables`
--
ALTER TABLE `availables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `coins`
--
ALTER TABLE `coins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `details`
--
ALTER TABLE `details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=745;

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `product_imagens`
--
ALTER TABLE `product_imagens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1214;

--
-- AUTO_INCREMENT de la tabla `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `details_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`),
  ADD CONSTRAINT `details_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`),
  ADD CONSTRAINT `details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_coin_id_foreign` FOREIGN KEY (`coin_id`) REFERENCES `coins` (`id`);

--
-- Filtros para la tabla `product_imagens`
--
ALTER TABLE `product_imagens`
  ADD CONSTRAINT `product_imagens_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_detail_id_foreign` FOREIGN KEY (`detail_id`) REFERENCES `details` (`id`),
  ADD CONSTRAINT `sales_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`),
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
