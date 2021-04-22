-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 22-04-2021 a las 12:21:12
-- Versión del servidor: 5.7.33-0ubuntu0.18.04.1
-- Versión de PHP: 7.0.33-47+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crudone`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_carrera`
--

CREATE TABLE `tbl_carrera` (
  `carr_id` int(11) NOT NULL,
  `carr_nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

--
-- Volcado de datos para la tabla `tbl_carrera`
--

INSERT INTO `tbl_carrera` (`carr_id`, `carr_nombre`) VALUES
(1, 'Psicologia'),
(2, 'Ingenieria Electrica'),
(3, 'Ingenieria de Sistemas'),
(4, 'Robotica'),
(5, 'Electromecanica'),
(6, 'Medicina'),
(7, 'Pedagogia'),
(8, 'Fisica'),
(9, 'Ingenieria de Software');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estudiante`
--

CREATE TABLE `tbl_estudiante` (
  `estu_id` int(11) NOT NULL,
  `estu_nombre` varchar(45) NOT NULL,
  `estu_apellido` varchar(45) NOT NULL,
  `estu_cedula` int(11) NOT NULL,
  `carr_id` int(11) NOT NULL,
  `univ_id` int(11) NOT NULL,
  `ingl_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

--
-- Volcado de datos para la tabla `tbl_estudiante`
--

INSERT INTO `tbl_estudiante` (`estu_id`, `estu_nombre`, `estu_apellido`, `estu_cedula`, `carr_id`, `univ_id`, `ingl_id`) VALUES
(2, 'Cristina', 'Estrada', 72151548, 2, 1, 1),
(3, 'Sebastian', 'Sanchez', 1104121549, 3, 1, 1),
(5, 'Ramiro', 'Sanchez', 75849964, 5, 1, 1),
(6, 'Alberto', 'Otalvaro', 46836546, 6, 1, 1),
(7, 'John', 'Medina', 73154963, 7, 1, 1),
(8, 'Jose', 'Goyeneche', 56848312, 8, 1, 1),
(9, 'Wilmer', 'Ortiz', 68674866, 9, 1, 1),
(10, 'Francisco', 'Alvarado', 46878466, 1, 1, 1),
(12, 'Juan', 'Salazar', 16354846, 9, 1, 1),
(23, 'Luis', 'Angel', 1116777913, 6, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ingles`
--

CREATE TABLE `tbl_ingles` (
  `ingl_id` int(11) NOT NULL,
  `ingl_nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

--
-- Volcado de datos para la tabla `tbl_ingles`
--

INSERT INTO `tbl_ingles` (`ingl_id`, `ingl_nombre`) VALUES
(1, 'A1'),
(2, 'A2'),
(3, 'B1'),
(4, 'B2'),
(5, 'C1'),
(6, 'C2'),
(7, 'Nativo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_universidad`
--

CREATE TABLE `tbl_universidad` (
  `univ_id` int(11) NOT NULL,
  `univ_nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

--
-- Volcado de datos para la tabla `tbl_universidad`
--

INSERT INTO `tbl_universidad` (`univ_id`, `univ_nombre`) VALUES
(1, 'Universidad de los Andes'),
(2, 'Universidad Nacional de Colombia'),
(3, 'Pontificia Universidad Javeriana'),
(4, 'Universidad de Antioquia'),
(5, 'Universidad de Santander'),
(6, 'Universidad Autonoma de Bucaramanga'),
(7, 'Universidad del Norte'),
(8, 'Universidad del Bosque'),
(9, 'Universidad Sergio Arboleda');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_carrera`
--
ALTER TABLE `tbl_carrera`
  ADD PRIMARY KEY (`carr_id`);

--
-- Indices de la tabla `tbl_estudiante`
--
ALTER TABLE `tbl_estudiante`
  ADD PRIMARY KEY (`estu_id`),
  ADD KEY `carr_id` (`carr_id`),
  ADD KEY `univ_id` (`univ_id`),
  ADD KEY `ingl_id` (`ingl_id`);

--
-- Indices de la tabla `tbl_ingles`
--
ALTER TABLE `tbl_ingles`
  ADD PRIMARY KEY (`ingl_id`);

--
-- Indices de la tabla `tbl_universidad`
--
ALTER TABLE `tbl_universidad`
  ADD PRIMARY KEY (`univ_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_carrera`
--
ALTER TABLE `tbl_carrera`
  MODIFY `carr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `tbl_estudiante`
--
ALTER TABLE `tbl_estudiante`
  MODIFY `estu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `tbl_ingles`
--
ALTER TABLE `tbl_ingles`
  MODIFY `ingl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `tbl_universidad`
--
ALTER TABLE `tbl_universidad`
  MODIFY `univ_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_estudiante`
--
ALTER TABLE `tbl_estudiante`
  ADD CONSTRAINT `tbl_estudiante_ibfk_1` FOREIGN KEY (`carr_id`) REFERENCES `tbl_carrera` (`carr_id`),
  ADD CONSTRAINT `tbl_estudiante_ibfk_2` FOREIGN KEY (`univ_id`) REFERENCES `tbl_universidad` (`univ_id`),
  ADD CONSTRAINT `tbl_estudiante_ibfk_3` FOREIGN KEY (`ingl_id`) REFERENCES `tbl_ingles` (`ingl_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
