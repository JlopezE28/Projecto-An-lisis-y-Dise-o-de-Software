-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2022 at 05:50 AM
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
  `TipoCliente` text NOT NULL DEFAULT 'General'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`Id`, `Nombre`, `Telefono`, `Email`, `RFC`, `Domicilio`, `NoCompras`, `TipoCliente`) VALUES
(1, 'Clara Iriarte-Carbajo', '7229318792', 'cl31@gmail.com', 'CJ37328SS', 'GOMEZ FARIAS NO. 415, CENTRO, 50150 ESTADO DE MEXICO, Toluca, 50150', 8, 'General'),
(2, 'Aitana Vilaplana Rius', '7222491636', 'aitna@outlook.com', 'AITSNWJRAS', 'AV HIDALGO OTE NO. 1307 NO. A, CENTRO, 50000', 2, 'General'),
(3, 'Cecilia Folch', '7220834032', 'cdheh@yahoo.com.mx', 'CLRJ83EU2', 'El Girasol 102, Toluca,', 1, 'General'),
(4, 'Nadia Gras Benito', '7222235739', 'NADg@gmail.com', 'NADJKFU32', 'AQUILES SERDAN 111 S/N, TOLUCA DE LERDO CENTRO, 50000', 1, 'General'),
(5, 'Iris Crescencia Fuertes Ballester', '7227154088', 'irfisne@hotmail.com', 'IRIFHWKAAS', 'JUAREZ NTE 17 S/N, TOLUCA DE LERDO CENTRO, 50000', 1, 'General'),
(6, 'Marcos Cantón', '7222749115', 'macienq2@gmail.com', 'MCRK34JEDA', 'Ignacio Allende 701', 2, 'General'),
(7, 'Pablo Herminio Cardona Jaén', '7229969287', 'Psshakdf@yahoo.com.mx', 'PVJSSJWDSA', 'AV HIDALGO 1307 -B-D, REFORMA Y FECC, 50150', 2, 'General'),
(8, 'María Fernanda Gomila-Hervás', '7221008405', 'madfee4553@gmail.com', 'MASIRFQEW3', 'LERDO PTE PLAZA LICESA NO. 104 PISO NO. 3, TOLUCA DE LERDO CENTRO, 50000', 1, 'General'),
(9, 'Sonia Almansa Sedano', '7221051944', 'sonyF@hotmail.com', 'SVNDJN353', 'ARQUEOLOGOS 102, MISIONES DE SANTA ESPERANZA, 50016', 1, 'General'),
(10, 'Jafet Barranco Valera', '7221923075', 'jfrrsw432@gmail.com', 'JFRTNBSAJ2', 'V. CARRANZA PTE. NO. 900 S/N, CIPRES, 50120', 1, 'General'),
(11, 'Sandra Rosales Perales', '7226108073', 'sandur3n2@hotmail.com', 'SRFJEJJ42', 'MORELOS OTE NO. 808, CENTRO, 50090', 1, 'General'),
(12, 'Carmina Rocha Gisbert', '7228302353', 'cRocha32@outlook.com', 'CRKSFNHEN3', 'BRAVO SUR NO. 209 NO. 301, CENTRO, 50000', 1, 'General'),
(13, 'Plácido Torrijos Patiño', '7226965317', 'pocple1323@gmail.com', 'PRTIEH3WA', 'RIVAPALACIO NO. 104, CENTRO, 50000', 1, 'General'),
(14, 'Valeria Cecilia Sosa Segovia', '7221082742', 'value323w.e@gmail.com', 'VRKHWR332', 'RAMON CORONA 502 S/N, FRANCISCO MURGUIA, 50130', 1, 'General'),
(15, 'Edgardo Barros Ramis', '7226227069', 'eduguwe@yahoo.com.mx', 'ED3E2RFA3', 'AHUEJOTE NO. 499 S/N, PEDREGAL DE SANTO DOMINGO', 1, 'General'),
(16, 'José Ángel Noé Segura Plaza', '7220914459', 'josur33@gmail.com', 'JSORU3REW43', 'AV JOSE MA MORELOS 407 NO. E, LAS GUACAMAYAS', 1, 'General'),
(17, 'Martín Dalmau Rodriguez', '7225668744', 'martI932@gmail.com', 'MTEKDCJE2', 'COMERCIO 47 S/N, AGROPECUARIO, 20136', 1, 'General'),
(18, 'Feliciana Gomis Aznar', '7224311735', 'soyFeliej3q@gmail.com', 'FTKÑLEK43', 'INDUSTRIA MINERA 418, CIENTIFICOS, 50075', 1, 'General'),
(19, 'Reinaldo Rodríguez Andrés', '7226816405', 'rey4g53j@gmail.com', 'RJWN31W32S', 'ALTAMIRANO 705, UNIVERSIDAD, 50130', 1, 'General'),
(20, 'Esteban Pombo Ricart', '7220785286', 'rich48238@hotmail.com', 'RIFJGFSDN4', '2DA PRIV JUAN ESCUTIA SN S/N, SAN MATEO OXTOTITLAN, 50100', 1, 'General'),
(21, 'Wálter Pedro Salas', '7224262701', 'wf3j5@yahoo.com', 'WAMRM3W54', 'AV 5 DE MAYO 908, VALLE DON CAMILO, 50140', 1, 'General'),
(22, 'Jessica Laguna Checa', '7224232696', 'jessL432@gmail.com', 'JLF3JJR3EF', 'PORTAL MADERO NO. 206 NO. A, CENTRO, 50000', 1, 'General'),
(23, 'Ana Girona Gonzalo', '7228792857', 'anen3nd@yahoo.com.mx', 'ABSD3WEA32', 'INDEPENDENCIA PTE 106 NO. 204, CENTRO, 50000', 1, 'General'),
(24, 'Jose Ramón Andrés-Viña', '7222634402', 'jfieh2jq@gmail.com', 'JSURH3HRF3', 'FEDERICO T DE LA CHICA NO 2 DEPTO 401, SATELITE, 53100', 1, 'General'),
(25, 'Rita Calderon Montoya', '7223810922', 'ritysuq@gmail.com', 'RHFHFUE23', 'AQUILES SERDAN 211 NO. S/N, CENTRO ALAMEDA, 50080', 1, 'General'),
(26, 'Glauco Campillo Solís', '7225661523', 'gmrnekdjw@gmail.com', 'GSAJEHF32', 'NEZAHUALCOYOTL 907 NO. S/N, STA ANA TLAPALTITLAN, 50160', 1, 'General'),
(27, 'Edelmiro Ruiz Cobos', '7220268737', 'edljekrl@yahoo.com', 'EJDHJFDIFW2', 'SOR JUANA INES DE LA CRUZ 604 NO. 1, CUAUHTEMOC, 50130', 1, 'General'),
(28, 'Haroldo Cases Moles', '7220144163', 'harofkfjq2432@gmail.com', 'HRJWJ323SR', 'MATAMOROS NO. 104 LOCAL 8, CENTRO, 50000', 1, 'General'),
(29, 'Seve Paniagua Ángel', '7225455789', 'sevenw3n2@gmail.com', 'sveveP@gmail.com', 'PASEO VICENTE GUERRERO 230, PLAZAS DE SAN BUENAVENTUR, 50110', 1, 'General'),
(30, 'Jose Carlos Silvestre Bonet Rivero', '7224539773', 'jsoeCmerm2@hotmail.com', 'JFH4H332D', 'LERMA 708 S/N, SANCHEZ, 50040', 1, 'General'),
(31, 'Adrián de Robles', '7220068338', 'adyRwr3@gamil.com', 'AF4RDFVF33', 'INDUSTRIAL AUTOMOTRIZ 454, BUENAVISTA, 50080', 1, 'General'),
(32, 'Antonia Castejón Carrillo', '7225386021', 'aTAMENEc@yahoo.com', 'AF4F4F42SD', 'MANUEL M CONTRERAS NO. 218, VERTICE, 50090', 1, 'General'),
(33, 'Adelina Campillo Infante', '7227704597', 'adelinA@gmail.com', 'ADELDINE22', 'ROSALIO BACA NO. 204 S/N, REFORMA Y FERROCARRILES NACIONALES, 50070', 1, 'General'),
(34, 'Fausto Juliá Paniagua', '7225192820', 'fausrtj232@hotmail.com', 'FAERF4323', 'TOLUCA DE LERDO NO 500', 1, 'General'),
(35, 'Segismundo Font Río', '7222666051', 'segfrr3qw83@gamil.com', 'SRG4R342R', 'V GOMEZ FARIAS 308-A OTE, CENTRO, 50000', 1, 'General'),
(36, 'Javier Borrás Bonet', '7228928244', 'j33h22efq@gmail.com', 'HRFH3J23RED', 'Lote. 2 Manzana 2-L S/N', 1, 'General'),
(37, 'Azeneth Vilar Gil', '7221446416', 'g4hh4j@yahoo.com', 'AXEDF2EADQ', 'RAFAEL ALDUCIN Nº303, FERROCARRILES, 50070', 1, 'General'),
(38, 'Nydia del Cano', '7222521839', 'nCAFNNE23@hotmail.com', 'NCEKEFJ23Q', 'JUAREZ SUR 1202 S/N, UNIVERSIDAD, 50130', 1, 'General'),
(39, 'Dionisio Lerma Roldan', '7220680196', 'dione3@gmail.com', 'DREIEN3232', 'IGNACIO LOPEZ RAYON SUR NO. 515 S/N, CUAUHTEMOC, 50130', 0, 'General'),
(40, 'Emelina Gallego Rosa', '7229981320', 'ememlIFDME@outlook.com', 'EFMSDFNME4', 'RAFAEL M HIDALGO 1005, AMERICAS, 50130', 1, 'General'),
(41, 'Casemiro Escudero-Bautista', '7227522682', 'rekafnmn3@gmail.com', 'CADRE3QQWQ3', 'JESUS GONZALEZ ORTEGA 304 NO. S/N, DOCTORES, 50060', 0, 'General'),
(42, 'Nazario Carbó Botella', '7224403894', 'nadcbshw@hotmail.com', 'NZJHDH3J32', 'PIRULES NO. 127 NO. 5, BOSQUES DE COLON, 50260', 0, 'General'),
(43, 'Bernabé Granados', '7226388358', 'bernyy322@gmail.com', 'BEREH3B2', 'CARRETERA MEXICO-QUERETARO PERI NORTE NO 810, SANTA MONICA, 54050', 0, 'General'),
(44, 'Adela de Llabrés', '7224748053', 'adlekdfi3@gmail.com', 'ADJEHFB33Q', 'INDEPENDENCIA OTE 1017, REFORMA, 50070', 0, 'General'),
(45, 'Severo Gonzalez Torrecilla', '7220507326', 'sfvee32@hotmail.com', 'SEVRER342R', 'LAGO SAYULA 15000, SEMINARIO 1RA SECC, 50170', 0, 'General'),
(46, 'Simón Valenzuela Galindo', '7227615663', 'siomonen2@gmail.com', 'SMNRFNEE2', 'VIALIDAD ALFREDO DEL MAZO 66-F, SAN LORENZO TEPALTITLAN, 50010', 0, 'General'),
(47, 'María Dolores Caballero Herrero', '7220213796', 'masdjei@gmail.com', 'MSADJEJ3J32', 'I LOPEZ RAYON NTE NO. 206 LOC NO. BIC, TOLUCA DE LERDO CENTRO, 50000', 0, 'General'),
(48, 'Aníbal Ricardo Navarro Valderrama', '7227007535', 'ansuieu@gmail.com', 'ASD3R3AQD', 'SALVADOR SANCHEZ COLIN NO. 103 S/N, VALLE VERDE, 50140', 0, 'General'),
(49, 'Primitivo Nebot Prado', '7228532790', 'primeiuriw@yahoo.com', 'PENFJJ322', 'BUENAVENTURA 1321, GUERRERO, 50170', 0, 'General'),
(50, 'Salvador Buendía Canals', '7226213846', 'schavaeeaf3@yahoo.com', 'SAVFEBBE23', 'MORELOS PTE NO. 406 S/N, CENTRO, 50000', 0, 'General'),
(51, 'Fernando Mari Valle', '725580714', 'ferMar@gmail.com', 'FR44FSDF34', 'Calle sn, Valle de Guadalupe 52000', 1, 'General');

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
(1, 1, 1),
(2, 2, 9),
(3, 3, 1),
(4, 4, 2),
(5, 5, 20),
(6, 6, 1),
(7, 7, 37),
(8, 8, 34),
(9, 9, 38),
(10, 10, 29),
(11, 11, 2),
(12, 12, 1),
(13, 13, 17),
(14, 14, 24),
(15, 15, 40),
(16, 16, 13),
(17, 17, 4),
(18, 18, 7),
(19, 19, 1),
(20, 20, 7),
(21, 21, 22),
(22, 22, 1),
(23, 24, 16),
(24, 25, 1),
(25, 26, 8),
(26, 27, 51),
(27, 28, 1),
(28, 29, 3),
(29, 31, 11),
(30, 33, 14),
(31, 34, 19),
(32, 35, 15),
(33, 36, 18),
(34, 37, 21),
(35, 38, 12),
(36, 39, 23),
(37, 40, 25),
(38, 41, 26),
(39, 42, 6),
(40, 43, 28),
(41, 44, 27),
(42, 45, 30),
(43, 46, 32),
(44, 47, 31),
(45, 48, 33),
(46, 49, 35),
(47, 50, 36);

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
(1, 23, 16, 1, '21/11/2022'),
(2, 7, 46, 1, '21/11/2022'),
(3, 32, 27, 1, '21/11/2022');

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
  `Ventas` int(100) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personal`
--

INSERT INTO `personal` (`Id`, `Nombre`, `Telefono`, `Rol`, `Sueldo`, `Ventas`) VALUES
(1, 'Juan Enrique Lopez Chavez', '7227971587', 'Administrador', 10000, 0),
(2, 'Fernando Martinez Vallejo', '7226964625', 'Administrador', 100000, 0),
(3, 'Josue Perez Reyes', '7223099422', 'Administrador', 100000, 0),
(4, 'Hernando Olivé Amores', '7225943789', 'Vendedor', 2000, 2),
(5, 'Camilo Peláez Nevado', '7228663432', 'Vendedor', 2500, 2),
(6, 'Lilia Cruz Lozano', '7223959109', 'Vendedor', 2000, 1),
(7, 'Ariadna Leal-Río', '7221846172', 'Vendedor', 2000, 7),
(8, 'Cruz Alemán Ayuso', '7226694589', 'Vendedor', 2000, 3),
(9, 'Eusebia Pinedo Martín', '7225570992', 'Vendedor', 2000, 2),
(10, 'Álvaro Chuy Roldán Manso', '7229721816', 'Vendedor', 2000, 0),
(11, 'Ana Valentina Villanueva Robledo', '7220061888', 'Vendedor', 2000, 0),
(12, 'Luis Ángel Montes Pomares', '7225791684', 'Vendedor', 2000, 0),
(13, 'Luis Ángel Montes Pomares', '7224233255', 'Vendedor', 2000, 0),
(14, 'Florinda Villa Clavero', '7222721981', 'Vendedor', 2000, 4),
(15, 'Silvio Porta Morillo', '7229717602', 'Vendedor', 2000, 0),
(16, 'Ildefonso Cañas-Pellicer', '7221691511', 'Vendedor', 2000, 0),
(17, 'Áurea Coello Real', '7229325358', 'Vendedor', 2000, 0),
(18, 'Maxi Ortega Roca', '7225920369', 'Vendedor', 2000, 0),
(19, 'Epifanio Exposito Andreu', '7226167041', 'Vendedor', 2000, 12),
(20, 'Jenny Gil Viñas', '7223958073', 'Vendedor', 2000, 0),
(21, 'Jenny Gil Viñas', '7220653135', 'Vendedor', 2000, 0),
(22, 'Mariano Roig-Martínez', '7225255676', 'Vendedor', 2000, 0),
(23, 'Débora Chelo Verdejo Mateo', '7226929624', 'Vendedor', 2000, 1),
(24, 'Juan Francisco Guzman Sola', '7221082721', 'Vendedor', 2000, 0),
(25, 'Ariadna Parra Silva', '7228719167', 'Vendedor', 2000, 0),
(26, 'Carmela Boada Cánovas', '7227963103', 'Vendedor', 2000, 3),
(27, 'Chita del Verdú', '7221158365', 'Vendedor', 2000, 8),
(28, 'Antonio Iglesias Amor', '7224615391', 'Vendedor', 2000, 0),
(29, 'Antonio Iglesias Amor', '7222372239', 'Vendedor', 2000, 0),
(30, 'Cosme Hilario Duque Angulo', '7223634767', 'Vendedor', 2000, 2),
(31, 'Selena Niño Salas', '7228262923', 'Vendedor', 2000, 0),
(32, 'Adalberto Pereira Ojeda', '7228262923', 'Vendedor', 2000, 0),
(33, 'Fernando Trillo Gámez', '7224196586', 'Vendedor', 2000, 1),
(34, 'Eusebio Durán Cuenca', '7224196586', 'Vendedor', 2000, 0),
(35, 'Eva María Barbero Carro', '7223773916', 'Vendedor', 2000, 0),
(36, 'Catalina Cecilia Talavera Carro', '7227772531', 'Vendedor', 2200, 0),
(37, 'Prudencio Bustamante Fuster', '7224431546', 'Vendedor', 2200, 0),
(38, 'Maxi Cortina Crespo', '7221420699', 'Vendedor', 2200, 0),
(39, 'Nazaret Torrens-Yáñez', '7225041521', 'Vendedor', 2200, 0),
(40, 'Constanza Echevarría Cortina', '7229965276', 'Vendedor', 2200, 0),
(41, 'Gustavo Barón Rosa', '7229965276', 'Vendedor', 2200, 0),
(42, 'Cipriano Bonilla-Sancho', '7229165158', 'Vendedor', 2200, 0),
(43, 'Aitana Guardia Codina', '7225381504', 'Vendedor', 2200, 0),
(44, 'Olalla de Gallardo', '7229001878', 'Vendedor', 2200, 0),
(45, 'Loreto Garmendia Carrillo', '7227692187', 'Vendedor', 2200, 1),
(46, 'Dorotea Moles-Mayo', '7229460946', 'Vendedor', 2200, 0),
(47, 'Guadalupe Corominas Reig', '7221745865', 'Vendedor', 2200, 0),
(48, 'Rómulo Rincón Calvo', '7221184749', 'Vendedor', 2200, 0),
(49, 'Luisina Saura Solana', '7226124707', 'Vendedor', 2200, 0),
(50, 'Marcial Peral Tello', '7227145134', 'Vendedor', 2200, 1);

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
(1, 'ADAPTADOR ANGULAR P/TALADRO ', 'DEWALT', '140 mm', 'Taladros', 500, 650, 9, 1, '21/11/2022', 50),
(2, 'Aspiradora polvo', 'DEWALT', '1/2 galon', 'Electricos', 2600, 3069, 10, 1, '23/03/2022', 90),
(3, 'Atornillador', 'Makita', '1/4', 'Electricos', 1800, 2645, 28, 3, '09/06/2022', 180),
(4, 'Broca multiconstructo', 'Bosch', '5/16', 'Taladros', 165, 262, 99, 8, '02/05/2022', 20),
(5, 'Martillo demoledor', 'Hilti', '200 AVR', 'Demolicion', 33000, 48920, 5, 6, '22/02/2022', 180),
(6, 'Amperimetro Gancho', 'Fluke', '100A', 'Electricos', 4200, 5248, 10, 5, '09/10/2022', 30),
(7, 'Corta tubo ', 'Adir', '1/4', 'Pinzas y Cortadores', 87, 160, 37, 9, '22/02/2022', 10),
(8, 'Cable Portaelectrodo', 'Akron', '25 m', 'Cables', 4000, 4875, 29, 10, '10/05/2022', 30),
(9, 'Alambre Galvanizado', 'Aksi', '12.5 m', 'Alambres', 43, 68, 94, 11, '25/04/2022', 30),
(10, 'Escuadra Esquinera caja', 'Almet', '1x1', 'Piezas Metalicas', 18, 32, 48, 12, '13/09/2022', 50),
(11, 'Cja Tornillo Cabeza Hexagonal', 'Alpha', '1/2', 'Tuercas y Tornillos', 560, 791, 76, 13, '17/10/2022', 10),
(12, 'Amperimetro Gancho', 'Amprobe', '1000A', 'Electricos', 6500, 8194, 38, 14, '05/05/2022', 30),
(13, 'Cinta aislar amarillo', '3M', '18 m', 'Cintas', 16, 32.5, 991, 2, '18/04/2022', 50),
(14, 'Cinta aislar azul', '3M', '18 m', 'Cintas', 16.5, 32.5, 1188, 2, '18/04/2022', 50),
(15, 'Cautin', 'Weller', '30 W', 'Electricos', 750, 973.5, 39, 17, '17/04/2022', 30),
(16, 'Maquina Vibradora', 'Wahl', '412', 'Electricos', 540, 625, 38, 16, '05/07/2022', 30),
(17, 'Careta electronica para soldar', 'Volt', 'Grande', 'Equipo de proteccion', 470, 589, 8, 15, '23/07/2022', 70),
(18, 'Guante industrial', 'Vitex', '8', 'Equipo de proteccion', 43, 65, 95, 19, '07/02/2022', 30),
(19, 'Arco segueta', 'Urrea', '12 in', 'Herramientas', 130, 171, 36, 25, '30/07/2022', 10),
(20, 'Broca para concreto', 'Unicraft', '7/8', 'Taladros', 220, 265, 96, 24, '12/06/2022', 30),
(21, 'Juego de 8 brocas', 'Unicraft', '3/8', 'Taladros', 110, 176.8, 98, 24, '22/01/2022', 20),
(22, 'Tanque de gas acetileno', 'Turner', '12 L', 'Tanques', 100, 240, 38, 23, '14/07/2022', 30),
(23, 'Arnes completo', 'Tulmex', 'Completo', 'Equipo de proteccion', 800, 1153, 98, 21, '02/02/2022', 30),
(24, 'Cerradura con picaporte', 'Tover', 'S1', 'Cerraduras', 3500, 3961, 95, 22, '02/03/2022', 30),
(25, 'Juego de llaves combinadas', 'Toolman', '9', 'Herramientas', 180, 264, 24, 32, '04/07/2022', 30),
(26, 'Inversor de Voltaje', 'Steren', '1000 W', 'Electricos', 1800, 2304, 30, 37, '30/04/2022', 100),
(27, 'Alambre de navajas', 'Toolcraft', '8 m', 'Alambres', 430, 587, 96, 31, '13/01/2022', 60),
(28, 'Generador electrico', 'Tonka', '10000 W', 'Electricos', 22300, 28197, 5, 30, '19/07/2022', 30),
(29, 'Caja de taquete rojo', 'Thorsman', '1/4', 'Clavos y pijas', 112, 186, 98, 29, '03/05/2022', 80),
(30, 'Aceite Hidraulico', 'Surtek', '946 mL', 'Aceites y aditivos', 77, 98, 24, 27, '01/09/2022', 30),
(31, 'Aceite para motor 2 tiempos', 'Surtek', '250 mL', 'Aceites y aditivos', 12, 27, 97, 27, '01/09/2022', 30),
(32, 'Aceite para roscas', 'SUPEREGO', '5 L', 'Aceites y Aditivos', 398, 537, 47, 28, '19/03/2022', 90),
(33, 'Kit taladro para neumatico', 'Sunnex Tools', '16 in', 'Taladros', 1860, 2466, 10, 38, '14/04/2022', 30),
(34, 'Bolsa pija para tablaroca', 'Steelers', '3/4', 'Clavos y pijas', 136, 180, 59, 36, '14/06/2022', 60),
(35, 'Caja rodante', 'Stanley', '24 in', 'Almacenamiento', 1120, 1229, 35, 34, '23/03/2022', 15),
(36, 'Caja herramienta metal', 'Total', '16 in', 'Almacenamiento', 536, 633, 15, 33, '18/03/2022', 30),
(37, 'Bomba para agua', 'SIEMENS', '1 1/2 HP', 'Electricos', 2102, 2805, 10, 42, '15/10/2022', 40),
(38, 'Arnes contra caidas', 'Seguridad Alto', 'Grande', 'Equipo de proteccion', 560, 776, 30, 41, '11/01/2022', 30),
(39, 'Apagador con placa', 'Sanelec', 'Doble', 'Apagadores', 25, 41, 97, 40, '10/09/2022', 15),
(40, 'Apagador escalera', 'Sanelec', 'Escalera', 'Apagadores', 12, 33, 103, 40, '10/09/2022', 30),
(41, 'Cortadora azulejo electrica', 'Rubi', '125', 'Electricos', 5420, 7433, 5, 39, '18/05/2022', 180),
(45, 'Grasa para chasis', 'Roshfrans', '3.5 kg', 'Aceites y aditivos', 390, 503, 20, 44, '29/08/2022', 15),
(46, 'No mas clavos', 'Resistol', '113 g', 'Solventes', 32, 59, 41, 43, '22/03/2022', 15),
(47, 'Resistol 5000', 'Resistol', '1 L', 'Solventes', 174, 265, 99, 43, '22/03/2022', 30),
(48, 'Candado de combinacion', 'Phillips', '11 bp', 'Candados', 65, 104, 20, 49, '07/07/2022', 180),
(49, 'Candado', 'Phillips', '112 g', 'Candados', 45, 79, 20, 49, '07/07/2022', 180),
(50, 'Escalera multifuncional mini', 'Peldaños', '8 escalones', 'Escaleras', 1200, 1588, 39, 48, '27/07/2022', 90);

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
(1, 'DEWALT', '7226024603', 'dewaltmx@dewalt.com', 'Miguel Arturo Carrillo', '7226024643', 'miguDewalt@dewalt.com', 'Martes'),
(2, '3m', '7228737079', '3m@3mmx.com', 'Lucila Bustos', '7228672210', 'luci3m@hotmail.com', 'Lunes'),
(3, 'Makita', '7223548151', 'makita@makmx.com', 'Rubén del Echevarría', '7225341175', 'rubMAK@gmail.com', 'Sabado'),
(4, 'Foxwell', '7226118581', 'foxWell@foxwll.com', 'Victor Calatayud Pérez', '7224866974', 'vicFox@hotmail.com', 'Jueves'),
(5, 'Fluke', '7223815422', 'fluke@flk.mx', 'Delfina Teresa Hervás Hoyos', '7225717460', 'flukmx@fluk@.com', 'Jueves'),
(6, 'Hilti', '7228294008', 'hilti@productosH.mx', 'Gabriel Lino Esparza Vives', '7229519252', 'gab2321@gmail.com', 'Martes'),
(7, 'GreenLee', '7224408639', 'greenLee@gmx.mx', 'Nicolás Cornelio Carballo Pineda', '7220094705', 'nicoGREEN@yahoo.com', 'Lunes'),
(8, 'Bosch', '7222512597', 'boschMexcio@bosch.com', 'Valeria Escudero Avilés', '7224847463', 'valeriaBosch@gmail.com', 'Miercoles'),
(9, 'ADIR', '7221377670', 'adirInternacional@adirM.com', 'Piedad Blasco-Calderón', '7228016173', 'piedadAdirI@hotmail.com', 'Miercoles'),
(10, 'Akron', '7222468333', 'akronMexico@akron.mx', 'Edu Izaguirre-Ayllón', '7222766495', 'eduAkr@outlook.com', 'Lunes'),
(11, 'Aksi', '7222339046', 'aksiFerr@aksiMex.com', 'Eva María de Manrique', '7224856689', 'evaAksi@aksiMx.com', 'Miercoles'),
(12, 'Almet', '7227092058', 'almetM@almetInternacional.com', 'Adán de Ripoll', '7222676004', 'adanAlmt@yahoo.com', 'Sabado'),
(13, 'Alpha', '7228129598', 'alphaMat@alp.com.mx', 'Wilfredo Pujadas Salinas', '7228364163', 'alfredoaLPHA@gmail.com', 'Viernes'),
(14, 'Amprobe', '7223003056', 'amprMx@amprobe.com', 'Florinda Lara', '7220296177', 'amproBA@hotmail.com', 'Lunes'),
(15, 'Volt', '7220442075', 'voltMexico@grupovolt.com', 'Pascual Ocaña Gimenez', '7228678147', 'pascVoltmx@grupovolt.mx', 'Jueves'),
(16, 'Wahl', '7220831721', 'wahlMx@wahl.com', 'Amílcar Navarrete Campoy', '7224046816', 'aWhal@gmail.com', 'Sabado'),
(17, 'Weller', '7225116970', 'wellerMx@wellerI.com', 'Marina Palomino Esteban', '7223864241', 'marinaWll@outlook.com', 'Jueves'),
(18, 'Werner', '7226294453', 'wernerMx@wernMx.mx', 'Mariana Moles Sarabia', '7222540758', 'marianaWerner@gmail.com', 'Sabado'),
(19, 'Vitex', '7225098410', 'vitexGuantes@grupV.com', 'Concha López Gascón', '7227466173', 'vitexMx@yahoo.com', 'Miercoles'),
(20, 'VISEGRIP', '7226474056', 'grupoVISEGRIP@FPm.com', 'Conrado Manjón-Estevez', '7228613243', 'conradoVG@hotmail.com', 'Martes'),
(21, 'Tulmex', '7229051886', 'tulmexK@klein.com', 'Eric Acedo Luís', '7229623720', 'ericTul@klein.com', 'Jueves'),
(22, 'Tover', '7221643082', 'tover@toverMx.mx', 'Gertrudis Téllez', '7227788354', 'gerTover@tover.com', 'Viernes'),
(23, 'Turner', '7228826790', 'turner@turnerMx.com', 'Lola Oliva-Avilés', '7226293508', 'lolaTMX@hotmail.com', 'Martes'),
(24, 'UNICRAFT', '7222673403', 'unicraft@uniC.com', 'Mireia Anaya Ledesma', '7227610162', 'mireUnicraft@gmail.com', 'Lunes'),
(25, 'URREA', '7228695601', 'urreaMx@urrea.com', 'Nico Araujo Antón', '7222068141', 'nicoM@urrea.com', 'Miercoles'),
(26, 'vERIBOR', '7228342385', 'veribor@ventasV.mx', 'Jessica Roma', '7220292816', 'jessRV@ventasV.com', 'Sabado'),
(27, 'Surtek', '7224116471', 'surtek@surtek.mx', 'Leopoldo Álvaro Andreu', '7229393222', 'leoP@surtek.com', 'Viernes'),
(28, 'SUPEREGO', '7226223929', 'sueperE@sego.mx', 'Lisandro Arellano Cobo', '7228424431', 'lisandorv@sego.com', 'Martes'),
(29, 'Thorsman', '7220655363', 'gThorsman@grupoT.mx', 'Cipriano Mesa Lluch', '7227079394', 'CiprianoM@grupoT.mx', 'Miercoles'),
(30, 'Tonka', '7229648837', 'tomka@tkmx.mx', 'Teodosio Heras Moya', '7228912326', 'teoTK@tkmx.mx', 'Lunes'),
(31, 'Tollcraft', '7223497346', 'toolC@tcraf.mx', 'Marcio Garriga', '7220104834', 'marcTC@gmail.com', 'Jueves'),
(32, 'Toolman', '7224728098', 'tma@toolmx.com', 'Amanda Petrona Andrade Vendrell', '7220879246', 'amadaTM@gmail.com', 'Viernes'),
(33, 'Total', '7224728098', 'total@total.com', 'Espiridión Tena Calderón', '7223817272', 'etotal@yahoo.com', 'Jueves'),
(34, 'Stanley', '7229288626', 'stanMx@stan.com', 'Xavier Gabaldón Romero', '7221353814', 'v1@stan.com', 'Viernes'),
(35, 'Strarrett', '7229709693', 'st@starret.com', 'Casandra Vilanova Mendoza', '7227470193', 'casaS@gmail.com', 'Miercoles'),
(36, 'Steelers', '7222198464', 'steleerMex@stmx.com', 'Máxima Ros Ramos', '7229008140', 'maximaSt@yahoo.com', 'Sabado'),
(37, 'Steren', '7221108138', 'steren@Gsteren.mx', 'Alberto Jordá Iglesia', '7227699631', 'albsteren@Gsteren.mx', 'Jueves'),
(38, 'Sunnex Tools', '7225060616', 'sunnexT@sunnex.com', 'Sarita Agudo', '7221753264', 'saritaA@sunnex.com', 'Jueves'),
(39, 'Rubi', '7227429818', 'ferrRubi@rubi.com', 'Raquel Serna Amigó', '7228754163', 'raquelRubi@gmail.com', 'Martes'),
(40, 'Sanelec', '7227074141', 'sanelec@snmc.com', 'Ramón Fiol Soriano', '7221663217', 'ramonSA@gmail.com', 'Sabado'),
(41, 'Seguridad Alto', '7225546273', 'segAlto@galto.com', 'Óscar del Larrea', '7225093179', 'oscaA@galto.com', 'Lunes'),
(42, 'SIEMENS', '7222905085', 'SIEMENS@siemens.com', 'Silvio Pina', '7227149562', 'silvioPI@siemens.com', 'Jueves'),
(43, 'RESISTOL HENKEL', '7225457187', 'ghenkel@henkel.com', 'Amor Cornejo Vicens', '7228590290', 'amorC@henkel.com', 'Sabado'),
(44, 'Roshfrans', '7220275802', 'roshF@rosh.com', 'Omar Abril Ferrero', '7229369225', 'omrA@rosh.com', 'Martes'),
(45, 'Nitro', '7225476355', 'nitro@nitro.mx', 'Teresita Atienza Arrieta', '7227510418', 'tereN@nitro.mx', 'Sabado'),
(46, 'Oakland', '7228387318', 'oak@oaklandmx.com', 'José Ángel de Juan', '7224536887', 'jspoer@oaklandmx.com', 'Viernes'),
(47, 'OBI', '7229722285', 'obimx@obi.com', 'Andrés Felipe Gargallo Riba', '7224868959', 'obimxABD@obi.com', 'Miercoles'),
(48, 'Peldaños', '7221485579', 'pel@peldaños.mx', 'Yolanda Calderon Vendrell', '7223271147', 'pel@peldaños.mx', 'Martes'),
(49, 'Phillips', '7220123984', 'phillips@grupoPh.com', 'Feliciano Muro', '7223443938', 'felcCM@grupoPh.com', 'Jueves'),
(50, 'Truper', '7222268058', 'truper@trupermx.mx', 'Dani Camino Bilbao', '7228559024', 'truper@trupermx.mx', 'Sabado');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `NombreUsuario` text NOT NULL DEFAULT 'usuario',
  `Contraseña` text NOT NULL DEFAULT 'contra',
  `Id Empleado` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`NombreUsuario`, `Contraseña`, `Id Empleado`) VALUES
('admin1', 'contra1', 1),
('admin2', 'contra2', 2),
('admin3', 'contra3', 3),
('usuario4', 'contra4', 4),
('usuario5', 'contra5', 5),
('usuario6', 'contra6', 6),
('usuario7', 'contra7', 7),
('usuario8', 'contra8', 8),
('usuario9', 'contra9', 9),
('usuario10', 'contra10', 10),
('usuario11', 'contra11', 11),
('usuario12', 'contra12', 12),
('usuario13', 'contra13', 13),
('usuario14', 'contra14', 14),
('usuario15', 'contra15', 15),
('usuario16', 'contra16', 16),
('usuario17', 'contra17', 17),
('usuario18', 'contra18', 18),
('usuario19', 'contra19', 19),
('usuario20', 'contra20', 20),
('usuario21', 'contra21', 21),
('usuario22', 'contra22', 22),
('usuario23', 'contra23', 23),
('usuario24', 'contra24', 24),
('usuario25', 'contra25', 25),
('usuario26', 'contra26', 26),
('usuario27', 'contra27', 27),
('usuario28', 'contra28', 28),
('usuario29', 'contra29', 29),
('usuario30', 'contra30', 30),
('usuario31', 'contra31', 31),
('usuario32', 'contra32', 32),
('usuario33', 'contra33', 33),
('usuario34', 'contra34', 34),
('usuario35', 'contra35', 35),
('usuario36', 'contra36', 36),
('usuario37', 'contra37', 37),
('usuario38', 'contra38', 38),
('usuario39', 'contra39', 39),
('usuario40', 'contra40', 40),
('usuario41', 'contra41', 41),
('usuario42', 'contra42', 42),
('usuario43', 'contra43', 43),
('usuario44', 'contra44', 44),
('usuario45', 'contra45', 45),
('usuario46', 'contra46', 46),
('usuario47', 'contra47', 47),
('usuario48', 'contra48', 48),
('usuario49', 'contra49', 49),
('usuario50', 'contra50', 50);

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
(1, 1, 6, '21/11/2022', '18:35:57', 17107, 2737.12, 19844.1, 'Efectivo'),
(2, 9, 4, '21/11/2022', '18:40:20', 113.5, 18.16, 131.66, 'Tarjeta'),
(3, 1, 50, '21/11/2022', '18:42:25', 697, 111.52, 808.52, 'Tarjeta'),
(4, 2, 45, '21/11/2022', '19:14:49', 1992, 318.72, 2310.72, 'Tarjeta'),
(5, 20, 4, '21/11/2022', '19:19:12', 1067, 170.72, 1237.72, 'Efectivo'),
(6, 1, 7, '21/11/2022', '19:23:23', 773, 123.68, 896.68, 'Tarjeta'),
(7, 37, 7, '21/11/2022', '19:23:48', 59, 9.44, 68.44, 'Efectivo'),
(8, 34, 7, '21/11/2022', '19:24:13', 158, 25.28, 183.28, 'Tarjeta'),
(9, 38, 7, '21/11/2022', '19:24:39', 426, 68.16, 494.16, 'Efectivo'),
(10, 29, 7, '21/11/2022', '19:25:15', 198, 31.68, 229.68, 'Tarjeta'),
(11, 2, 7, '21/11/2022', '19:26:30', 244.8, 39.168, 283.968, 'Efectivo'),
(12, 1, 7, '21/11/2022', '19:27:07', 1153, 184.48, 1337.48, 'Tarjeta'),
(13, 17, 8, '21/11/2022', '19:28:34', 97.5, 15.6, 113.1, 'Tarjeta'),
(14, 24, 8, '21/11/2022', '19:28:55', 12472, 1995.52, 14467.5, 'Tarjeta'),
(15, 40, 8, '21/11/2022', '19:29:18', 65, 10.4, 75.4, 'Efectivo'),
(16, 13, 23, '21/11/2022', '19:35:14', 1182, 189.12, 1371.12, 'Tarjeta'),
(17, 4, 14, '21/11/2022', '19:36:47', 97.5, 15.6, 113.1, 'Efectivo'),
(18, 7, 14, '21/11/2022', '19:37:17', 791, 126.56, 917.56, 'Tarjeta'),
(19, 1, 14, '21/11/2022', '19:37:56', 176.8, 28.288, 205.088, 'Tarjeta'),
(20, 7, 14, '21/11/2022', '19:38:53', 262, 41.92, 303.92, 'Tarjeta'),
(21, 22, 33, '21/11/2022', '19:39:27', 136, 21.76, 157.76, 'Tarjeta'),
(22, 1, 27, '21/11/2022', '20:25:37', 160, 25.6, 185.6, 'Tarjeta'),
(23, 10, 27, '21/11/2022', '20:26:01', 657, 105.12, 762.12, 'Efectivo'),
(24, 16, 27, '21/11/2022', '20:26:22', 68, 10.88, 78.88, 'Tarjeta'),
(25, 1, 27, '21/11/2022', '20:26:51', 650, 104, 754, 'Tarjeta'),
(26, 8, 27, '21/11/2022', '20:27:46', 5147.5, 823.6, 5971.1, 'Tarjeta'),
(27, 51, 27, '21/11/2022', '20:28:50', 68, 10.88, 78.88, 'Efectivo'),
(28, 1, 27, '21/11/2022', '20:29:23', 265, 42.4, 307.4, 'Tarjeta'),
(29, 3, 27, '21/11/2022', '20:31:37', 73.5, 11.76, 85.26, 'Efectivo'),
(30, 5, 5, '21/11/2022', '20:32:26', 684.5, 109.52, 794.02, 'Tarjeta'),
(31, 11, 5, '21/11/2022', '20:32:48', 73.5, 11.76, 85.26, 'Tarjeta'),
(32, 6, 26, '21/11/2022', '20:33:32', 1038, 166.08, 1204.08, 'Efectivo'),
(33, 14, 26, '21/11/2022', '20:34:21', 2677.5, 428.4, 3105.9, 'Efectivo'),
(34, 19, 26, '21/11/2022', '20:34:55', 193, 30.88, 223.88, 'Tarjeta'),
(35, 15, 30, '21/11/2022', '20:35:30', 503, 80.48, 583.48, 'Efectivo'),
(36, 18, 30, '21/11/2022', '20:36:07', 230, 36.8, 266.8, 'Tarjeta'),
(37, 21, 9, '21/11/2022', '20:42:59', 1194, 191.04, 1385.04, 'Efectivo'),
(38, 12, 9, '21/11/2022', '20:43:16', 32, 5.12, 37.12, 'Efectivo'),
(39, 23, 19, '21/11/2022', '20:46:23', 264, 42.24, 306.24, 'Tarjeta'),
(40, 25, 19, '21/11/2022', '20:46:47', 2677.5, 428.4, 3105.9, 'Efectivo'),
(41, 26, 19, '21/11/2022', '20:47:07', 33, 5.28, 38.28, 'Efectivo'),
(42, 6, 19, '21/11/2022', '20:47:38', 111.5, 17.84, 129.34, 'Tarjeta'),
(43, 28, 19, '21/11/2022', '20:48:18', 543, 86.88, 629.88, 'Efectivo'),
(44, 27, 19, '21/11/2022', '20:48:42', 65, 10.4, 75.4, 'Tarjeta'),
(45, 30, 19, '21/11/2022', '20:48:58', 171, 27.36, 198.36, 'Tarjeta'),
(46, 32, 19, '21/11/2022', '20:49:12', 171, 27.36, 198.36, 'Efectivo'),
(47, 31, 19, '21/11/2022', '20:49:34', 1588, 254.08, 1842.08, 'Tarjeta'),
(48, 33, 19, '21/11/2022', '20:49:57', 4020, 643.2, 4663.2, 'Efectivo'),
(49, 35, 19, '21/11/2022', '20:50:45', 5078.5, 812.56, 5891.06, 'Tarjeta'),
(50, 36, 19, '21/11/2022', '20:51:02', 537, 85.92, 622.92, 'Efectivo');

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
(1, 18, 1),
(1, 12, 2),
(1, 17, 1),
(2, 31, 3),
(2, 13, 1),
(3, 7, 1),
(3, 32, 1),
(6, 19, 1),
(6, 18, 1),
(6, 32, 1),
(7, 46, 1),
(8, 49, 2),
(9, 22, 1),
(9, 29, 1),
(10, 13, 4),
(10, 9, 1),
(11, 9, 1),
(11, 21, 1),
(12, 23, 1),
(13, 14, 1),
(13, 18, 1),
(14, 24, 3),
(14, 17, 1),
(15, 14, 2),
(16, 14, 1),
(16, 20, 2),
(16, 27, 1),
(17, 14, 3),
(18, 11, 1),
(19, 21, 1),
(20, 4, 1),
(21, 9, 2),
(22, 7, 1),
(23, 10, 1),
(23, 16, 1),
(24, 9, 1),
(25, 1, 1),
(26, 8, 1),
(26, 22, 1),
(26, 13, 1),
(27, 9, 1),
(28, 20, 1),
(29, 14, 1),
(29, 39, 1),
(30, 13, 2),
(30, 14, 1),
(30, 27, 1),
(31, 13, 1),
(31, 39, 1),
(32, 29, 1),
(32, 27, 1),
(32, 47, 1),
(33, 14, 1),
(33, 3, 1),
(34, 40, 1),
(34, 7, 1),
(35, 45, 1),
(36, 46, 1),
(36, 19, 1),
(37, 23, 1),
(37, 39, 1),
(38, 10, 1),
(39, 25, 1),
(40, 14, 1),
(40, 3, 1),
(41, 40, 1),
(42, 14, 1),
(42, 49, 1),
(43, 20, 1),
(43, 34, 1),
(43, 30, 1),
(44, 18, 1),
(45, 19, 1),
(46, 19, 1),
(47, 50, 1),
(48, 24, 1),
(48, 46, 1),
(49, 15, 1),
(49, 24, 1),
(49, 49, 1),
(49, 18, 1),
(50, 32, 1);

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
  ADD KEY `IdProd` (`IdProd`),
  ADD KEY `FolioVenta_2` (`FolioVenta`);

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `factura`
--
ALTER TABLE `factura`
  MODIFY `Folio Factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `garantia`
--
ALTER TABLE `garantia`
  MODIFY `Folio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal`
--
ALTER TABLE `personal`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `producto`
--
ALTER TABLE `producto`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `venta`
--
ALTER TABLE `venta`
  MODIFY `Folio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
-- Constraints for table `garantia`
--
ALTER TABLE `garantia`
  ADD CONSTRAINT `garantia_ibfk_1` FOREIGN KEY (`FolioVenta`) REFERENCES `venta` (`Folio`) ON DELETE CASCADE ON UPDATE CASCADE;

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
