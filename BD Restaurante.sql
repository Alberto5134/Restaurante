-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-02-2019 a las 04:45:26
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `Cod_Cliente` int(11) NOT NULL,
  `Cod_Reservacion` int(11) NOT NULL,
  `DPI` varchar(50) NOT NULL,
  `Nombre_Cliente` varchar(50) NOT NULL,
  `Telefono` int(8) NOT NULL,
  `Asisitencia` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diseño_sistema`
--

CREATE TABLE `diseño_sistema` (
  `Num_Mesa` int(11) NOT NULL,
  `Cod_Menu` int(11) NOT NULL,
  `Cod_Encargado` int(11) NOT NULL,
  `Firma` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encargado`
--

CREATE TABLE `encargado` (
  `Cod_Encargado` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `DPI` varchar(50) NOT NULL,
  `Edad` int(3) NOT NULL,
  `Sexo` varchar(50) NOT NULL,
  `Telefono` int(8) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `Cod_Menu` int(11) NOT NULL,
  `Precios_Menus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus_almuerzos`
--

CREATE TABLE `menus_almuerzos` (
  `Cod_Menu_A` int(11) NOT NULL,
  `Platillos_Dia` varchar(50) NOT NULL,
  `Bebidas` varchar(50) NOT NULL,
  `Postres` varchar(50) NOT NULL,
  `Extras` varchar(50) NOT NULL,
  `Dia` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus_cenas`
--

CREATE TABLE `menus_cenas` (
  `Cod_Menu_C` int(11) NOT NULL,
  `Platillos_Dia` varchar(50) NOT NULL,
  `Bebidas` varchar(50) NOT NULL,
  `Postres` varchar(50) NOT NULL,
  `Extras` varchar(50) NOT NULL,
  `Dia` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus_desayunos`
--

CREATE TABLE `menus_desayunos` (
  `Cod_Menu_D` int(11) NOT NULL,
  `Platillos_Dia` varchar(50) NOT NULL,
  `Bebidas` varchar(50) NOT NULL,
  `Postres` varchar(50) NOT NULL,
  `Extras` varchar(50) NOT NULL,
  `Dia` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus_refacciones`
--

CREATE TABLE `menus_refacciones` (
  `Cod_Menu_R` int(11) NOT NULL,
  `Platillos_Dia` varchar(50) NOT NULL,
  `Bebidas` varchar(50) NOT NULL,
  `Extras` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa`
--

CREATE TABLE `mesa` (
  `Num_Mesa` int(11) NOT NULL,
  `Arreglo_Mesa` varchar(50) NOT NULL,
  `Cantidad_Asientos` varchar(50) NOT NULL,
  `Cod_Mesero` int(11) NOT NULL,
  `Cod_Reservacion` int(11) NOT NULL,
  `Num_Orden` int(11) NOT NULL,
  `Cod_Pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesero`
--

CREATE TABLE `mesero` (
  `Cod_Mesero` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `DPI` varchar(50) NOT NULL,
  `Edad` int(3) NOT NULL,
  `Sexo` varchar(50) NOT NULL,
  `Telefono` int(8) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden`
--

CREATE TABLE `orden` (
  `Num_Orden` int(11) NOT NULL,
  `Cant_Platillos` varchar(50) NOT NULL,
  `Clase_Platillos` varchar(50) NOT NULL,
  `Bebidas` varchar(50) NOT NULL,
  `Postres` varchar(50) NOT NULL,
  `Extras` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `Cod_Pago` int(11) NOT NULL,
  `Tipo_Pago` varchar(50) NOT NULL,
  `Moneda` varchar(50) NOT NULL,
  `Cant_Propinas` varchar(50) NOT NULL,
  `Estado_Propina` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precios_menus`
--

CREATE TABLE `precios_menus` (
  `Precios_Menus` int(11) NOT NULL,
  `Precios_Platillos` varchar(50) NOT NULL,
  `Precios_Bebidas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservaciones`
--

CREATE TABLE `reservaciones` (
  `Cod_Reservacion` int(11) NOT NULL,
  `Hora_reservacion` varchar(50) NOT NULL,
  `Fecha_reservacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Cod_Cliente`),
  ADD KEY `Cod_Reservacion` (`Cod_Reservacion`);

--
-- Indices de la tabla `diseño_sistema`
--
ALTER TABLE `diseño_sistema`
  ADD KEY `Num_Mesa` (`Num_Mesa`),
  ADD KEY `Cod_Menu` (`Cod_Menu`),
  ADD KEY `Cod_Encargado` (`Cod_Encargado`);

--
-- Indices de la tabla `encargado`
--
ALTER TABLE `encargado`
  ADD PRIMARY KEY (`Cod_Encargado`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`Cod_Menu`),
  ADD KEY `Precios_Menus` (`Precios_Menus`);

--
-- Indices de la tabla `menus_almuerzos`
--
ALTER TABLE `menus_almuerzos`
  ADD PRIMARY KEY (`Cod_Menu_A`);

--
-- Indices de la tabla `menus_cenas`
--
ALTER TABLE `menus_cenas`
  ADD PRIMARY KEY (`Cod_Menu_C`);

--
-- Indices de la tabla `menus_desayunos`
--
ALTER TABLE `menus_desayunos`
  ADD PRIMARY KEY (`Cod_Menu_D`);

--
-- Indices de la tabla `menus_refacciones`
--
ALTER TABLE `menus_refacciones`
  ADD PRIMARY KEY (`Cod_Menu_R`);

--
-- Indices de la tabla `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`Num_Mesa`),
  ADD KEY `Cod_Mesero` (`Cod_Mesero`),
  ADD KEY `Cod_Reservacion` (`Cod_Reservacion`),
  ADD KEY `Num_Orden` (`Num_Orden`),
  ADD KEY `Cod_Pago` (`Cod_Pago`);

--
-- Indices de la tabla `mesero`
--
ALTER TABLE `mesero`
  ADD PRIMARY KEY (`Cod_Mesero`);

--
-- Indices de la tabla `orden`
--
ALTER TABLE `orden`
  ADD PRIMARY KEY (`Num_Orden`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`Cod_Pago`);

--
-- Indices de la tabla `precios_menus`
--
ALTER TABLE `precios_menus`
  ADD PRIMARY KEY (`Precios_Menus`);

--
-- Indices de la tabla `reservaciones`
--
ALTER TABLE `reservaciones`
  ADD PRIMARY KEY (`Cod_Reservacion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
