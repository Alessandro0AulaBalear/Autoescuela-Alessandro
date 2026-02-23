-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 23-02-2026 a las 20:44:48
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `autoescuela`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_profesor` int(11) DEFAULT NULL,
  `id_vehiculo` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `dni` varchar(15) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `borrado` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido`, `dni`, `telefono`, `email`, `borrado`) VALUES
(1, 'Nombre1', 'Apellido1', 'DNI1', '6000001', 'email1@mail.com', 0),
(2, 'Nombre2', 'Apellido2', 'DNI2', '6000002', 'email2@mail.com', 0),
(3, 'Nombre3', 'Apellido3', 'DNI3', '6000003', 'email3@mail.com', 0),
(4, 'Nombre4', 'Apellido4', 'DNI4', '6000004', 'email4@mail.com', 0),
(5, 'Nombre5', 'Apellido5', 'DNI5', '6000005', 'email5@mail.com', 0),
(6, 'Nombre6', 'Apellido6', 'DNI6', '6000006', 'email6@mail.com', 0),
(7, 'Nombre7', 'Apellido7', 'DNI7', '6000007', 'email7@mail.com', 0),
(8, 'Nombre8', 'Apellido8', 'DNI8', '6000008', 'email8@mail.com', 0),
(9, 'Nombre9', 'Apellido9', 'DNI9', '6000009', 'email9@mail.com', 0),
(10, 'Nombre10', 'Apellido10', 'DNI10', '60000010', 'email10@mail.com', 0),
(11, 'Nombre11', 'Apellido11', 'DNI11', '60000011', 'email11@mail.com', 0),
(12, 'Nombre12', 'Apellido12', 'DNI12', '60000012', 'email12@mail.com', 0),
(13, 'Nombre13', 'Apellido13', 'DNI13', '60000013', 'email13@mail.com', 0),
(14, 'Nombre14', 'Apellido14', 'DNI14', '60000014', 'email14@mail.com', 0),
(15, 'Nombre15', 'Apellido15', 'DNI15', '60000015', 'email15@mail.com', 0),
(16, 'Nombre16', 'Apellido16', 'DNI16', '60000016', 'email16@mail.com', 0),
(17, 'Nombre17', 'Apellido17', 'DNI17', '60000017', 'email17@mail.com', 0),
(18, 'Nombre18', 'Apellido18', 'DNI18', '60000018', 'email18@mail.com', 0),
(19, 'Nombre19', 'Apellido19', 'DNI19', '60000019', 'email19@mail.com', 0),
(20, 'Nombre20', 'Apellido20', 'DNI20', '60000020', 'email20@mail.com', 0),
(21, 'Nombre21', 'Apellido21', 'DNI21', '60000021', 'email21@mail.com', 0),
(22, 'Nombre22', 'Apellido22', 'DNI22', '60000022', 'email22@mail.com', 0),
(23, 'Nombre23', 'Apellido23', 'DNI23', '60000023', 'email23@mail.com', 0),
(24, 'Nombre24', 'Apellido24', 'DNI24', '60000024', 'email24@mail.com', 0),
(25, 'Nombre25', 'Apellido25', 'DNI25', '60000025', 'email25@mail.com', 0),
(26, 'Nombre26', 'Apellido26', 'DNI26', '60000026', 'email26@mail.com', 0),
(27, 'Nombre27', 'Apellido27', 'DNI27', '60000027', 'email27@mail.com', 0),
(28, 'Nombre28', 'Apellido28', 'DNI28', '60000028', 'email28@mail.com', 0),
(29, 'Nombre29', 'Apellido29', 'DNI29', '60000029', 'email29@mail.com', 0),
(30, 'Nombre30', 'Apellido30', 'DNI30', '60000030', 'email30@mail.com', 0),
(31, 'Nombre31', 'Apellido31', 'DNI31', '60000031', 'email31@mail.com', 0),
(32, 'Nombre32', 'Apellido32', 'DNI32', '60000032', 'email32@mail.com', 0),
(33, 'Nombre33', 'Apellido33', 'DNI33', '60000033', 'email33@mail.com', 0),
(34, 'Nombre34', 'Apellido34', 'DNI34', '60000034', 'email34@mail.com', 0),
(35, 'Nombre35', 'Apellido35', 'DNI35', '60000035', 'email35@mail.com', 0),
(36, 'Nombre36', 'Apellido36', 'DNI36', '60000036', 'email36@mail.com', 0),
(37, 'Nombre37', 'Apellido37', 'DNI37', '60000037', 'email37@mail.com', 0),
(38, 'Nombre38', 'Apellido38', 'DNI38', '60000038', 'email38@mail.com', 0),
(39, 'Nombre39', 'Apellido39', 'DNI39', '60000039', 'email39@mail.com', 0),
(40, 'Nombre40', 'Apellido40', 'DNI40', '60000040', 'email40@mail.com', 0),
(41, 'Nombre41', 'Apellido41', 'DNI41', '60000041', 'email41@mail.com', 0),
(42, 'Nombre42', 'Apellido42', 'DNI42', '60000042', 'email42@mail.com', 0),
(43, 'Nombre43', 'Apellido43', 'DNI43', '60000043', 'email43@mail.com', 0),
(44, 'Nombre44', 'Apellido44', 'DNI44', '60000044', 'email44@mail.com', 0),
(45, 'Nombre45', 'Apellido45', 'DNI45', '60000045', 'email45@mail.com', 0),
(46, 'Nombre46', 'Apellido46', 'DNI46', '60000046', 'email46@mail.com', 0),
(47, 'Nombre47', 'Apellido47', 'DNI47', '60000047', 'email47@mail.com', 0),
(48, 'Nombre48', 'Apellido48', 'DNI48', '60000048', 'email48@mail.com', 0),
(49, 'Nombre49', 'Apellido49', 'DNI49', '60000049', 'email49@mail.com', 0),
(50, 'Nombre50', 'Apellido50', 'DNI50', '60000050', 'email50@mail.com', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `borrado` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id`, `nombre`, `apellido`, `telefono`, `email`, `borrado`) VALUES
(1, 'Prof1', 'ApellidoProf1', '6100001', 'prof1@mail.com', 0),
(2, 'Prof2', 'ApellidoProf2', '6100002', 'prof2@mail.com', 0),
(3, 'Prof3', 'ApellidoProf3', '6100003', 'prof3@mail.com', 0),
(4, 'Prof4', 'ApellidoProf4', '6100004', 'prof4@mail.com', 0),
(5, 'Prof5', 'ApellidoProf5', '6100005', 'prof5@mail.com', 0),
(6, 'Prof6', 'ApellidoProf6', '6100006', 'prof6@mail.com', 0),
(7, 'Prof7', 'ApellidoProf7', '6100007', 'prof7@mail.com', 0),
(8, 'Prof8', 'ApellidoProf8', '6100008', 'prof8@mail.com', 0),
(9, 'Prof9', 'ApellidoProf9', '6100009', 'prof9@mail.com', 0),
(10, 'Prof10', 'ApellidoProf10', '61000010', 'prof10@mail.com', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id` int(11) NOT NULL,
  `matricula` varchar(10) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `borrado` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id`, `matricula`, `modelo`, `marca`, `borrado`) VALUES
(1, '1234ABC', 'Modelo1', 'Marca1', 0),
(2, '2345BCD', 'Modelo2', 'Marca2', 0),
(3, '3456CDE', 'Modelo3', 'Marca3', 0),
(4, '4567DEF', 'Modelo4', 'Marca4', 0),
(5, '5678EFG', 'Modelo5', 'Marca5', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cliente` (`id_cliente`),
  ADD KEY `fk_profesor` (`id_profesor`),
  ADD KEY `fk_vehiculo` (`id_vehiculo`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clases`
--
ALTER TABLE `clases`
  ADD CONSTRAINT `clases_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `clases_ibfk_2` FOREIGN KEY (`id_profesor`) REFERENCES `profesores` (`id`),
  ADD CONSTRAINT `clases_ibfk_3` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculos` (`id`),
  ADD CONSTRAINT `fk_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `fk_profesor` FOREIGN KEY (`id_profesor`) REFERENCES `profesores` (`id`),
  ADD CONSTRAINT `fk_vehiculo` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
