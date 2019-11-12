-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 12-11-2019 a las 03:33:59
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ropabd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ropa`
--

DROP TABLE IF EXISTS `ropa`;
CREATE TABLE IF NOT EXISTS `ropa` (
  `ROPA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `MARCA` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`ROPA_ID`),
  UNIQUE KEY `ROPA_U_NOMBRE` (`NOMBRE`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ropa`
--

INSERT INTO `ropa` (`ROPA_ID`, `NOMBRE`, `MARCA`) VALUES
(2, 'Pantalon ', 'Levis'),
(4, 'Playera', 'Polo'),
(5, 'Sudadera ', 'Adidas');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
