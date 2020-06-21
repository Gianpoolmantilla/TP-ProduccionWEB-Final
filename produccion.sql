-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-06-2020 a las 21:57:16
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

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
(1, 'Informática', 0),
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
(15, 'Accesorios-TV', 2),
(22, 'Instrumentos musicales', 4),
(28, 'Cargadores usb', 3),
(29, 'prueba categoria', 0),
(30, 'sub1', 29),
(31, 'sub 2', 29);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id_comentario` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `mensaje` varchar(255) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `fechalta` datetime DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id_comentario`, `nombre`, `mail`, `telefono`, `mensaje`, `estado`, `fechalta`, `id_producto`) VALUES
(1, 'adrian', 'adrian@gmail.com', '111222333444', 'Buena onda', 200, '2020-06-15 02:40:30', 1),
(2, 'jorge', 'jorge@gmail.com', '1548775', 'muy bueno el producto', 200, '2020-06-20 22:30:16', 1),
(3, 'jorge', 'jorge@gmail.com', '1548775', 'muy bueno el producto', 100, '2020-06-20 22:30:48', 1),
(4, 'jose jose', '22@gmail.com', '123456', 'excelente', 200, '2020-06-21 16:23:30', 1),
(5, 'romina', 'ro@gmail.com', '4444', 'muy recomedando!! de 10 el producto', 100, '2020-06-21 16:24:59', 2),
(6, 'romina', 'ro@gmail.com', '4444', 'muy recomedando!! de 10 el producto', 100, '2020-06-21 16:25:34', 2);

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
(59, 'www', 'ww', 'Reclamos', 'ww', 'ww'),
(60, '1111111', '11', 'Soporte', '11', 'jnn'),
(61, '545', 'dfdf', 'Soporte', 'fdf', 'sdf');

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
(14, 'Thonet Vander'),
(17, 'lala');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `id_marca` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `precio` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `descripcion`, `imagen`, `id_marca`, `id_categoria`, `precio`, `deleted`) VALUES
(1, 'iphone 8 plus', 'Mayor rendimiento,Su memoria RAM de 3 GB te permitirá ejecutar varias aplicaciones al mismo tiempo', 'iPhone8.PNG', 2, 12, '35.000', 0),
(2, 'Apple iPad Pro 12,9', 'Pantalla Retina Líquida Multi-Touch de 12.9\' Resolución de pantalla de 2732 x 2048 (264 ppi) Coprocesador SoC + M12 de Apple A12X de 64 bits Wi-Fi 5 (802.11ac), BT 5.0', 'iPadPro.PNG', 2, 13, '75.000', 0),
(3, 'homepod', 'Este altavoz diseñado a propósito crea un sonido rico y matizado que desafía su tamaño.', 'homePod.PNG', 2, 9, '43.000', 0),
(4, 'Placa de Video MSI GeForce GTX 1650 4GB GDDR6 ', ' potencia y desempeño para el ray tracing e IA. ¡Una experiencia de juego totalmente novedosa! RTX. It’s On.', 'GeForceGTX.PNG', 3, 5, '25.000', 0),
(5, 'Placa de Video Zotac GeForce RTX 2060 SUPER 8GB ', 'Todo es súper con las nuevas tarjetas gráficas ZOTAC GAMING GeForce RTX 20 Series SUPER. Se basan en la nueva arquitectura NVIDIA Turing, ', 'placaGeForceRTX.PNG', 7, 5, '14.350', 0),
(6, 'Mother Asrock A320M-HDV R4.03 Ryzen M-ATX ', 'Basada en el chipset AMD AM4, la placa base ASRock A320M-HDV R4.0 está diseñada para soportar procesadores AMD Ryzen.\r\n', 'motherAsRock320.PNG', 6, 6, '7.500', 0),
(7, 'Mother MSI A68HM-E33', ' Soporta socket FM2+/FM2 para procesadores AMD® A-Series/Athlon™ Soporta memoria DDR3 Military Class 4', 'motherMSI.PNG', 3, 6, '5.000', 0),
(8, 'Procesador AMD A6 7480 3.5GHz', 'Obtenga un excelente rendimiento con los procesadores acelerados AMD A-Series. La tecnología de CPU multinúcleo y la excelencia de las tecnologías gráficas de alta gama de AMD Radeon se combinan en un único procesador', 'Amd_A6.PNG', 8, 7, '8.700', 0),
(9, 'Procesador AMD A8 9600 APU 3.4Ghz AM4 ', 'Mejora la productividad de tu computadora de escritorio con la APU A8 9600 ', 'Amd_a8.PNG', 8, 7, '9.500', 0),
(10, 'Smart TV Samsung 32p LED HD 32J4290', 'Mirá tu contenido preferido con colores naturales que ofrecen detalles tan nítidos como en la realidad. Disfrutá de una experiencia de visualización más colorida.', 'hiensenTV.PNG', 1, 8, '15.000', 0),
(11, 'Smart TV Hisense 32p LED H3218H5', 'Con el Smart TV Hisense H3218H5, viví una nueva experiencia visual con la resolución HD, que te presentará imágenes con gran detalle y de alta calidad. ', 'hisenseTV.PNG', 10, 8, '18.500', 0),
(12, 'Sintonizadora De TV Noga Externa Full HD NGS-323', 'Sintonizadora de TV Externa, Mirá Televisión en tu Monitor, Sintonizá cualquier canal de aire y cable. Tecnología Full HD.', 'sintoniNoga.PNG', 11, 15, '2.500', 0),
(13, 'Soporte Para TV Noga Fijo', 'Ofrece movimiento lateral con 2 puntos de articulación y basculación de pantalla en 5° Grados.Incluye kit de fijación para una correcta colocación del equipo', 'product4.PNG', 11, 15, '3.000', 0),
(14, 'Parlante Bluetooth Portatil Celular Mini Luces ', 'Potenciá el sonido con este parlante que se convertirá en el mejor aliado en tus momentos de ocio y entretenimiento.\r\n', 'NogaLuminoso.PNG', 11, 9, '4.250', 0),
(15, 'Parlante Inalambrico Noga 2.1 Pc', 'SISTEMA DE PARLANTES MULTIMEDIA 2.1', 'homeTheareNoga.PNG', 11, 9, '5.550', 0),
(16, 'Auriculares inalámbricos Samsung Buds', 'Especialistas en sonidos de AKG han mejorado la calidad de estos auriculares, ofreciéndote un sonido más enriquecido y con la máxima calidad.', 'auriSamsung.PNG', 1, 10, '21.000', 0),
(17, 'Auriculares inalámbricos Xiaomi', 'Diseñados teniendo en cuenta la simplicidad, los Redmi AirDots tienen un estilo único. Cuentan con Bluetooth 5.0 que te permite conectarte a distancias largas y tener mejor resistencia a las interfertencias wi-fi para que puedas mantener una conexión', 'auriXioami.PNG', 13, 10, '9.000', 0),
(18, 'Home Theater 2.1 Noga', 'SISTEMA DE PARLANTES 2.1 MULTIMEDIA NOGA C/ REMOTO S2176R', 'homeTheareNoga.PNG', 11, 11, '5.400', 0),
(19, 'Home Theater Thonet Vander', 'Todo en audio y sonido, lo mejor lo encontrás en Thonet. Comprá online a menor precio! Promo en Productos Seleccionados. Comprobá los precios del Audio Sale de Thonet.', 'HomeThonV.PNG', 14, 11, '11.250', 0),
(20, 'Celular Samsung Galaxy A9', 'Celular Samsung Galaxy A9', 'SamsungCel.PNG', 1, 12, '12.500', 0),
(21, 'Celular Samsung Galaxy A8', 'Celular Samsung Galaxy A8', 'SamsungCel.PNG', 1, 12, '15.000', 0),
(25, 'otro', 'asd', 'sintoniNoga - copia.png', 5, 13, '1231', 0),
(26, 'prueba', 'prueba', '12', 1, 6, '100', 0),
(27, '545', 'prueba', 'user2.png', 1, 5, '100', 0),
(28, 'nuvo nueno nuevo', 'sisisisisiisisis', 'iPhone8.png', 1, 5, '158', 0),
(29, 'aaaa', 'aaa', 'user2222.png', 1, 5, '999', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_comentario`);

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
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id_contacto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
