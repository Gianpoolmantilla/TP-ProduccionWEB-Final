-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-04-2020 a las 03:01:38
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colores`
--

CREATE TABLE `colores` (
  `id_color` int(11) NOT NULL,
  `descripcion` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `colores`
--

INSERT INTO `colores` (`id_color`, `descripcion`) VALUES
(1, 'negro'),
(2, 'blanco'),
(3, 'gris'),
(4, 'rojo'),
(5, 'azul');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id_contacto` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  `comentario` varchar(250) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id_contacto`, `nombre`, `email`, `area`, `comentario`, `telefono`) VALUES
(1, 'test', 'prueba@hotmail.com', 'soporte', 'comentario', '45758888'),
(2, '11', '11', '11', '1111', '111'),
(3, 'jorge', 'jorge@hotmail.com', 'soporte', 'quejas!', '111111'),
(4, '545', 'rererr@gmail.com', '65', 'vdbfdbffbd', 'jnn'),
(5, 'hhhhewrwer', 'wfefwfwe', '65', 'ewrrewr', 'jnn'),
(6, 'ruben', 'ruben@gmail.com', 'garantia', 'no funciona', '7878748'),
(7, '545', 'gpmantilla@gmail.com', '65', '', 'jnn'),
(8, 'ffe', 'fff', 'fff', 'fff', 'ffff'),
(9, 'wwww', 'www', 'www', 'wwww', 'wwww'),
(10, '', '', '', '', ''),
(11, '', '', '', '', ''),
(12, '', '', '', '', ''),
(13, 'qqqq', 'qq', 'qq', 'qqqq', 'qqqqq'),
(14, 'gg', 'gggggg', 'ggggggg', 'gggggg', 'gg'),
(15, '', '', '', '', ''),
(16, '', '', '', '', ''),
(17, 'rrr', '', '', 'rrrrrrrrr', 'rrr'),
(18, '', '', '', '', ''),
(19, 'tytt', 'rtyrty', 'rtyrt', 'tytry', 'rtyrty'),
(20, '545', 'gpmantilla@gmail.com', 'dddd', '74564', 'jnn'),
(21, '545', '', 'Soporte', '', 'jnn'),
(22, 'pepe', 'pepe@gmail.com', 'Soporte', 'prueba tests con adrian', '455555'),
(23, 'fe', 'wewe', 'Soporte', 'werweer', 'weew'),
(24, 'aws', 'wfefwfwe', 'Garantia', 'wwdfwecweqfeee', 'gg'),
(25, '545', 'gpmantilla@gmail.com', 'Garantia', '4525445', 'jnn'),
(26, 'WWW', 'WEDWD', 'Devolucion del producto', 'WWD', 'WWQ'),
(27, 'ww', 'ww', 'Devolucion del producto', 'ww', 'd'),
(28, 'dwd', '', 'Devolucion del producto', 'wdwd', ''),
(29, 'adad', 'ad', 'Devolucion del producto', 'adda', 'ad'),
(30, 'dd', 'sdd', 'Devolucion del producto', 'sdd', 'sdd'),
(31, '', '', 'Devolucion del producto', '', ''),
(32, 'ee', '', 'Devolucion del producto', 'ee', ''),
(33, '', '6556', 'Devolucion del producto', '', ''),
(34, 'seff', 'wefwef', 'Devolucion del producto', 'ewewwe', 'ewef'),
(35, 'sd', 'd', 'Devolucion del producto', '', 'd'),
(36, 'oooo', 'ooo', 'Reclamos', 'ooooo', 'oooo'),
(37, 'ooo', 'ooo', 'Devolucion del producto', 'oooo', 'ooo'),
(38, '', '', '', '', ''),
(39, '', '', '', '', ''),
(40, '', '', '', '', ''),
(41, '', '', '', '', ''),
(42, '', '', '', '', ''),
(43, '', '', '', '', ''),
(44, '', '', '', '', ''),
(45, 'ww', 'w', 'Devolucion del producto', 'w', 'wqw'),
(46, 'eef', 'efwefw', 'Reclamos', 'wefeffe', 'fewfe'),
(47, 'frfgrf', 'eef', 'Devolucion del producto', 'efefef', 'sefef'),
(48, 'francio', '', 'Devolucion del producto', '', ''),
(49, 'llllll', 'lll', 'Devolucion del producto', 'llllll', 'llllllll'),
(50, 'ttt', 'tt', 'Devolucion del producto', 'tt', 'tt'),
(51, '523', '45345', 'Devolucion del producto', '543543', '54354'),
(52, 'ddfs', 'fhdfg', 'Devolucion del producto', 'fsedf', 'fdsf'),
(53, 'mamamamam', 'mamam', 'Devolucion del producto', '', 'mama|'),
(54, 'xx', 'xx', 'Soporte', 'xxx', 'xxx'),
(55, 'ef', 'seff', 'Devolucion del producto', 'efese', 'efssef'),
(56, 'awswdf', 'asf', 'Devolucion del producto', 'asfsf', 'asf'),
(57, 'a', 'a', 'Soporte', 'aa', 'a'),
(58, 'a', 'a', 'Soporte', 'aa', 'a'),
(59, 'www', 'ww', 'Reclamos', 'ww', 'ww');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id_marca` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id_marca`, `descripcion`) VALUES
(1, 'Samsung'),
(2, 'apple'),
(3, 'MSI'),
(4, 'Asus'),
(5, 'Zotac'),
(6, 'Asrock'),
(7, 'Gigabyte'),
(8, 'AMD'),
(9, 'lg'),
(10, 'Hisense'),
(11, 'Noganet'),
(12, 'Motorola'),
(13, 'Xiaomi'),
(14, 'Thonet Vander');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `id_marca` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `descripcion`, `imagen`, `id_marca`, `id_categoria`) VALUES
(1, 'iphone 8 plus', 'Mayor rendimiento,Su memoria RAM de 3 GB te permitirá ejecutar varias aplicaciones al mismo tiempo', 'product8.PNG', 2, 12),
(2, 'Apple iPad Pro 12,9', 'Pantalla Retina Líquida Multi-Touch de 12.9\' Resolución de pantalla de 2732 x 2048 (264 ppi) Coprocesador SoC + M12 de Apple A12X de 64 bits Wi-Fi 5 (802.11ac), BT 5.0', 'nodisponible.PNG', 2, 13),
(3, 'homepod', 'Este altavoz diseñado a propósito crea un sonido rico y matizado que desafía su tamaño.', 'nodisponible.PNG', 2, 9),
(4, 'Placa de Video MSI GeForce GTX 1650 4GB GDDR6 ', ' potencia y desempeño para el ray tracing e IA. ¡Una experiencia de juego totalmente novedosa! RTX. It’s On.', 'nodisponible.PNG', 3, 5),
(5, 'Placa de Video Zotac GeForce RTX 2060 SUPER 8GB ', 'Todo es súper con las nuevas tarjetas gráficas ZOTAC GAMING GeForce RTX 20 Series SUPER. Se basan en la nueva arquitectura NVIDIA Turing, ', 'nodisponible.PNG', 5, 5),
(6, 'Mother Asrock A320M-HDV R4.03 Ryzen M-ATX ', NULL, 'nodisponible.PNG', 6, 6),
(7, 'Mother MSI A68HM-E33', NULL, 'nodisponible.PNG', 3, 6),
(8, 'Procesador AMD A6 7480 3.5GHz', NULL, 'nodisponible.PNG', 8, 7),
(9, 'Procesador AMD A8 9600 APU 3.4Ghz AM4 ', NULL, 'nodisponible.PNG', 8, 7),
(10, 'Smart TV Samsung 32p LED HD 32J4290', NULL, 'nodisponible.PNG', 1, 8),
(11, 'Smart TV Hisense 32p LED H3218H5', NULL, 'nodisponible.PNG', 10, 8),
(12, 'Sintonizadora De TV Noga Externa Full HD NGS-323', NULL, 'nodisponible.PNG', 11, 15),
(13, 'Soporte Para TV Noga Fijo', NULL, 'nodisponible.PNG', 11, 15),
(14, 'Parlante Bluetooth Portatil Celular Mini Luces ', NULL, 'nodisponible.PNG', 11, 9),
(15, 'Parlante Inalambrico Noga 2.1 Pc', NULL, 'nodisponible.PNG', 11, 9),
(16, 'Auriculares inalámbricos Samsung Buds', NULL, 'nodisponible.PNG', 1, 10),
(17, 'Auriculares inalámbricos Xiaomi', NULL, 'nodisponible.PNG', 13, 10),
(18, 'Home Theater 2.1 Noga', 'Ver mas', 'nodisponible.PNG', 11, 11),
(19, 'Home Theater Thonet Vander', 'Ver mas', 'nodisponible.PNG', 14, 11);

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
-- Indices de la tabla `colores`
--
ALTER TABLE `colores`
  ADD PRIMARY KEY (`id_color`);

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id_contacto`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `fk_id_marca` (`id_marca`),
  ADD KEY `fk_id_categoria` (`id_categoria`);

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

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id_contacto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_id_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`),
  ADD CONSTRAINT `fk_id_marca` FOREIGN KEY (`id_marca`) REFERENCES `marcas` (`id_marca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
