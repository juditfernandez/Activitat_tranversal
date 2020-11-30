-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2020 a las 17:19:15
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_cursa`
--
CREATE DATABASE IF NOT EXISTS `bd_cursa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_cursa`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cursa`
--

CREATE TABLE `tbl_cursa` (
  `id_cursa` int(5) NOT NULL,
  `nom_cursa` varchar(30) DEFAULT NULL,
  `lugar_cursa` varchar(30) DEFAULT NULL,
  `id_ins` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_cursa`
--

INSERT INTO `tbl_cursa` (`id_cursa`, `nom_cursa`, `lugar_cursa`, `id_ins`) VALUES
(1, 'Los corre caminos', 'Galicia', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_dorsal`
--

CREATE TABLE `tbl_dorsal` (
  `num_dorsal` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_dorsal`
--

INSERT INTO `tbl_dorsal` (`num_dorsal`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_inscripcion`
--

CREATE TABLE `tbl_inscripcion` (
  `id_ins` int(5) NOT NULL,
  `fecha_ins` date NOT NULL,
  `precio_ins` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_inscripcion`
--

INSERT INTO `tbl_inscripcion` (`id_ins`, `fecha_ins`, `precio_ins`) VALUES
(1, '2020-10-30', '21.99'),
(10, '2020-11-12', '21.99'),
(256, '2020-11-12', '21.99'),
(277, '2020-11-18', '21.99'),
(278, '2020-11-23', '21.99'),
(279, '2020-11-23', '21.99'),
(280, '2020-11-23', '21.99'),
(281, '2020-11-23', '21.99'),
(282, '2020-11-23', '21.99'),
(283, '2020-11-23', '21.99'),
(284, '2020-11-23', '21.99'),
(285, '2020-11-23', '21.99'),
(286, '2020-11-23', '21.99'),
(287, '2020-11-23', '21.99'),
(288, '2020-11-23', '21.99'),
(289, '2020-11-23', '21.99'),
(290, '2020-11-23', '21.99'),
(291, '2020-11-28', '21.99'),
(292, '2020-11-28', '21.99'),
(293, '2020-11-28', '21.99'),
(294, '2020-11-28', '21.99'),
(295, '2020-11-28', '21.99'),
(296, '2020-11-28', '21.99'),
(297, '2020-11-28', '21.99'),
(298, '2020-11-28', '21.99'),
(299, '2020-11-28', '21.99'),
(300, '2020-11-28', '21.99'),
(301, '2020-11-28', '21.99'),
(302, '2020-11-28', '21.99'),
(303, '2020-11-28', '21.99'),
(304, '2020-11-28', '21.99'),
(305, '2020-11-28', '21.99'),
(306, '2020-11-28', '21.99'),
(307, '2020-11-28', '21.99'),
(308, '2020-11-28', '21.99'),
(309, '2020-11-28', '21.99'),
(310, '2020-11-28', '21.99'),
(311, '2020-11-28', '21.99'),
(312, '2020-11-28', '21.99'),
(313, '2020-11-28', '21.99'),
(314, '2020-11-28', '21.99'),
(315, '2020-11-28', '21.99'),
(316, '2020-11-28', '21.99'),
(317, '2020-11-28', '21.99'),
(318, '2020-11-28', '21.99'),
(319, '2020-11-28', '21.99'),
(320, '2020-11-28', '21.99'),
(321, '2020-11-28', '21.99'),
(322, '2020-11-28', '21.99'),
(323, '2020-11-28', '21.99'),
(324, '2020-11-28', '21.99');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_participante`
--

CREATE TABLE `tbl_participante` (
  `DNI_parti` varchar(9) NOT NULL,
  `nom_parti` varchar(20) NOT NULL,
  `apellido_parti` varchar(30) NOT NULL,
  `apellido2_parti` varchar(25) NOT NULL,
  `email_parti` varchar(30) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `edad_parti` enum('0-6','7-18','19-30','31-60','61 o mas') NOT NULL,
  `sexo_parti` enum('mujer','hombre','niños/niñas','no decir') NOT NULL,
  `id_ins` int(5) NOT NULL,
  `num_dorsal` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_participante`
--

INSERT INTO `tbl_participante` (`DNI_parti`, `nom_parti`, `apellido_parti`, `apellido2_parti`, `email_parti`, `fecha_nacimiento`, `edad_parti`, `sexo_parti`, `id_ins`, `num_dorsal`) VALUES
('46489987H', 'Josefina', 'Pascuala', 'Peres', 'Jopa@gmail.com', '1952-09-01', '61 o mas', 'mujer', 256, 1),
('48105153D', 'Peter', 'Ruiz', 'Lopez', 'prlo@gmail.com', '1992-12-01', '19-30', 'hombre', 310, 4),
('51782898P', 'Eustaquio', 'Rodolfo', 'Lopez', 'erodolf@gmail.com', '1940-06-15', '61 o mas', 'no decir', 324, 5),
('N4133641C', 'Juan', 'Pascuala', 'Peres', 'Jopa@gmail.com', '1975-10-10', '31-60', 'hombre', 315, 8),
('X0312830F', 'Liam', 'Fisher', 'Peres', 'Lifisher@gmail.com', '1991-09-12', '19-30', 'hombre', 277, 6),
('Z4133641C', 'Derek', 'Well', 'Lopez', 'Dwell@gmail.com', '1989-06-13', '31-60', 'hombre', 291, 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_cursa`
--
ALTER TABLE `tbl_cursa`
  ADD PRIMARY KEY (`id_cursa`),
  ADD KEY `FK_cursa_inscrip` (`id_ins`);

--
-- Indices de la tabla `tbl_dorsal`
--
ALTER TABLE `tbl_dorsal`
  ADD PRIMARY KEY (`num_dorsal`);

--
-- Indices de la tabla `tbl_inscripcion`
--
ALTER TABLE `tbl_inscripcion`
  ADD PRIMARY KEY (`id_ins`);

--
-- Indices de la tabla `tbl_participante`
--
ALTER TABLE `tbl_participante`
  ADD PRIMARY KEY (`DNI_parti`),
  ADD KEY `FK_parti_dorsal` (`num_dorsal`),
  ADD KEY `id_ins` (`id_ins`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_cursa`
--
ALTER TABLE `tbl_cursa`
  MODIFY `id_cursa` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_dorsal`
--
ALTER TABLE `tbl_dorsal`
  MODIFY `num_dorsal` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tbl_inscripcion`
--
ALTER TABLE `tbl_inscripcion`
  MODIFY `id_ins` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_cursa`
--
ALTER TABLE `tbl_cursa`
  ADD CONSTRAINT `FK_cursa_inscrip` FOREIGN KEY (`id_ins`) REFERENCES `tbl_inscripcion` (`id_ins`);

--
-- Filtros para la tabla `tbl_participante`
--
ALTER TABLE `tbl_participante`
  ADD CONSTRAINT `FK_parti_dorsal` FOREIGN KEY (`num_dorsal`) REFERENCES `tbl_dorsal` (`num_dorsal`),
  ADD CONSTRAINT `tbl_participante_ibfk_1` FOREIGN KEY (`id_ins`) REFERENCES `tbl_inscripcion` (`id_ins`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
