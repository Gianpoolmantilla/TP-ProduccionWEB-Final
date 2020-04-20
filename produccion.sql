-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2020 a las 06:03:11
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `produccion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id_alumno` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `apellido` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_alumno`, `nombre`, `apellido`, `email`) VALUES
(1, 'Alejandro', 'Garcia', 'jgarcia@test.com'),
(2, 'Pedro', 'Lopez', 'plopez@test.com'),
(4, 'Alejandro', 'Garcia', 'jgarcia@test.com'),
(5, 'Pedro', 'Lopez', 'plopez@test.com'),
(7, 'Alejandro', 'Garcia', 'jgarcia@test.com'),
(8, 'Pedro', 'Lopez', 'plopez@test.com'),
(10, 'Alejandro', 'Garcia', 'jgarcia@test.com'),
(11, 'Pedro', 'Lopez', 'plopez@test.com'),
(13, 'Alejandro', 'Garcia', 'jgarcia@test.com'),
(14, 'Pedro', 'Lopez', 'plopez@test.com'),
(16, 'Alejandro', 'Garcia', 'jgarcia@test.com'),
(17, 'Pedro', 'Lopez', 'plopez@test.com'),
(18, 'Alejandro', 'Garcia', 'jgarcia@test.com'),
(19, 'Pedro', 'Lopez', 'plopez@test.com'),
(21, 'Alejandro', 'Garcia', 'jgarcia@test.com'),
(22, 'Pedro', 'Lopez', 'plopez@test.com'),
(24, 'Alejandro', 'Garcia', 'jgarcia@test.com'),
(25, 'Pedro', 'Lopez', 'plopez@test.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `id_padre` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`, `id_padre`) VALUES
(1, 'Informatica', 0),
(2, 'Televisores y video', 0),
(3, 'Celulares y tablets', 0),
(4, 'Audio', 0),
(5, 'Placa de video', 1),
(6, 'Motherboards', 1),
(7, 'Procesadores', 1),
(8, 'Smart TV HD', 2),
(9, 'Parlantes', 4),
(10, 'Auriculares', 4),
(11, 'Home theatre', 4),
(12, 'Celulares Libres', 3),
(13, 'Tablets', 3),
(14, 'Multimedia', 2),
(15, 'Accesorios-TV', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id_alumno`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
