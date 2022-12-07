-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-12-2022 a las 23:42:26
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectocarrito`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) UNSIGNED NOT NULL,
  `Dni` varchar(9) DEFAULT NULL,
  `Nombres` varchar(255) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `Dni`, `Nombres`, `Direccion`, `Email`, `Password`) VALUES
(1, '1023625', 'Sebastian Londoño', 'CL 24a #41-45', 'sebaslon@gmail.com', '2005');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `idCompras` int(11) UNSIGNED NOT NULL,
  `idCliente` int(11) UNSIGNED NOT NULL,
  `idPago` int(11) UNSIGNED NOT NULL,
  `FechaCompras` varchar(11) DEFAULT NULL,
  `Monto` double DEFAULT NULL,
  `Estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`idCompras`, `idCliente`, `idPago`, `FechaCompras`, `Monto`, `Estado`) VALUES
(8, 1, 1, '2022-12-07', 489, 'Cancelado - En Proceso de Envio'),
(9, 1, 2, '2022-12-07', 199, 'En Proceso de Envio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compras`
--

CREATE TABLE `detalle_compras` (
  `idDetalle` int(10) UNSIGNED NOT NULL,
  `idProducto` int(11) UNSIGNED NOT NULL,
  `idCompras` int(11) UNSIGNED NOT NULL,
  `Cantidad` int(11) UNSIGNED DEFAULT NULL,
  `PrecioCompra` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_compras`
--

INSERT INTO `detalle_compras` (`idDetalle`, `idProducto`, `idCompras`, `Cantidad`, `PrecioCompra`) VALUES
(1, 2, 8, 1, 190),
(2, 8, 8, 1, 299),
(3, 6, 9, 1, 199);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `idPago` int(11) UNSIGNED NOT NULL,
  `Monto` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`idPago`, `Monto`) VALUES
(1, 489),
(2, 199);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProducto` int(11) UNSIGNED NOT NULL,
  `Nombres` varchar(255) DEFAULT NULL,
  `Foto` varchar(255) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  `Stock` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `Nombres`, `Foto`, `Descripcion`, `Precio`, `Stock`) VALUES
(1, 'Call of Duty: Modern Warfare', 'https://exitocol.vtexassets.com/arquivos/ids/5290656/videojuego-call-of-duty-modern-warfare-playstation-4.jpg?v=637432470496800000', 'Es un videojuego de disparos en primera persona desarrollado por Infinity Ward y publicado por Activision.', 180, 100),
(2, 'Assassin\'s Creed: Valhalla', 'https://exitocol.vtexassets.com/arquivos/ids/4924865/videojuego-assassins-creed-valhalla-playstation-5.jpg?v=637402772424900000', 'Es un videojuego desarrollado por Ubisoft Montreal y publicado por Ubisoft.', 190, 100),
(3, 'Rocket League', 'https://exitocol.vtexassets.com/arquivos/ids/14411235/videojuego-rocket-league-playstation-4.jpg?v=637974720933970000', 'Videojuego que combina el fútbol con los vehículos. Fue desarrollado por Psyonix y lanzado el 7 de julio de 2015.', 40, 100),
(4, 'Halo 5 Guardians', 'https://exitocol.vtexassets.com/arquivos/ids/4362413/videojuego-halo-5-guardians-xbox-one.jpg?v=637376315471130000', 'La serie se centra en una guerra interestelar entre la humanidad y una alianza teocrática de alienígenas conocidos como Covenant.', 170, 100),
(5, 'Gears 5', 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6255/6255311_sd.jpg', 'Es un videojuego de acción en tercera persona desarrollado por The Coalition y publicado por Xbox Game Studios para Microsoft Windows y Xbox One.', 99, 100),
(6, 'Red Dead Redemption 2', 'https://panamericana.vteximg.com.br/arquivos/ids/305659-1080-1080/juego-red-dead-redemption-2-para-ps4-710425478949.jpg?v=636772012192000000', 'Es un videojuego de acción-aventura western basado en el drama, en un mundo abierto y en perspectiva de primera y tercera persona. Fue desarrollado por Rockstar Games.', 199, 100),
(7, 'Grand Theft Auto V', 'https://exitocol.vtexassets.com/arquivos/ids/504162/juego-gta-five-grand-theft-auto-5-xbox-one.jpg?v=637011110030330000', 'Es un videojuego de acción-aventura desarrollado por el estudio Rockstar North y distribuido por Rockstar Games.', 130, 100),
(8, 'Control inalámbrico Electric Volt de Xbox, verde', 'https://panamericana.vteximg.com.br/arquivos/ids/397327-1080-1080/control-inalambrico-xbox-electric-volt-verde-889842716511.png?v=637612950201530000', NULL, 299, 40),
(9, 'Control inalámbrico PS5', 'https://cosonyb2c.vtexassets.com/arquivos/ids/345373/PS5_DS_Pshot_A.jpg?v=1755919235', NULL, 270, 40);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`idCompras`),
  ADD KEY `Compras_FKIndex1` (`idPago`),
  ADD KEY `Compras_FKIndex2` (`idCliente`);

--
-- Indices de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD PRIMARY KEY (`idDetalle`,`idProducto`,`idCompras`),
  ADD KEY `Producto_has_Compras_FKIndex1` (`idProducto`),
  ADD KEY `Producto_has_Compras_FKIndex2` (`idCompras`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`idPago`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `idCompras` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  MODIFY `idDetalle` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `idPago` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idProducto` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`idPago`) REFERENCES `pago` (`idPago`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD CONSTRAINT `detalle_compras_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `detalle_compras_ibfk_2` FOREIGN KEY (`idCompras`) REFERENCES `compras` (`idCompras`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
