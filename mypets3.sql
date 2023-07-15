-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-07-2023 a las 17:02:59
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mypets3`
--
CREATE DATABASE IF NOT EXISTS `mypets3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mypets3`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'Administrador'),
(1, 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(11, 1, 17),
(1, 1, 32),
(2, 1, 36),
(3, 1, 40),
(4, 1, 41),
(5, 1, 44),
(6, 1, 45),
(7, 1, 46),
(8, 1, 47),
(9, 1, 48),
(10, 1, 49),
(12, 1, 52),
(13, 1, 57),
(14, 1, 60),
(15, 2, 1),
(16, 2, 2),
(17, 2, 3),
(18, 2, 4),
(19, 2, 5),
(20, 2, 6),
(21, 2, 7),
(22, 2, 8),
(23, 2, 9),
(24, 2, 10),
(25, 2, 11),
(26, 2, 12),
(27, 2, 13),
(28, 2, 14),
(29, 2, 15),
(30, 2, 16),
(31, 2, 17),
(32, 2, 18),
(33, 2, 19),
(34, 2, 20),
(35, 2, 21),
(36, 2, 22),
(37, 2, 23),
(38, 2, 24),
(39, 2, 25),
(40, 2, 26),
(41, 2, 27),
(42, 2, 28),
(43, 2, 29),
(44, 2, 30),
(45, 2, 31),
(46, 2, 32),
(47, 2, 33),
(48, 2, 34),
(49, 2, 35),
(50, 2, 36),
(51, 2, 37),
(52, 2, 38),
(53, 2, 39),
(54, 2, 40),
(55, 2, 41),
(56, 2, 42),
(57, 2, 43),
(58, 2, 44),
(59, 2, 45),
(60, 2, 46),
(61, 2, 47),
(62, 2, 48),
(63, 2, 49),
(64, 2, 50),
(65, 2, 51),
(66, 2, 52),
(67, 2, 53),
(68, 2, 54),
(69, 2, 55),
(70, 2, 56),
(71, 2, 57),
(72, 2, 58),
(73, 2, 59),
(74, 2, 60);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add estado despacho', 6, 'add_estadodespacho'),
(22, 'Can change estado despacho', 6, 'change_estadodespacho'),
(23, 'Can delete estado despacho', 6, 'delete_estadodespacho'),
(24, 'Can view estado despacho', 6, 'view_estadodespacho'),
(25, 'Can add marca producto', 7, 'add_marcaproducto'),
(26, 'Can change marca producto', 7, 'change_marcaproducto'),
(27, 'Can delete marca producto', 7, 'delete_marcaproducto'),
(28, 'Can view marca producto', 7, 'view_marcaproducto'),
(29, 'Can add mascota', 8, 'add_mascota'),
(30, 'Can change mascota', 8, 'change_mascota'),
(31, 'Can delete mascota', 8, 'delete_mascota'),
(32, 'Can view mascota', 8, 'view_mascota'),
(33, 'Can add tipo producto', 9, 'add_tipoproducto'),
(34, 'Can change tipo producto', 9, 'change_tipoproducto'),
(35, 'Can delete tipo producto', 9, 'delete_tipoproducto'),
(36, 'Can view tipo producto', 9, 'view_tipoproducto'),
(37, 'Can add producto', 10, 'add_producto'),
(38, 'Can change producto', 10, 'change_producto'),
(39, 'Can delete producto', 10, 'delete_producto'),
(40, 'Can view producto', 10, 'view_producto'),
(41, 'Can add carrito producto', 11, 'add_carritoproducto'),
(42, 'Can change carrito producto', 11, 'change_carritoproducto'),
(43, 'Can delete carrito producto', 11, 'delete_carritoproducto'),
(44, 'Can view carrito producto', 11, 'view_carritoproducto'),
(45, 'Can add carrito cliente', 12, 'add_carritocliente'),
(46, 'Can change carrito cliente', 12, 'change_carritocliente'),
(47, 'Can delete carrito cliente', 12, 'delete_carritocliente'),
(48, 'Can view carrito cliente', 12, 'view_carritocliente'),
(49, 'Can add boleta', 13, 'add_boleta'),
(50, 'Can change boleta', 13, 'change_boleta'),
(51, 'Can delete boleta', 13, 'delete_boleta'),
(52, 'Can view boleta', 13, 'view_boleta'),
(53, 'Can add user', 14, 'add_user'),
(54, 'Can change user', 14, 'change_user'),
(55, 'Can delete user', 14, 'delete_user'),
(56, 'Can view user', 14, 'view_user'),
(57, 'Can add despacho cliente', 15, 'add_despachocliente'),
(58, 'Can change despacho cliente', 15, 'change_despachocliente'),
(59, 'Can delete despacho cliente', 15, 'delete_despachocliente'),
(60, 'Can view despacho cliente', 15, 'view_despachocliente'),
(61, 'Can add detalle boleta', 16, 'add_detalleboleta'),
(62, 'Can change detalle boleta', 16, 'change_detalleboleta'),
(63, 'Can delete detalle boleta', 16, 'delete_detalleboleta'),
(64, 'Can view detalle boleta', 16, 'view_detalleboleta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_boleta`
--

CREATE TABLE `core_boleta` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time(6) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_boleta`
--

INSERT INTO `core_boleta` (`id`, `fecha`, `hora`, `usuario_id`, `total`) VALUES
(66, '2023-06-29', '18:34:11.823791', 1, 79980),
(67, '2023-06-29', '22:34:00.714629', 5, 25990),
(68, '2023-06-29', '22:36:26.371301', 5, 19800),
(69, '2023-06-30', '18:29:50.356155', 6, 25990),
(70, '2023-06-30', '18:31:34.261318', 6, 9000),
(71, '2023-07-12', '10:59:38.409948', 2, 5990),
(72, '2023-07-12', '11:01:02.772945', 2, 10800);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_boleta_productos`
--

