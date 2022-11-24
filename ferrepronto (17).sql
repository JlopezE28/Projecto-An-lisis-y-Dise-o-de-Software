-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2022 at 07:35 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ferrepronto`
--

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `Id` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Telefono` text NOT NULL,
  `Email` text NOT NULL,
  `RFC` text NOT NULL,
  `Domicilio` text NOT NULL,
  `NoCompras` int(11) NOT NULL DEFAULT 0,
  `TipoCliente` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`Id`, `Nombre`, `Telefono`, `Email`, `RFC`, `Domicilio`, `NoCompras`, `TipoCliente`) VALUES
(1, 'Juan Carlos Dzib', '7227986062', 'jdzib@gmail.com', 'JDZIB4321', 'Colonia Seminario, Toluca', 3, 'General'),
(3, 'Francisco Lopez', '7225566902', 'franciscoL@yahoo.com.mx', 'FRL043I23', 'Metepec, Colonia San Isidro', 2, 'General'),
(4, 'Jesus Gonzalez Hernandez', '7225605575', 'j1232@gmail.com', 'JEGIEHJR2', 'Calle 27 de septimbre, Colonia Santa Ana, Toluca', 2, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `factura`
--

CREATE TABLE `factura` (
  `Folio Factura` int(11) NOT NULL,
  `Folio` int(11) NOT NULL,
  `Id Cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `factura`
--

INSERT INTO `factura` (`Folio Factura`, `Folio`, `Id Cliente`) VALUES
(1, 15, 3),
(5, 17, 4);

-- --------------------------------------------------------

--
-- Table structure for table `garantia`
--

CREATE TABLE `garantia` (
  `Folio` int(11) NOT NULL,
  `FolioVenta` int(11) NOT NULL,
  `IdProd` int(11) NOT NULL,
  `Unidades` int(11) NOT NULL,
  `Fecha` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `garantia`
--

INSERT INTO `garantia` (`Folio`, `FolioVenta`, `IdProd`, `Unidades`, `Fecha`) VALUES
(1, 1, 1, 1, '20/11/2022'),
(2, 1, 2, 1, '20/11/2022'),
(3, 17, 1, 1, '21/11/2022');

-- --------------------------------------------------------

--
-- Table structure for table `personal`
--

CREATE TABLE `personal` (
  `Id` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Telefono` text NOT NULL,
  `Rol` text NOT NULL,
  `Sueldo` float NOT NULL,
  `Ventas` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personal`
--

INSERT INTO `personal` (`Id`, `Nombre`, `Telefono`, `Rol`, `Sueldo`, `Ventas`) VALUES
(1, 'Juan Enrique Lopez Chavez', '7225580716', 'Administrador', 1000000, 0),
(2, 'Fernando Martinez Vallejo', '7221198469', 'Administrador', 1000, 0),
(6, 'Josue Perez Reyes', '7227007322', 'Vendedor', 1000, 8);

-- --------------------------------------------------------

--
-- Table structure for table `producto`
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
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`Id`, `Nombre`, `Marca`, `Medida`, `Categoria`, `Precio Compra`, `Precio Venta`, `Stock`, `id Proveedor`, `Fecha de Compra`, `Dias de Garantia`) VALUES
(1, 'Machete', 'Truper', '40 cm', 'Herramientas', 220, 350, 6, 1, '12/11/2022', 10),
(2, 'Martillo', 'Truper', '30 cm', 'Herramientas', 110, 180, 21, 1, '19/11/2022', 10),
(3, 'Caja tornillos 100 pz', 'Pretul', '5 cm', 'Tuercas y Tornillos', 100, 175, 46, 2, '18/11/2022', 30),
(4, 'Cerrucho', 'Truper', '100 cm', 'Herramientas', 200, 360, 7, 1, '17/11/2022', 30),
(5, 'Caja Pijas autoperforantes', 'Pretul', '5 cm', 'Pijas', 100, 170, 17, 2, '20/11/2022', 10),
(7, 'Motosierra', 'Truper', '40 cm', 'Electricos', 920, 1400, 10, 1, '13/11/2022', 180);

-- --------------------------------------------------------

--
-- Table structure for table `proveedor`
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
-- Dumping data for table `proveedor`
--

INSERT INTO `proveedor` (`Id`, `Nombre`, `Telefono`, `Email`, `NombreContacto`, `TelefonoContacto`, `EmailContacto`, `DiaLlegada`) VALUES
(1, 'Truper', '7221583392', 'truper@truper.mx', 'Jose Javier', '7226240718', 'joseTruper@gmail.com', 'Lunes'),
(2, 'Pretul', '7228181512', 'pretulmexico@pretul.com', 'Miguel Ernesto', '7228181512', 'miguelPRETUL@yahoo.mx', 'Martes'),
(3, 'Milwaukee', '7226580714', 'milwaukeemx@mwk.com', 'Jose Miguel Anders', '7229681475', 'joseMW@gmail.com', 'Jueves');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `NombreUsuario` text NOT NULL,
  `Contraseña` text NOT NULL,
  `Id Empleado` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`NombreUsuario`, `Contraseña`, `Id Empleado`) VALUES
('usuario1', 'contraseña1', 1),
('usuario2', 'contra2', 2),
('usuario6', 'contra6', 6);

-- --------------------------------------------------------

--
-- Table structure for table `venta`
--

CREATE TABLE `venta` (
  `Folio` int(11) NOT NULL,
  `Id Cliente` int(11) NOT NULL,
  `Id Personal` int(11) NOT NULL,
  `Fecha` text NOT NULL,
  `Hora` text NOT NULL,
  `Subtotal` float NOT NULL,
  `IVA` float NOT NULL,
  `Total` float NOT NULL,
  `MP` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venta`
--

INSERT INTO `venta` (`Folio`, `Id Cliente`, `Id Personal`, `Fecha`, `Hora`, `Subtotal`, `IVA`, `Total`, `MP`) VALUES
(1, 4, 6, '20/11/2022', '11:49:00', 180, 28.8, 208.8, ''),
(3, 4, 6, '20/11/2022', '12:16:40', 1575, 252, 1827, ''),
(5, 4, 6, '20/11/2022', '12:19:39', 525, 84, 609, ''),
(6, 3, 6, '20/11/2022', '12:44:48', 1050, 168, 1218, ''),
(7, 4, 6, '20/11/2022', '12:49:27', 1580, 252.8, 1832.8, ''),
(8, 3, 6, '20/11/2022', '14:14:02', 535, 85.6, 620.6, ''),
(9, 4, 6, '20/11/2022', '14:51:48', 180, 28.8, 208.8, ''),
(10, 4, 6, '20/11/2022', '14:53:24', 180, 28.8, 208.8, ''),
(11, 4, 6, '20/11/2022', '16:29:44', 705, 112.8, 817.8, ''),
(12, 1, 6, '20/11/2022', '18:39:45', 170, 27.2, 197.2, ''),
(13, 1, 6, '20/11/2022', '19:29:21', 1400, 224, 1624, 'Tarjeta'),
(14, 1, 6, '20/11/2022', '19:37:15', 170, 27.2, 197.2, 'Tarjeta'),
(15, 3, 6, '20/11/2022', '19:38:53', 1760, 281.6, 2041.6, 'Tarjeta'),
(16, 4, 6, '21/11/2022', '00:26:13', 360, 57.6, 417.6, 'Tarjeta'),
(17, 4, 6, '21/11/2022', '12:31:08', 1240, 198.4, 1438.4, 'Tarjeta');

-- --------------------------------------------------------

--
-- Table structure for table `venta - producto`
--

CREATE TABLE `venta - producto` (
  `Folio` int(11) NOT NULL,
  `Id Producto` int(11) DEFAULT NULL,
  `NoProductos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venta - producto`
--

INSERT INTO `venta - producto` (`Folio`, `Id Producto`, `NoProductos`) VALUES
(1, 3, 1),
(1, 1, 1),
(1, 1, 1),
(1, 3, 2),
(1, 1, 4),
(1, 2, 1),
(8, 2, 2),
(8, 3, 1),
(9, 2, 1),
(10, 2, 1),
(11, 3, 1),
(11, 2, 1),
(11, 1, 1),
(12, 5, 1),
(13, 7, 1),
(14, 5, 1),
(15, 4, 1),
(15, 7, 1),
(16, 4, 1),
(17, 1, 2),
(17, 4, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`Folio Factura`),
  ADD KEY `Folio` (`Folio`),
  ADD KEY `Id Cliente` (`Id Cliente`);

--
-- Indexes for table `garantia`
--
ALTER TABLE `garantia`
  ADD PRIMARY KEY (`Folio`),
  ADD KEY `FolioVenta` (`FolioVenta`),
  ADD KEY `IdProd` (`IdProd`);

--
-- Indexes for table `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `id Proveedor` (`id Proveedor`);

--
-- Indexes for table `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD KEY `Id Empleado` (`Id Empleado`),
  ADD KEY `Id Empleado_2` (`Id Empleado`);

--
-- Indexes for table `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`Folio`),
  ADD KEY `Id Cliente` (`Id Cliente`),
  ADD KEY `Id Personal` (`Id Personal`);

--
-- Indexes for table `venta - producto`
--
ALTER TABLE `venta - producto`
  ADD KEY `Folio` (`Folio`),
  ADD KEY `Id Producto` (`Id Producto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `factura`
--
ALTER TABLE `factura`
  MODIFY `Folio Factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `garantia`
--
ALTER TABLE `garantia`
  MODIFY `Folio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal`
--
ALTER TABLE `personal`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `producto`
--
ALTER TABLE `producto`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `venta`
--
ALTER TABLE `venta`
  MODIFY `Folio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`Folio`) REFERENCES `venta` (`Folio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`Id Cliente`) REFERENCES `cliente` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id Proveedor`) REFERENCES `proveedor` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`Id Empleado`) REFERENCES `personal` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`Id Cliente`) REFERENCES `cliente` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`Id Personal`) REFERENCES `personal` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `venta - producto`
--
ALTER TABLE `venta - producto`
  ADD CONSTRAINT `venta - producto_ibfk_1` FOREIGN KEY (`Folio`) REFERENCES `venta` (`Folio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `venta - producto_ibfk_2` FOREIGN KEY (`Id Producto`) REFERENCES `producto` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
