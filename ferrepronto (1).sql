-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-11-2022 a las 03:26:47
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ferrepronto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `Id` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Telefono` text NOT NULL,
  `Id Usuario` int(11) NOT NULL,
  `Rol` text NOT NULL,
  `Sueldo` float NOT NULL,
  `Ventas` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`Id`, `Nombre`, `Telefono`, `Id Usuario`, `Rol`, `Sueldo`, `Ventas`) VALUES
(1, 'Kike', '7225580716', 1, 'Administrador', 10000, 0),
(2, 'Fernando', '121221211', 2, 'Administrador', 10000, 0),
(3, 'Josu', '1212124452', 3, 'Administrador', 10000, 0),
(4, 'josue', '245545545', 4, 'Administrador', 1000, 0),
(5, 'ferxo', '4544545', 5, 'Vendedor', 1000, 0),
(6, 'Juan', '14578244', 6, 'Vendedor', 2000, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `Id` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Marca` text NOT NULL,
  `Medida` text NOT NULL,
  `Categoria` text NOT NULL,
  `Precio Compra` float NOT NULL,
  `Precio Venta` float NOT NULL,
  `Stock` int(100) NOT NULL,
  `id Proveedor` int(100) NOT NULL,
  `Fecha de Compra` text NOT NULL,
  `Dias de Garantia` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`Id`, `Nombre`, `Marca`, `Medida`, `Categoria`, `Precio Compra`, `Precio Venta`, `Stock`, `id Proveedor`, `Fecha de Compra`, `Dias de Garantia`) VALUES
(1, 'Caja Tuercas de Titanio 100 pz', 'Truper', '5 mm', 'Tuercas y Tornillos', 100, 180, 20, 1, '11/11/2022', 30),
(2, 'Caja Tornillos 1 kg', 'Truper', '3 mm', 'Tuercas y Tornillos', 200, 340, 12, 1, '11/11/2022', 100),
(3, 'Taladro Inalambrico', 'Milwaukee', 'No aplica', 'Electricos', 600, 1070, 10, 7, '11/11/2022', 180),
(4, 'Pinzas de corte', 'Truper', '11 pulgadas', 'Pinzas y Tijeras', 100, 160, 21, 1, '12/11/2022', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `Id` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Telefono` text NOT NULL,
  `Email` text NOT NULL,
  `NombreContacto` text NOT NULL,
  `TelefonoContacto` text NOT NULL,
  `EmailContacto` text NOT NULL,
  `DiaLlegada` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`Id`, `Nombre`, `Telefono`, `Email`, `NombreContacto`, `TelefonoContacto`, `EmailContacto`, `DiaLlegada`) VALUES
(1, 'Truper México', '7248287483', 'truper@truper.mx', 'Josue Luis Gallegos', '728492948', 'josueTruper@gmail.com', 'Lunes'),
(2, 'Berel', '726262622', 'berelToluca@berel.mx', 'Armando Bobadilla', '71263332', 'armiBarca@gmail.com', 'Jueves'),
(3, 'Comex', '72245352523', 'comex@comex.com.mx', 'Francisco Rojas', '7215352232', 'frankComex@yahoo.com.mx', 'Martes'),
(4, 'Interceramic', '72215155222', 'interceramic@gmail.com', 'Fernando Valli', '72721876372', 'ferxoInterceramic@hotmail.com', 'Lunes'),
(5, 'Pretul', '72727222', 'pretulmx@pretul.com', 'Pepe Garza', '712232323', 'pepeG@gmail.com', 'Martes'),
(6, 'Tabiquera La nueva', '726262622', 'tabiqueraN@gmail.com', 'Saul Garcia', '7272737722', 'saulGarc@gmail.com', 'Lunes'),
(7, 'Milwauke', '72727272', 'milwaukeemx@milwaukee.com', 'Felipe Ramos', '7127367232', 'flipeMx@milwaukee.com', 'Sabado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id` int(11) NOT NULL,
  `NombreUsuario` text NOT NULL,
  `Contraseña` text NOT NULL,
  `Id Empleado` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id`, `NombreUsuario`, `Contraseña`, `Id Empleado`) VALUES
(1, 'usuario1', 'contraseña1', 1),
(2, 'usuario2', 'contraseña2', 2),
(3, 'usuario3', 'contraseña3', 3),
(4, 'usuario4', 'contra4', 4),
(5, 'usuario5', 'contra5', 5),
(6, 'usuario6', 'contraseña6', 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id Usuario` (`Id Usuario`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `id Proveedor` (`id Proveedor`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id Empleado` (`Id Empleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id Proveedor`) REFERENCES `proveedor` (`Id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`Id Empleado`) REFERENCES `personal` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