CREATE TABLE `core_boleta_productos` (
  `id` int(11) NOT NULL,
  `boleta_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_carritocliente`
--

CREATE TABLE `core_carritocliente` (
  `id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_carritocliente`
--

INSERT INTO `core_carritocliente` (`id`, `created_at`, `updated_at`, `usuario_id`) VALUES
(13, '2023-06-27 23:43:17.298491', '2023-06-29 22:33:37.721886', 1),
(14, '2023-06-28 01:36:24.561230', '2023-07-12 15:00:15.773919', 2),
(15, '2023-06-28 02:39:49.575920', '2023-06-28 02:42:08.953824', 3),
(16, '2023-06-29 21:10:56.198955', '2023-06-29 21:14:30.935871', 4),
(17, '2023-06-30 02:32:37.752088', '2023-06-30 02:36:02.473858', 5),
(18, '2023-06-30 22:28:56.723612', '2023-06-30 22:31:14.620668', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_carritocliente_items`
--

CREATE TABLE `core_carritocliente_items` (
  `id` int(11) NOT NULL,
  `carritocliente_id` int(11) NOT NULL,
  `carritoproducto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_carritoproducto`
--

CREATE TABLE `core_carritoproducto` (
  `id` int(11) NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL CHECK (`cantidad` >= 0),
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_despachocliente`
--

CREATE TABLE `core_despachocliente` (
  `id` int(11) NOT NULL,
  `estado_id` int(11) NOT NULL,
  `numboleta_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_despachocliente`
--

INSERT INTO `core_despachocliente` (`id`, `estado_id`, `numboleta_id`, `usuario_id`) VALUES
(30, 4, 66, 1),
(31, 2, 67, 5),
(32, 1, 68, 5),
(33, 2, 69, 6),
(34, 1, 70, 6),
(35, 1, 71, 2),
(36, 1, 72, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_detalleboleta`
--

CREATE TABLE `core_detalleboleta` (
  `id` int(11) NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL CHECK (`cantidad` >= 0),
  `boleta_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_detalleboleta`
--

INSERT INTO `core_detalleboleta` (`id`, `cantidad`, `boleta_id`, `producto_id`) VALUES
(1, 4, 66, 10),
(2, 2, 66, 8),
(3, 2, 66, 9),
(4, 2, 67, 9),
(5, 1, 67, 8),
(6, 1, 68, 10),
(7, 1, 68, 9),
(8, 2, 69, 9),
(9, 1, 69, 12),
(10, 1, 70, 9),
(11, 1, 71, 8),
(12, 1, 72, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_estadodespacho`
--

CREATE TABLE `core_estadodespacho` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_estadodespacho`
--

INSERT INTO `core_estadodespacho` (`id`, `descripcion`) VALUES
(1, 'Validacion'),
(2, 'Preparacion'),
(3, 'Reparto'),
(4, 'Entregado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_marcaproducto`
--

CREATE TABLE `core_marcaproducto` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(15) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_marcaproducto`
--

INSERT INTO `core_marcaproducto` (`id`, `descripcion`, `imagen`) VALUES
(1, 'Jodran', 'Jodran_XO0Yo0W.jpg'),
(2, 'Nice', 'Nice_ucs0hOA.png'),
(3, 'Didadas', 'Didadas_VpYzDZl.png'),
(4, 'Nacoste', 'Nacoste_vcNL3Bj.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_mascota`
--

CREATE TABLE `core_mascota` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_mascota`
--

INSERT INTO `core_mascota` (`id`, `descripcion`) VALUES
(1, 'Gato'),
(2, 'Perro'),
(3, 'Huron'),
(4, 'Roedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_producto`
--

CREATE TABLE `core_producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(90) NOT NULL,
  `precio` int(10) UNSIGNED NOT NULL CHECK (`precio` >= 0),
  `stock` int(10) UNSIGNED NOT NULL CHECK (`stock` >= 0),
  `imagen` varchar(100) DEFAULT NULL,
  `vigente` tinyint(1) NOT NULL,
  `destacado` tinyint(1) NOT NULL,
  `carrusel` tinyint(1) NOT NULL,
  `marca_id` int(11) NOT NULL,
  `mascota_id` int(11) NOT NULL,
  `tipo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_producto`
--

INSERT INTO `core_producto` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `vigente`, `destacado`, `carrusel`, `marca_id`, `mascota_id`, `tipo_id`) VALUES
(8, 'Bandana para hurón', 'Linda bandana par huron', 5990, 1, 'huron_rWzf3ii.jpg', 1, 1, 1, 1, 3, 1),
(9, 'METRALLETA PA GATO', 'Nice', 10000, 12, 'gato_metralleta_S37r7I0.jpg', 1, 1, 1, 3, 1, 4),
(10, 'Correa para gato', 'Linda correa', 12000, 21, 'gatopelao.png', 1, 1, 0, 4, 1, 2),
(12, 'ARMADURA PARA GATO', '+5 de armadura y le devuelve los cocos', 5990, 2, 'gato_armadura_A4lCtfl.png', 1, 1, 0, 3, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_tipoproducto`
--

CREATE TABLE `core_tipoproducto` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_tipoproducto`
--

INSERT INTO `core_tipoproducto` (`id`, `descripcion`) VALUES
(1, 'Ropa de mascota'),
(2, 'Collar'),
(3, 'Comida'),
(4, 'metralleta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-06-25 00:18:23.229300', '1', 'Ropa de mascota', 1, '[{\"added\": {}}]', 9, 1),
(2, '2023-06-25 00:18:32.545442', '2', 'Collar', 1, '[{\"added\": {}}]', 9, 1),
(3, '2023-06-25 00:18:43.860288', '3', 'Comida', 1, '[{\"added\": {}}]', 9, 1),
(4, '2023-06-25 00:18:51.058042', '1', 'Gato', 1, '[{\"added\": {}}]', 8, 1),
(5, '2023-06-25 00:18:55.893595', '2', 'Perro', 1, '[{\"added\": {}}]', 8, 1),
(6, '2023-06-25 00:19:14.091239', '3', 'Huron', 1, '[{\"added\": {}}]', 8, 1),
(7, '2023-06-25 00:19:20.674421', '4', 'Roedor', 1, '[{\"added\": {}}]', 8, 1),
(8, '2023-06-25 00:19:37.883448', '1', 'Jodran', 1, '[{\"added\": {}}]', 7, 1),
(9, '2023-06-25 00:19:51.886133', '2', 'Nice', 1, '[{\"added\": {}}]', 7, 1),
(10, '2023-06-25 00:23:25.088676', '1', 'METRALLETA PA GATO', 1, '[{\"added\": {}}]', 10, 1),
(11, '2023-06-25 00:23:30.362910', '4', 'metralleta', 1, '[{\"added\": {}}]', 9, 1),
(12, '2023-06-25 00:23:36.593958', '1', 'METRALLETA PA GATO', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 10, 1),
(13, '2023-06-25 00:24:05.685677', '1', 'Boleta #1 - benjadepana', 1, '[{\"added\": {}}]', 13, 1),
(14, '2023-06-25 00:25:34.800744', '1', 'Validacion', 1, '[{\"added\": {}}]', 6, 1),
(15, '2023-06-25 00:25:45.455910', '2', 'Preparacion', 1, '[{\"added\": {}}]', 6, 1),
(16, '2023-06-25 00:25:51.385729', '3', 'Reparto', 1, '[{\"added\": {}}]', 6, 1),
(17, '2023-06-25 00:25:56.684567', '4', 'Entregado', 1, '[{\"added\": {}}]', 6, 1),
(18, '2023-06-25 00:32:17.216289', '1', 'DespachoCliente object (1)', 1, '[{\"added\": {}}]', 15, 1),
(19, '2023-06-25 01:15:29.483368', '1', 'DespachoCliente object (1)', 2, '[{\"changed\": {\"fields\": [\"Estado\"]}}]', 15, 1),
(20, '2023-06-25 01:15:35.011282', '1', 'DespachoCliente object (1)', 2, '[{\"changed\": {\"fields\": [\"Estado\"]}}]', 15, 1),
(21, '2023-06-25 01:15:41.949173', '1', 'DespachoCliente object (1)', 2, '[{\"changed\": {\"fields\": [\"Estado\"]}}]', 15, 1),
(22, '2023-06-25 01:16:07.656306', '1', 'DespachoCliente object (1)', 2, '[{\"changed\": {\"fields\": [\"Estado\"]}}]', 15, 1),
(23, '2023-06-25 01:16:29.262250', '1', 'DespachoCliente object (1)', 2, '[{\"changed\": {\"fields\": [\"Estado\"]}}]', 15, 1),
(24, '2023-06-25 01:16:34.401843', '1', 'DespachoCliente object (1)', 2, '[{\"changed\": {\"fields\": [\"Estado\"]}}]', 15, 1),
(25, '2023-06-25 01:16:39.678814', '1', 'DespachoCliente object (1)', 2, '[{\"changed\": {\"fields\": [\"Estado\"]}}]', 15, 1),
(26, '2023-06-25 01:21:25.711653', '1', 'Boleta #1 - benjadepana', 2, '[]', 13, 1),
(27, '2023-06-25 01:21:34.828418', '2', 'Boleta #2 - benjadepana', 1, '[{\"added\": {}}]', 13, 1),
(28, '2023-06-25 01:22:55.865364', '2', 'DespachoCliente object (2)', 1, '[{\"added\": {}}]', 15, 1),
(29, '2023-06-25 01:23:49.315341', '2', 'DespachoCliente object (2)', 3, '', 15, 1),
(30, '2023-06-25 01:25:38.188198', '1', 'DespachoCliente object (1)', 2, '[{\"changed\": {\"fields\": [\"Estado\"]}}]', 15, 1),
(31, '2023-06-25 01:25:43.285503', '1', 'DespachoCliente object (1)', 2, '[{\"changed\": {\"fields\": [\"Estado\"]}}]', 15, 1),
(32, '2023-06-25 01:25:49.274819', '1', 'DespachoCliente object (1)', 2, '[{\"changed\": {\"fields\": [\"Estado\"]}}]', 15, 1),
(33, '2023-06-25 01:25:56.209268', '1', 'DespachoCliente object (1)', 2, '[{\"changed\": {\"fields\": [\"Estado\"]}}]', 15, 1),
(34, '2023-06-25 01:55:49.503964', '3', 'Boleta #3 - benjadepana', 1, '[{\"added\": {}}]', 13, 1),
(35, '2023-06-25 02:01:09.197214', '3', 'DespachoCliente object (3)', 1, '[{\"added\": {}}]', 15, 1),
(36, '2023-06-25 03:17:40.631712', '4', 'Boleta #4 - benjadepana', 1, '[{\"added\": {}}]', 13, 1),
(37, '2023-06-25 03:17:56.890351', '4', 'DespachoCliente object (4)', 1, '[{\"added\": {}}]', 15, 1),
(38, '2023-06-25 03:24:17.320105', '2', 'Benjamín Guajardo', 2, '[{\"changed\": {\"fields\": [\"Suscrito\"]}}]', 14, 1),
(39, '2023-06-25 21:57:21.857630', '19', 'Boleta #19 - admin', 3, '', 13, 1),
(40, '2023-06-25 21:57:21.860637', '18', 'Boleta #18 - admin', 3, '', 13, 1),
(41, '2023-06-25 21:57:21.861640', '17', 'Boleta #17 - benjadepana', 3, '', 13, 1),
(42, '2023-06-25 21:57:21.863650', '16', 'Boleta #16 - admin', 3, '', 13, 1),
(43, '2023-06-25 21:57:21.864651', '15', 'Boleta #15 - admin', 3, '', 13, 1),
(44, '2023-06-25 21:57:21.866656', '14', 'Boleta #14 - benjadepana', 3, '', 13, 1),
(45, '2023-06-25 21:57:21.867661', '13', 'Boleta #13 - admin', 3, '', 13, 1),
(46, '2023-06-25 21:57:21.869668', '12', 'Boleta #12 - benjadepana', 3, '', 13, 1),
(47, '2023-06-25 21:57:21.871674', '11', 'Boleta #11 - admin', 3, '', 13, 1),
(48, '2023-06-25 21:57:21.872677', '10', 'Boleta #10 - admin', 3, '', 13, 1),
(49, '2023-06-25 21:57:21.874683', '9', 'Boleta #9 - benjadepana', 3, '', 13, 1),
(50, '2023-06-25 21:57:21.875687', '8', 'Boleta #8 - benjadepana', 3, '', 13, 1),
(51, '2023-06-25 21:57:21.877694', '7', 'Boleta #7 - admin', 3, '', 13, 1),
(52, '2023-06-25 21:57:21.878696', '6', 'Boleta #6 - benjadepana', 3, '', 13, 1),
(53, '2023-06-25 21:57:21.880704', '5', 'Boleta #5 - admin', 3, '', 13, 1),
(54, '2023-06-25 21:57:21.882711', '4', 'Boleta #4 - benjadepana', 3, '', 13, 1),
(55, '2023-06-25 21:57:21.883714', '3', 'Boleta #3 - benjadepana', 3, '', 13, 1),
(56, '2023-06-25 22:00:12.833593', '24', 'Boleta #24 - admin', 3, '', 13, 1),
(57, '2023-06-25 22:00:12.835607', '23', 'Boleta #23 - admin', 3, '', 13, 1),
(58, '2023-06-25 22:00:12.837607', '22', 'Boleta #22 - admin', 3, '', 13, 1),
(59, '2023-06-25 22:00:12.838611', '21', 'Boleta #21 - admin', 3, '', 13, 1),
(60, '2023-06-25 22:00:12.840617', '20', 'Boleta #20 - admin', 3, '', 13, 1),
(61, '2023-06-25 22:08:27.951582', '10', 'CarritoCliente object (10)', 3, '', 12, 1),
(62, '2023-06-25 22:08:27.953588', '2', 'CarritoCliente object (2)', 3, '', 12, 1),
(63, '2023-06-25 22:21:10.954427', '44', 'Boleta #44 - benjadepana', 3, '', 13, 1),
(64, '2023-06-25 22:21:10.957434', '43', 'Boleta #43 - benjadepana', 3, '', 13, 1),
(65, '2023-06-25 22:21:10.959442', '42', 'Boleta #42 - benjadepana', 3, '', 13, 1),
(66, '2023-06-25 22:21:10.961447', '41', 'Boleta #41 - benjadepana', 3, '', 13, 1),
(67, '2023-06-25 22:21:10.962450', '40', 'Boleta #40 - benjadepana', 3, '', 13, 1),
(68, '2023-06-25 22:21:10.963454', '39', 'Boleta #39 - admin', 3, '', 13, 1),
(69, '2023-06-25 22:21:10.965460', '38', 'Boleta #38 - admin', 3, '', 13, 1),
(70, '2023-06-25 22:21:10.966580', '37', 'Boleta #37 - admin', 3, '', 13, 1),
(71, '2023-06-25 22:21:10.968566', '36', 'Boleta #36 - admin', 3, '', 13, 1),
(72, '2023-06-25 22:21:10.970573', '35', 'Boleta #35 - benjadepana', 3, '', 13, 1),
(73, '2023-06-25 22:21:10.972578', '34', 'Boleta #34 - admin', 3, '', 13, 1),
(74, '2023-06-25 22:21:10.973581', '33', 'Boleta #33 - admin', 3, '', 13, 1),
(75, '2023-06-25 22:21:10.975415', '32', 'Boleta #32 - admin', 3, '', 13, 1),
(76, '2023-06-25 22:21:10.976417', '31', 'Boleta #31 - admin', 3, '', 13, 1),
(77, '2023-06-25 22:21:10.977421', '30', 'Boleta #30 - admin', 3, '', 13, 1),
(78, '2023-06-25 22:21:10.979427', '29', 'Boleta #29 - admin', 3, '', 13, 1),
(79, '2023-06-25 22:21:10.980430', '28', 'Boleta #28 - admin', 3, '', 13, 1),
(80, '2023-06-25 22:21:10.981433', '27', 'Boleta #27 - admin', 3, '', 13, 1),
(81, '2023-06-25 22:21:10.983441', '26', 'Boleta #26 - admin', 3, '', 13, 1),
(82, '2023-06-25 22:21:10.985447', '25', 'Boleta #25 - admin', 3, '', 13, 1),
(83, '2023-06-25 22:31:49.910162', '1', 'administrador', 2, '[{\"changed\": {\"fields\": [\"Direccion\", \"Suscrito\"]}}]', 14, 1),
(84, '2023-06-25 22:41:03.611085', '1', 'administrador', 2, '[{\"changed\": {\"fields\": [\"Suscrito\"]}}]', 14, 1),
(85, '2023-06-25 22:55:16.464173', '1', 'administrador', 2, '[{\"changed\": {\"fields\": [\"Suscrito\"]}}]', 14, 1),
(86, '2023-06-25 22:57:12.840309', '9', 'DespachoCliente object (9)', 3, '', 15, 1),
(87, '2023-06-25 22:57:12.841312', '8', 'DespachoCliente object (8)', 3, '', 15, 1),
(88, '2023-06-25 22:57:12.843318', '7', 'DespachoCliente object (7)', 3, '', 15, 1),
(89, '2023-06-25 22:57:12.844321', '6', 'DespachoCliente object (6)', 3, '', 15, 1),
(90, '2023-06-25 22:57:12.846328', '5', 'DespachoCliente object (5)', 3, '', 15, 1),
(91, '2023-06-25 22:57:49.808494', '1', 'administrador', 2, '[{\"changed\": {\"fields\": [\"Suscrito\"]}}]', 14, 1),
(92, '2023-06-25 22:57:53.779260', '45', 'Boleta #45 - admin', 3, '', 13, 1),
(93, '2023-06-26 02:52:55.960226', '1', 'Cliente', 1, '[{\"added\": {}}]', 3, 1),
(94, '2023-06-26 02:53:30.874196', '2', 'Admin', 1, '[{\"added\": {}}]', 3, 1),
(95, '2023-06-26 02:53:37.259037', '1', 'Cliente', 2, '[]', 3, 1),
(96, '2023-06-26 02:53:52.637108', '1', 'administrador', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 14, 1),
(97, '2023-06-26 02:53:55.420348', '1', 'administrador', 2, '[]', 14, 1),
(98, '2023-06-26 02:54:00.818755', '2', 'Benjamín Guajardo', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 14, 1),
(99, '2023-06-26 02:54:25.966187', '7', 'Palo', 3, '', 10, 1),
(100, '2023-06-26 02:54:25.969195', '4', 'Benjamín Guajardo', 3, '', 10, 1),
(101, '2023-06-26 02:54:25.971203', '3', 'a', 3, '', 10, 1),
(102, '2023-06-26 02:55:05.836786', '3', 'Didadas', 1, '[{\"added\": {}}]', 7, 1),
(103, '2023-06-26 02:55:22.354381', '4', 'Nacoste', 1, '[{\"added\": {}}]', 7, 1),
(104, '2023-06-26 02:56:03.443513', '8', 'Bandana para hurón', 1, '[{\"added\": {}}]', 10, 1),
(105, '2023-06-26 02:56:36.852860', '9', 'METRALLETA PA GATO', 1, '[{\"added\": {}}]', 10, 1),
(106, '2023-06-26 02:57:31.901596', '10', 'Correa para gato', 1, '[{\"added\": {}}]', 10, 1),
(107, '2023-06-27 01:19:57.001202', '2', 'Administrador', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 3, 1),
(108, '2023-06-27 23:43:06.694985', '12', 'CarritoCliente object (12)', 3, '', 12, 1),
(109, '2023-06-27 23:43:06.696991', '11', 'CarritoCliente object (11)', 3, '', 12, 1),
(110, '2023-06-27 23:49:47.876112', '15', 'DespachoCliente object (15)', 3, '', 15, 1),
(111, '2023-06-27 23:49:47.879122', '14', 'DespachoCliente object (14)', 3, '', 15, 1),
(112, '2023-06-27 23:49:47.881128', '13', 'DespachoCliente object (13)', 3, '', 15, 1),
(113, '2023-06-27 23:49:47.882131', '12', 'DespachoCliente object (12)', 3, '', 15, 1),
(114, '2023-06-27 23:49:47.884138', '11', 'DespachoCliente object (11)', 3, '', 15, 1),
(115, '2023-06-27 23:49:47.886145', '10', 'DespachoCliente object (10)', 3, '', 15, 1),
(116, '2023-06-27 23:49:59.009782', '51', 'Boleta #51 - admin', 3, '', 13, 1),
(117, '2023-06-27 23:49:59.011788', '50', 'Boleta #50 - admin', 3, '', 13, 1),
(118, '2023-06-27 23:49:59.012792', '49', 'Boleta #49 - admin', 3, '', 13, 1),
(119, '2023-06-27 23:49:59.014798', '48', 'Boleta #48 - admin', 3, '', 13, 1),
(120, '2023-06-27 23:49:59.015977', '47', 'Boleta #47 - admin', 3, '', 13, 1),
(121, '2023-06-27 23:49:59.016736', '46', 'Boleta #46 - admin', 3, '', 13, 1),
(122, '2023-06-28 01:44:05.405053', '56', 'Boleta #56 - admin', 3, '', 13, 1),
(123, '2023-06-28 01:44:05.409066', '55', 'Boleta #55 - admin', 3, '', 13, 1),
(124, '2023-06-28 01:44:05.412076', '54', 'Boleta #54 - admin', 3, '', 13, 1),
(125, '2023-06-28 01:44:05.414086', '53', 'Boleta #53 - admin', 3, '', 13, 1),
(126, '2023-06-28 01:44:05.416089', '52', 'Boleta #52 - admin', 3, '', 13, 1),
(127, '2023-06-28 01:44:16.191560', '20', 'DespachoCliente object (20)', 3, '', 15, 1),
(128, '2023-06-28 01:44:16.193567', '19', 'DespachoCliente object (19)', 3, '', 15, 1),
(129, '2023-06-28 01:44:16.195573', '18', 'DespachoCliente object (18)', 3, '', 15, 1),
(130, '2023-06-28 01:44:16.197581', '17', 'DespachoCliente object (17)', 3, '', 15, 1),
(131, '2023-06-28 01:44:16.198583', '16', 'DespachoCliente object (16)', 3, '', 15, 1),
(132, '2023-06-28 01:44:23.067054', '56', 'Boleta #56 - admin', 3, '', 13, 1),
(133, '2023-06-28 01:44:23.068058', '55', 'Boleta #55 - admin', 3, '', 13, 1),
(134, '2023-06-28 01:44:23.070064', '54', 'Boleta #54 - admin', 3, '', 13, 1),
(135, '2023-06-28 01:44:23.072070', '53', 'Boleta #53 - admin', 3, '', 13, 1),
(136, '2023-06-28 01:44:23.073074', '52', 'Boleta #52 - admin', 3, '', 13, 1),
(137, '2023-06-28 01:44:52.333521', '56', 'Boleta #56 - admin', 3, '', 13, 1),
(138, '2023-06-28 01:45:29.761217', '56', 'Boleta #56 - admin', 3, '', 13, 1),
(139, '2023-06-28 01:45:29.763225', '55', 'Boleta #55 - admin', 3, '', 13, 1),
(140, '2023-06-28 01:45:29.765229', '54', 'Boleta #54 - admin', 3, '', 13, 1),
(141, '2023-06-28 01:45:29.767236', '53', 'Boleta #53 - admin', 3, '', 13, 1),
(142, '2023-06-28 01:45:29.768239', '52', 'Boleta #52 - admin', 3, '', 13, 1),
(143, '2023-06-28 02:28:11.895817', '10', 'Correa para gato', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 10, 1),
(144, '2023-06-28 02:28:11.898827', '9', 'METRALLETA PA GATO', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 10, 1),
(145, '2023-06-28 02:28:11.902842', '8', 'Bandana para hurón', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 10, 1),
(146, '2023-06-29 22:32:24.818881', '65', 'Boleta #65 - benja', 3, '', 13, 1),
(147, '2023-06-29 22:32:24.820885', '64', 'Boleta #64 - benja', 3, '', 13, 1),
(148, '2023-06-29 22:32:24.821888', '63', 'Boleta #63 - benja', 3, '', 13, 1),
(149, '2023-06-29 22:32:24.823895', '62', 'Boleta #62 - sebadepana', 3, '', 13, 1),
(150, '2023-06-29 22:32:24.824898', '61', 'Boleta #61 - sebadepana', 3, '', 13, 1),
(151, '2023-06-29 22:32:24.826904', '60', 'Boleta #60 - admin', 3, '', 13, 1),
(152, '2023-06-29 22:32:24.828040', '59', 'Boleta #59 - admin', 3, '', 13, 1),
(153, '2023-06-29 22:32:24.828903', '58', 'Boleta #58 - benjadepana', 3, '', 13, 1),
(154, '2023-06-29 22:32:24.829906', '57', 'Boleta #57 - admin', 3, '', 13, 1),
(155, '2023-06-30 22:35:40.188720', '6', 'Carlos Abarca gei', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 14, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(13, 'core', 'boleta'),
(12, 'core', 'carritocliente'),
(11, 'core', 'carritoproducto'),
(15, 'core', 'despachocliente'),
(16, 'core', 'detalleboleta'),
(6, 'core', 'estadodespacho'),
(7, 'core', 'marcaproducto'),
(8, 'core', 'mascota'),
(10, 'core', 'producto'),
(9, 'core', 'tipoproducto'),
(5, 'sessions', 'session'),
(14, 'user', 'user');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-25 00:12:59.348446'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-06-25 00:12:59.399567'),
(3, 'auth', '0001_initial', '2023-06-25 00:12:59.457760'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-06-25 00:12:59.628763'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-06-25 00:12:59.638797'),
(6, 'auth', '0004_alter_user_username_opts', '2023-06-25 00:12:59.645818'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-06-25 00:12:59.654850'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-06-25 00:12:59.658863'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-06-25 00:12:59.665884'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-06-25 00:12:59.672910'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-06-25 00:12:59.680934'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-06-25 00:12:59.699109'),
(13, 'auth', '0011_update_proxy_permissions', '2023-06-25 00:12:59.709143'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-06-25 00:12:59.717169'),
(15, 'user', '0001_initial', '2023-06-25 00:12:59.788996'),
(16, 'admin', '0001_initial', '2023-06-25 00:12:59.977016'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-06-25 00:13:00.069601'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-25 00:13:00.084649'),
(19, 'core', '0001_initial', '2023-06-25 00:13:00.300871'),
(20, 'sessions', '0001_initial', '2023-06-25 00:13:00.734320'),
(21, 'core', '0002_despachocliente', '2023-06-25 00:14:39.078850'),
(22, 'core', '0003_delete_despachocliente', '2023-06-25 00:28:33.581806'),
(23, 'core', '0004_despachocliente', '2023-06-25 00:28:47.543642'),
(24, 'core', '0005_delete_despachocliente', '2023-06-25 00:31:32.536307'),
(25, 'core', '0006_despachocliente', '2023-06-25 00:31:49.631764'),
(26, 'core', '0007_boleta_total', '2023-06-25 21:26:56.466188'),
(27, 'user', '0002_auto_20230625_1242', '2023-06-25 21:26:56.545589'),
(28, 'user', '0003_auto_20230625_1242', '2023-06-25 21:26:56.588733'),
(29, 'core', '0008_auto_20230625_1747', '2023-06-25 21:47:41.819013');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0rx2hjurd1zc3rwyjx1tgue8ecz9w30z', '.eJxVjDsOwjAQBe_iGlmO4x-U9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIiBnH63RDSg-sO6A711mRqdV1mlLsiD9rl1Iif18P9OyjQy7eG5K1hJOOYBybE4CyOhoJJIfgzs9ZeZwVKceKcwerRoGMKVhvnRxDvDwx3OJg:1qDVZx:lFwyoqx8TQyiImrnsYEtSxCvlh3anmQf5u1iS9l9X6o', '2023-07-09 19:39:21.411522'),
('no3jeumq82b5ic55721klbk1c0r8b1r6', '.eJxVjDsOwjAQBe_iGlmO4x-U9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIiBnH63RDSg-sO6A711mRqdV1mlLsiD9rl1Iif18P9OyjQy7eG5K1hJOOYBybE4CyOhoJJIfgzs9ZeZwVKceKcwerRoGMKVhvnRxDvDwx3OJg:1qDFLR:51-dJWwAB9RIy_pFpbEvwy4GG122xloPOtEjRtaiJpU', '2023-07-09 02:19:17.611220'),
('t2fc0fj7sorfriox0o4nv4hj0errbs87', '.eJxVjDsOwjAQBe_iGlmO4x-U9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIiBnH63RDSg-sO6A711mRqdV1mlLsiD9rl1Iif18P9OyjQy7eG5K1hJOOYBybE4CyOhoJJIfgzs9ZeZwVKceKcwerRoGMKVhvnRxDvDwx3OJg:1qDaM6:_LIdc89Nj1g2SSnvE0heXOGJ4RvabbolC5Xmll0EO6o', '2023-07-10 00:45:22.472210');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_user`
--

CREATE TABLE `user_user` (
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
  `date_joined` datetime(6) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `suscrito` tinyint(1) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user_user`
--

INSERT INTO `user_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nombre`, `direccion`, `suscrito`, `imagen`) VALUES
(1, 'pbkdf2_sha256$216000$6BHR4dbHZ11U$7SKeNsSjy3AYQ4kCRWYBj3ypmi3AviDu/l8l+hSkl64=', '2023-07-12 15:01:41.374024', 1, 'admin', '', '', '', 1, 1, '2023-06-25 00:13:15.000000', 'administrador', 'casa', 0, ''),
(2, 'pbkdf2_sha256$216000$rtxMzneMqZy5$4dcp/SoP7oNSuLQi2ywQZ3GfvzsoHiqF2j8F8pCPank=', '2023-07-12 14:58:15.867818', 0, 'benjadepana', '', '', 'ben.guajardo@duocuc.cl', 0, 1, '2023-06-25 00:17:42.000000', 'Benjamín Guajardo', 'el álamo 713', 0, ''),
(3, 'pbkdf2_sha256$216000$zcLLQLmMHfQi$SFyXnhUKgAAh0EOL2J3fTyEyjWLLO8s0rHWEYjla834=', '2023-06-28 02:44:29.782757', 0, 'sebadepana', '', '', 'zap@si.no', 0, 1, '2023-06-28 02:39:16.752111', 'Sebastián Zapata', 'su casa', 1, ''),
(4, 'pbkdf2_sha256$216000$gaTg8T0ztt5Z$+X3xsCdtN6k6L3hd4E91fSlb5/bOHu+UV0D5jpSa6z0=', '2023-06-29 21:10:48.715986', 0, 'benja', '', '', 'ben.guajardo@duocuc.cl', 0, 1, '2023-06-29 21:10:04.499557', 'benjamín guajardo', 'Conhca y toro 1280', 0, ''),
(5, 'pbkdf2_sha256$216000$477itRRdS2Q9$mLBk4OSLFx9959h/tDvHfsvTQj/HwvZKI8UQjAgNT1Q=', '2023-06-30 02:42:17.738596', 0, 'cristindepana', '', '', 'cri.perez@si.com', 0, 1, '2023-06-30 02:31:57.180490', 'Cristin Pérez', 'su casa', 0, ''),
(6, 'pbkdf2_sha256$216000$mRl75Cc7XsGP$seam3Yh5ztLbVh2TNBMWlR0UwX/TvFYWUbhS8MAe0cg=', '2023-06-30 22:35:52.854435', 0, 'carlitos', '', '', 'c.si@no.cl', 0, 1, '2023-06-30 22:28:30.000000', 'Carlos Abarca', 'su casa', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_user_groups`
--

CREATE TABLE `user_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user_user_groups`
--

INSERT INTO `user_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 3, 1),
(5, 4, 1),
(6, 5, 1),
(7, 6, 1),
(8, 6, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_user_user_permissions`
--

CREATE TABLE `user_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `core_boleta`
--
ALTER TABLE `core_boleta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_boleta_usuario_id_fffe795c_fk_user_user_id` (`usuario_id`);

--
-- Indices de la tabla `core_boleta_productos`
--
ALTER TABLE `core_boleta_productos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_boleta_productos_boleta_id_producto_id_45d06dc1_uniq` (`boleta_id`,`producto_id`),
  ADD KEY `core_boleta_productos_producto_id_52c38dad_fk_core_producto_id` (`producto_id`);

--
-- Indices de la tabla `core_carritocliente`
--
ALTER TABLE `core_carritocliente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `core_carritocliente_items`
--
ALTER TABLE `core_carritocliente_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_carritocliente_item_carritocliente_id_carrit_54bba58c_uniq` (`carritocliente_id`,`carritoproducto_id`),
  ADD KEY `core_carritocliente__carritoproducto_id_c3a4a4f3_fk_core_carr` (`carritoproducto_id`);

--
-- Indices de la tabla `core_carritoproducto`
--
ALTER TABLE `core_carritoproducto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_carritoproducto_producto_id_a7fae35a_fk_core_producto_id` (`producto_id`),
  ADD KEY `core_carritoproducto_usuario_id_7f976157_fk_user_user_id` (`usuario_id`);

--
-- Indices de la tabla `core_despachocliente`
--
ALTER TABLE `core_despachocliente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_despachocliente_estado_id_8d1c3e1c_fk_core_esta` (`estado_id`),
  ADD KEY `core_despachocliente_numboleta_id_1f6b0509_fk_core_boleta_id` (`numboleta_id`),
  ADD KEY `core_despachocliente_usuario_id_90c370ba_fk_user_user_id` (`usuario_id`);

--
-- Indices de la tabla `core_detalleboleta`
--
ALTER TABLE `core_detalleboleta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_estadodespacho`
--
ALTER TABLE `core_estadodespacho`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_marcaproducto`
--
ALTER TABLE `core_marcaproducto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_mascota`
--
ALTER TABLE `core_mascota`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_producto`
--
ALTER TABLE `core_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_producto_marca_id_b2651e7a_fk_core_marcaproducto_id` (`marca_id`),
  ADD KEY `core_producto_mascota_id_fbd5f23f_fk_core_mascota_id` (`mascota_id`),
  ADD KEY `core_producto_tipo_id_e0e92ad1_fk_core_tipoproducto_id` (`tipo_id`);

--
-- Indices de la tabla `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_user_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `user_user`
--
ALTER TABLE `user_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `user_user_groups`
--
ALTER TABLE `user_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_user_groups_user_id_group_id_bb60391f_uniq` (`user_id`,`group_id`),
  ADD KEY `user_user_groups_group_id_c57f13c0_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `user_user_user_permissions`
--
ALTER TABLE `user_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_user_user_permissions_user_id_permission_id_64f4d5b8_uniq` (`user_id`,`permission_id`),
  ADD KEY `user_user_user_permi_permission_id_ce49d4de_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `core_boleta`
--
ALTER TABLE `core_boleta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `core_boleta_productos`
--
ALTER TABLE `core_boleta_productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `core_carritocliente`
--
ALTER TABLE `core_carritocliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `core_carritocliente_items`
--
ALTER TABLE `core_carritocliente_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT de la tabla `core_carritoproducto`
--
ALTER TABLE `core_carritoproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT de la tabla `core_despachocliente`
--
ALTER TABLE `core_despachocliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `core_detalleboleta`
--
ALTER TABLE `core_detalleboleta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `core_estadodespacho`
--
ALTER TABLE `core_estadodespacho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `core_marcaproducto`
--
ALTER TABLE `core_marcaproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `core_mascota`
--
ALTER TABLE `core_mascota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `core_producto`
--
ALTER TABLE `core_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `user_user`
--
ALTER TABLE `user_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `user_user_groups`
--
ALTER TABLE `user_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `user_user_user_permissions`
--
ALTER TABLE `user_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `core_boleta`
--
ALTER TABLE `core_boleta`
  ADD CONSTRAINT `core_boleta_usuario_id_fffe795c_fk_user_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `user_user` (`id`);

--
-- Filtros para la tabla `core_boleta_productos`
--
ALTER TABLE `core_boleta_productos`
  ADD CONSTRAINT `core_boleta_productos_boleta_id_ba1ca104_fk_core_boleta_id` FOREIGN KEY (`boleta_id`) REFERENCES `core_boleta` (`id`),
  ADD CONSTRAINT `core_boleta_productos_producto_id_52c38dad_fk_core_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `core_producto` (`id`);

--
-- Filtros para la tabla `core_carritocliente`
--
ALTER TABLE `core_carritocliente`
  ADD CONSTRAINT `core_carritocliente_usuario_id_dd5ad0b4_fk_user_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `user_user` (`id`);

--
-- Filtros para la tabla `core_carritocliente_items`
--
ALTER TABLE `core_carritocliente_items`
  ADD CONSTRAINT `core_carritocliente__carritocliente_id_6a1c6fee_fk_core_carr` FOREIGN KEY (`carritocliente_id`) REFERENCES `core_carritocliente` (`id`),
  ADD CONSTRAINT `core_carritocliente__carritoproducto_id_c3a4a4f3_fk_core_carr` FOREIGN KEY (`carritoproducto_id`) REFERENCES `core_carritoproducto` (`id`);

--
-- Filtros para la tabla `core_carritoproducto`
--
ALTER TABLE `core_carritoproducto`
  ADD CONSTRAINT `core_carritoproducto_producto_id_a7fae35a_fk_core_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `core_producto` (`id`),
  ADD CONSTRAINT `core_carritoproducto_usuario_id_7f976157_fk_user_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `user_user` (`id`);

--
-- Filtros para la tabla `core_despachocliente`
--
ALTER TABLE `core_despachocliente`
  ADD CONSTRAINT `core_despachocliente_estado_id_8d1c3e1c_fk_core_esta` FOREIGN KEY (`estado_id`) REFERENCES `core_estadodespacho` (`id`),
  ADD CONSTRAINT `core_despachocliente_numboleta_id_1f6b0509_fk_core_boleta_id` FOREIGN KEY (`numboleta_id`) REFERENCES `core_boleta` (`id`),
  ADD CONSTRAINT `core_despachocliente_usuario_id_90c370ba_fk_user_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `user_user` (`id`);

--
-- Filtros para la tabla `core_producto`
--
ALTER TABLE `core_producto`
  ADD CONSTRAINT `core_producto_marca_id_b2651e7a_fk_core_marcaproducto_id` FOREIGN KEY (`marca_id`) REFERENCES `core_marcaproducto` (`id`),
  ADD CONSTRAINT `core_producto_mascota_id_fbd5f23f_fk_core_mascota_id` FOREIGN KEY (`mascota_id`) REFERENCES `core_mascota` (`id`),
  ADD CONSTRAINT `core_producto_tipo_id_e0e92ad1_fk_core_tipoproducto_id` FOREIGN KEY (`tipo_id`) REFERENCES `core_tipoproducto` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`);

--
-- Filtros para la tabla `user_user_groups`
--
ALTER TABLE `user_user_groups`
  ADD CONSTRAINT `user_user_groups_group_id_c57f13c0_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_user_groups_user_id_13f9a20d_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`);

--
-- Filtros para la tabla `user_user_user_permissions`
--
ALTER TABLE `user_user_user_permissions`
  ADD CONSTRAINT `user_user_user_permi_permission_id_ce49d4de_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `user_user_user_permissions_user_id_31782f58_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`);
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"angular\",\"relation_lines\":\"true\",\"snap_to_grid\":\"off\",\"full_screen\":\"on\",\"small_big_all\":\">\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"mypets3\",\"table\":\"core_detalleboleta\"},{\"db\":\"mypets3\",\"table\":\"core_marcaproducto\"},{\"db\":\"mypets3\",\"table\":\"core_producto\"},{\"db\":\"mypets3\",\"table\":\"core_boleta\"},{\"db\":\"mypets3\",\"table\":\"user_user\"},{\"db\":\"mypets3\",\"table\":\"core_despachocliente\"},{\"db\":\"mypets3\",\"table\":\"auth_group\"},{\"db\":\"mypets3\",\"table\":\"auth_group_permissions\"},{\"db\":\"mypets3\",\"table\":\"core_boleta_productos\"},{\"db\":\"mypets3\",\"table\":\"core_tipoproducto\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-07-12 15:02:32', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
