-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-06-2020 a las 11:07:27
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
-- Base de datos: `tp2`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `Busquedaproductofiltros` (IN `_nom` VARCHAR(100), IN `_cat` VARCHAR(100), IN `_mc` VARCHAR(100))  SELECT p.id_producto id_producto, p.nombre nombre, p.descripcion descripcion,c.nombre descategoria ,m.descripcion descmarca, p.precio precio
FROM prod p 
INNER JOIN categ c ON c.id_categoria = p.id_categoria 
INNER JOIN marc m on m.id_marca = p.id_marca 
WHERE 
c.nombre =(CASE WHEN _cat = '' THEN c.nombre else _cat END )
AND
m.descripcion = (CASE WHEN _mc = '' THEN m.descripcion else _mc END )
AND
p.nombre LIKE CONCAT('%', _nom , '%')$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `categ`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `categ` (
`id_categoria` int(11)
,`nombre` varchar(250)
,`id_padre` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `coment`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `coment` (
`id_comentario` int(11)
,`nombre` varchar(100)
,`mail` varchar(100)
,`telefono` varchar(20)
,`mensaje` varchar(255)
,`estado` int(11)
,`fechalta` datetime
,`id_producto` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `marc`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `marc` (
`id_marca` int(11)
,`descripcion` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id`, `nombre`) VALUES
(1, 'Administrador'),
(2, 'Ventas'),
(3, 'Marketing');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_permisos`
--

CREATE TABLE `perfil_permisos` (
  `id` int(11) NOT NULL,
  `perfil_id` int(11) NOT NULL,
  `permiso_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perfil_permisos`
--

INSERT INTO `perfil_permisos` (`id`, `perfil_id`, `permiso_id`) VALUES
(29, 1, 1),
(30, 1, 2),
(31, 1, 4),
(32, 1, 3),
(33, 1, 5),
(34, 1, 6),
(35, 1, 7),
(58, 2, 1),
(59, 2, 2),
(60, 2, 3),
(61, 3, 1),
(62, 3, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `cod` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id`, `nombre`, `cod`) VALUES
(1, 'Agregar usuarios', 'user.add'),
(2, 'Modificar usuarios', 'user.edit'),
(3, 'Borrar Usuarios', 'user.del'),
(4, 'Ver Usuarios', 'user.see'),
(5, 'Agregar Tareas', 'tarea.add');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos2`
--

CREATE TABLE `permisos2` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `permisos2`
--

INSERT INTO `permisos2` (`id`, `nombre`) VALUES
(1, 'productos'),
(2, 'categorias'),
(3, 'marcas'),
(4, 'comentarios'),
(5, 'usuarios'),
(6, 'perfiles'),
(7, 'subcategorias');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `prod`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `prod` (
`id_producto` int(11)
,`nombre` varchar(100)
,`descripcion` varchar(1000)
,`imagen` varchar(200)
,`id_marca` int(11)
,`id_categoria` int(11)
,`precio` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `clave` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tipo` int(2) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `salt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `usuario`, `clave`, `email`, `tipo`, `activo`, `salt`) VALUES
(1, 'Admin', 'Sistema', 'admin', '207acd61a3c1bd506d7e9a4535359f8a', 'admin@carrito.com', 1, 1, 'salt'),
(20, 'adrian', 'balquinta', 'adrian.balquinta', 'd0e1c75ebb04e671cd5d0d224a570e90', 'adrian@gmail.com', 0, 1, '5eed717ba1e55'),
(21, 'juan', 'perez', 'juan.perez', '0d2846c41a4cdc8bbd704042f4a1f9e0', '', 0, 0, '5eedb9b04f111'),
(22, 'juan', 'perez', 'juan.perez', '6d16c598a274ba27fd491d94b578dbc5', 'adrian@gmail.com', 0, 1, '5eedb9ddf3af2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_perfiles`
--

CREATE TABLE `usuarios_perfiles` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `perfil_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios_perfiles`
--

INSERT INTO `usuarios_perfiles` (`id`, `usuario_id`, `perfil_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(28, 22, 1),
(29, 20, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_tipos`
--

CREATE TABLE `usuarios_tipos` (
  `id_tipo` int(11) NOT NULL,
  `tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios_tipos`
--

INSERT INTO `usuarios_tipos` (`id_tipo`, `tipo`) VALUES
(1, 'admin'),
(2, 'ventas'),
(3, 'entregas');

-- --------------------------------------------------------

--
-- Estructura para la vista `categ`
--
DROP TABLE IF EXISTS `categ`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `categ`  AS  select `produccion`.`categorias`.`id_categoria` AS `id_categoria`,`produccion`.`categorias`.`nombre` AS `nombre`,`produccion`.`categorias`.`id_padre` AS `id_padre` from `produccion`.`categorias` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `coment`
--
DROP TABLE IF EXISTS `coment`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `coment`  AS  select `produccion`.`comentarios`.`id_comentario` AS `id_comentario`,`produccion`.`comentarios`.`nombre` AS `nombre`,`produccion`.`comentarios`.`mail` AS `mail`,`produccion`.`comentarios`.`telefono` AS `telefono`,`produccion`.`comentarios`.`mensaje` AS `mensaje`,`produccion`.`comentarios`.`estado` AS `estado`,`produccion`.`comentarios`.`fechalta` AS `fechalta`,`produccion`.`comentarios`.`id_producto` AS `id_producto` from `produccion`.`comentarios` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `marc`
--
DROP TABLE IF EXISTS `marc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `marc`  AS  select `produccion`.`marcas`.`id_marca` AS `id_marca`,`produccion`.`marcas`.`descripcion` AS `descripcion` from `produccion`.`marcas` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `prod`
--
DROP TABLE IF EXISTS `prod`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `prod`  AS  select `produccion`.`productos`.`id_producto` AS `id_producto`,`produccion`.`productos`.`nombre` AS `nombre`,`produccion`.`productos`.`descripcion` AS `descripcion`,`produccion`.`productos`.`imagen` AS `imagen`,`produccion`.`productos`.`id_marca` AS `id_marca`,`produccion`.`productos`.`id_categoria` AS `id_categoria`,`produccion`.`productos`.`precio` AS `precio` from `produccion`.`productos` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `perfil_permisos`
--
ALTER TABLE `perfil_permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permisos2`
--
ALTER TABLE `permisos2`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `usuarios_perfiles`
--
ALTER TABLE `usuarios_perfiles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_tipos`
--
ALTER TABLE `usuarios_tipos`
  ADD PRIMARY KEY (`id_tipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `perfil_permisos`
--
ALTER TABLE `perfil_permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `permisos2`
--
ALTER TABLE `permisos2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `usuarios_perfiles`
--
ALTER TABLE `usuarios_perfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `usuarios_tipos`
--
ALTER TABLE `usuarios_tipos`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
