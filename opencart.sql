-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Апр 30 2024 г., 15:15
-- Версия сервера: 5.7.27-30
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `u1826813_opencart`
--

-- --------------------------------------------------------

--
-- Структура таблицы `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(60) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `default` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`, `default`) VALUES
(1, 1, '123', '123', '123', '123', '123', '123', '123', 176, 83, '\"\"', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_address_format`
--

CREATE TABLE `oc_address_format` (
  `address_format_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `address_format` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_address_format`
--

INSERT INTO `oc_address_format` (`address_format_id`, `name`, `address_format`) VALUES
(1, 'Address Format', '{firstname} {lastname}\r\n{address_1}\r\n{city}, {zone}\r\n{country}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_antispam`
--

CREATE TABLE `oc_antispam` (
  `antispam_id` int(11) NOT NULL,
  `keyword` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', '32e8b7b1bb49487f64a4009b645c5a04a6650c5581c41e4556e2d04beb89a3881025c96c8dfe0a79a962cfa309a8e868f73e3a7466c18b6a169980b6763b755fc971202963c7ce6778d0d645a0ef222f44edd8d763f80ec8e398b276ee7e18188d5d5b03a3bc9e80804ae061867c62129d728c304e3fd038ca4eddee6de16de0', 1, '2024-04-23 16:06:36', '2024-04-23 16:06:36');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_article`
--

CREATE TABLE `oc_article` (
  `article_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_article_comment`
--

CREATE TABLE `oc_article_comment` (
  `article_comment_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_article_description`
--

CREATE TABLE `oc_article_description` (
  `article_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_article_to_layout`
--

CREATE TABLE `oc_article_to_layout` (
  `article_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_article_to_store`
--

CREATE TABLE `oc_article_to_store` (
  `article_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(12, 7, 0),
(13, 7, 0),
(14, 7, 0),
(15, 7, 0),
(16, 8, 0),
(17, 8, 0),
(18, 8, 0),
(19, 8, 0),
(20, 9, 0),
(21, 11, 0),
(22, 10, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(12, 1, 'Вид связи с брелком'),
(13, 1, 'Тип кодирования'),
(14, 1, 'Дальность в режиме управления'),
(15, 1, 'Дальность в режиме оповещения'),
(16, 1, 'Защитные функции'),
(17, 1, 'Охранные функции'),
(18, 1, 'Сервисные функции'),
(19, 1, 'Автозапуск двигателя'),
(20, 1, 'Модель'),
(21, 1, 'Гарантия'),
(22, 1, 'Страна производителя');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(7, 1, 'Связь'),
(8, 1, 'Функции'),
(9, 1, 'Модель'),
(10, 1, 'Производитель'),
(11, 1, 'Гарантия');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 0),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(99, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer.info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(100, 7, 1, '12', '', 'catalog/banner/0tb0t00o34hdm6lwb2stqq5qn7x0tvfm.jpg', 0),
(101, 7, 1, '12', '', 'catalog/banner/j528tv0xhwue9w75t6znkicen2p9s87c.jpg', 0),
(102, 8, 1, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(103, 8, 1, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(104, 8, 1, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(105, 8, 1, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(106, 8, 1, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(107, 8, 1, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(108, 8, 1, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(109, 8, 1, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(110, 8, 1, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(111, 8, 1, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(112, 8, 1, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `subscription_plan_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `override` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `api_id`, `customer_id`, `session_id`, `product_id`, `subscription_plan_id`, `option`, `quantity`, `override`, `price`, `date_added`) VALUES
(22, 0, 1, '56a3aa1ea11f6711b4e95daa78', 52, 0, '[]', 1, 0, '0.0000', '2024-04-25 17:26:09'),
(24, 1, 0, 'f76d7523c7943a8fdd8feb7a1e', 50, 0, '[]', 1, 1, '17690.0000', '2024-04-30 08:31:40'),
(25, 1, 0, 'ebdb9e0937e78ebb46df1f98bd', 50, 0, '[]', 1, 1, '17690.0000', '2024-04-30 08:33:06');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(59, '', 0, 1, 1, 0, 1, '2024-04-23 16:45:45', '2024-04-23 16:48:36'),
(60, '', 0, 1, 1, 0, 1, '2024-04-23 16:46:28', '2024-04-23 16:48:16'),
(61, '', 59, 0, 1, 0, 1, '2024-04-23 16:47:33', '2024-04-23 16:47:33'),
(62, '', 59, 0, 1, 0, 1, '2024-04-23 16:48:02', '2024-04-23 16:48:27'),
(63, '', 60, 0, 1, 0, 1, '2024-04-23 18:21:05', '2024-04-23 18:21:05'),
(64, '', 60, 0, 1, 0, 1, '2024-04-23 18:21:20', '2024-04-23 18:21:20'),
(65, '', 60, 0, 1, 0, 1, '2024-04-23 18:21:43', '2024-04-23 18:21:43'),
(66, '', 64, 0, 1, 0, 1, '2024-04-23 19:08:44', '2024-04-23 19:08:44'),
(67, '', 64, 0, 1, 0, 1, '2024-04-23 19:09:32', '2024-04-23 19:09:32'),
(68, '', 0, 1, 1, 0, 1, '2024-04-25 15:15:05', '2024-04-25 15:15:05'),
(69, '', 0, 1, 1, 0, 1, '2024-04-25 15:37:26', '2024-04-25 15:37:26'),
(70, '', 69, 0, 1, 0, 1, '2024-04-25 15:37:59', '2024-04-25 15:37:59'),
(71, '', 69, 0, 1, 0, 1, '2024-04-25 15:38:43', '2024-04-25 15:38:43'),
(72, '', 69, 0, 1, 0, 1, '2024-04-25 15:39:11', '2024-04-25 15:39:11');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(59, 1, 'Автосигнализации и противоугонные системы', '', 'Автосигнализации и противоугонные системы', 'Автосигнализации и противоугонные системы', 'Автосигнализации и противоугонные системы'),
(60, 1, 'Запасные части', '', 'Запасные части', 'Запасные части', 'Запасные части'),
(61, 1, 'Element', '', 'Element', 'Element', 'Element'),
(62, 1, 'Pandora', '', 'Pandora', '', ''),
(63, 1, 'ГРМ', '', 'ГРМ', '', ''),
(64, 1, 'Для ТО', '', 'Для ТО', '', ''),
(65, 1, 'Подвеска', '', 'Подвеска', '', ''),
(66, 1, 'Лампочки', '', 'Лампочки', '', ''),
(67, 1, 'Аккумуляторы', '', 'Аккумуляторы', '', ''),
(68, 1, 'Колесные диски', '', 'Колесные диски', '', ''),
(69, 1, 'Масла', '', 'Масла', '', ''),
(70, 1, 'Моторные масла', '', 'Моторные масла', '', ''),
(71, 1, 'Жидкости ГУР', '', 'Жидкости ГУР', '', ''),
(72, 1, 'Тормозные жидкости', '', 'Тормозные жидкости', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(59, 59, 0),
(60, 60, 0),
(61, 59, 0),
(61, 61, 1),
(62, 59, 0),
(62, 62, 1),
(63, 60, 0),
(63, 63, 1),
(64, 60, 0),
(64, 64, 1),
(65, 60, 0),
(65, 65, 1),
(66, 60, 0),
(66, 64, 1),
(66, 66, 2),
(67, 60, 0),
(67, 64, 1),
(67, 67, 2),
(68, 68, 0),
(69, 69, 0),
(70, 69, 0),
(70, 70, 1),
(71, 69, 0),
(71, 71, 1),
(72, 69, 0),
(72, 72, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format_id` int(11) NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format_id`, `postcode_required`, `status`) VALUES
(176, 'Российская Федерация', 'RU', 'RUS', 1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `uses_total` int(11) NOT NULL,
  `uses_customer` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, 10, 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, 10, 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, 10000, 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_cron`
--

CREATE TABLE `oc_cron` (
  `cron_id` int(11) NOT NULL,
  `code` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `cycle` varchar(12) NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_cron`
--

INSERT INTO `oc_cron` (`cron_id`, `code`, `description`, `cycle`, `action`, `status`, `date_added`, `date_modified`) VALUES
(1, 'currency', '', 'day', 'cron/currency', 1, '2014-09-25 14:40:00', '2014-09-25 14:40:00'),
(2, 'gdpr', '', 'day', 'cron/gdpr', 1, '2014-09-25 14:40:00', '2014-09-25 14:40:00'),
(3, 'subscription', '', 'day', 'cron/subscription', 0, '2014-09-25 14:40:00', '2014-09-25 14:40:00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` int(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Рубль', 'RUB', '', '₽', 0, 1.00000000, 1, '2022-05-24 12:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `custom_field` text NOT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `password`, `custom_field`, `newsletter`, `ip`, `status`, `safe`, `token`, `code`, `date_added`) VALUES
(1, 1, 0, 1, '123', '123', '123@mail.ru', '', '$2y$10$maPo.lJmTgKHS9OKJ2mkeuxIAOa3gmDl9YlYfv/jT9s9lGV3AV5om', '\"\"', 0, '79.126.34.42', 1, 0, '', '', '2024-04-24 20:03:11');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_affiliate`
--

CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(60) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `balance` decimal(15,4) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment_method` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_affiliate_report`
--

CREATE TABLE `oc_customer_affiliate_report` (
  `customer_affiliate_report_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `country` varchar(2) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_approval`
--

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `country` varchar(2) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `store_id`, `ip`, `country`, `date_added`) VALUES
(1, 1, 0, '89.109.44.76', '', '2024-04-24 20:03:11');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_custom_field`
--

INSERT INTO `oc_custom_field` (`custom_field_id`, `type`, `value`, `validation`, `location`, `status`, `sort_order`) VALUES
(1, 'select', '', '', 'account', 0, 1),
(2, 'radio', '', '', 'account', 0, 2),
(3, 'checkbox', '', '', 'account', 0, 3),
(4, 'text', '', '', 'account', 0, 4),
(5, 'textarea', '', '', 'account', 0, 5),
(6, 'file', '', '', 'account', 0, 6),
(7, 'date', '', '', 'account', 0, 7),
(8, 'time', '', '', 'account', 0, 8),
(9, 'datetime', '', '', 'account', 0, 9),
(11, 'checkbox', '', '', 'address', 0, 3),
(12, 'time', '', '', 'address', 0, 8),
(13, 'date', '', '', 'address', 0, 7),
(14, 'datetime', '', '', 'address', 0, 9),
(15, 'file', '', '', 'address', 0, 6),
(16, 'radio', '', '', 'address', 0, 2),
(17, 'select', '', '', 'address', 0, 1),
(18, 'text', '', '', 'address', 0, 4),
(19, 'textarea', '', '', 'address', 0, 5),
(20, 'checkbox', '', '', 'affiliate', 0, 3),
(21, 'date', '', '', 'affiliate', 0, 8),
(22, 'datetime', '', '', 'affiliate', 0, 9),
(23, 'file', '', '', 'affiliate', 0, 6),
(24, 'radio', '', '', 'affiliate', 0, 2),
(25, 'select', '', '', 'affiliate', 0, 1),
(26, 'text', '', '', 'affiliate', 0, 4),
(27, 'textarea', '', '', 'affiliate', 0, 5),
(28, 'time', '', '', 'affiliate', 0, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_custom_field_customer_group`
--

INSERT INTO `oc_custom_field_customer_group` (`custom_field_id`, `customer_group_id`, `required`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1),
(5, 1, 1),
(6, 1, 1),
(7, 1, 1),
(8, 1, 1),
(9, 1, 1),
(11, 1, 1),
(12, 1, 1),
(13, 1, 1),
(14, 1, 1),
(15, 1, 1),
(16, 1, 1),
(17, 1, 1),
(18, 1, 1),
(19, 1, 1),
(20, 1, 1),
(21, 1, 1),
(22, 1, 1),
(23, 1, 1),
(24, 1, 1),
(25, 1, 1),
(26, 1, 1),
(27, 1, 1),
(28, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_custom_field_description`
--

INSERT INTO `oc_custom_field_description` (`custom_field_id`, `language_id`, `name`) VALUES
(1, 1, 'Select'),
(2, 1, 'Radio'),
(3, 1, 'Checkbox'),
(4, 1, 'Text'),
(5, 1, 'Textarea'),
(6, 1, 'File'),
(7, 1, 'Date'),
(8, 1, 'Time'),
(9, 1, 'Date &amp; Time'),
(11, 1, 'Checkbox'),
(12, 1, 'Time'),
(13, 1, 'Date'),
(14, 1, 'Date &amp; Time'),
(15, 1, 'File'),
(16, 1, 'Radio'),
(17, 1, 'Select'),
(18, 1, 'Text'),
(19, 1, 'Textarea'),
(20, 1, 'Checkbox'),
(21, 1, 'Date'),
(22, 1, 'Date &amp; Time'),
(23, 1, 'File'),
(24, 1, 'Radio'),
(25, 1, 'Select'),
(26, 1, 'Text'),
(27, 1, 'Textarea'),
(28, 1, 'Time');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_custom_field_value`
--

INSERT INTO `oc_custom_field_value` (`custom_field_value_id`, `custom_field_id`, `sort_order`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(7, 3, 1),
(8, 3, 2),
(9, 3, 3),
(20, 11, 1),
(21, 11, 2),
(22, 11, 3),
(32, 16, 1),
(33, 16, 2),
(34, 16, 3),
(35, 17, 1),
(36, 17, 2),
(37, 17, 3),
(38, 20, 1),
(39, 20, 2),
(40, 20, 3),
(41, 24, 1),
(42, 24, 2),
(43, 24, 3),
(44, 25, 0),
(45, 25, 0),
(46, 25, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_custom_field_value_description`
--

INSERT INTO `oc_custom_field_value_description` (`custom_field_value_id`, `language_id`, `custom_field_id`, `name`) VALUES
(1, 1, 1, 'Test 1'),
(2, 1, 1, 'test 2'),
(3, 1, 1, 'Test 3'),
(4, 1, 2, 'Test 1'),
(5, 1, 2, 'Test 2'),
(6, 1, 2, 'Test 3'),
(7, 1, 3, 'Test 1'),
(8, 1, 3, 'Test 2'),
(9, 1, 3, 'Test 3'),
(20, 1, 11, 'Test 1'),
(21, 1, 11, 'Test 2'),
(22, 1, 11, 'Test 3'),
(32, 1, 16, 'Test 1'),
(33, 1, 16, 'Test 2'),
(34, 1, 16, 'Test 3'),
(35, 1, 17, 'Test 1'),
(36, 1, 17, 'Test 2'),
(37, 1, 17, 'Test 3'),
(38, 1, 20, 'Test 1'),
(39, 1, 20, 'Test 2'),
(40, 1, 20, 'Test 3'),
(41, 1, 24, 'Test 1'),
(42, 1, 24, 'Test 2'),
(43, 1, 24, 'Test 3'),
(44, 1, 25, 'Test 1'),
(45, 1, 25, 'Test 2'),
(46, 1, 25, 'Test 3');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download_report`
--

CREATE TABLE `oc_download_report` (
  `download_report_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `country` varchar(2) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `description`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', '', 'catalog/model/account/customer/addCustomer/after', 'event/activity.addCustomer', 1, 1),
(2, 'activity_customer_edit', '', 'catalog/model/account/customer/editCustomer/after', 'event/activity.editCustomer', 1, 1),
(3, 'activity_customer_password', '', 'catalog/model/account/customer/editPassword/after', 'event/activity.editPassword', 1, 1),
(4, 'activity_customer_forgotten', '', 'catalog/model/account/customer/editCode/after', 'event/activity.forgotten', 1, 1),
(5, 'activity_customer_login', '', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity.login', 1, 1),
(6, 'activity_customer_transaction', '', 'catalog/model/account/customer/addTransaction/after', 'event/activity.addTransaction', 1, 1),
(7, 'activity_address_add', '', 'catalog/model/account/address/addAddress/after', 'event/activity.addAddress', 1, 1),
(8, 'activity_address_edit', '', 'catalog/model/account/address/editAddress/after', 'event/activity.editAddress', 1, 1),
(9, 'activity_address_delete', '', 'catalog/model/account/address/deleteAddress/after', 'event/activity.deleteAddress', 1, 1),
(10, 'activity_affiliate_add', '', 'catalog/model/account/affiliate/addAffiliate/after', 'event/activity.addAffiliate', 1, 1),
(11, 'activity_affiliate_edit', '', 'catalog/model/account/affiliate/editAffiliate/after', 'event/activity.editAffiliate', 1, 1),
(12, 'activity_order_add', '', 'catalog/model/checkout/order/addHistory/before', 'event/activity.addHistory', 1, 1),
(13, 'activity_return_add', '', 'catalog/model/account/returns/addReturn/after', 'event/activity.addReturn', 1, 1),
(14, 'mail_customer_transaction', '', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 1),
(15, 'mail_customer_forgotten', '', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 1),
(16, 'mail_customer_add', '', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 1),
(17, 'mail_customer_alert', '', 'catalog/model/account/customer/addCustomer/after', 'mail/register.alert', 1, 1),
(18, 'mail_affiliate_add', '', 'catalog/model/account/affiliate/addAffiliate/after', 'mail/affiliate', 1, 1),
(19, 'mail_affiliate_alert', '', 'catalog/model/account/affiliate/addAffiliate/after', 'mail/affiliate.alert', 1, 1),
(20, 'mail_order_alert', '', 'catalog/model/checkout/order/addHistory/before', 'mail/order.alert', 1, 1),
(21, 'mail_order_add', '', 'catalog/model/checkout/order/addHistory/before', 'mail/order', 1, 1),
(22, 'mail_gdpr', '', 'catalog/model/account/gdpr/addGdpr/after', 'mail/gdpr', 1, 1),
(23, 'mail_gdpr_delete', '', 'catalog/model/account/gdpr/editStatus/after', 'mail/gdpr.remove', 1, 1),
(24, 'mail_voucher', '', 'catalog/model/checkout/order/addHistory/after', 'mail/voucher', 1, 1),
(25, 'mail_review', '', 'catalog/model/catalog/review/addReview/after', 'mail/review', 1, 1),
(26, 'mail_subscription', '', 'catalog/model/checkout/subscription/addSubscription/after', 'mail/subscription', 1, 1),
(27, 'statistics_review_add', '', 'catalog/model/catalog/review/addReview/after', 'event/statistics.addReview', 1, 1),
(28, 'statistics_return_add', '', 'catalog/model/account/returns/addReturn/after', 'event/statistics.addReturn', 1, 1),
(29, 'statistics_return_delete', '', 'admin/model/sale/returns/deleteReturn/after', 'event/statistics.deleteReturn', 1, 1),
(30, 'statistics_order_history', '', 'catalog/model/checkout/order/addHistory/before', 'event/statistics.addHistory', 1, 1),
(31, 'admin_currency_add', '', 'admin/model/localisation/currency/addCurrency/after', 'event/currency', 1, 1),
(32, 'admin_currency_edit', '', 'admin/model/localisation/currency/editCurrency/after', 'event/currency', 1, 1),
(33, 'admin_currency_setting', '', 'admin/model/setting/setting/editSetting/after', 'event/currency', 1, 1),
(34, 'admin_mail_gdpr', '', 'admin/model/customer/gdpr/editStatus/after', 'mail/gdpr', 1, 1),
(35, 'admin_mail_affiliate_approve', '', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate.approve', 1, 1),
(36, 'admin_mail_affiliate_deny', '', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate.deny', 1, 1),
(37, 'admin_mail_customer_approve', '', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer.approve', 1, 1),
(38, 'admin_mail_customer_deny', '', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer.deny', 1, 1),
(39, 'admin_mail_customer_transaction', '', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 1),
(40, 'admin_mail_reward', '', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 1),
(41, 'admin_mail_return', '', 'admin/model/sale/returns/addHistory/after', 'mail/returns', 1, 1),
(42, 'admin_mail_user_forgotten', '', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 1),
(43, 'admin_mail_user_authorize', '', 'admin/controller/common/authorize.send/after', 'mail/authorize', 1, 1),
(44, 'admin_mail_user_authorize_reset', '', 'admin/model/user/user/editCode/after', 'mail/authorize.reset', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `extension`, `type`, `code`) VALUES
(1, 'opencart', 'payment', 'cod'),
(2, 'opencart', 'total', 'shipping'),
(3, 'opencart', 'total', 'sub_total'),
(4, 'opencart', 'total', 'tax'),
(5, 'opencart', 'total', 'total'),
(6, 'opencart', 'module', 'banner'),
(8, 'opencart', 'total', 'credit'),
(9, 'opencart', 'shipping', 'flat'),
(10, 'opencart', 'total', 'handling'),
(11, 'opencart', 'total', 'low_order_fee'),
(12, 'opencart', 'total', 'coupon'),
(13, 'opencart', 'module', 'category'),
(14, 'opencart', 'module', 'account'),
(15, 'opencart', 'total', 'reward'),
(16, 'opencart', 'total', 'voucher'),
(17, 'opencart', 'payment', 'free_checkout'),
(18, 'opencart', 'module', 'featured'),
(20, 'opencart', 'theme', 'basic'),
(21, 'opencart', 'dashboard', 'activity'),
(22, 'opencart', 'dashboard', 'sale'),
(23, 'opencart', 'dashboard', 'recent'),
(24, 'opencart', 'dashboard', 'order'),
(25, 'opencart', 'dashboard', 'online'),
(26, 'opencart', 'dashboard', 'map'),
(27, 'opencart', 'dashboard', 'customer'),
(28, 'opencart', 'dashboard', 'chart'),
(29, 'opencart', 'report', 'sale_coupon'),
(31, 'opencart', 'report', 'customer_search'),
(32, 'opencart', 'report', 'customer_transaction'),
(33, 'opencart', 'report', 'product_purchased'),
(34, 'opencart', 'report', 'product_viewed'),
(35, 'opencart', 'report', 'sale_return'),
(36, 'opencart', 'report', 'sale_order'),
(37, 'opencart', 'report', 'sale_shipping'),
(38, 'opencart', 'report', 'sale_tax'),
(39, 'opencart', 'report', 'customer_activity'),
(40, 'opencart', 'report', 'customer_order'),
(41, 'opencart', 'report', 'customer_reward'),
(43, 'opencart', 'report', 'marketing'),
(44, 'opencart', 'report', 'customer_subscription'),
(45, 'opencart', 'report', 'customer'),
(46, 'opencart', 'payment', 'bank_transfer'),
(48, 'opencart', 'shipping', 'pickup'),
(50, 'opencart', 'module', 'store');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension_install`
--

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_extension_install`
--

INSERT INTO `oc_extension_install` (`extension_install_id`, `extension_id`, `extension_download_id`, `name`, `code`, `version`, `author`, `link`, `status`, `date_added`) VALUES
(1, 0, 0, 'OpenCart Default Extensions', 'opencart', '1.0', 'OpenCart Ltd', 'http://www.opencart.com', 1, '2020-08-29 15:35:39'),
(2, 0, 0, 'OpenCart Language Example', 'oc_language_example', '1.0', 'OpenCart Ltd', 'https://www.opencart.com', 0, '2024-04-25 16:19:51'),
(3, 0, 0, 'OpenCart Payment Example', 'oc_payment_example', '1.0', 'OpenCart Ltd', 'https://www.opencart.com', 0, '2024-04-25 16:19:51'),
(4, 0, 0, 'OpenCart Theme Example', 'oc_theme_example', '1.0', 'OpenCart Ltd', 'https://www.opencart.com', 0, '2024-04-25 16:19:51');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension_path`
--

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_extension_path`
--

INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`) VALUES
(1, 1, 'opencart'),
(2, 1, 'opencart/admin'),
(3, 1, 'opencart/admin/controller'),
(4, 1, 'opencart/admin/controller/analytics'),
(5, 1, 'opencart/admin/controller/analytics/index.html'),
(6, 1, 'opencart/admin/controller/captcha'),
(7, 1, 'opencart/admin/controller/captcha/basic.php'),
(8, 1, 'opencart/admin/controller/currency'),
(9, 1, 'opencart/admin/controller/currency/ecb.php'),
(10, 1, 'opencart/admin/controller/currency/fixer.php'),
(11, 1, 'opencart/admin/controller/dashboard'),
(12, 1, 'opencart/admin/controller/dashboard/activity.php'),
(13, 1, 'opencart/admin/controller/dashboard/chart.php'),
(14, 1, 'opencart/admin/controller/dashboard/customer.php'),
(15, 1, 'opencart/admin/controller/dashboard/map.php'),
(16, 1, 'opencart/admin/controller/dashboard/online.php'),
(17, 1, 'opencart/admin/controller/dashboard/order.php'),
(18, 1, 'opencart/admin/controller/dashboard/recent.php'),
(19, 1, 'opencart/admin/controller/dashboard/sale.php'),
(20, 1, 'opencart/admin/controller/feed'),
(21, 1, 'opencart/admin/controller/feed/index.html'),
(22, 1, 'opencart/admin/controller/fraud'),
(23, 1, 'opencart/admin/controller/fraud/ip.php'),
(24, 1, 'opencart/admin/controller/module'),
(25, 1, 'opencart/admin/controller/module/account.php'),
(26, 1, 'opencart/admin/controller/module/banner.php'),
(27, 1, 'opencart/admin/controller/module/bestseller.php'),
(28, 1, 'opencart/admin/controller/module/category.php'),
(29, 1, 'opencart/admin/controller/module/featured.php'),
(30, 1, 'opencart/admin/controller/module/filter.php'),
(31, 1, 'opencart/admin/controller/module/html.php'),
(32, 1, 'opencart/admin/controller/module/information.php'),
(33, 1, 'opencart/admin/controller/module/latest.php'),
(34, 1, 'opencart/admin/controller/module/special.php'),
(35, 1, 'opencart/admin/controller/module/store.php'),
(36, 1, 'opencart/admin/controller/payment'),
(37, 1, 'opencart/admin/controller/payment/bank_transfer.php'),
(38, 1, 'opencart/admin/controller/payment/cheque.php'),
(39, 1, 'opencart/admin/controller/payment/cod.php'),
(40, 1, 'opencart/admin/controller/payment/free_checkout.php'),
(41, 1, 'opencart/admin/controller/report'),
(42, 1, 'opencart/admin/controller/report/customer.php'),
(43, 1, 'opencart/admin/controller/report/customer_activity.php'),
(44, 1, 'opencart/admin/controller/report/customer_order.php'),
(45, 1, 'opencart/admin/controller/report/customer_reward.php'),
(46, 1, 'opencart/admin/controller/report/customer_search.php'),
(47, 1, 'opencart/admin/controller/report/customer_subscription.php'),
(48, 1, 'opencart/admin/controller/report/customer_transaction.php'),
(49, 1, 'opencart/admin/controller/report/marketing.php'),
(50, 1, 'opencart/admin/controller/report/product_purchased.php'),
(51, 1, 'opencart/admin/controller/report/product_viewed.php'),
(52, 1, 'opencart/admin/controller/report/sale_coupon.php'),
(53, 1, 'opencart/admin/controller/report/sale_order.php'),
(54, 1, 'opencart/admin/controller/report/sale_return.php'),
(55, 1, 'opencart/admin/controller/report/sale_shipping.php'),
(56, 1, 'opencart/admin/controller/report/sale_tax.php'),
(57, 1, 'opencart/admin/controller/shipping'),
(58, 1, 'opencart/admin/controller/shipping/flat.php'),
(59, 1, 'opencart/admin/controller/shipping/free.php'),
(60, 1, 'opencart/admin/controller/shipping/item.php'),
(61, 1, 'opencart/admin/controller/shipping/pickup.php'),
(62, 1, 'opencart/admin/controller/shipping/weight.php'),
(63, 1, 'opencart/admin/controller/theme'),
(64, 1, 'opencart/admin/controller/theme/basic.php'),
(65, 1, 'opencart/admin/controller/total'),
(66, 1, 'opencart/admin/controller/total/coupon.php'),
(67, 1, 'opencart/admin/controller/total/credit.php'),
(68, 1, 'opencart/admin/controller/total/handling.php'),
(69, 1, 'opencart/admin/controller/total/low_order_fee.php'),
(70, 1, 'opencart/admin/controller/total/reward.php'),
(71, 1, 'opencart/admin/controller/total/shipping.php'),
(72, 1, 'opencart/admin/controller/total/sub_total.php'),
(73, 1, 'opencart/admin/controller/total/tax.php'),
(74, 1, 'opencart/admin/controller/total/total.php'),
(75, 1, 'opencart/admin/controller/total/voucher.php'),
(76, 1, 'opencart/admin/language'),
(77, 1, 'opencart/admin/language/en-gb'),
(78, 1, 'opencart/admin/language/en-gb/captcha'),
(79, 1, 'opencart/admin/language/en-gb/captcha/basic.php'),
(80, 1, 'opencart/admin/language/en-gb/currency'),
(81, 1, 'opencart/admin/language/en-gb/currency/ecb.php'),
(82, 1, 'opencart/admin/language/en-gb/currency/fixer.php'),
(83, 1, 'opencart/admin/language/en-gb/dashboard'),
(84, 1, 'opencart/admin/language/en-gb/dashboard/activity.php'),
(85, 1, 'opencart/admin/language/en-gb/dashboard/chart.php'),
(86, 1, 'opencart/admin/language/en-gb/dashboard/customer.php'),
(87, 1, 'opencart/admin/language/en-gb/dashboard/map.php'),
(88, 1, 'opencart/admin/language/en-gb/dashboard/online.php'),
(89, 1, 'opencart/admin/language/en-gb/dashboard/order.php'),
(90, 1, 'opencart/admin/language/en-gb/dashboard/recent.php'),
(91, 1, 'opencart/admin/language/en-gb/dashboard/sale.php'),
(92, 1, 'opencart/admin/language/en-gb/fraud'),
(93, 1, 'opencart/admin/language/en-gb/fraud/ip.php'),
(94, 1, 'opencart/admin/language/en-gb/module'),
(95, 1, 'opencart/admin/language/en-gb/module/account.php'),
(96, 1, 'opencart/admin/language/en-gb/module/banner.php'),
(97, 1, 'opencart/admin/language/en-gb/module/bestseller.php'),
(98, 1, 'opencart/admin/language/en-gb/module/category.php'),
(99, 1, 'opencart/admin/language/en-gb/module/featured.php'),
(100, 1, 'opencart/admin/language/en-gb/module/filter.php'),
(101, 1, 'opencart/admin/language/en-gb/module/html.php'),
(102, 1, 'opencart/admin/language/en-gb/module/information.php'),
(103, 1, 'opencart/admin/language/en-gb/module/latest.php'),
(104, 1, 'opencart/admin/language/en-gb/module/special.php'),
(105, 1, 'opencart/admin/language/en-gb/module/store.php'),
(106, 1, 'opencart/admin/language/en-gb/payment'),
(107, 1, 'opencart/admin/language/en-gb/payment/bank_transfer.php'),
(108, 1, 'opencart/admin/language/en-gb/payment/cheque.php'),
(109, 1, 'opencart/admin/language/en-gb/payment/cod.php'),
(110, 1, 'opencart/admin/language/en-gb/payment/free_checkout.php'),
(111, 1, 'opencart/admin/language/en-gb/report'),
(112, 1, 'opencart/admin/language/en-gb/report/customer.php'),
(113, 1, 'opencart/admin/language/en-gb/report/customer_activity.php'),
(114, 1, 'opencart/admin/language/en-gb/report/customer_order.php'),
(115, 1, 'opencart/admin/language/en-gb/report/customer_reward.php'),
(116, 1, 'opencart/admin/language/en-gb/report/customer_search.php'),
(117, 1, 'opencart/admin/language/en-gb/report/customer_subscription.php'),
(118, 1, 'opencart/admin/language/en-gb/report/customer_transaction.php'),
(119, 1, 'opencart/admin/language/en-gb/report/marketing.php'),
(120, 1, 'opencart/admin/language/en-gb/report/product_purchased.php'),
(121, 1, 'opencart/admin/language/en-gb/report/product_viewed.php'),
(122, 1, 'opencart/admin/language/en-gb/report/sale_coupon.php'),
(123, 1, 'opencart/admin/language/en-gb/report/sale_order.php'),
(124, 1, 'opencart/admin/language/en-gb/report/sale_return.php'),
(125, 1, 'opencart/admin/language/en-gb/report/sale_shipping.php'),
(126, 1, 'opencart/admin/language/en-gb/report/sale_tax.php'),
(127, 1, 'opencart/admin/language/en-gb/shipping'),
(128, 1, 'opencart/admin/language/en-gb/shipping/flat.php'),
(129, 1, 'opencart/admin/language/en-gb/shipping/free.php'),
(130, 1, 'opencart/admin/language/en-gb/shipping/item.php'),
(131, 1, 'opencart/admin/language/en-gb/shipping/pickup.php'),
(132, 1, 'opencart/admin/language/en-gb/shipping/weight.php'),
(133, 1, 'opencart/admin/language/en-gb/theme'),
(134, 1, 'opencart/admin/language/en-gb/theme/basic.php'),
(135, 1, 'opencart/admin/language/en-gb/total'),
(136, 1, 'opencart/admin/language/en-gb/total/coupon.php'),
(137, 1, 'opencart/admin/language/en-gb/total/credit.php'),
(138, 1, 'opencart/admin/language/en-gb/total/handling.php'),
(139, 1, 'opencart/admin/language/en-gb/total/low_order_fee.php'),
(140, 1, 'opencart/admin/language/en-gb/total/reward.php'),
(141, 1, 'opencart/admin/language/en-gb/total/shipping.php'),
(142, 1, 'opencart/admin/language/en-gb/total/sub_total.php'),
(143, 1, 'opencart/admin/language/en-gb/total/tax.php'),
(144, 1, 'opencart/admin/language/en-gb/total/total.php'),
(145, 1, 'opencart/admin/language/en-gb/total/voucher.php'),
(146, 1, 'opencart/admin/language/ru-ru'),
(147, 1, 'opencart/admin/language/ru-ru/captcha'),
(148, 1, 'opencart/admin/language/ru-ru/captcha/basic.php'),
(149, 1, 'opencart/admin/language/ru-ru/currency'),
(150, 1, 'opencart/admin/language/ru-ru/currency/ecb.php'),
(151, 1, 'opencart/admin/language/ru-ru/currency/fixer.php'),
(152, 1, 'opencart/admin/language/ru-ru/dashboard'),
(153, 1, 'opencart/admin/language/ru-ru/dashboard/activity.php'),
(154, 1, 'opencart/admin/language/ru-ru/dashboard/chart.php'),
(155, 1, 'opencart/admin/language/ru-ru/dashboard/customer.php'),
(156, 1, 'opencart/admin/language/ru-ru/dashboard/map.php'),
(157, 1, 'opencart/admin/language/ru-ru/dashboard/online.php'),
(158, 1, 'opencart/admin/language/ru-ru/dashboard/order.php'),
(159, 1, 'opencart/admin/language/ru-ru/dashboard/recent.php'),
(160, 1, 'opencart/admin/language/ru-ru/dashboard/sale.php'),
(161, 1, 'opencart/admin/language/ru-ru/fraud'),
(162, 1, 'opencart/admin/language/ru-ru/fraud/ip.php'),
(163, 1, 'opencart/admin/language/ru-ru/module'),
(164, 1, 'opencart/admin/language/ru-ru/module/account.php'),
(165, 1, 'opencart/admin/language/ru-ru/module/banner.php'),
(166, 1, 'opencart/admin/language/ru-ru/module/bestseller.php'),
(167, 1, 'opencart/admin/language/ru-ru/module/category.php'),
(168, 1, 'opencart/admin/language/ru-ru/module/featured.php'),
(169, 1, 'opencart/admin/language/ru-ru/module/filter.php'),
(170, 1, 'opencart/admin/language/ru-ru/module/html.php'),
(171, 1, 'opencart/admin/language/ru-ru/module/information.php'),
(172, 1, 'opencart/admin/language/ru-ru/module/latest.php'),
(173, 1, 'opencart/admin/language/ru-ru/module/special.php'),
(174, 1, 'opencart/admin/language/ru-ru/module/store.php'),
(175, 1, 'opencart/admin/language/ru-ru/payment'),
(176, 1, 'opencart/admin/language/ru-ru/payment/bank_transfer.php'),
(177, 1, 'opencart/admin/language/ru-ru/payment/cheque.php'),
(178, 1, 'opencart/admin/language/ru-ru/payment/cod.php'),
(179, 1, 'opencart/admin/language/ru-ru/payment/free_checkout.php'),
(180, 1, 'opencart/admin/language/ru-ru/report'),
(181, 1, 'opencart/admin/language/ru-ru/report/customer.php'),
(182, 1, 'opencart/admin/language/ru-ru/report/customer_activity.php'),
(183, 1, 'opencart/admin/language/ru-ru/report/customer_order.php'),
(184, 1, 'opencart/admin/language/ru-ru/report/customer_reward.php'),
(185, 1, 'opencart/admin/language/ru-ru/report/customer_search.php'),
(186, 1, 'opencart/admin/language/ru-ru/report/customer_transaction.php'),
(187, 1, 'opencart/admin/language/ru-ru/report/customer_subscription.php'),
(188, 1, 'opencart/admin/language/ru-ru/report/marketing.php'),
(189, 1, 'opencart/admin/language/ru-ru/report/product_purchased.php'),
(190, 1, 'opencart/admin/language/ru-ru/report/product_viewed.php'),
(191, 1, 'opencart/admin/language/ru-ru/report/sale_coupon.php'),
(192, 1, 'opencart/admin/language/ru-ru/report/sale_order.php'),
(193, 1, 'opencart/admin/language/ru-ru/report/sale_return.php'),
(194, 1, 'opencart/admin/language/ru-ru/report/sale_shipping.php'),
(195, 1, 'opencart/admin/language/ru-ru/report/sale_tax.php'),
(196, 1, 'opencart/admin/language/ru-ru/shipping'),
(197, 1, 'opencart/admin/language/ru-ru/shipping/flat.php'),
(198, 1, 'opencart/admin/language/ru-ru/shipping/free.php'),
(199, 1, 'opencart/admin/language/ru-ru/shipping/item.php'),
(200, 1, 'opencart/admin/language/ru-ru/shipping/pickup.php'),
(201, 1, 'opencart/admin/language/ru-ru/shipping/weight.php'),
(202, 1, 'opencart/admin/language/ru-ru/theme'),
(203, 1, 'opencart/admin/language/ru-ru/theme/basic.php'),
(204, 1, 'opencart/admin/language/ru-ru/total'),
(205, 1, 'opencart/admin/language/ru-ru/total/coupon.php'),
(206, 1, 'opencart/admin/language/ru-ru/total/credit.php'),
(207, 1, 'opencart/admin/language/ru-ru/total/handling.php'),
(208, 1, 'opencart/admin/language/ru-ru/total/low_order_fee.php'),
(209, 1, 'opencart/admin/language/ru-ru/total/reward.php'),
(210, 1, 'opencart/admin/language/ru-ru/total/shipping.php'),
(211, 1, 'opencart/admin/language/ru-ru/total/sub_total.php'),
(212, 1, 'opencart/admin/language/ru-ru/total/tax.php'),
(213, 1, 'opencart/admin/language/ru-ru/total/total.php'),
(214, 1, 'opencart/admin/language/ru-ru/total/voucher.php'),
(215, 1, 'opencart/admin/model'),
(216, 1, 'opencart/admin/model/dashboard'),
(217, 1, 'opencart/admin/model/dashboard/map.php'),
(218, 1, 'opencart/admin/model/fraud'),
(219, 1, 'opencart/admin/model/fraud/ip.php'),
(220, 1, 'opencart/admin/model/module'),
(221, 1, 'opencart/admin/model/module/bestseller.php'),
(222, 1, 'opencart/admin/model/report'),
(223, 1, 'opencart/admin/model/report/activity.php'),
(224, 1, 'opencart/admin/model/report/coupon.php'),
(225, 1, 'opencart/admin/model/report/customer.php'),
(226, 1, 'opencart/admin/model/report/customer_subscription.php'),
(227, 1, 'opencart/admin/model/report/customer_transaction.php'),
(228, 1, 'opencart/admin/model/report/marketing.php'),
(229, 1, 'opencart/admin/model/report/product_purchased.php'),
(230, 1, 'opencart/admin/model/report/product_viewed.php'),
(231, 1, 'opencart/admin/model/report/returns.php'),
(232, 1, 'opencart/admin/model/report/sale.php'),
(233, 1, 'opencart/admin/view'),
(234, 1, 'opencart/admin/view/template'),
(235, 1, 'opencart/admin/view/image'),
(236, 1, 'opencart/admin/view/image/basic.png'),
(237, 1, 'opencart/admin/view/template/captcha'),
(238, 1, 'opencart/admin/view/template/captcha/basic.twig'),
(239, 1, 'opencart/admin/view/template/currency'),
(240, 1, 'opencart/admin/view/template/currency/ecb.twig'),
(241, 1, 'opencart/admin/view/template/currency/fixer.twig'),
(242, 1, 'opencart/admin/view/template/dashboard'),
(243, 1, 'opencart/admin/view/template/dashboard/activity_form.twig'),
(244, 1, 'opencart/admin/view/template/dashboard/activity_info.twig'),
(245, 1, 'opencart/admin/view/template/dashboard/chart_form.twig'),
(246, 1, 'opencart/admin/view/template/dashboard/chart_info.twig'),
(247, 1, 'opencart/admin/view/template/dashboard/customer_form.twig'),
(248, 1, 'opencart/admin/view/template/dashboard/customer_info.twig'),
(249, 1, 'opencart/admin/view/template/dashboard/map_form.twig'),
(250, 1, 'opencart/admin/view/template/dashboard/map_info.twig'),
(251, 1, 'opencart/admin/view/template/dashboard/online_form.twig'),
(252, 1, 'opencart/admin/view/template/dashboard/online_info.twig'),
(253, 1, 'opencart/admin/view/template/dashboard/order_form.twig'),
(254, 1, 'opencart/admin/view/template/dashboard/order_info.twig'),
(255, 1, 'opencart/admin/view/template/dashboard/recent_form.twig'),
(256, 1, 'opencart/admin/view/template/dashboard/recent_info.twig'),
(257, 1, 'opencart/admin/view/template/dashboard/sale_form.twig'),
(258, 1, 'opencart/admin/view/template/dashboard/sale_info.twig'),
(259, 1, 'opencart/admin/view/template/fraud'),
(260, 1, 'opencart/admin/view/template/fraud/ip.twig'),
(261, 1, 'opencart/admin/view/template/fraud/ip_ip.twig'),
(262, 1, 'opencart/admin/view/template/module'),
(263, 1, 'opencart/admin/view/template/module/account.twig'),
(264, 1, 'opencart/admin/view/template/module/banner.twig'),
(265, 1, 'opencart/admin/view/template/module/bestseller.twig'),
(266, 1, 'opencart/admin/view/template/module/bestseller_report.twig'),
(267, 1, 'opencart/admin/view/template/module/category.twig'),
(268, 1, 'opencart/admin/view/template/module/featured.twig'),
(269, 1, 'opencart/admin/view/template/module/filter.twig'),
(270, 1, 'opencart/admin/view/template/module/html.twig'),
(271, 1, 'opencart/admin/view/template/module/information.twig'),
(272, 1, 'opencart/admin/view/template/module/latest.twig'),
(273, 1, 'opencart/admin/view/template/module/special.twig'),
(274, 1, 'opencart/admin/view/template/module/store.twig'),
(275, 1, 'opencart/admin/view/template/payment'),
(276, 1, 'opencart/admin/view/template/payment/bank_transfer.twig'),
(277, 1, 'opencart/admin/view/template/payment/cheque.twig'),
(278, 1, 'opencart/admin/view/template/payment/cod.twig'),
(279, 1, 'opencart/admin/view/template/payment/free_checkout.twig'),
(280, 1, 'opencart/admin/view/template/report'),
(281, 1, 'opencart/admin/view/template/report/affiliate.twig'),
(282, 1, 'opencart/admin/view/template/report/affiliate_form.twig'),
(283, 1, 'opencart/admin/view/template/report/customer.twig'),
(284, 1, 'opencart/admin/view/template/report/customer_activity.twig'),
(285, 1, 'opencart/admin/view/template/report/customer_activity_form.twig'),
(286, 1, 'opencart/admin/view/template/report/customer_activity_list.twig'),
(287, 1, 'opencart/admin/view/template/report/customer_form.twig'),
(288, 1, 'opencart/admin/view/template/report/customer_list.twig'),
(289, 1, 'opencart/admin/view/template/report/customer_order.twig'),
(290, 1, 'opencart/admin/view/template/report/customer_order_form.twig'),
(291, 1, 'opencart/admin/view/template/report/customer_order_list.twig'),
(292, 1, 'opencart/admin/view/template/report/customer_reward.twig'),
(293, 1, 'opencart/admin/view/template/report/customer_reward_form.twig'),
(294, 1, 'opencart/admin/view/template/report/customer_reward_list.twig'),
(295, 1, 'opencart/admin/view/template/report/customer_search.twig'),
(296, 1, 'opencart/admin/view/template/report/customer_search_form.twig'),
(297, 1, 'opencart/admin/view/template/report/customer_search_list.twig'),
(298, 1, 'opencart/admin/view/template/report/customer_subscription.twig'),
(299, 1, 'opencart/admin/view/template/report/customer_subscription_form.twig'),
(300, 1, 'opencart/admin/view/template/report/customer_subscription_list.twig'),
(301, 1, 'opencart/admin/view/template/report/customer_transaction.twig'),
(302, 1, 'opencart/admin/view/template/report/customer_transaction_form.twig'),
(303, 1, 'opencart/admin/view/template/report/customer_transaction_list.twig'),
(304, 1, 'opencart/admin/view/template/report/marketing.twig'),
(305, 1, 'opencart/admin/view/template/report/marketing_form.twig'),
(306, 1, 'opencart/admin/view/template/report/marketing_list.twig'),
(307, 1, 'opencart/admin/view/template/report/product_purchased.twig'),
(308, 1, 'opencart/admin/view/template/report/product_purchased_form.twig'),
(309, 1, 'opencart/admin/view/template/report/product_purchased_list.twig'),
(310, 1, 'opencart/admin/view/template/report/product_viewed.twig'),
(311, 1, 'opencart/admin/view/template/report/product_viewed_form.twig'),
(312, 1, 'opencart/admin/view/template/report/product_viewed_list.twig'),
(313, 1, 'opencart/admin/view/template/report/sale_coupon.twig'),
(314, 1, 'opencart/admin/view/template/report/sale_coupon_form.twig'),
(315, 1, 'opencart/admin/view/template/report/sale_coupon_list.twig'),
(316, 1, 'opencart/admin/view/template/report/sale_order.twig'),
(317, 1, 'opencart/admin/view/template/report/sale_order_form.twig'),
(318, 1, 'opencart/admin/view/template/report/sale_order_list.twig'),
(319, 1, 'opencart/admin/view/template/report/sale_return.twig'),
(320, 1, 'opencart/admin/view/template/report/sale_return_form.twig'),
(321, 1, 'opencart/admin/view/template/report/sale_return_list.twig'),
(322, 1, 'opencart/admin/view/template/report/sale_shipping.twig'),
(323, 1, 'opencart/admin/view/template/report/sale_shipping_form.twig'),
(324, 1, 'opencart/admin/view/template/report/sale_shipping_list.twig'),
(325, 1, 'opencart/admin/view/template/report/sale_tax.twig'),
(326, 1, 'opencart/admin/view/template/report/sale_tax_form.twig'),
(327, 1, 'opencart/admin/view/template/report/sale_tax_list.twig'),
(328, 1, 'opencart/admin/view/template/shipping'),
(329, 1, 'opencart/admin/view/template/shipping/flat.twig'),
(330, 1, 'opencart/admin/view/template/shipping/free.twig'),
(331, 1, 'opencart/admin/view/template/shipping/item.twig'),
(332, 1, 'opencart/admin/view/template/shipping/pickup.twig'),
(333, 1, 'opencart/admin/view/template/shipping/weight.twig'),
(334, 1, 'opencart/admin/view/template/theme'),
(335, 1, 'opencart/admin/view/template/theme/basic.twig'),
(336, 1, 'opencart/admin/view/template/total'),
(337, 1, 'opencart/admin/view/template/total/coupon.twig'),
(338, 1, 'opencart/admin/view/template/total/credit.twig'),
(339, 1, 'opencart/admin/view/template/total/handling.twig'),
(340, 1, 'opencart/admin/view/template/total/low_order_fee.twig'),
(341, 1, 'opencart/admin/view/template/total/reward.twig'),
(342, 1, 'opencart/admin/view/template/total/shipping.twig'),
(343, 1, 'opencart/admin/view/template/total/sub_total.twig'),
(344, 1, 'opencart/admin/view/template/total/tax.twig'),
(345, 1, 'opencart/admin/view/template/total/total.twig'),
(346, 1, 'opencart/admin/view/template/total/voucher.twig'),
(347, 1, 'opencart/catalog'),
(348, 1, 'opencart/catalog/controller'),
(349, 1, 'opencart/catalog/controller/captcha'),
(350, 1, 'opencart/catalog/controller/captcha/basic.php'),
(351, 1, 'opencart/catalog/controller/currency'),
(352, 1, 'opencart/catalog/controller/currency/ecb.php'),
(353, 1, 'opencart/catalog/controller/currency/fixer.php'),
(354, 1, 'opencart/catalog/controller/module'),
(355, 1, 'opencart/catalog/controller/module/account.php'),
(356, 1, 'opencart/catalog/controller/module/banner.php'),
(357, 1, 'opencart/catalog/controller/module/bestseller.php'),
(358, 1, 'opencart/catalog/controller/module/category.php'),
(359, 1, 'opencart/catalog/controller/module/featured.php'),
(360, 1, 'opencart/catalog/controller/module/filter.php'),
(361, 1, 'opencart/catalog/controller/module/html.php'),
(362, 1, 'opencart/catalog/controller/module/information.php'),
(363, 1, 'opencart/catalog/controller/module/latest.php'),
(364, 1, 'opencart/catalog/controller/module/special.php'),
(365, 1, 'opencart/catalog/controller/module/store.php'),
(366, 1, 'opencart/catalog/controller/payment'),
(367, 1, 'opencart/catalog/controller/payment/bank_transfer.php'),
(368, 1, 'opencart/catalog/controller/payment/cheque.php'),
(369, 1, 'opencart/catalog/controller/payment/cod.php'),
(370, 1, 'opencart/catalog/controller/payment/free_checkout.php'),
(371, 1, 'opencart/catalog/controller/total'),
(372, 1, 'opencart/catalog/controller/total/coupon.php'),
(373, 1, 'opencart/catalog/controller/total/reward.php'),
(374, 1, 'opencart/catalog/controller/total/shipping.php'),
(375, 1, 'opencart/catalog/controller/total/voucher.php'),
(376, 1, 'opencart/catalog/language'),
(377, 1, 'opencart/catalog/language/en-gb'),
(378, 1, 'opencart/catalog/language/en-gb/captcha'),
(379, 1, 'opencart/catalog/language/en-gb/captcha/basic.php'),
(380, 1, 'opencart/catalog/language/en-gb/module'),
(381, 1, 'opencart/catalog/language/en-gb/module/account.php'),
(382, 1, 'opencart/catalog/language/en-gb/module/bestseller.php'),
(383, 1, 'opencart/catalog/language/en-gb/module/category.php'),
(384, 1, 'opencart/catalog/language/en-gb/module/featured.php'),
(385, 1, 'opencart/catalog/language/en-gb/module/filter.php'),
(386, 1, 'opencart/catalog/language/en-gb/module/information.php'),
(387, 1, 'opencart/catalog/language/en-gb/module/latest.php'),
(388, 1, 'opencart/catalog/language/en-gb/module/special.php'),
(389, 1, 'opencart/catalog/language/en-gb/module/store.php'),
(390, 1, 'opencart/catalog/language/en-gb/payment'),
(391, 1, 'opencart/catalog/language/en-gb/payment/bank_transfer.php'),
(392, 1, 'opencart/catalog/language/en-gb/payment/cheque.php'),
(393, 1, 'opencart/catalog/language/en-gb/payment/cod.php'),
(394, 1, 'opencart/catalog/language/en-gb/payment/free_checkout.php'),
(395, 1, 'opencart/catalog/language/en-gb/shipping'),
(396, 1, 'opencart/catalog/language/en-gb/shipping/flat.php'),
(397, 1, 'opencart/catalog/language/en-gb/shipping/free.php'),
(398, 1, 'opencart/catalog/language/en-gb/shipping/item.php'),
(399, 1, 'opencart/catalog/language/en-gb/shipping/pickup.php'),
(400, 1, 'opencart/catalog/language/en-gb/shipping/weight.php'),
(401, 1, 'opencart/catalog/language/en-gb/total'),
(402, 1, 'opencart/catalog/language/en-gb/total/coupon.php'),
(403, 1, 'opencart/catalog/language/en-gb/total/credit.php'),
(404, 1, 'opencart/catalog/language/en-gb/total/handling.php'),
(405, 1, 'opencart/catalog/language/en-gb/total/low_order_fee.php'),
(406, 1, 'opencart/catalog/language/en-gb/total/reward.php'),
(407, 1, 'opencart/catalog/language/en-gb/total/shipping.php'),
(408, 1, 'opencart/catalog/language/en-gb/total/sub_total.php'),
(409, 1, 'opencart/catalog/language/en-gb/total/total.php'),
(410, 1, 'opencart/catalog/language/en-gb/total/voucher.php'),
(411, 1, 'opencart/catalog/language/ru-ru'),
(412, 1, 'opencart/catalog/language/ru-ru/captcha'),
(413, 1, 'opencart/catalog/language/ru-ru/captcha/basic.php'),
(414, 1, 'opencart/catalog/language/ru-ru/module'),
(415, 1, 'opencart/catalog/language/ru-ru/module/account.php'),
(416, 1, 'opencart/catalog/language/ru-ru/module/bestseller.php'),
(417, 1, 'opencart/catalog/language/ru-ru/module/category.php'),
(418, 1, 'opencart/catalog/language/ru-ru/module/featured.php'),
(419, 1, 'opencart/catalog/language/ru-ru/module/filter.php'),
(420, 1, 'opencart/catalog/language/ru-ru/module/information.php'),
(421, 1, 'opencart/catalog/language/ru-ru/module/latest.php'),
(422, 1, 'opencart/catalog/language/ru-ru/module/special.php'),
(423, 1, 'opencart/catalog/language/ru-ru/module/store.php'),
(424, 1, 'opencart/catalog/language/ru-ru/payment'),
(425, 1, 'opencart/catalog/language/ru-ru/payment/bank_transfer.php'),
(426, 1, 'opencart/catalog/language/ru-ru/payment/cheque.php'),
(427, 1, 'opencart/catalog/language/ru-ru/payment/cod.php'),
(428, 1, 'opencart/catalog/language/ru-ru/payment/free_checkout.php'),
(429, 1, 'opencart/catalog/language/ru-ru/shipping'),
(430, 1, 'opencart/catalog/language/ru-ru/shipping/flat.php'),
(431, 1, 'opencart/catalog/language/ru-ru/shipping/free.php'),
(432, 1, 'opencart/catalog/language/ru-ru/shipping/item.php'),
(433, 1, 'opencart/catalog/language/ru-ru/shipping/pickup.php'),
(434, 1, 'opencart/catalog/language/ru-ru/shipping/weight.php'),
(435, 1, 'opencart/catalog/language/ru-ru/total'),
(436, 1, 'opencart/catalog/language/ru-ru/total/coupon.php'),
(437, 1, 'opencart/catalog/language/ru-ru/total/credit.php'),
(438, 1, 'opencart/catalog/language/ru-ru/total/handling.php'),
(439, 1, 'opencart/catalog/language/ru-ru/total/low_order_fee.php'),
(440, 1, 'opencart/catalog/language/ru-ru/total/reward.php'),
(441, 1, 'opencart/catalog/language/ru-ru/total/shipping.php'),
(442, 1, 'opencart/catalog/language/ru-ru/total/sub_total.php'),
(443, 1, 'opencart/catalog/language/ru-ru/total/total.php'),
(444, 1, 'opencart/catalog/language/ru-ru/total/voucher.php'),
(445, 1, 'opencart/catalog/model'),
(446, 1, 'opencart/catalog/model/fraud'),
(447, 1, 'opencart/catalog/model/fraud/ip.php'),
(448, 1, 'opencart/catalog/model/module'),
(449, 1, 'opencart/catalog/model/module/bestseller.php'),
(450, 1, 'opencart/catalog/model/module/latest.php'),
(451, 1, 'opencart/catalog/model/payment'),
(452, 1, 'opencart/catalog/model/payment/bank_transfer.php'),
(453, 1, 'opencart/catalog/model/payment/cheque.php'),
(454, 1, 'opencart/catalog/model/payment/cod.php'),
(455, 1, 'opencart/catalog/model/payment/free_checkout.php'),
(456, 1, 'opencart/catalog/model/shipping'),
(457, 1, 'opencart/catalog/model/shipping/flat.php'),
(458, 1, 'opencart/catalog/model/shipping/free.php'),
(459, 1, 'opencart/catalog/model/shipping/item.php'),
(460, 1, 'opencart/catalog/model/shipping/pickup.php'),
(461, 1, 'opencart/catalog/model/shipping/weight.php'),
(462, 1, 'opencart/catalog/model/total'),
(463, 1, 'opencart/catalog/model/total/coupon.php'),
(464, 1, 'opencart/catalog/model/total/credit.php'),
(465, 1, 'opencart/catalog/model/total/handling.php'),
(466, 1, 'opencart/catalog/model/total/low_order_fee.php'),
(467, 1, 'opencart/catalog/model/total/reward.php'),
(468, 1, 'opencart/catalog/model/total/shipping.php'),
(469, 1, 'opencart/catalog/model/total/sub_total.php'),
(470, 1, 'opencart/catalog/model/total/tax.php'),
(471, 1, 'opencart/catalog/model/total/total.php'),
(472, 1, 'opencart/catalog/model/total/voucher.php'),
(473, 1, 'opencart/catalog/view'),
(474, 1, 'opencart/catalog/view/template'),
(475, 1, 'opencart/catalog/view/template/captcha'),
(476, 1, 'opencart/catalog/view/template/captcha/basic.twig'),
(477, 1, 'opencart/catalog/view/template/module'),
(478, 1, 'opencart/catalog/view/template/module/account.twig'),
(479, 1, 'opencart/catalog/view/template/module/banner.twig'),
(480, 1, 'opencart/catalog/view/template/module/bestseller.twig'),
(481, 1, 'opencart/catalog/view/template/module/category.twig'),
(482, 1, 'opencart/catalog/view/template/module/featured.twig'),
(483, 1, 'opencart/catalog/view/template/module/filter.twig'),
(484, 1, 'opencart/catalog/view/template/module/html.twig'),
(485, 1, 'opencart/catalog/view/template/module/information.twig'),
(486, 1, 'opencart/catalog/view/template/module/latest.twig'),
(487, 1, 'opencart/catalog/view/template/module/special.twig'),
(488, 1, 'opencart/catalog/view/template/module/store.twig'),
(489, 1, 'opencart/catalog/view/template/payment'),
(490, 1, 'opencart/catalog/view/template/payment/bank_transfer.twig'),
(491, 1, 'opencart/catalog/view/template/payment/cheque.twig'),
(492, 1, 'opencart/catalog/view/template/payment/cod.twig'),
(493, 1, 'opencart/catalog/view/template/payment/free_checkout.twig'),
(494, 1, 'opencart/catalog/view/template/total'),
(495, 1, 'opencart/catalog/view/template/total/coupon.twig'),
(496, 1, 'opencart/catalog/view/template/total/reward.twig'),
(497, 1, 'opencart/catalog/view/template/total/shipping.twig'),
(498, 1, 'opencart/catalog/view/template/total/voucher.twig'),
(499, 1, 'opencart/install.json');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_gdpr`
--

CREATE TABLE `oc_gdpr` (
  `gdpr_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `code` varchar(40) NOT NULL,
  `email` varchar(96) NOT NULL,
  `action` varchar(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'Зона НДС', 'Облагаемые НДС', '2009-01-06 23:26:25', '2022-05-24 22:33:24'),
(4, 'Москва и область', 'Москва и область', '2024-04-25 16:06:39', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(1, 1, 3, 1),
(2, 1, 1, 1),
(3, 1, 4, 1),
(4, 1, 2, 1),
(5, 1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(1, 1, 'Оплата', '&lt;p&gt;Оплата происходит через ПАО СБЕРБАНК с&amp;nbsp;использованием банковских карт следующих платёжных систем:&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;МИР;&lt;/li&gt;\r\n	&lt;li&gt;VISA;&lt;/li&gt;\r\n	&lt;li&gt;Mastercard Worldwide;&lt;/li&gt;\r\n	&lt;li&gt;JCB;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;Для оплаты (ввода реквизитов Вашей карты) Вы&amp;nbsp;будете перенаправлены на&amp;nbsp;платёжный шлюз ПАО СБЕРБАНК. Соединение с&amp;nbsp;платёжным шлюзом и&amp;nbsp;передача информации осуществляется в&amp;nbsp;защищённом режиме с&amp;nbsp;использованием протокола шифрования SSL. В&amp;nbsp;случае если Ваш банк поддерживает технологию безопасного проведения интернет-платежей Verified By&amp;nbsp;Visa, MasterCard SecureCode, MIR Accept, J-Secure, для проведения платежа также может потребоваться ввод специального пароля.&lt;br /&gt;\r\n&lt;br /&gt;\r\nНастоящий сайт поддерживает &lt;nobr&gt;256-битное&lt;/nobr&gt; шифрование. Конфиденциальность сообщаемой персональной информации обеспечивается ПАО СБЕРБАНК. Введённая информация не&amp;nbsp;будет предоставлена третьим лицам за&amp;nbsp;исключением случаев, предусмотренных законодательством РФ. Проведение платежей по&amp;nbsp;банковским картам осуществляется в&amp;nbsp;строгом соответствии с&amp;nbsp;требованиями платёжных систем МИР, Visa Int., MasterCard Europe Sprl, JCB.&lt;/p&gt;', 'Оплата', '', ''),
(2, 1, 'Условия соглашения', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Условия соглашения', '', ''),
(3, 1, 'Политика Безопасности', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Политика Безопасности', '', ''),
(4, 1, 'Доставка', '&lt;ol&gt;\r\n	&lt;li&gt;Стоимость доставки&lt;br /&gt;\r\n	Способ доставки выбирается при оформлении заказа. Услуга доставки является &lt;b&gt;бесплатной&lt;/b&gt; до&amp;nbsp;пункта выдачи заказов (далее ПВЗ) СДЭК.&lt;/li&gt;\r\n	&lt;li&gt;Сроки доставки&lt;br /&gt;\r\n	После передачи Вашего&amp;nbsp;заказа в транспортную компанию Вам поступит письмо на&amp;nbsp;электронную почту с&amp;nbsp;трек- номером для отслеживания заказа, а&amp;nbsp;также ориентировочной датой доставки. Обычно это занимает 1-2 дня.&lt;/li&gt;\r\n	&lt;li&gt;Порядок получения заказа&lt;br /&gt;\r\n	После&amp;nbsp;получения уведомления о&amp;nbsp;доставке заказа в&amp;nbsp;ПВЗ, Вы&amp;nbsp;можете самостоятельно забрать заказ из&amp;nbsp;выбранного ПВЗ.&lt;/li&gt;\r\n&lt;/ol&gt;', 'Доставка', '', ''),
(5, 1, 'Оформление заказа', '&lt;p&gt;&lt;strong&gt;Как оформить заказ&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n	&lt;li&gt;Выберите интересующий товар&lt;/li&gt;\r\n	&lt;li&gt;Нажмите кнопку «Купить», товар будет добавлен в&amp;nbsp;корзину&lt;/li&gt;\r\n	&lt;li&gt;Перейдите в&amp;nbsp;Корзину&lt;/li&gt;\r\n	&lt;li&gt;Проверьте состав Вашего заказа. Если изменения не&amp;nbsp;требуются, нажмите кнопку «Перейти к&amp;nbsp;оформлению»&lt;/li&gt;\r\n	&lt;li&gt;Выберите город и&amp;nbsp;пункт выдачи заказов СДЭК&lt;/li&gt;\r\n	&lt;li&gt;Укажите Ваши контактные данные и&amp;nbsp;нажмите кнопку «Оформить заказ»&lt;/li&gt;\r\n	&lt;li&gt;Ознакомьтесь с&amp;nbsp;Политикой обработки персональных данных и&amp;nbsp;нажмите на&amp;nbsp;кнопку «Принимаю»&lt;/li&gt;\r\n	&lt;li&gt;После нажатия кнопки «Оформить заказ» откроется страница оплаты заказа, введите платежную информацию и&amp;nbsp;нажмите кнопку «Оплатить».&lt;br /&gt;\r\n	&lt;em&gt;К&amp;nbsp;оплате принимаются карты &lt;/em&gt;&lt;em&gt;Visa, &lt;/em&gt;&lt;em&gt;Mastercard, МИР. Оплата производится в&amp;nbsp;рублях РФ. Вам необходимо ввести номер карты, срок окончания ее&amp;nbsp;действия и&amp;nbsp;&lt;/em&gt;&lt;em&gt;CVС- код (на&amp;nbsp;обороте карты). После ввода этих данных на&amp;nbsp;Ваш телефон поступит смс или пуш- уведомление от&amp;nbsp;банка с&amp;nbsp;кодом подтверждения, который необходимо ввести в&amp;nbsp;появившемся поле «Код подтверждения»* &lt;/em&gt;&lt;/li&gt;\r\n	&lt;li&gt;После успешной оплаты появится сообщение с&amp;nbsp;подтверждением оформления заказа и&amp;nbsp;его оплаты&lt;/li&gt;\r\n&lt;/ol&gt;\r\n\r\n&lt;p&gt;В&amp;nbsp;случае, если на&amp;nbsp;каком- либо из&amp;nbsp;этапов у&amp;nbsp;Вас возникла ошибка или появился вопрос, свяжитесь с&amp;nbsp;нами по&amp;nbsp;контактам&lt;/p&gt;', 'Оформление заказа', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(1, 0, 0),
(4, 0, 0),
(5, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `extension`, `sort_order`, `status`) VALUES
(1, 'Russian', 'ru-ru', 'ru_RU.UTF-8,ru_RU,russian,ru', '', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Главная / Home'),
(2, 'Товар / Product'),
(3, 'Категория / Category'),
(4, 'По умолчанию / Default'),
(5, 'Производитель / Manufacturer'),
(6, 'Личный кабинет / Account'),
(7, 'Оформление заказа / Checkout'),
(8, 'Контакты / Contact'),
(9, 'Карта сайта / Sitemap'),
(10, 'Партнер / Affiliate'),
(11, 'Статья / Information'),
(12, 'Сравнение / Compare'),
(13, 'Поиск / Search');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(1, 10, 'opencart.account', 'column_right', 1),
(2, 6, 'opencart.account', 'column_right', 1),
(6, 3, 'opencart.category', 'column_left', 1),
(7, 3, 'opencart.banner.1', 'column_left', 2),
(8, 1, 'opencart.banner.3', 'content_top', 1),
(9, 1, 'opencart.category', 'content_top', 2),
(10, 1, 'opencart.banner.4', 'content_bottom', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(1, 6, 0, 'account/%'),
(2, 6, 0, 'information/gdpr'),
(3, 10, 0, 'affiliate/%'),
(4, 3, 0, 'product/category'),
(6, 2, 0, 'product/product'),
(7, 11, 0, 'information/information'),
(8, 7, 0, 'checkout/%'),
(9, 8, 0, 'information/contact'),
(10, 9, 0, 'information/sitemap'),
(11, 4, 0, ''),
(12, 5, 0, 'product/manufacturer'),
(13, 12, 0, 'product/compare'),
(14, 13, 0, 'product/search'),
(15, 1, 0, 'common/home');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Сантиметр', 'см'),
(2, 1, 'Миллиметр', 'мм');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) NOT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(11, 'Pandora', 'catalog/manuf/01-15-pandora_logo.png', 0),
(12, 'Element', 'catalog/manuf/element-1.jpg', 0),
(13, 'Chery', 'catalog/logo-black-new.png', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer_to_layout`
--

CREATE TABLE `oc_manufacturer_to_layout` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_manufacturer_to_layout`
--

INSERT INTO `oc_manufacturer_to_layout` (`manufacturer_id`, `store_id`, `layout_id`) VALUES
(11, 0, 0),
(12, 0, 0),
(13, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(11, 0),
(12, 0),
(13, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_marketing_report`
--

CREATE TABLE `oc_marketing_report` (
  `marketing_report_id` int(11) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `country` varchar(2) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `setting` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(1, 'Category Banner', 'opencart.banner', '{\"name\":\"Category Banner\",\"banner_id\":\"6\",\"effect\":\"fade\",\"items\":\"1\",\"controls\":\"0\",\"indicators\":\"0\",\"interval\":\"5000\",\"width\":\"200\",\"height\":\"180\",\"status\":\"1\"}'),
(2, 'Featured', 'opencart.featured', '{\"name\":\"Featured\",\"product_name\":\"\",\"product\":[\"43\",\"40\",\"42\",\"30\"],\"axis\":\"horizontal\",\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(3, 'Homepage Slideshow', 'opencart.banner', '{\"name\":\"Homepage Slideshow\",\"banner_id\":\"7\",\"effect\":\"slide\",\"items\":\"1\",\"controls\":\"1\",\"indicators\":\"1\",\"interval\":\"5000\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}'),
(4, 'Homepage Manufacturers', 'opencart.banner', '{\"name\":\"Homepage Manufacturers\",\"banner_id\":\"8\",\"effect\":\"slide\",\"items\":\"5\",\"controls\":\"1\",\"indicators\":\"1\",\"interval\":\"5000\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_notification`
--

CREATE TABLE `oc_notification` (
  `notification_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `status` tinyint(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(5, 1, 'Select'),
(6, 1, 'Textarea'),
(7, 1, 'File'),
(8, 1, 'Date'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(11, 1, 'Size'),
(12, 1, 'Delivery Date');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(23, 2, '', 1),
(24, 2, '', 2),
(31, 1, '', 2),
(32, 1, '', 1),
(39, 5, '', 1),
(40, 5, '', 2),
(41, 5, '', 3),
(42, 5, '', 4),
(43, 1, '', 3),
(44, 2, '', 3),
(45, 2, '', 4),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(31, 1, 1, 'Medium'),
(32, 1, 1, 'Small'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(41, 1, 5, 'Green'),
(42, 1, 5, 'Yellow'),
(43, 1, 1, 'Large'),
(44, 1, 2, 'Checkbox 3'),
(45, 1, 2, 'Checkbox 4'),
(46, 1, 11, 'Small'),
(47, 1, 11, 'Medium'),
(48, 1, 11, 'Large');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_address_id` int(11) NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` text NOT NULL,
  `shipping_address_id` int(11) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(60) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` text NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `language_code` varchar(5) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `subscription_id`, `invoice_no`, `invoice_prefix`, `transaction_id`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `custom_field`, `payment_address_id`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `shipping_address_id`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `language_code`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 0, 'INV-2024-00', '', 0, 'Интернет магазин запчастей Chery', 'https://opencart.loc/', 0, 1, 'Иван', 'Иванов', 'ivan@kteb.pl', '', '[]', 0, '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', '{\"code\":\"bank_transfer.bank_transfer\",\"name\":\"\\u0411\\u0430\\u043d\\u043a\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u043f\\u0435\\u0440\\u0435\\u0432\\u043e\\u0434\"}', 0, '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', '', 'рн', '32350.0000', 7, 0, '0.0000', 0, '', 1, '', 1, 'RUB', '1.00000000', '127.0.0.1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3', '2024-04-23 19:32:57', '2024-04-25 16:41:35'),
(2, 0, 0, 'INV-2024-00', '', 0, 'Интернет магазин запчастей Chery', 'https://opencart.kt-pl.com/', 1, 1, '123', '123', '123@mail.ru', '', '\"\"', 0, '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', '{\"code\":\"bank_transfer.bank_transfer\",\"name\":\"\\u0411\\u0430\\u043d\\u043a\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u043f\\u0435\\u0440\\u0435\\u0432\\u043e\\u0434\"}', 0, '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', '', '123', '64700.0000', 7, 0, '0.0000', 0, '', 1, '', 1, 'RUB', '1.00000000', '89.109.44.76', '89.109.44.76', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0', 'ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3', '2024-04-24 20:03:43', '2024-04-25 16:41:51'),
(3, 0, 0, 'INV-2024-00', '', 0, 'Интернет магазин запчастей Chery', 'https://opencart.kt-pl.com/', 1, 1, '123', '123', '123@mail.ru', '', '\"\"', 0, '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', '{\"code\":\"bank_transfer.bank_transfer\",\"name\":\"\\u0411\\u0430\\u043d\\u043a\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u043f\\u0435\\u0440\\u0435\\u0432\\u043e\\u0434\"}', 0, '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', '', '1', '32350.0000', 7, 0, '0.0000', 0, '', 1, '', 1, 'RUB', '1.00000000', '89.109.44.76', '89.109.44.76', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0', 'ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3', '2024-04-24 20:36:00', '2024-04-25 16:42:14'),
(4, 0, 1, 'INV-2024-00', '', 0, 'Интернет магазин запчастей Chery', 'https://opencart.kt-pl.com/', 0, 1, 'Иванов Иван', 'Иван', 'jbhvbgf@njgfkdgn.rei', '', '[]', 0, 'Иванов Иван', 'Иван', '', 'Мира, 1', '', 'Москва', '', 'Российская Федерация', 176, 'Москва', 83, '{firstname} {lastname}\r\n{address_1}\r\n{city}, {zone}\r\n{country}', '\"\"', '{\"code\":\"cod.cod\",\"name\":\"\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0435\"}', 0, 'Иванов Иван', 'Иван', '', 'Мира, 1', '', 'Москва', '', 'Российская Федерация', 176, 'Москва', 83, '{firstname} {lastname}\r\n{address_1}\r\n{city}, {zone}\r\n{country}', '\"\"', '{\"code\":\"flat.flat\",\"name\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0441 \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u043e\\u0439 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c\\u044e \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"cost\":\"1050\",\"tax_class_id\":\"0\",\"text\":\"1050\\u20bd\"}', '', '1740.0000', 17, 0, '0.0000', 0, '', 1, '', 1, 'RUB', '1.00000000', '212.75.140.199', '212.75.140.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2024-04-25 16:36:47', '2024-04-25 16:38:51'),
(5, 0, 0, 'INV-2024-00', '', 0, 'Интернет магазин запчастей Chery', 'https://opencart.kt-pl.com/', 0, 1, 'Иванов Иван', 'Иван', 'jbhvbgf@njgfkdgn.rei', '', '[]', 0, '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', '{\"code\":\"cod.cod\",\"name\":\"\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0435\"}', 0, 'Иванов Иван', 'Иван', '', 'Мира, 1', '', 'Москва', '', 'Российская Федерация', 176, 'Москва', 83, '{firstname} {lastname}\r\n{address_1}\r\n{city}, {zone}\r\n{country}', '\"\"', '{\"code\":\"pickup.pickup\",\"name\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437 \\u0438\\u0437 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0430\",\"cost\":0,\"tax_class_id\":0,\"text\":\"0\\u20bd\"}', '', '17690.0000', 1, 0, '0.0000', 0, '', 1, '', 1, 'RUB', '1.00000000', '212.75.140.199', '212.75.140.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2024-04-25 16:40:56', '2024-04-25 16:40:58'),
(6, 0, 0, 'INV-2024-00', '', 0, 'Интернет магазин запчастей Chery', 'https://opencart.kt-pl.com/', 0, 1, 'Иванов Иван', 'Иван', 'jbhvbgf@njgfkdgn.rei', '', '[]', 0, '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', '{\"code\":\"cod.cod\",\"name\":\"\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0435\"}', 0, 'Иванов Иван', 'Иван', '', 'пипаи', '', 'апит', '', 'Российская Федерация', 176, 'Москва', 83, '{firstname} {lastname}\r\n{address_1}\r\n{city}, {zone}\r\n{country}', '\"\"', '{\"code\":\"flat.flat\",\"name\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0441 \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u043e\\u0439 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c\\u044e \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"cost\":\"1050\",\"tax_class_id\":\"0\",\"text\":\"1050\\u20bd\"}', '', '21970.0000', 0, 0, '0.0000', 0, '', 1, '', 1, 'RUB', '1.00000000', '212.75.140.199', '212.75.140.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2024-04-25 16:46:19', '2024-04-25 17:13:18'),
(7, 0, 0, 'INV-2024-00', '', 0, 'Интернет магазин запчастей Chery', 'https://opencart.kt-pl.com/', 1, 1, '123', '123', '123@mail.ru', '', '\"\"', 0, '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', '{\"code\":\"cod.cod\",\"name\":\"\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0435\"}', 1, '123', '123', '123', '123', '123', '123', '123', 'Российская Федерация', 176, 'Москва', 83, '{firstname} {lastname}\r\n{address_1}\r\n{city}, {zone}\r\n{country}', '\"\"', '{\"code\":\"flat.flat\",\"name\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0441 \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u043e\\u0439 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c\\u044e \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"cost\":\"1050\",\"tax_class_id\":\"0\",\"text\":\"1050\\u20bd\"}', '123', '21970.0000', 0, 0, '0.0000', 0, '', 1, '', 1, 'RUB', '1.00000000', '185.231.205.144', '185.231.205.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0', 'ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3', '2024-04-25 17:27:45', '2024-04-26 05:12:14'),
(8, 0, 2, 'INV-2024-00', '', 0, 'Интернет магазин запчастей Chery', 'https://opencart.kt-pl.com/', 0, 1, 'Иван', 'Иванов', 'ivan@ivan.ivan', '', '[]', 0, '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', '{\"code\":\"bank_transfer.bank_transfer\",\"name\":\"\\u0411\\u0430\\u043d\\u043a\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u043f\\u0435\\u0440\\u0435\\u0432\\u043e\\u0434\"}', 0, 'Иван', 'Иванов', '', 'ул. Мира, 1, кв. 174', '', 'Москва', '', 'Российская Федерация', 176, 'Москва', 83, '{firstname} {lastname}\r\n{address_1}\r\n{city}, {zone}\r\n{country}', '\"\"', '{\"code\":\"flat.flat\",\"name\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0441 \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u043e\\u0439 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c\\u044e \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"cost\":\"1050\",\"tax_class_id\":\"0\",\"text\":\"1050\\u20bd\"}', '', '18740.0000', 1, 0, '0.0000', 0, '', 1, '', 1, 'RUB', '1.00000000', '178.178.91.244', '178.178.91.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2024-04-30 08:21:26', '2024-04-30 08:33:02');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 2, 1, 'Инструкции по банковскому переводу\n\nСБП 99999999999\n\nЗаказ не будет обработан, пока деньги не поступят на наш расчетный счет.', '2024-04-23 19:33:08'),
(2, 1, 2, 1, 'Инструкции по банковскому переводу\n\nСБП 99999999999\n\nЗаказ не будет обработан, пока деньги не поступят на наш расчетный счет.', '2024-04-23 19:33:15'),
(3, 1, 2, 1, 'Инструкции по банковскому переводу\n\nСБП 99999999999\n\nЗаказ не будет обработан, пока деньги не поступят на наш расчетный счет.', '2024-04-23 19:34:38'),
(4, 2, 0, 0, '', '2024-04-24 20:15:26'),
(5, 2, 2, 1, 'Инструкции по банковскому переводу\n\nСБП 99999999999\n\nЗаказ не будет обработан, пока деньги не поступят на наш расчетный счет.', '2024-04-24 20:15:32'),
(6, 2, 2, 1, 'Инструкции по банковскому переводу\n\nСБП 99999999999\n\nЗаказ не будет обработан, пока деньги не поступят на наш расчетный счет.', '2024-04-24 20:15:34'),
(7, 3, 2, 1, 'Инструкции по банковскому переводу\n\nСБП 99999999999\n\nЗаказ не будет обработан, пока деньги не поступят на наш расчетный счет.', '2024-04-24 20:36:08'),
(8, 3, 2, 1, 'Инструкции по банковскому переводу\n\nСБП 99999999999\n\nЗаказ не будет обработан, пока деньги не поступят на наш расчетный счет.', '2024-04-24 20:36:11'),
(9, 4, 1, 0, '', '2024-04-25 16:36:50'),
(10, 4, 0, 0, '', '2024-04-25 16:37:59'),
(11, 4, 1, 0, '', '2024-04-25 16:37:59'),
(12, 4, 2, 0, '', '2024-04-25 16:38:45'),
(13, 4, 17, 0, '', '2024-04-25 16:38:51'),
(14, 5, 1, 0, '', '2024-04-25 16:40:58'),
(15, 1, 7, 0, '', '2024-04-25 16:41:35'),
(16, 2, 7, 0, '', '2024-04-25 16:41:51'),
(17, 3, 7, 0, '', '2024-04-25 16:42:14'),
(18, 6, 0, 0, '', '2024-04-25 16:52:44'),
(19, 6, 0, 0, '', '2024-04-25 17:13:18'),
(20, 7, 0, 0, '', '2024-04-25 17:27:52'),
(21, 7, 0, 0, '', '2024-04-26 04:40:58'),
(22, 7, 0, 0, '', '2024-04-26 05:12:14'),
(23, 8, 2, 1, 'Инструкции по банковскому переводу\n\nСБП 99999999999\n\nЗаказ не будет обработан, пока деньги не поступят на наш расчетный счет.', '2024-04-30 08:25:07'),
(24, 8, 0, 0, '', '2024-04-30 08:33:02'),
(25, 8, 1, 0, '', '2024-04-30 08:33:02');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `master_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 57, 0, 'Аккумулятор TUBOR AGM 6СТ-70.0 VRLA', 'TUBOR AGM 6СТ-70.0 VRLA', 1, '32350.0000', '32350.0000', '0.0000', 0),
(3, 2, 57, 0, 'Аккумулятор TUBOR AGM 6СТ-70.0 VRLA', 'TUBOR AGM 6СТ-70.0 VRLA', 2, '32350.0000', '64700.0000', '0.0000', 0),
(4, 3, 57, 0, 'Аккумулятор TUBOR AGM 6СТ-70.0 VRLA', 'TUBOR AGM 6СТ-70.0 VRLA', 1, '32350.0000', '32350.0000', '0.0000', 0),
(6, 4, 64, 0, 'МАСЛО МОТОРНОЕ CHERY 5W-40 API SP, ACEA A3/B4, 1 Л', 'CHERY5W401', 1, '690.0000', '690.0000', '0.0000', 0),
(7, 5, 50, 0, 'Автосигнализация Pandora DX- 57R', 'Pandora DX- 57R', 1, '17690.0000', '17690.0000', '0.0000', 0),
(10, 6, 52, 0, 'Телематическая система Элемент Базовый', 'Элемент Базовый', 1, '20920.0000', '20920.0000', '0.0000', 0),
(14, 7, 52, 0, 'Телематическая система Элемент Базовый', 'Элемент Базовый', 1, '20920.0000', '20920.0000', '0.0000', 0),
(16, 8, 50, 0, 'Автосигнализация Pandora DX- 57R', 'Pandora DX- 57R', 1, '17690.0000', '17690.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Ожидание'),
(2, 1, 'В обработке'),
(3, 1, 'Доставлено'),
(7, 1, 'Отменено'),
(8, 1, 'Возврат'),
(9, 1, 'Отмена и аннулирование'),
(15, 1, 'Обработанный'),
(16, 1, 'Аннулированный'),
(17, 1, 'Ожидает оплаты'),
(18, 1, 'Оплачен, ожидает отгрузки');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_subscription`
--

CREATE TABLE `oc_order_subscription` (
  `order_subscription_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `subscription_plan_id` int(11) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_tax` decimal(15,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_remaining` smallint(6) NOT NULL,
  `trial_status` tinyint(1) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `tax` decimal(15,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `cycle` smallint(6) NOT NULL,
  `duration` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `extension`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'opencart', 'sub_total', 'Сумма', '32350.0000', 1),
(2, 1, 'opencart', 'total', 'Итого', '32350.0000', 9),
(5, 2, 'opencart', 'sub_total', 'Сумма', '64700.0000', 1),
(6, 2, 'opencart', 'total', 'Итого', '64700.0000', 9),
(7, 3, 'opencart', 'sub_total', 'Сумма', '32350.0000', 1),
(8, 3, 'opencart', 'total', 'Итого', '32350.0000', 9),
(12, 4, 'opencart', 'sub_total', 'Сумма', '690.0000', 1),
(13, 4, 'opencart', 'shipping', 'Доставка с фиксированной стоимостью доставки', '1050.0000', 3),
(14, 4, 'opencart', 'total', 'Итого', '1740.0000', 9),
(15, 5, 'opencart', 'sub_total', 'Сумма', '17690.0000', 1),
(16, 5, 'opencart', 'shipping', 'Самовывоз из магазина', '0.0000', 3),
(17, 5, 'opencart', 'total', 'Итого', '17690.0000', 9),
(24, 6, 'opencart', 'sub_total', 'Сумма', '20920.0000', 1),
(25, 6, 'opencart', 'shipping', 'Доставка с фиксированной стоимостью доставки', '1050.0000', 3),
(26, 6, 'opencart', 'total', 'Итого', '21970.0000', 9),
(36, 7, 'opencart', 'sub_total', 'Сумма', '20920.0000', 1),
(37, 7, 'opencart', 'shipping', 'Доставка с фиксированной стоимостью доставки', '1050.0000', 3),
(38, 7, 'opencart', 'total', 'Итого', '21970.0000', 9),
(42, 8, 'opencart', 'sub_total', 'Сумма', '17690.0000', 1),
(43, 8, 'opencart', 'shipping', 'Доставка с фиксированной стоимостью доставки', '1050.0000', 3),
(44, 8, 'opencart', 'total', 'Итого', '18740.0000', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL DEFAULT '0',
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `variant` text NOT NULL,
  `override` text NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `rating` int(1) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `variant`, `override`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(50, 0, 'Pandora DX- 57R', '', '', '', '', '', '', '', '', '', 98, 7, 'catalog/sig/ow1h5nf8j0psefbx95k9qd6kqlfzjwzm.png', 11, 1, '17690.0000', 0, 0, '2024-04-23', '0.00000000', 1, '18.00000000', '13.00000000', '7.00000000', 1, 1, 1, 0, 1, 1, '2024-04-23 17:26:29', '2024-04-23 17:52:15'),
(51, 0, 'Pandora DX- 9X LoRa', '', '', '', '', '', '', '', '', '', 120, 7, 'catalog/sig/22.jpg', 11, 1, '20910.0000', 0, 0, '2024-04-23', '0.00000000', 1, '18.00000000', '18.00000000', '7.00000000', 1, 1, 1, 0, 1, 1, '2024-04-23 17:49:04', '2024-04-23 17:52:23'),
(52, 0, 'Элемент Базовый', '', '', '', '', '', '', '', '', '', 20, 7, 'catalog/sig/zdxsdmf0mcrgiup1m2mv009hm798632j.png', 12, 1, '20920.0000', 0, 0, '2024-04-23', '0.50000000', 1, '11.00000000', '7.00000000', '2.00000000', 1, 1, 1, 0, 1, 1, '2024-04-23 18:17:58', '2024-04-23 18:17:58'),
(53, 0, 'Элемент Безопасность', '', '', '', '', '', '', '', '', '', 8, 7, 'catalog/sig/zdxsdmf0mcrgiup1m2mv009hm798632j.png', 12, 1, '37200.0000', 0, 0, '2024-04-23', '0.50000000', 1, '18.00000000', '18.00000000', '7.00000000', 1, 1, 1, 0, 1, 1, '2024-04-23 18:20:03', '2024-04-23 18:20:03'),
(54, 0, 'INDIS / KARRY / KIMO/A1 / QQ6', '', '', '', '', '', '', '', '', '', 250, 7, 'catalog/grm/jic2qrgkotk3sjelgqm4tk0zukf9s84q.webp', 13, 1, '710.0000', 0, 0, '2024-04-23', '0.50000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 1, '2024-04-23 19:05:45', '2024-04-23 19:05:45'),
(55, 0, '481F', '', '', '', '', '', '', '', '', '', 1, 7, 'catalog/grm/0c1rquyo3bqe10soh87lwm089zfgksdd.png', 13, 1, '1510.0000', 0, 0, '2024-04-23', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 1, '2024-04-23 19:07:14', '2024-04-23 19:07:14'),
(56, 0, 'TUBOR STANDART 6СТ-60.0', '', '', '', '', '', '', '', '', '', 10, 7, 'catalog/akb/wt2ix92j3ufzuprxdmvas5dh7hlajd9a.png', 0, 1, '12850.0000', 0, 0, '2024-04-23', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 1, '2024-04-23 19:10:55', '2024-04-23 19:11:15'),
(57, 0, 'TUBOR AGM 6СТ-70.0 VRLA', '', '', '', '', '', '', '', '', '', 8, 7, 'catalog/akb/buptgvwn75qxh2ou3rjp3zw0hsih6dd9.png', 0, 0, '32350.0000', 0, 0, '2024-04-23', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 1, '2024-04-23 19:12:46', '2024-04-23 19:31:55'),
(58, 0, 'HB3L', '', '', '', '', '', '', '', '', '', 150, 7, 'catalog/akb/mhuxoy5zte9m39uyfnwfuj6ikxhn5zjd.jpg', 0, 1, '1950.0000', 0, 0, '2024-04-23', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 1, '2024-04-23 19:14:44', '2024-04-23 19:14:44'),
(59, 0, '111AA', '', '', '', '', '', '', '', '', '', 120, 7, 'catalog/cds/vjw30vqrdvk0uior1tfdn9zxd2z5j35l.jpg', 0, 1, '580.0000', 0, 0, '2024-04-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 1, '2024-04-25 15:18:18', '2024-04-25 15:22:21'),
(60, 0, '802000012AA', '', '', '', '', '', '', '', '', '', 28, 7, 'catalog/cds/elp3ovpecwel8q7nscsf91ahw4tkj5me.jpeg', 0, 1, '3580.0000', 0, 0, '2024-04-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 1, '2024-04-25 15:24:54', '2024-04-25 15:24:54'),
(61, 0, '802000126AA', '', '', '', '', '', '', '', '', '', 12, 7, 'catalog/cds/xd2a54b3y9j441w5q01cg6qc5ldne5ob.jpeg', 0, 1, '4200.0000', 0, 0, '2024-04-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 1, '2024-04-25 15:27:15', '2024-04-25 15:27:15'),
(62, 0, '203000402AA', '', '', '', '', '', '', '', '', '', 20, 7, 'catalog/cds/2l199u0cj0nxcb7cpcpg8smoim17n1mm.jpg', 0, 1, '16470.0000', 0, 0, '2024-04-25', '6.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 1, '2024-04-25 15:31:01', '2024-04-25 15:33:28'),
(63, 0, '203000329AA', '', '', '', '', '', '', '', '', '', 20, 7, 'catalog/cds/j36gkwlmoi0c2h41xjwqnmsu079dm7uo.jpg', 0, 1, '18460.0000', 0, 0, '2024-04-25', '6.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 1, '2024-04-25 15:35:47', '2024-04-25 15:35:47'),
(64, 0, 'CHERY5W401', '', '', '', '', '', '', '', '', '', 121, 7, 'catalog/oil/p3coq6x3fojvjbob91an0zl0bcxm9var.jpg', 13, 1, '690.0000', 0, 0, '2024-04-25', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 1, '2024-04-25 15:42:13', '2024-04-25 16:37:52'),
(65, 0, '20524', '', '', '', '', '', '', '', '', '', 100, 7, 'catalog/oil/u0usiwol6km1djy18vof9ns751kopox6.jpg', 13, 1, '450.0000', 0, 0, '2024-04-25', '0.60000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 1, '2024-04-25 15:45:04', '2024-04-25 15:45:04');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(50, 12, 1, '868 МГц'),
(50, 13, 1, 'Bluetooth 4.2'),
(50, 14, 1, '200-300 м'),
(50, 15, 1, '300-400 м'),
(50, 16, 1, 'иммобилайзер, антиограбление 1/2, кодовый иммобилайзер, защищённый режим SLAVE, блокировка двигателя по CAN, безопасный бесключевой запуск двигателя'),
(50, 17, 1, 'контроль охранных зон: зажигание, двери, капот, багажник, педаль тормоза, удар, наклон, движение, штатная тревога, дополнительный датчик, низкое напряжение бортовой сети'),
(50, 18, 1, 'дистанционный и автоматический запуск двигателя и предпускового подогревателя, поддержка зажигания, турботаймер, режим технического обслуживания; отображение статусной информации (топливо, пробег, температура двигателя). Поддержка мобильного приложения Pandora Connect'),
(50, 19, 1, 'дистанционный, автоматический (по расписанию, периоду времени, температуре двигателя, напряжению)'),
(51, 12, 1, '868MHz / 2,4GHz'),
(51, 13, 1, 'AES 128 bit / Bluetooth 4.2'),
(51, 14, 1, '350 - 500 м (город)'),
(51, 15, 1, '750 - 850 м (город)'),
(51, 16, 1, 'иммобилайзер, антиограбление 1/2, кодовый иммобилайзер, защищённый режим SLAVE, блокировка двигателя по CAN, безопасный бесключевой запуск двигателя'),
(51, 17, 1, 'контроль охранных зон: зажигание, двери, капот, багажник, педаль тормоза, удар, наклон, движение, штатная тревога, дополнительный датчик, низкое напряжение бортовой сети'),
(51, 18, 1, 'дистанционный и автоматический запуск двигателя и предпускового подогревателя, поддержка зажигания, турботаймер, режим технического обслуживания; отображение статусной информации (топливо, пробег, температура двигателя). Поддержка мобильного приложения Pandora Connect'),
(51, 19, 1, 'дистанционный, автоматический (расписанию, периоду времени, температуре двигателя, напряжению)'),
(52, 16, 1, 'Передача сигнала по GSM / Местоположение по GРS/ГЛОНАСС / История поездок (маршруты, время, топливо, пробеги, нарушения) / Виртуальный гараж / Геозоны (оповещение о въезде / выезде)'),
(52, 18, 1, 'Аккумулятор а/м: уровень заряда и сигнал о разряде / Уровень топлива / Информация о пробеге с одометра / Удалённая диагностика двигателя (отображение CheckEngine) / Температура в салоне а/м / Резервное питание с сигналом об отключении системы'),
(59, 20, 1, 'BONUS 3 / TIGGO 2 / TIGGO 4 / TIGGO 7 / TIGGO 8 / TIGGO 7 PRO / TIGGO 8 PRO'),
(60, 20, 1, 'VERY / TIGGO 4 / TIGGO 7 / TIGGO 7 PRO / TIGGO 8 / TIGGO 8 PRO'),
(61, 20, 1, 'TIGGO 4 / TIGGO 4 PRO / TIGGO 8 / TIGGO 8 PRO'),
(62, 21, 1, '1 год'),
(62, 22, 1, 'Китай'),
(63, 20, 1, 'TIGGO 4'),
(63, 22, 1, 'Китай'),
(64, 20, 1, 'TIGGO 4 / TIGGO 4 PRO / TIGGO 5 / TIGGO 7 / TIGGO 7 PRO / TIGGO 7 PRO MAX / TIGGO 8 NEW / TIGGO 8 PRO E+'),
(64, 21, 1, '5 лет с даты производства');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(50, 1, 'Автосигнализация Pandora DX- 57R', '&lt;div class=&quot;active&quot; id=&quot;tab1&quot;&gt;\r\n&lt;p&gt;Автосигнализация Pandora DX-57R усовершенствованная версия с улучшенным диалоговым радиоканалом и минимальным потреблением энергии.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Модернизированный радиотракт создан на трансиверах высокого качества, отличающихся высокой дальнобойностью и надежностью.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Охранный комплекс Pandora DX-57R обеспечивает защиту 16 зон, включая кражу колес, подогрев мотора перед пуском без вспомогательных устройств, умный автозапуск мотора по семи параметрам и широкий спектр охранно-сервисных функций.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Pandora DX-57R получила расширенную комплектацию, обеспечивающую надежную охрану авто и пуска силового агрегата с дистанционного устройства. В стандартный набор входят брелок D-010 с дальностью управления до 300 м и оповещения - до 400 м, энергоемкий моноблок штатного модуля и модуля с реле и предохранителями.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Мобильное приложение Pandora Connect - это возможность менять тонкие настройки и параметры системы без физического контакта с блоком сигнализации, используя технологию Bluetooth. Обход штатных иммобилайзеров обеспечивает набор интерфейсов 2CAN/LIN/IMMO-KEY.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Pandora DX-57R - это современная двусторонняя автосигнализация для тех, кто ценит комфорт и спокойствие.&lt;/p&gt;\r\n&lt;/div&gt;', '', 'Автосигнализация Pandora DX- 57R', '', ''),
(51, 1, 'Автосигнализация Pandora DX- 9X LoRa', '&lt;div class=&quot;active&quot; id=&quot;tab1&quot;&gt;\r\n&lt;p&gt;Автосигнализация Pandora DX-9Х LоRа - это современная охранная система с СAN-шиной, обратной связью, брелоком LоRа с LCD-дисплеем, блоком автоматического запуска двигателя и возможностью управления с мобильного приложения.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Надежную защиту от сканирования обеспечивает криптостойкая система кодировки с типом кодирования AES 128 или&amp;nbsp;Bluetooth 4.2.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Дальнобойность брелка увеличена за счет нового радиотракта LoRa Hi Speed с оптимизированными ключевыми параметрами, обеспечивающими дальность связи между брелком и блоком сигнализации до 2 км в условиях городских радиопомех.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;От предыдущей версии модифицированная автосигнализация Pandora DX-9Х LоRа отличается наличием дополнительного модуля RMD-5m с функцией автозапуска и датчиком температуры двигателя.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Интерфейсы 2CAN, LIN и IMMO-KEY позволяют объединять автосигнализацию с инновационной электроникой современных авто, для чего потребуется лишь мобильное устройство с Bluetooth и мобильное приложение Pandora.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Автомобильная охранная система Pandora DX получила расширенный функционал, включая радиореле BTR-101 для блокировки при взломе. Также охранный комплекс обеспечивает полноценное управление с GSM-модулем и геолокации GPS.&lt;/p&gt;\r\n&lt;/div&gt;', '', 'Автосигнализация Pandora DX- 9X LoRa', '', ''),
(52, 1, 'Телематическая система Элемент Базовый', '&lt;p&gt;Мониторинговая телематическая система для управления функциями Вашего автомобиля Chery - «Элемент Базовый».&lt;br /&gt;\r\n&lt;br /&gt;\r\nУправление системой осуществляется с помощью мобильного приложения “Элемент” - удобного и интуитивно-понятного инструмента для водителя. Управляйте центральным замком из любой точки мира, с лёгкостью находите автомобиль на парковке, включив штатный гудок со световой сигнализацией.&lt;br /&gt;\r\n&lt;br /&gt;\r\nЭлемент позволяет всегда быть на связи с Вашим Chery, отображая его местоположение в реальном времени, сохраняя историю поездок с их детальным анализом (фиксация превышений скорости, резких ускорений, торможений и манёвров). Анализируйте показатели и улучшайте свой стиль вождения, чтобы сэкономить на топливе и штрафах. Встроенная энергонезависимая память сохраняет информацию с датчиков устройства даже в случаях отсутствия GSM сигнала. Все решения Элемент позволяют получать скидки полис каско по программам Умного страхования.&lt;br /&gt;\r\n&lt;br /&gt;\r\nЭлемент предоставляет круглосуточную техническую поддержку для клиентов. Специалисты Лаборатории Умного Вождения готовы проконсультировать Вас по любым вопросам и оказать помощь в экстренных ситуациях.&lt;/p&gt;', '', 'Телематическая система Элемент Базовый', '', ''),
(53, 1, 'Телематическая система Элемент Безопасность', '&lt;p&gt;Телематическая противоугонная система для управления функциями Вашего автомобиля Chery и обеспечения безопасности - «Элемент Безопасность».&lt;br /&gt;\r\n&lt;br /&gt;\r\nУправление системой осуществляется с помощью мобильного приложения “Элемент” - удобного и интуитивно-понятного инструмента для водителя. Управляйте центральным замком из любой точки мира, с лёгкостью находите автомобиль на парковке, включив штатный гудок со световой сигнализацией, а интеллектуальная настройка дистанционного запуска двигателя автомобиля (по расписанию, температуре и заряду АКБ) поможет организовать уникальные сценарии использования и испытать все преимущества автоматизации.&lt;br /&gt;\r\n&lt;br /&gt;\r\nЭлемент позволяет всегда быть на связи с вашим Сhery, отображая его местоположение в реальном времени, сохраняя историю поездок с их детальным анализом (фиксация превышений скорости, резких ускорений, торможений и манёвров). Анализируйте показатели и улучшайте свой стиль вождения, чтобы сэкономить на топливе и штрафах.&lt;br /&gt;\r\n&lt;br /&gt;\r\nСистема оснащена дополнительным противоугонным устройством - Меткой безопасности. При выключенном зажигании, закрытых дверях и отсутствии метки в зоне считывания (до 3 метров), система “Элемент” автоматически переходит в охранный режим. В случае попытки открытия дверей, включения зажигания, срабатывания датчика удара или эвакуации Элемент отправит клиенту уведомление о тревоге. Также метка безопасности защищена от радиоудлинителей, что не позволяет злоумышленникам скопировать сигнал устройства и отключить охранные функции автомобиля. Функция блокировки двигателя не позволит завести его или начать движение без метки, а резервное питание Элемента не позволит злоумышленникам получить доступ к автомобилю даже при отключении штатного аккумулятора.&lt;br /&gt;\r\n&lt;br /&gt;\r\nЭлемент предоставляет круглосуточную техническую поддержку для клиентов. Специалисты Лаборатории Умного Вождения готовы проконсультировать Вас по любым вопросам и оказать помощь в экстренных ситуациях.&lt;br /&gt;\r\n&lt;br /&gt;\r\nС системой Элемент Вам открывается возможность получения скидки на полис КАСКО в ведущих страховых компаниях по риску «Угон» и по программам Умного страхования.&amp;nbsp;&amp;nbsp;Условия индивидуальные и зависят от марки и модели автомобиля, а также от страховой компании.&lt;/p&gt;', '', 'Телематическая система Элемент Безопасность', '', ''),
(54, 1, 'Крышка привода ГРМ', '', '', 'Крышка привода ГРМ', '', ''),
(55, 1, 'ШЕСТЕРНЯ ПРИВОДА РЕМНЯ ГРМ ДВС МЕТ.', '', '', 'ШЕСТЕРНЯ ПРИВОДА РЕМНЯ ГРМ ДВС МЕТ.', '', ''),
(56, 1, 'Аккумулятор кислотный TUBOR STANDART 6СТ-60.0', '', '', 'Аккумулятор кислотный TUBOR STANDART 6СТ-60.0', '', ''),
(57, 1, 'Аккумулятор TUBOR AGM 6СТ-70.0 VRLA', '', '', 'Аккумулятор TUBOR AGM 6СТ-70.0 VRLA', '', ''),
(58, 1, 'Лампочка фары передней HB3LL, 60W', '', '', 'Лампочка фары передней HB3LL, 60W', '', ''),
(59, 1, 'КОЛПАЧОК ЦЕНТРАЛЬНОЙ ОСИ ДИСКА', '', '', 'КОЛПАЧОК ЦЕНТРАЛЬНОЙ ОСИ ДИСКА', '', ''),
(60, 1, 'ДАТЧИК ДАВЛЕНИЯ ВОЗДУХА В КОЛЕСЕ', '', '', 'ДАТЧИК ДАВЛЕНИЯ ВОЗДУХА В КОЛЕСЕ', '', ''),
(61, 1, 'ДАТЧИК ДАВЛЕНИЯ ВОЗДУХА В КОЛЕСЕ', '', '', 'ДАТЧИК ДАВЛЕНИЯ ВОЗДУХА В КОЛЕСЕ', '', ''),
(62, 1, 'ДИСК КОЛЕСНЫЙ ЛИТОЙ 205/55 R16', '', '', 'ДИСК КОЛЕСНЫЙ ЛИТОЙ 205/55 R16', '', ''),
(63, 1, 'ДИСК КОЛЕСНЫЙ ЛИТОЙ 215/60 R17', '', '', 'ДИСК КОЛЕСНЫЙ ЛИТОЙ 215/60 R17', '', ''),
(64, 1, 'МАСЛО МОТОРНОЕ CHERY 5W-40 API SP, ACEA A3/B4, 1 Л', '', '', 'МАСЛО МОТОРНОЕ CHERY 5W-40 API SP, ACEA A3/B4, 1 Л', '', ''),
(65, 1, 'ТОРМОЗНАЯ ЖИДКОСТЬ CHERY BRAKE FLUID 0,5 Л', '', '', 'ТОРМОЗНАЯ ЖИДКОСТЬ CHERY BRAKE FLUID 0,5 Л', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL,
  `date_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2354, 59, 'catalog/cds/eex1s2ozheidov4kpeftwxhdlyitsklv.jpg', 0),
(2355, 62, 'catalog/cds/8jc5gz9egzydrtqixtt507f4g0s5nz69.jpg', 0),
(2356, 62, 'catalog/cds/l51mnjhfsvgr1lsizwcsbex1ak32445c.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_report`
--

CREATE TABLE `oc_product_report` (
  `product_report_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL,
  `country` varchar(2) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL,
  `date_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_subscription`
--

CREATE TABLE `oc_product_subscription` (
  `product_id` int(11) NOT NULL,
  `subscription_plan_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `price` decimal(10,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(50, 59),
(51, 59),
(52, 59),
(53, 59),
(54, 60),
(55, 60),
(56, 60),
(57, 60),
(58, 60),
(52, 61),
(53, 61),
(50, 62),
(51, 62),
(54, 63),
(55, 63),
(56, 64),
(57, 64),
(58, 64),
(58, 66),
(56, 67),
(57, 67),
(59, 68),
(60, 68),
(61, 68),
(62, 68),
(63, 68),
(64, 69),
(65, 69),
(64, 70),
(65, 72);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(50, 0, 0),
(51, 0, 0),
(52, 0, 0),
(53, 0, 0),
(54, 0, 0),
(55, 0, 0),
(56, 0, 0),
(57, 0, 0),
(58, 0, 0),
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_viewed`
--

CREATE TABLE `oc_product_viewed` (
  `product_id` int(11) NOT NULL,
  `viewed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_ordered` date NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Возвращены средства'),
(2, 1, 'Выдан в кредит'),
(3, 1, 'Отправлен другой товар для замены');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Получен/доставлен неисправным (сломан)'),
(2, 1, 'Получен не тот (ошибочный) товар'),
(3, 1, 'Ошибочный заказ'),
(4, 1, 'Ошибка, пожалуйста укажите/приложите подробности'),
(5, 1, 'Другое (другая причина), пожалуйста укажите/приложите подробности');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Рассматриваемый'),
(2, 1, 'Заказ в ожидании'),
(3, 1, 'Готов (к отправке)');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_seo_url`
--

CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` varchar(255) NOT NULL,
  `keyword` varchar(768) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `key`, `value`, `keyword`, `sort_order`) VALUES
(27, 0, 1, 'path', '30', 'printer', 0),
(67, 0, 1, 'information_id', '2', 'terms', 0),
(69, 0, 1, 'information_id', '3', 'privacy', 0),
(70, 0, 1, 'language', 'ru-ru', '', -2),
(71, 0, 1, 'route', 'information/information.info', 'info', 0),
(72, 0, 1, 'route', 'information/information', 'information', -1),
(73, 0, 1, 'route', 'product/product', 'product', -1),
(74, 0, 1, 'route', 'product/category', 'catalog', -1),
(75, 0, 1, 'route', 'product/manufacturer', 'brands', -1),
(76, 0, 1, 'route', 'product/manufacturer.info', 'brand', -1),
(77, 0, 1, 'route', 'common/home', '', 0),
(78, 0, 1, 'route', 'information/contact', 'contact', 0),
(79, 0, 1, 'route', 'information/gdpr', 'gdpr', 0),
(80, 0, 1, 'route', 'account/returns.add', 'returns-add', 0),
(81, 0, 1, 'route', 'information/sitemap', 'sitemap', 0),
(82, 0, 1, 'route', 'checkout/voucher', 'voucher', 0),
(83, 0, 1, 'route', 'account/affiliate', 'affiliate', 0),
(84, 0, 1, 'route', 'product/special', 'special', 0),
(85, 0, 1, 'route', 'account/login', 'login', 0),
(86, 0, 1, 'route', 'account/account', 'account', 0),
(87, 0, 1, 'route', 'account/order', 'order', 0),
(88, 0, 1, 'route', 'account/wishlist', 'wishlist', 0),
(89, 0, 1, 'route', 'account/newsletter', 'newsletter', 0),
(90, 0, 1, 'route', 'account/register', 'register', 0),
(91, 0, 1, 'route', 'account/forgotten', 'forgotten', 0),
(92, 0, 1, 'route', 'account/address', 'address', 0),
(93, 0, 1, 'route', 'account/download', 'download', 0),
(94, 0, 1, 'route', 'account/subscription', 'subscription', 0),
(95, 0, 1, 'route', 'account/reward', 'reward', 0),
(96, 0, 1, 'route', 'account/returns', 'returns', 0),
(97, 0, 1, 'route', 'account/transaction', 'transaction', 0),
(98, 0, 1, 'route', 'account/edit', 'edit', 0),
(99, 0, 1, 'route', 'account/password', 'password', 0),
(100, 0, 1, 'route', 'checkout/cart', 'cart', 0),
(101, 0, 1, 'route', 'checkout/checkout', 'checkout', 0),
(102, 0, 1, 'route', 'cms/blog', 'blogs', -1),
(103, 0, 1, 'route', 'cms/blog.info', 'blog', -1),
(104, 0, 1, 'route', 'product/search', 'search', 0),
(107, 0, 1, 'path', '59_61', 'avtosignalizacii-i-protivougonnye-sistemy/element', 0),
(109, 0, 1, 'path', '60', 'zapasnye-chasti', 0),
(110, 0, 1, 'path', '59_62', 'avtosignalizacii-i-protivougonnye-sistemy/pandora', 0),
(111, 0, 1, 'path', '59', 'avtosignalizacii-i-protivougonnye-sistemy', 0),
(112, 0, 1, 'information_id', '4', 'delivery', 0),
(113, 0, 1, 'information_id', '1', 'about-us', 0),
(114, 0, 1, 'information_id', '5', 'oformlenie-zakaza', 0),
(124, 0, 1, 'manufacturer_id', '11', 'pandora_sig', 0),
(125, 0, 1, 'product_id', '50', 'avtosignalizaciya-pandora-dx-57r', 0),
(126, 0, 1, 'product_id', '51', 'avtosignalizaciya-pandora-dx-9x-lora', 0),
(127, 0, 1, 'manufacturer_id', '12', 'element_sig', 0),
(128, 0, 1, 'product_id', '52', 'element_111', 0),
(129, 0, 1, 'product_id', '53', 'telematicheskaya-sistema-element-bezopasnost', 0),
(130, 0, 1, 'path', '60_63', 'zapasnye-chasti/grm', 0),
(131, 0, 1, 'path', '60_64', 'zapasnye-chasti/dlya-to', 0),
(132, 0, 1, 'path', '60_65', 'zapasnye-chasti/podveska', 0),
(133, 0, 1, 'manufacturer_id', '13', 'chery', 0),
(134, 0, 1, 'product_id', '54', 'kryshka-privoda-grm', 0),
(135, 0, 1, 'product_id', '55', 'shesternya-privoda-remnya-grm-dvs-met', 0),
(136, 0, 1, 'path', '60_64_66', 'zapasnye-chasti/dlya-to/lampochki', 0),
(137, 0, 1, 'path', '60_64_67', 'zapasnye-chasti/dlya-to/akkumulyatory', 0),
(139, 0, 1, 'product_id', '56', 'akkumulyator-kislotnyj-tubor-standart-6st-60-0', 0),
(142, 0, 1, 'product_id', '58', 'lampochka-fary-perednej-hb3ll-60w', 0),
(143, 0, 1, 'product_id', '57', 'akkumulyator-tubor-agm-6st-70-0-vrla', 0),
(144, 0, 1, 'path', '68', 'kolesnye-diski', 0),
(149, 0, 1, 'product_id', '59', 'kolpachok-centralnoj-osi-diska', 0),
(150, 0, 1, 'product_id', '60', 'datchik-davleniya-vozduha-v-kolese', 0),
(151, 0, 1, 'product_id', '61', 'datchik-davleniya-vozduha-v-kolese-44', 0),
(153, 0, 1, 'product_id', '62', 'disk-kolesnyj-litoj-205-55-r16', 0),
(154, 0, 1, 'product_id', '63', 'disk-kolesnyj-litoj-215-60-r17', 0),
(155, 0, 1, 'path', '69', 'masla', 0),
(156, 0, 1, 'path', '69_70', 'masla/motornye-masla', 0),
(157, 0, 1, 'path', '69_71', 'masla/zhidkosti-gur', 0),
(158, 0, 1, 'path', '69_72', 'masla/tormoznye-zhidkosti', 0),
(160, 0, 1, 'product_id', '65', 'tormoznaya-zhidkost-chery-brake-fluid-0-5-l', 0),
(161, 0, 1, 'product_id', '64', 'maslo-motornoe-chery-5w-40-api-sp-acea-a3-b4-1-l', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_session`
--

CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('08b2557838d6b8b434c8cf5b00', '{\"currency\":\"RUB\"}', '2024-04-30 17:35:46'),
('5216b6f8f3707e3feae8d58411', '{\"currency\":\"RUB\"}', '2024-05-01 07:19:20'),
('56a3aa1ea11f6711b4e95daa78', '{\"currency\":\"RUB\",\"review_token\":\"6eb4b270b35ca364ef26694c5627a9b1\",\"login_token\":\"48767fe3eeeeb53219a0c5f813\",\"customer_id\":\"1\",\"customer\":{\"customer_id\":1,\"customer_group_id\":1,\"firstname\":\"123\",\"lastname\":\"123\",\"email\":\"123@mail.ru\",\"telephone\":\"\",\"custom_field\":\"\"},\"customer_token\":\"0e86ebeb4b1b1681fb426e9295\",\"comment\":\"123\",\"agree\":\"1\",\"order_id\":7,\"compare\":[\"50\",\"51\"],\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"123\",\"lastname\":\"123\",\"company\":\"123\",\"address_1\":\"123\",\"address_2\":\"123\",\"city\":\"123\",\"postcode\":\"123\",\"zone_id\":\"83\",\"zone\":\"\\u041c\\u043e\\u0441\\u043a\\u0432\\u0430\",\"zone_code\":\"RU-MOW\",\"country_id\":\"176\",\"country\":\"\\u0420\\u043e\\u0441\\u0441\\u0438\\u0439\\u0441\\u043a\\u0430\\u044f \\u0424\\u0435\\u0434\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f\",\"iso_code_2\":\"RU\",\"iso_code_3\":\"RUS\",\"address_format\":\"{firstname} {lastname}\\r\\n{address_1}\\r\\n{city}, {zone}\\r\\n{country}\",\"custom_field\":\"\",\"default\":\"1\"}}', '2024-04-30 20:08:01'),
('80692d440380a057e49d4ac581', '{\"currency\":\"RUB\"}', '2024-05-01 08:21:47'),
('a0d08c3973b49a85e124cdddd1', '{\"currency\":\"RUB\"}', '2024-04-30 19:42:02'),
('a31234eefa7ebb9db4ef7d5ac2', '{\"currency\":\"RUB\"}', '2024-04-30 17:35:43'),
('c1f38de370f22fd195a1860963', '{\"currency\":\"RUB\",\"user_id\":\"1\",\"user_token\":\"5d76bc342fddfd5625ade90ff1f79691\",\"review_token\":\"8c22ad5caf1967f2e9fed85f7011d0bd\",\"customer\":{\"customer_id\":0,\"customer_group_id\":1,\"firstname\":\"\\u0418\\u0432\\u0430\\u043d\",\"lastname\":\"\\u0418\\u0432\\u0430\\u043d\\u043e\\u0432\",\"email\":\"ivan@ivan.ivan\",\"telephone\":\"\",\"custom_field\":[]},\"shipping_address\":{\"address_id\":0,\"firstname\":\"\\u0418\\u0432\\u0430\\u043d\",\"lastname\":\"\\u0418\\u0432\\u0430\\u043d\\u043e\\u0432\",\"company\":\"\",\"address_1\":\"\\u0443\\u043b. \\u041c\\u0438\\u0440\\u0430, 1, \\u043a\\u0432. 174\",\"address_2\":\"\",\"city\":\"\\u041c\\u043e\\u0441\\u043a\\u0432\\u0430\",\"postcode\":\"\",\"zone_id\":\"83\",\"zone\":\"\\u041c\\u043e\\u0441\\u043a\\u0432\\u0430\",\"zone_code\":\"RU-MOW\",\"country_id\":\"176\",\"country\":\"\\u0420\\u043e\\u0441\\u0441\\u0438\\u0439\\u0441\\u043a\\u0430\\u044f \\u0424\\u0435\\u0434\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f\",\"iso_code_2\":\"RU\",\"iso_code_3\":\"RUS\",\"address_format\":\"{firstname} {lastname}\\r\\n{address_1}\\r\\n{city}, {zone}\\r\\n{country}\",\"custom_field\":\"\"},\"api_session\":\"ebdb9e0937e78ebb46df1f98bd\"}', '2024-05-01 08:45:49'),
('ebdb9e0937e78ebb46df1f98bd', '{\"currency\":\"RUB\",\"api_id\":1,\"order_id\":8,\"customer\":{\"customer_id\":\"0\",\"customer_group_id\":\"1\",\"firstname\":\"\\u0418\\u0432\\u0430\\u043d\",\"lastname\":\"\\u0418\\u0432\\u0430\\u043d\\u043e\\u0432\",\"email\":\"ivan@ivan.ivan\",\"telephone\":\"\",\"custom_field\":[]},\"payment_method\":{\"code\":\"bank_transfer.bank_transfer\",\"name\":\"\\u0411\\u0430\\u043d\\u043a\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u043f\\u0435\\u0440\\u0435\\u0432\\u043e\\u0434\"},\"shipping_address\":{\"address_id\":\"0\",\"firstname\":\"\\u0418\\u0432\\u0430\\u043d\",\"lastname\":\"\\u0418\\u0432\\u0430\\u043d\\u043e\\u0432\",\"company\":\"\",\"address_1\":\"\\u0443\\u043b. \\u041c\\u0438\\u0440\\u0430, 1, \\u043a\\u0432. 174\",\"address_2\":\"\",\"postcode\":\"\",\"city\":\"\\u041c\\u043e\\u0441\\u043a\\u0432\\u0430\",\"zone_id\":\"83\",\"zone\":\"\\u041c\\u043e\\u0441\\u043a\\u0432\\u0430\",\"zone_code\":\"RU-MOW\",\"country_id\":\"176\",\"country\":\"\\u0420\\u043e\\u0441\\u0441\\u0438\\u0439\\u0441\\u043a\\u0430\\u044f \\u0424\\u0435\\u0434\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f\",\"iso_code_2\":\"RU\",\"iso_code_3\":\"RUS\",\"address_format\":\"{firstname} {lastname}\\r\\n{address_1}\\r\\n{city}, {zone}\\r\\n{country}\",\"custom_field\":\"\"},\"shipping_method\":{\"code\":\"flat.flat\",\"name\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0441 \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u043e\\u0439 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c\\u044e \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"cost\":\"1050\",\"tax_class_id\":\"0\",\"text\":\"1050\\u20bd\"},\"vouchers\":[]}', '2024-05-01 08:33:06'),
('f76d7523c7943a8fdd8feb7a1e', '', '2024-05-01 08:33:06');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(126, 0, 'developer', 'developer_sass', '1', 0),
(127, 0, 'currency_ecb', 'currency_ecb_status', '0', 0),
(128, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(129, 0, 'payment_free_checkout', 'payment_free_checkout_order_status_id', '1', 0),
(130, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(131, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(132, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(133, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(134, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(135, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(142, 0, 'total_sub_total', 'total_sub_total_sort_order', '1', 0),
(143, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(144, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(145, 0, 'total_tax', 'total_tax_status', '0', 0),
(146, 0, 'total_total', 'total_total_sort_order', '9', 0),
(147, 0, 'total_total', 'total_total_status', '1', 0),
(148, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(149, 0, 'total_credit', 'total_credit_status', '1', 0),
(156, 0, 'total_voucher', 'total_voucher_sort_order', '8', 0),
(157, 0, 'total_voucher', 'total_voucher_status', '1', 0),
(158, 0, 'module_category', 'module_category_status', '1', 0),
(159, 0, 'module_account', 'module_account_status', '1', 0),
(160, 0, 'theme_basic', 'theme_basic_status', '1', 0),
(161, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(162, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(163, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(164, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(165, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(166, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(167, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(168, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(169, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(170, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(171, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(172, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(173, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(174, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(175, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(176, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(177, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(178, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(179, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(180, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(181, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(182, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(183, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(184, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(185, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(186, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(187, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(188, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(189, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(190, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(191, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(192, 0, 'report_customer_search', 'report_customer_search_sort_order', '4', 0),
(193, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(194, 0, 'report_customer_transaction', 'report_customer_transaction_sort_order', '5', 0),
(195, 0, 'report_customer', 'report_customer_status', '1', 0),
(196, 0, 'report_customer', 'report_customer_sort_order', '6', 0),
(197, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(198, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '8', 0),
(199, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(200, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '9', 0),
(201, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(202, 0, 'report_sale_return', 'report_sale_return_sort_order', '10', 0),
(203, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(204, 0, 'report_sale_order', 'report_sale_order_sort_order', '11', 0),
(205, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(206, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '12', 0),
(207, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(208, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '13', 0),
(209, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(210, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '14', 0),
(211, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(212, 0, 'report_marketing', 'report_marketing_sort_order', '15', 0),
(213, 0, 'report_customer_subscription', 'report_customer_subscription_status', '1', 0),
(214, 0, 'report_customer_subscription', 'report_customer_subscription_sort_order', '16', 0),
(613, 0, 'payment_bank_transfer', 'payment_bank_transfer_bank_1', 'СБП 99999999999', 0),
(614, 0, 'payment_bank_transfer', 'payment_bank_transfer_order_status_id', '2', 0),
(615, 0, 'payment_bank_transfer', 'payment_bank_transfer_geo_zone_id', '0', 0),
(616, 0, 'payment_bank_transfer', 'payment_bank_transfer_status', '1', 0),
(617, 0, 'payment_bank_transfer', 'payment_bank_transfer_sort_order', '', 0),
(768, 0, 'total_coupon', 'total_coupon_status', '0', 0),
(769, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(770, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(771, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(772, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(773, 0, 'total_reward', 'total_reward_status', '0', 0),
(774, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(785, 0, 'shipping_flat', 'shipping_flat_cost', '1050', 0),
(786, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '0', 0),
(787, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '4', 0),
(788, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(789, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(1054, 0, 'config', 'config_meta_title', 'Интернет магазин запчастей Chery', 0),
(1055, 0, 'config', 'config_meta_description', 'Интернет магазин запчастей Chery', 0),
(1056, 0, 'config', 'config_meta_keyword', 'Интернет магазин запчастей Chery', 0),
(1057, 0, 'config', 'config_logo', 'catalog/logo-black-new.png', 0),
(1058, 0, 'config', 'config_theme', 'basic', 0),
(1059, 0, 'config', 'config_layout_id', '4', 0),
(1060, 0, 'config', 'config_name', 'Интернет магазин запчастей Chery', 0),
(1061, 0, 'config', 'config_owner', 'Иванов Иван', 0),
(1062, 0, 'config', 'config_address', 'г. Москва, ул. Ленина 10 оф. 32', 0),
(1063, 0, 'config', 'config_geocode', '', 0),
(1064, 0, 'config', 'config_email', 'admin@admin.admin', 0),
(1065, 0, 'config', 'config_telephone', '+79999999999', 0),
(1066, 0, 'config', 'config_image', 'catalog/logo-black-new.png', 0),
(1067, 0, 'config', 'config_open', 'Ежедневно с 10:00 до 18:00', 0),
(1068, 0, 'config', 'config_comment', '', 0),
(1069, 0, 'config', 'config_country_id', '176', 0),
(1070, 0, 'config', 'config_zone_id', '83', 0),
(1071, 0, 'config', 'config_timezone', 'UTC', 0),
(1072, 0, 'config', 'config_language', 'ru-ru', 0),
(1073, 0, 'config', 'config_language_admin', 'ru-ru', 0),
(1074, 0, 'config', 'config_currency', 'RUB', 0),
(1075, 0, 'config', 'config_currency_auto', '0', 0),
(1076, 0, 'config', 'config_length_class_id', '1', 0),
(1077, 0, 'config', 'config_weight_class_id', '1', 0),
(1078, 0, 'config', 'config_product_description_length', '100', 0),
(1079, 0, 'config', 'config_pagination', '10', 0),
(1080, 0, 'config', 'config_product_count', '1', 0),
(1081, 0, 'config', 'config_pagination_admin', '10', 0),
(1082, 0, 'config', 'config_product_report_status', '0', 0),
(1083, 0, 'config', 'config_review_status', '1', 0),
(1084, 0, 'config', 'config_review_purchased', '0', 0),
(1085, 0, 'config', 'config_review_guest', '1', 0),
(1086, 0, 'config', 'config_article_description_length', '90', 0),
(1087, 0, 'config', 'config_comment_status', '0', 0),
(1088, 0, 'config', 'config_comment_guest', '0', 0),
(1089, 0, 'config', 'config_voucher_min', '1', 0),
(1090, 0, 'config', 'config_voucher_max', '1000', 0),
(1091, 0, 'config', 'config_cookie_id', '0', 0),
(1092, 0, 'config', 'config_gdpr_id', '3', 0),
(1093, 0, 'config', 'config_gdpr_limit', '180', 0),
(1094, 0, 'config', 'config_tax', '0', 0),
(1095, 0, 'config', 'config_tax_default', 'shipping', 0),
(1096, 0, 'config', 'config_tax_customer', 'shipping', 0),
(1097, 0, 'config', 'config_customer_online', '0', 0),
(1098, 0, 'config', 'config_customer_online_expire', '1', 0),
(1099, 0, 'config', 'config_customer_activity', '0', 0),
(1100, 0, 'config', 'config_customer_search', '0', 0),
(1101, 0, 'config', 'config_customer_group_id', '1', 0),
(1102, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(1103, 0, 'config', 'config_customer_price', '0', 0),
(1104, 0, 'config', 'config_telephone_display', '0', 0),
(1105, 0, 'config', 'config_telephone_required', '0', 0),
(1106, 0, 'config', 'config_login_attempts', '5', 0),
(1107, 0, 'config', 'config_account_id', '3', 0),
(1108, 0, 'config', 'config_invoice_prefix', 'INV-2024-00', 0),
(1109, 0, 'config', 'config_cart_weight', '1', 0),
(1110, 0, 'config', 'config_checkout_guest', '1', 0),
(1111, 0, 'config', 'config_checkout_payment_address', '0', 0),
(1112, 0, 'config', 'config_checkout_shipping_address', '1', 0),
(1113, 0, 'config', 'config_checkout_id', '2', 0),
(1114, 0, 'config', 'config_order_status_id', '1', 0),
(1115, 0, 'config', 'config_processing_status', '[\"1\"]', 1),
(1116, 0, 'config', 'config_complete_status', '[\"3\"]', 1),
(1117, 0, 'config', 'config_fraud_status_id', '8', 0),
(1118, 0, 'config', 'config_api_id', '1', 0),
(1119, 0, 'config', 'config_subscription_status_id', '1', 0),
(1120, 0, 'config', 'config_subscription_active_status_id', '2', 0),
(1121, 0, 'config', 'config_subscription_expired_status_id', '3', 0),
(1122, 0, 'config', 'config_subscription_suspended_status_id', '4', 0),
(1123, 0, 'config', 'config_subscription_canceled_status_id', '5', 0),
(1124, 0, 'config', 'config_subscription_failed_status_id', '6', 0),
(1125, 0, 'config', 'config_subscription_denied_status_id', '7', 0),
(1126, 0, 'config', 'config_stock_display', '0', 0),
(1127, 0, 'config', 'config_stock_warning', '0', 0),
(1128, 0, 'config', 'config_stock_checkout', '0', 0),
(1129, 0, 'config', 'config_affiliate_status', '1', 0),
(1130, 0, 'config', 'config_affiliate_group_id', '1', 0),
(1131, 0, 'config', 'config_affiliate_approval', '0', 0),
(1132, 0, 'config', 'config_affiliate_auto', '0', 0),
(1133, 0, 'config', 'config_affiliate_commission', '5', 0),
(1134, 0, 'config', 'config_affiliate_expire', '0', 0),
(1135, 0, 'config', 'config_affiliate_id', '4', 0),
(1136, 0, 'config', 'config_return_status_id', '2', 0),
(1137, 0, 'config', 'config_return_id', '0', 0),
(1138, 0, 'config', 'config_captcha', '', 0),
(1139, 0, 'config', 'config_captcha_page', '[\"review\",\"contact\"]', 1),
(1140, 0, 'config', 'config_image_category_width', '80', 0),
(1141, 0, 'config', 'config_image_category_height', '80', 0),
(1142, 0, 'config', 'config_image_thumb_width', '500', 0),
(1143, 0, 'config', 'config_image_thumb_height', '500', 0),
(1144, 0, 'config', 'config_image_popup_width', '800', 0),
(1145, 0, 'config', 'config_image_popup_height', '800', 0),
(1146, 0, 'config', 'config_image_product_width', '250', 0),
(1147, 0, 'config', 'config_image_product_height', '250', 0),
(1148, 0, 'config', 'config_image_additional_width', '74', 0),
(1149, 0, 'config', 'config_image_additional_height', '74', 0),
(1150, 0, 'config', 'config_image_related_width', '250', 0),
(1151, 0, 'config', 'config_image_related_height', '250', 0),
(1152, 0, 'config', 'config_image_blog_width', '90', 0),
(1153, 0, 'config', 'config_image_blog_height', '90', 0),
(1154, 0, 'config', 'config_image_compare_width', '90', 0),
(1155, 0, 'config', 'config_image_compare_height', '90', 0),
(1156, 0, 'config', 'config_image_wishlist_width', '47', 0),
(1157, 0, 'config', 'config_image_wishlist_height', '47', 0),
(1158, 0, 'config', 'config_image_cart_width', '47', 0),
(1159, 0, 'config', 'config_image_cart_height', '47', 0),
(1160, 0, 'config', 'config_image_location_width', '268', 0),
(1161, 0, 'config', 'config_image_location_height', '50', 0),
(1162, 0, 'config', 'config_mail_engine', '', 0),
(1163, 0, 'config', 'config_mail_parameter', '', 0),
(1164, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(1165, 0, 'config', 'config_mail_smtp_username', '', 0),
(1166, 0, 'config', 'config_mail_smtp_password', '', 0),
(1167, 0, 'config', 'config_mail_smtp_port', '25', 0),
(1168, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(1169, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(1170, 0, 'config', 'config_mail_alert_email', '', 0),
(1171, 0, 'config', 'config_maintenance', '0', 0),
(1172, 0, 'config', 'config_session_expire', '86400', 0),
(1173, 0, 'config', 'config_session_samesite', 'Strict', 0),
(1174, 0, 'config', 'config_seo_url', '0', 0),
(1175, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(1176, 0, 'config', 'config_compression', '0', 0),
(1177, 0, 'config', 'config_security', '0', 0),
(1178, 0, 'config', 'config_shared', '0', 0),
(1179, 0, 'config', 'config_encryption', '781d96f02e238c29b7d6f293a083e7c7b152858960e7145775eaaf429414e07e868faf0f1cb9e2a7601ac294d2e114cf3f2d2661c59815e6c25dc09f322cbb8b539579ec1720f54a703c7459aa447ce5924ac0055e83eff67e9b2b2ecdfde845193aef1b5ec6b811f7b8f5936fa722077f70be1d751318ba0e0cc8cb52702a42493c0b83067d7cbb04340fba017306cd80c9e56a07ff3312146a5c491a08295b34c0166d52f6599ac5f8c62fc22fe6db5d2a4aed353e9d0e0ea765b9e61397c6d66b140ccdc1f6575dc8a7734fa59ef928c824ef9cdf249c15bbc3902677af6dee4bd9a6da147d00f5837f2d496883d80c7500f1de918c1356b1914c345609dd', 0),
(1180, 0, 'config', 'config_file_max_size', '20', 0),
(1181, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\nwebp\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nmp4\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(1182, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/webp\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-zip\r\napplication/x-zip-compressed\r\napplication/rar\r\napplication/x-rar\r\napplication/x-rar-compressed\r\napplication/octet-stream\r\naudio/mpeg\r\nvideo/mp4\r\nvideo/quicktime\r\napplication/pdf', 0),
(1183, 0, 'config', 'config_error_display', '1', 0),
(1184, 0, 'config', 'config_error_log', '1', 0),
(1185, 0, 'config', 'config_error_filename', 'error.log', 0),
(1189, 0, 'shipping_pickup', 'shipping_pickup_geo_zone_id', '4', 0),
(1190, 0, 'shipping_pickup', 'shipping_pickup_status', '0', 0),
(1191, 0, 'shipping_pickup', 'shipping_pickup_sort_order', '0', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_startup`
--

CREATE TABLE `oc_startup` (
  `startup_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_statistics`
--

CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '167570.0000'),
(2, 'order_processing', '6.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '0.0000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(5, 1, 'Нет в наличии'),
(6, 1, 'Ожидание 2-3 дня'),
(7, 1, 'В наличии'),
(8, 1, 'Предзаказ');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_subscription`
--

CREATE TABLE `oc_subscription` (
  `subscription_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `payment_address_id` int(11) NOT NULL,
  `payment_method` text NOT NULL,
  `shipping_address_id` int(11) NOT NULL,
  `shipping_method` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL,
  `subscription_plan_id` int(11) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_remaining` smallint(6) NOT NULL,
  `trial_status` tinyint(1) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `cycle` smallint(6) NOT NULL,
  `duration` smallint(6) NOT NULL,
  `remaining` smallint(6) NOT NULL,
  `date_next` datetime NOT NULL,
  `comment` text NOT NULL,
  `subscription_status_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_subscription_history`
--

CREATE TABLE `oc_subscription_history` (
  `subscription_history_id` int(11) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `subscription_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_subscription_plan`
--

CREATE TABLE `oc_subscription_plan` (
  `subscription_plan_id` int(11) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) NOT NULL,
  `trial_cycle` int(10) NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) NOT NULL,
  `cycle` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_subscription_plan_description`
--

CREATE TABLE `oc_subscription_plan_description` (
  `subscription_plan_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_subscription_status`
--

CREATE TABLE `oc_subscription_status` (
  `subscription_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_subscription_status`
--

INSERT INTO `oc_subscription_status` (`subscription_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Ожидание'),
(2, 1, 'Активный'),
(3, 1, 'Истекший'),
(4, 1, 'Приостановленный'),
(5, 1, 'Отмененный'),
(6, 1, 'Неудачный'),
(7, 1, 'Отказано');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Налоги', 'Облагаемые налогом', '2022-01-06 23:21:53', '2022-02-23 14:07:50');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(87, 3, 'НДС', '18.0000', 'F', '2022-02-21 21:49:23', '2022-02-23 00:40:19');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(120, 10, 87, 'store', 0),
(121, 10, 86, 'payment', 1),
(127, 9, 87, 'shipping', 2),
(128, 9, 86, 'shipping', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_theme`
--

INSERT INTO `oc_theme` (`theme_id`, `store_id`, `route`, `code`, `date_added`) VALUES
(1, 0, 'checkout/shipping_method', 'Перед выбором способа доставки необходимо сохранить данные.\n&lt;fieldset&gt;\n  &lt;legend&gt;{{ heading_title }}&lt;/legend&gt;\n  &lt;div class=&quot;input-group&quot;&gt;\n    &lt;span class=&quot;input-group-text&quot;&gt;&lt;i class=&quot;fa fa-truck&quot;&gt;&lt;/i&gt;&lt;/span&gt;&lt;input type=&quot;text&quot; name=&quot;shipping_method&quot; value=&quot;{{ shipping_method }}&quot; placeholder=&quot;{{ entry_shipping_method }}&quot; id=&quot;input-shipping-method&quot; class=&quot;form-control&quot; readonly/&gt;\n    &lt;button type=&quot;button&quot; id=&quot;button-shipping-methods&quot; class=&quot;btn btn-primary&quot;&gt;{{ button_choose }}&lt;/button&gt;\n  &lt;/div&gt;\n  &lt;input type=&quot;hidden&quot; name=&quot;code&quot; value=&quot;{{ code }}&quot; id=&quot;input-shipping-code&quot;/&gt;\n  &lt;div id=&quot;error-shipping-method&quot; class=&quot;invalid-feedback&quot;&gt;&lt;/div&gt;\n&lt;/fieldset&gt;\n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n$(\'#button-shipping-methods\').on(\'click\', function() {\n    var element = this;\n\n    chain.attach(function() {\n        return $.ajax({\n            url: \'index.php?route=checkout/shipping_method.quote&amp;language={{ language }}\',\n            dataType: \'json\',\n            beforeSend: function() {\n                $(element).button(\'loading\');\n            },\n            complete: function() {\n                $(element).button(\'reset\');\n            },\n            success: function(json) {\n                console.log(json);\n\n                $(\'#input-shipping-method\').removeClass(\'is-invalid\');\n                $(\'#error-shipping-method\').removeClass(\'d-block\');\n\n                if (json[\'error\']) {\n                    $(\'#input-shipping-method\').addClass(\'is-invalid\');\n                    $(\'#error-shipping-method\').html(json[\'error\']).addClass(\'d-block\');\n                }\n\n                if (json[\'shipping_methods\']) {\n                    $(\'#modal-shipping\').remove();\n\n                    html = \'&lt;div id=&quot;modal-shipping&quot; class=&quot;modal&quot;&gt;\';\n                    html += \'  &lt;div class=&quot;modal-dialog modal-dialog-centered&quot;&gt;\';\n                    html += \'    &lt;div class=&quot;modal-content&quot;&gt;\';\n                    html += \'      &lt;div class=&quot;modal-header&quot;&gt;\';\n                    html += \'        &lt;h5 class=&quot;modal-title&quot;&gt;&lt;i class=&quot;fa fa-truck&quot;&gt;&lt;/i&gt; {{ text_shipping_method|escape(\'js\') }}&lt;/h5&gt;\';\n                    html += \'        &lt;button type=&quot;button&quot; class=&quot;btn-close&quot; data-bs-dismiss=&quot;modal&quot;&gt;&lt;/button&gt;\';\n                    html += \'      &lt;/div&gt;\';\n                    html += \'      &lt;div class=&quot;modal-body&quot;&gt;\';\n                    html += \'        &lt;form id=&quot;form-shipping-method&quot;&gt;\';\n                    html += \'          &lt;p&gt;{{ text_shipping|escape(\'js\') }}&lt;/p&gt;\';\n\n                    for (i in json[\'shipping_methods\']) {\n                        html += \'&lt;p&gt;&lt;strong&gt;\' + json[\'shipping_methods\'][i][\'name\'] + \'&lt;/strong&gt;&lt;/p&gt;\';\n\n                        if (!json[\'shipping_methods\'][i][\'error\']) {\n                            for (j in json[\'shipping_methods\'][i][\'quote\']) {\n                                html += \'&lt;div class=&quot;form-check&quot;&gt;\';\n\n                                var code = i + \'-\' + j.replaceAll(\'_\', \'-\');\n\n                                html += \'&lt;input type=&quot;radio&quot; name=&quot;shipping_method&quot; value=&quot;\' + json[\'shipping_methods\'][i][\'quote\'][j][\'code\'] + \'&quot; id=&quot;input-shipping-method-\' + code + \'&quot;\';\n\n                                if (json[\'shipping_methods\'][i][\'quote\'][j][\'code\'] == $(\'#input-shipping-code\').val()) {\n                                    html += \' checked\';\n                                }\n\n                                html += \'/&gt;\';\n                                html += \'  &lt;label for=&quot;input-shipping-method-\' + code + \'&quot;&gt;\' + json[\'shipping_methods\'][i][\'quote\'][j][\'name\'] + \' - \' + json[\'shipping_methods\'][i][\'quote\'][j][\'text\'] + \'&lt;/label&gt;\';\n                                html += \'&lt;/div&gt;\';\n                            }\n                        } else {\n                            html += \'&lt;div class=&quot;alert alert-danger&quot;&gt;\' + json[\'shipping_methods\'][i][\'error\'] + \'&lt;/div&gt;\';\n                        }\n                    }\n\n                    html += \'          &lt;div class=&quot;text-end&quot;&gt;\';\n                    html += \'            &lt;button type=&quot;submit&quot; id=&quot;button-shipping-method&quot; class=&quot;btn btn-primary&quot;&gt;{{ button_continue|escape(\'js\') }}&lt;/button&gt;\';\n                    html += \'          &lt;/div&gt;\';\n                    html += \'        &lt;/form&gt;\';\n                    html += \'      &lt;/div&gt;\';\n                    html += \'    &lt;/div&gt;\';\n                    html += \'  &lt;/div&gt;\';\n                    html += \'&lt;/div&gt;\';\n\n                    $(\'body\').append(html);\n\n                    $(\'#modal-shipping\').modal(\'show\');\n                }\n            },\n            error: function(xhr, ajaxOptions, thrownError) {\n                console.log(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n            }\n        });\n    });\n});\n\n$(document).on(\'submit\', \'#form-shipping-method\', function(e) {\n    e.preventDefault();\n\n    var element = this;\n\n    chain.attach(function() {\n        return $.ajax({\n            url: \'index.php?route=checkout/shipping_method.save&amp;language={{ language }}\',\n            type: \'post\',\n            data: $(\'#form-shipping-method\').serialize(),\n            dataType: \'json\',\n            contentType: \'application/x-www-form-urlencoded\',\n            beforeSend: function() {\n                $(\'#button-shipping-method\').button(\'loading\');\n            },\n            complete: function() {\n                $(\'#button-shipping-method\').button(\'reset\');\n            },\n            success: function(json) {\n                console.log(json);\n\n                if (json[\'redirect\']) {\n                    location = json[\'redirect\'];\n                }\n\n                if (json[\'error\']) {\n                    $(\'#alert\').prepend(\'&lt;div class=&quot;alert alert-danger alert-dismissible&quot;&gt;&lt;i class=&quot;fa-solid fa-circle-exclamation&quot;&gt;&lt;/i&gt; \' + json[\'error\'] + \' &lt;button type=&quot;button&quot; class=&quot;btn-close&quot; data-bs-dismiss=&quot;alert&quot;&gt;&lt;/button&gt;&lt;/div&gt;\');\n                }\n\n                if (json[\'success\']) {\n                    $(\'#alert\').prepend(\'&lt;div class=&quot;alert alert-success alert-dismissible&quot;&gt;&lt;i class=&quot;fa-solid fa-circle-check&quot;&gt;&lt;/i&gt; \' + json[\'success\'] + \' &lt;button type=&quot;button&quot; class=&quot;btn-close&quot; data-bs-dismiss=&quot;alert&quot;&gt;&lt;/button&gt;&lt;/div&gt;\');\n\n                    $(\'#modal-shipping\').modal(\'hide\');\n\n                    $(\'#input-shipping-method\').val($(\'input[name=\\\'shipping_method\\\']:checked\').parent().find(\'label\').text());\n                    $(\'#input-shipping-code\').val($(\'input[name=\\\'shipping_method\\\']:checked\').val());\n\n                    $(\'#input-payment-method\').val(\'\');\n\n                    $(\'#checkout-confirm\').load(\'index.php?route=checkout/confirm.confirm&amp;language={{ language }}\');\n                }\n            },\n            error: function(xhr, ajaxOptions, thrownError) {\n                console.log(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n            }\n        });\n    });\n});\n//--&gt;&lt;/script&gt;', '2024-04-25 16:52:41');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_topic`
--

CREATE TABLE `oc_topic` (
  `topic_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_topic_description`
--

CREATE TABLE `oc_topic_description` (
  `topic_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_topic_to_store`
--

CREATE TABLE `oc_topic_to_store` (
  `topic_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `code` varchar(40) NOT NULL DEFAULT '',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '$2y$10$sqNHOKimqtNMAOUZsCf0KOnfGcLe9TOY5iYBZ0.tpUO/lK0FvXlG.', 'Admin', 'Admin', 'admin@admin.admin', 'catalog/logo-black-new.png', '', '178.178.91.244', 1, '2024-04-23 16:06:36');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user_authorize`
--

CREATE TABLE `oc_user_authorize` (
  `user_authorize_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(96) NOT NULL,
  `total` int(1) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/review\",\"catalog\\/subscription_plan\",\"cms\\/antispam\",\"cms\\/article\",\"cms\\/comment\",\"cms\\/topic\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/pagination\",\"common\\/security\",\"cron\\/cron\",\"cron\\/currency\",\"cron\\/gdpr\",\"cron\\/subscription\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"customer\\/gdpr\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"error\\/exception\",\"extension\\/analytics\",\"extension\\/captcha\",\"extension\\/currency\",\"extension\\/dashboard\",\"extension\\/feed\",\"extension\\/fraud\",\"extension\\/language\",\"extension\\/marketplace\",\"extension\\/module\",\"extension\\/other\",\"extension\\/payment\",\"extension\\/report\",\"extension\\/shipping\",\"extension\\/theme\",\"extension\\/total\",\"localisation\\/address_format\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/subscription_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/authorize\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/gdpr\",\"mail\\/returns\",\"mail\\/reward\",\"mail\\/subscription\",\"mail\\/transaction\",\"mail\\/voucher\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/cron\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/promotion\",\"marketplace\\/startup\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/returns\",\"sale\\/subscription\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/authorize\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/notification\",\"tool\\/upgrade\",\"tool\\/upload\",\"user\\/api\",\"user\\/profile\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/opencart\\/captcha\\/basic\",\"extension\\/opencart\\/currency\\/ecb\",\"extension\\/opencart\\/currency\\/fixer\",\"extension\\/opencart\\/dashboard\\/activity\",\"extension\\/opencart\\/dashboard\\/chart\",\"extension\\/opencart\\/dashboard\\/customer\",\"extension\\/opencart\\/dashboard\\/map\",\"extension\\/opencart\\/dashboard\\/online\",\"extension\\/opencart\\/dashboard\\/order\",\"extension\\/opencart\\/dashboard\\/recent\",\"extension\\/opencart\\/dashboard\\/sale\",\"extension\\/opencart\\/fraud\\/ip\",\"extension\\/opencart\\/module\\/account\",\"extension\\/opencart\\/module\\/banner\",\"extension\\/opencart\\/module\\/bestseller\",\"extension\\/opencart\\/module\\/category\",\"extension\\/opencart\\/module\\/featured\",\"extension\\/opencart\\/module\\/filter\",\"extension\\/opencart\\/module\\/html\",\"extension\\/opencart\\/module\\/information\",\"extension\\/opencart\\/module\\/latest\",\"extension\\/opencart\\/module\\/special\",\"extension\\/opencart\\/module\\/store\",\"extension\\/opencart\\/payment\\/bank_transfer\",\"extension\\/opencart\\/payment\\/cheque\",\"extension\\/opencart\\/payment\\/cod\",\"extension\\/opencart\\/payment\\/free_checkout\",\"extension\\/opencart\\/report\\/customer\",\"extension\\/opencart\\/report\\/customer_activity\",\"extension\\/opencart\\/report\\/customer_order\",\"extension\\/opencart\\/report\\/customer_reward\",\"extension\\/opencart\\/report\\/customer_search\",\"extension\\/opencart\\/report\\/customer_transaction\",\"extension\\/opencart\\/report\\/customer_subscription\",\"extension\\/opencart\\/report\\/marketing\",\"extension\\/opencart\\/report\\/product_purchased\",\"extension\\/opencart\\/report\\/product_viewed\",\"extension\\/opencart\\/report\\/sale_coupon\",\"extension\\/opencart\\/report\\/sale_order\",\"extension\\/opencart\\/report\\/sale_return\",\"extension\\/opencart\\/report\\/sale_shipping\",\"extension\\/opencart\\/report\\/sale_tax\",\"extension\\/opencart\\/shipping\\/flat\",\"extension\\/opencart\\/shipping\\/free\",\"extension\\/opencart\\/shipping\\/item\",\"extension\\/opencart\\/shipping\\/pickup\",\"extension\\/opencart\\/shipping\\/weight\",\"extension\\/opencart\\/theme\\/basic\",\"extension\\/opencart\\/total\\/coupon\",\"extension\\/opencart\\/total\\/credit\",\"extension\\/opencart\\/total\\/handling\",\"extension\\/opencart\\/total\\/low_order_fee\",\"extension\\/opencart\\/total\\/reward\",\"extension\\/opencart\\/total\\/shipping\",\"extension\\/opencart\\/total\\/sub_total\",\"extension\\/opencart\\/total\\/tax\",\"extension\\/opencart\\/total\\/total\",\"extension\\/opencart\\/total\\/voucher\",\"extension\\/opencart\\/payment\\/bank_transfer\",\"extension\\/opencart\\/shipping\\/free\",\"extension\\/opencart\\/shipping\\/pickup\",\"extension\\/opencart\\/shipping\\/item\",\"extension\\/opencart\\/module\\/store\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/review\",\"catalog\\/subscription_plan\",\"cms\\/antispam\",\"cms\\/article\",\"cms\\/comment\",\"cms\\/topic\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/pagination\",\"common\\/security\",\"cron\\/cron\",\"cron\\/currency\",\"cron\\/gdpr\",\"cron\\/subscription\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"customer\\/gdpr\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"error\\/exception\",\"extension\\/analytics\",\"extension\\/captcha\",\"extension\\/currency\",\"extension\\/dashboard\",\"extension\\/feed\",\"extension\\/fraud\",\"extension\\/language\",\"extension\\/marketplace\",\"extension\\/module\",\"extension\\/other\",\"extension\\/payment\",\"extension\\/report\",\"extension\\/shipping\",\"extension\\/theme\",\"extension\\/total\",\"localisation\\/address_format\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/subscription_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/authorize\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/gdpr\",\"mail\\/returns\",\"mail\\/reward\",\"mail\\/subscription\",\"mail\\/transaction\",\"mail\\/voucher\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/cron\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/promotion\",\"marketplace\\/startup\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/returns\",\"sale\\/subscription\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/authorize\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/notification\",\"tool\\/upgrade\",\"tool\\/upload\",\"user\\/api\",\"user\\/profile\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/opencart\\/captcha\\/basic\",\"extension\\/opencart\\/currency\\/ecb\",\"extension\\/opencart\\/currency\\/fixer\",\"extension\\/opencart\\/dashboard\\/activity\",\"extension\\/opencart\\/dashboard\\/chart\",\"extension\\/opencart\\/dashboard\\/customer\",\"extension\\/opencart\\/dashboard\\/map\",\"extension\\/opencart\\/dashboard\\/online\",\"extension\\/opencart\\/dashboard\\/order\",\"extension\\/opencart\\/dashboard\\/recent\",\"extension\\/opencart\\/dashboard\\/sale\",\"extension\\/opencart\\/fraud\\/ip\",\"extension\\/opencart\\/module\\/account\",\"extension\\/opencart\\/module\\/banner\",\"extension\\/opencart\\/module\\/bestseller\",\"extension\\/opencart\\/module\\/category\",\"extension\\/opencart\\/module\\/featured\",\"extension\\/opencart\\/module\\/filter\",\"extension\\/opencart\\/module\\/html\",\"extension\\/opencart\\/module\\/information\",\"extension\\/opencart\\/module\\/latest\",\"extension\\/opencart\\/module\\/special\",\"extension\\/opencart\\/module\\/store\",\"extension\\/opencart\\/payment\\/bank_transfer\",\"extension\\/opencart\\/payment\\/cheque\",\"extension\\/opencart\\/payment\\/cod\",\"extension\\/opencart\\/payment\\/free_checkout\",\"extension\\/opencart\\/report\\/customer\",\"extension\\/opencart\\/report\\/customer_activity\",\"extension\\/opencart\\/report\\/customer_order\",\"extension\\/opencart\\/report\\/customer_reward\",\"extension\\/opencart\\/report\\/customer_search\",\"extension\\/opencart\\/report\\/customer_transaction\",\"extension\\/opencart\\/report\\/customer_subscription\",\"extension\\/opencart\\/report\\/marketing\",\"extension\\/opencart\\/report\\/product_purchased\",\"extension\\/opencart\\/report\\/product_viewed\",\"extension\\/opencart\\/report\\/sale_coupon\",\"extension\\/opencart\\/report\\/sale_order\",\"extension\\/opencart\\/report\\/sale_return\",\"extension\\/opencart\\/report\\/sale_shipping\",\"extension\\/opencart\\/report\\/sale_tax\",\"extension\\/opencart\\/shipping\\/flat\",\"extension\\/opencart\\/shipping\\/free\",\"extension\\/opencart\\/shipping\\/item\",\"extension\\/opencart\\/shipping\\/pickup\",\"extension\\/opencart\\/shipping\\/weight\",\"extension\\/opencart\\/theme\\/basic\",\"extension\\/opencart\\/total\\/coupon\",\"extension\\/opencart\\/total\\/credit\",\"extension\\/opencart\\/total\\/handling\",\"extension\\/opencart\\/total\\/low_order_fee\",\"extension\\/opencart\\/total\\/reward\",\"extension\\/opencart\\/total\\/shipping\",\"extension\\/opencart\\/total\\/sub_total\",\"extension\\/opencart\\/total\\/tax\",\"extension\\/opencart\\/total\\/total\",\"extension\\/opencart\\/total\\/voucher\",\"extension\\/opencart\\/payment\\/bank_transfer\",\"extension\\/opencart\\/shipping\\/free\",\"extension\\/opencart\\/shipping\\/pickup\",\"extension\\/opencart\\/shipping\\/item\",\"extension\\/opencart\\/module\\/store\"]}'),
(2, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user_login`
--

CREATE TABLE `oc_user_login` (
  `user_login_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_user_login`
--

INSERT INTO `oc_user_login` (`user_login_id`, `user_id`, `ip`, `user_agent`, `date_added`) VALUES
(1, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', '2024-04-23 16:07:20'),
(2, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', '2024-04-23 16:43:55'),
(3, 1, '212.75.140.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', '2024-04-24 17:03:59'),
(4, 1, '212.75.140.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-04-25 15:11:39'),
(5, 1, '178.178.91.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-04-30 07:20:25');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(6, 'catalog/demo/apple_logo.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(8, 'catalog/demo/canon_eos_5d_2.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Новый год'),
(7, 1, 'День рождения'),
(8, 1, 'Другое');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Килограмм', 'кг'),
(2, 1, 'Грамм', 'г');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(45, 176, 'Республика Хакасия', 'RU-KK', 0),
(46, 176, 'Московская область', 'RU-MOS', 1),
(47, 176, 'Чукотский АО', 'RU-CHU', 0),
(48, 176, 'Архангельская область', 'RU-ARK', 0),
(49, 176, 'Астраханская область', 'RU-AST', 0),
(50, 176, 'Алтайский край', 'RU-ALT', 0),
(51, 176, 'Белгородская область', 'RU-BEL', 0),
(52, 176, 'Еврейская АО', 'RU-YEV', 0),
(53, 176, 'Амурская область', 'RU-AMU', 0),
(54, 176, 'Брянская область', 'RU-BRY', 0),
(55, 176, 'Чувашская Республика', 'RU-CU', 0),
(56, 176, 'Челябинская область', 'RU-CHE', 0),
(57, 176, 'Карачаево-Черкесия', 'RU-KC', 0),
(58, 176, 'Забайкальский край', 'RU-ZAB', 0),
(59, 176, 'Ленинградская область', 'RU-LEN', 0),
(60, 176, 'Республика Калмыкия', 'RU-KL', 0),
(61, 176, 'Сахалинская область', 'RU-SAK', 0),
(62, 176, 'Республика Алтай', 'RU-AL', 0),
(63, 176, 'Чеченская Республика', 'RU-CE', 0),
(64, 176, 'Иркутская область', 'RU-IRK', 0),
(65, 176, 'Ивановская область', 'RU-IVA', 0),
(66, 176, 'Удмуртская Республика', 'RU-UD', 0),
(67, 176, 'Калининградская область', 'RU-KGD', 0),
(68, 176, 'Калужская область', 'RU-KLU', 0),
(69, 176, 'Республика Татарстан', 'RU-TA', 0),
(70, 176, 'Кемеровская область', 'RU-KEM', 0),
(71, 176, 'Хабаровский край', 'RU-KHA', 0),
(72, 176, 'Ханты-Мансийский АО - Югра', 'RU-KHM', 0),
(73, 176, 'Костромская область', 'RU-KOS', 0),
(74, 176, 'Краснодарский край', 'RU-KDA', 0),
(75, 176, 'Красноярский край', 'RU-KYA', 0),
(76, 176, 'Курганская область', 'RU-KGN', 0),
(77, 176, 'Курская область', 'RU-KRS', 0),
(78, 176, 'Республика Тыва', 'RU-TY', 0),
(79, 176, 'Липецкая область', 'RU-LIP', 0),
(80, 176, 'Магаданская область', 'RU-MAG', 0),
(81, 176, 'Республика Дагестан', 'RU-DA', 0),
(82, 176, 'Республика Адыгея', 'RU-AD', 0),
(83, 176, 'Москва', 'RU-MOW', 1),
(84, 176, 'Мурманская область', 'RU-MUR', 0),
(85, 176, 'Республика Кабардино-Балкария', 'RU-KB', 0),
(86, 176, 'Ненецкий АО', 'RU-NEN', 0),
(87, 176, 'Республика Ингушетия', 'RU-IN', 0),
(88, 176, 'Нижегородская область', 'RU-NIZ', 0),
(89, 176, 'Новгородская область', 'RU-NGR', 0),
(90, 176, 'Новосибирская область', 'RU-NVS', 0),
(91, 176, 'Омская область', 'RU-OMS', 0),
(92, 176, 'Орловская область', 'RU-ORL', 0),
(93, 176, 'Оренбургская область', 'RU-ORE', 0),
(94, 176, 'Пензенская область', 'RU-PNZ', 0),
(95, 176, 'Пермский край', 'RU-PER', 0),
(96, 176, 'Камчатский край', 'RU-KAM', 0),
(97, 176, 'Республика Карелия', 'RU-KR', 0),
(98, 176, 'Псковская область', 'RU-PSK', 0),
(99, 176, 'Ростовская область', 'RU-ROS', 0),
(100, 176, 'Рязанская область', 'RU-RYA', 0),
(101, 176, 'Ямало-Ненецкий АО', 'RU-YAN', 0),
(102, 176, 'Самарская область', 'RU-SAM', 0),
(103, 176, 'Республика Мордовия', 'RU-MO', 0),
(104, 176, 'Саратовская область', 'RU-SAR', 0),
(105, 176, 'Смоленская область', 'RU-SMO', 0),
(106, 176, 'Санкт-Петербург', 'RU-SPE', 0),
(107, 176, 'Ставропольский край', 'RU-STA', 0),
(108, 176, 'Республика Коми', 'RU-KO', 0),
(109, 176, 'Тамбовская область', 'RU-TAM', 0),
(110, 176, 'Томская область', 'RU-TOM', 0),
(111, 176, 'Тульская область', 'RU-TUL', 0),
(112, 176, 'Тверская область', 'RU-TVE', 0),
(113, 176, 'Тюменская область', 'RU-TYU', 0),
(114, 176, 'Республика Башкортостан', 'RU-BA', 0),
(115, 176, 'Ульяновская область', 'RU-ULY', 0),
(116, 176, 'Республика Бурятия', 'RU-BU', 0),
(117, 176, 'Республика Северная Осетия', 'RU-SE', 0),
(118, 176, 'Владимирская область', 'RU-VLA', 0),
(119, 176, 'Приморский край', 'RU-PRI', 0),
(120, 176, 'Волгоградская область', 'RU-VGG', 0),
(121, 176, 'Вологодская область', 'RU-VLG', 0),
(122, 176, 'Воронежская область', 'RU-VOR', 0),
(123, 176, 'Кировская область', 'RU-KIR', 0),
(124, 176, 'Республика Саха', 'RU-SA', 0),
(125, 176, 'Ярославская область', 'RU-YAR', 0),
(126, 176, 'Свердловская область', 'RU-SVE', 0),
(127, 176, 'Республика Марий Эл', 'RU-ME', 0),
(169, 176, 'Байконур - город республ-го значения', 'BY', 0),
(291, 176, 'Республика Крым', 'RU-KRM', 0),
(292, 176, 'Севастополь', 'RU-SEV', 0),
(293, 176, 'Донецкая Народная Республика', 'RU-DNR', 0),
(294, 176, 'Луганская Народная Республика', 'RU-LNR', 0),
(295, 176, 'Запорожская область', 'RU-ZAP', 0),
(296, 176, 'Херсонская область', 'RU-HER', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 176, 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 176, 83, 4, '2024-04-25 16:06:39', '0000-00-00 00:00:00'),
(3, 176, 46, 4, '2024-04-25 16:06:39', '0000-00-00 00:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Индексы таблицы `oc_address_format`
--
ALTER TABLE `oc_address_format`
  ADD PRIMARY KEY (`address_format_id`);

--
-- Индексы таблицы `oc_antispam`
--
ALTER TABLE `oc_antispam`
  ADD PRIMARY KEY (`antispam_id`),
  ADD KEY `keyword` (`keyword`);

--
-- Индексы таблицы `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Индексы таблицы `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Индексы таблицы `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Индексы таблицы `oc_article`
--
ALTER TABLE `oc_article`
  ADD PRIMARY KEY (`article_id`);

--
-- Индексы таблицы `oc_article_comment`
--
ALTER TABLE `oc_article_comment`
  ADD PRIMARY KEY (`article_comment_id`),
  ADD KEY `article_id` (`article_id`);

--
-- Индексы таблицы `oc_article_description`
--
ALTER TABLE `oc_article_description`
  ADD PRIMARY KEY (`article_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_article_to_layout`
--
ALTER TABLE `oc_article_to_layout`
  ADD PRIMARY KEY (`article_id`,`store_id`);

--
-- Индексы таблицы `oc_article_to_store`
--
ALTER TABLE `oc_article_to_store`
  ADD PRIMARY KEY (`article_id`,`store_id`);

--
-- Индексы таблицы `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Индексы таблицы `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Индексы таблицы `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Индексы таблицы `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Индексы таблицы `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Индексы таблицы `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Индексы таблицы `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`subscription_plan_id`);

--
-- Индексы таблицы `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Индексы таблицы `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Индексы таблицы `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Индексы таблицы `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Индексы таблицы `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Индексы таблицы `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Индексы таблицы `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Индексы таблицы `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Индексы таблицы `oc_cron`
--
ALTER TABLE `oc_cron`
  ADD PRIMARY KEY (`cron_id`);

--
-- Индексы таблицы `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Индексы таблицы `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Индексы таблицы `oc_customer_affiliate`
--
ALTER TABLE `oc_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `oc_customer_affiliate_report`
--
ALTER TABLE `oc_customer_affiliate_report`
  ADD PRIMARY KEY (`customer_affiliate_report_id`);

--
-- Индексы таблицы `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Индексы таблицы `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Индексы таблицы `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Индексы таблицы `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Индексы таблицы `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Индексы таблицы `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Индексы таблицы `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Индексы таблицы `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Индексы таблицы `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Индексы таблицы `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Индексы таблицы `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Индексы таблицы `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Индексы таблицы `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Индексы таблицы `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Индексы таблицы `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Индексы таблицы `oc_download_report`
--
ALTER TABLE `oc_download_report`
  ADD PRIMARY KEY (`download_report_id`);

--
-- Индексы таблицы `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Индексы таблицы `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Индексы таблицы `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Индексы таблицы `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  ADD PRIMARY KEY (`extension_path_id`),
  ADD KEY `path` (`path`);

--
-- Индексы таблицы `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Индексы таблицы `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Индексы таблицы `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Индексы таблицы `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Индексы таблицы `oc_gdpr`
--
ALTER TABLE `oc_gdpr`
  ADD PRIMARY KEY (`gdpr_id`);

--
-- Индексы таблицы `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Индексы таблицы `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Индексы таблицы `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Индексы таблицы `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Индексы таблицы `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Индексы таблицы `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Индексы таблицы `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Индексы таблицы `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Индексы таблицы `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Индексы таблицы `oc_manufacturer_to_layout`
--
ALTER TABLE `oc_manufacturer_to_layout`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Индексы таблицы `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Индексы таблицы `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Индексы таблицы `oc_marketing_report`
--
ALTER TABLE `oc_marketing_report`
  ADD PRIMARY KEY (`marketing_report_id`);

--
-- Индексы таблицы `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Индексы таблицы `oc_notification`
--
ALTER TABLE `oc_notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Индексы таблицы `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Индексы таблицы `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Индексы таблицы `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Индексы таблицы `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Индексы таблицы `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Индексы таблицы `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Индексы таблицы `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Индексы таблицы `oc_order_subscription`
--
ALTER TABLE `oc_order_subscription`
  ADD PRIMARY KEY (`order_subscription_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Индексы таблицы `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Индексы таблицы `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Индексы таблицы `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Индексы таблицы `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Индексы таблицы `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Индексы таблицы `oc_product_report`
--
ALTER TABLE `oc_product_report`
  ADD PRIMARY KEY (`product_report_id`);

--
-- Индексы таблицы `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Индексы таблицы `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_subscription`
--
ALTER TABLE `oc_product_subscription`
  ADD PRIMARY KEY (`product_id`,`subscription_plan_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Индексы таблицы `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_product_viewed`
--
ALTER TABLE `oc_product_viewed`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Индексы таблицы `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Индексы таблицы `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Индексы таблицы `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Индексы таблицы `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Индексы таблицы `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `keyword` (`keyword`),
  ADD KEY `query` (`key`,`value`);

--
-- Индексы таблицы `oc_session`
--
ALTER TABLE `oc_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `expire` (`expire`);

--
-- Индексы таблицы `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Индексы таблицы `oc_startup`
--
ALTER TABLE `oc_startup`
  ADD PRIMARY KEY (`startup_id`);

--
-- Индексы таблицы `oc_statistics`
--
ALTER TABLE `oc_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Индексы таблицы `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Индексы таблицы `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Индексы таблицы `oc_subscription`
--
ALTER TABLE `oc_subscription`
  ADD PRIMARY KEY (`subscription_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oc_subscription_history`
--
ALTER TABLE `oc_subscription_history`
  ADD PRIMARY KEY (`subscription_history_id`);

--
-- Индексы таблицы `oc_subscription_plan`
--
ALTER TABLE `oc_subscription_plan`
  ADD PRIMARY KEY (`subscription_plan_id`);

--
-- Индексы таблицы `oc_subscription_plan_description`
--
ALTER TABLE `oc_subscription_plan_description`
  ADD PRIMARY KEY (`subscription_plan_id`,`language_id`);

--
-- Индексы таблицы `oc_subscription_status`
--
ALTER TABLE `oc_subscription_status`
  ADD PRIMARY KEY (`subscription_status_id`,`language_id`);

--
-- Индексы таблицы `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Индексы таблицы `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Индексы таблицы `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Индексы таблицы `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Индексы таблицы `oc_topic`
--
ALTER TABLE `oc_topic`
  ADD PRIMARY KEY (`topic_id`);

--
-- Индексы таблицы `oc_topic_description`
--
ALTER TABLE `oc_topic_description`
  ADD PRIMARY KEY (`topic_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_topic_to_store`
--
ALTER TABLE `oc_topic_to_store`
  ADD PRIMARY KEY (`topic_id`,`store_id`);

--
-- Индексы таблицы `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Индексы таблицы `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Индексы таблицы `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `oc_user_authorize`
--
ALTER TABLE `oc_user_authorize`
  ADD PRIMARY KEY (`user_authorize_id`);

--
-- Индексы таблицы `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Индексы таблицы `oc_user_login`
--
ALTER TABLE `oc_user_login`
  ADD PRIMARY KEY (`user_login_id`);

--
-- Индексы таблицы `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Индексы таблицы `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Индексы таблицы `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Индексы таблицы `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Индексы таблицы `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Индексы таблицы `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Индексы таблицы `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_address_format`
--
ALTER TABLE `oc_address_format`
  MODIFY `address_format_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_antispam`
--
ALTER TABLE `oc_antispam`
  MODIFY `antispam_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_article`
--
ALTER TABLE `oc_article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_article_comment`
--
ALTER TABLE `oc_article_comment`
  MODIFY `article_comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT для таблицы `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT для таблицы `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT для таблицы `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_cron`
--
ALTER TABLE `oc_cron`
  MODIFY `cron_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_affiliate_report`
--
ALTER TABLE `oc_customer_affiliate_report`
  MODIFY `customer_affiliate_report_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  MODIFY `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT для таблицы `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_download_report`
--
ALTER TABLE `oc_download_report`
  MODIFY `download_report_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT для таблицы `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=500;

--
-- AUTO_INCREMENT для таблицы `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_gdpr`
--
ALTER TABLE `oc_gdpr`
  MODIFY `gdpr_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_marketing_report`
--
ALTER TABLE `oc_marketing_report`
  MODIFY `marketing_report_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oc_notification`
--
ALTER TABLE `oc_notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `oc_order_subscription`
--
ALTER TABLE `oc_order_subscription`
  MODIFY `order_subscription_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT для таблицы `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT для таблицы `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT для таблицы `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2357;

--
-- AUTO_INCREMENT для таблицы `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT для таблицы `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `oc_product_report`
--
ALTER TABLE `oc_product_report`
  MODIFY `product_report_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=546;

--
-- AUTO_INCREMENT для таблицы `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;

--
-- AUTO_INCREMENT для таблицы `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT для таблицы `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1192;

--
-- AUTO_INCREMENT для таблицы `oc_startup`
--
ALTER TABLE `oc_startup`
  MODIFY `startup_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_statistics`
--
ALTER TABLE `oc_statistics`
  MODIFY `statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_subscription`
--
ALTER TABLE `oc_subscription`
  MODIFY `subscription_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_subscription_history`
--
ALTER TABLE `oc_subscription_history`
  MODIFY `subscription_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_subscription_plan`
--
ALTER TABLE `oc_subscription_plan`
  MODIFY `subscription_plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_subscription_status`
--
ALTER TABLE `oc_subscription_status`
  MODIFY `subscription_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT для таблицы `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT для таблицы `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_topic`
--
ALTER TABLE `oc_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_user_authorize`
--
ALTER TABLE `oc_user_authorize`
  MODIFY `user_authorize_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `oc_user_login`
--
ALTER TABLE `oc_user_login`
  MODIFY `user_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT для таблицы `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
