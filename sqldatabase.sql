create DATABASE gruas10a;
Use DATABASE gruas10a;
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-11-2023 a las 22:27:57
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gruas10a`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `corporacion`
--

CREATE TABLE `corporacion` (
  `IDCorporacion` int(11) NOT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Longitud` decimal(10,6) DEFAULT NULL,
  `Latitud` decimal(10,6) DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `corporacion`
--

INSERT INTO `corporacion` (`IDCorporacion`, `Direccion`, `Longitud`, `Latitud`, `Nombre`) VALUES
(1, 'Calle 12 Ciudad F', 40.123456, -74.987654, 'Corporación A'),
(2, 'Avenida XYZ, Ciudad G', 35.987654, -82.123456, 'Corporación B'),
(3, 'Rue de la Ville, Ville H', 48.654321, 2.123456, 'Corporation C'),
(4, '123 Main St, City I', 30.567890, -95.432109, 'Corporation D'),
(5, 'Av. Central, Cidade J', 38.987654, -76.543210, 'Corporation E');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `corralon`
--

CREATE TABLE `corralon` (
  `IDCorralon` int(11) NOT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Longitud` decimal(10,6) DEFAULT NULL,
  `Latitud` decimal(10,6) DEFAULT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `Res_IDUsu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `corralon`
--

INSERT INTO `corralon` (`IDCorralon`, `Direccion`, `Longitud`, `Latitud`, `Nombre`, `Telefono`, `correo`, `Res_IDUsu`) VALUES
(1, 'Calle 12 Ciudad A', 40.123456, -74.987654, 'Corralón Uno', '123-456-7890', 'correo1@example.com', 1),
(2, 'Avenida ABC, Ciudad B', 35.987654, -82.123456, 'Corralón Dos', '987-654-3210', 'correo2@example.com', 2),
(3, 'Rue de la Ville, Ville C', 48.654321, 2.123456, 'Corralón Tres', '555-555-5555', 'correo3@example.com', 3),
(4, '123 Main St, City D', 30.567890, -95.432109, 'Corralón Cuatro', '111-222-3333', 'correo4@example.com', 4),
(5, 'Av. Central, Cidade E', 38.987654, -76.543210, 'Corralón Cinco', '999-888-7777', 'correo5@example.com', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diasoperacion`
--

CREATE TABLE `diasoperacion` (
  `IDDIa` int(11) NOT NULL,
  `DiaSemana` varchar(50) DEFAULT NULL,
  `Horario` varchar(100) DEFAULT NULL,
  `IDCorralon_f` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `diasoperacion`
--

INSERT INTO `diasoperacion` (`IDDIa`, `DiaSemana`, `Horario`, `IDCorralon_f`) VALUES
(1, 'Lunes', '8:00 AM - 6:00 PM', 1),
(2, 'Martes', '8:00 AM - 6:00 PM', 2),
(3, 'Miércoles', '8:00 AM - 6:00 PM', 3),
(4, 'Jueves', '8:00 AM - 6:00 PM', 4),
(5, 'Viernes', '8:00 AM - 6:00 PM', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formatsoli`
--

CREATE TABLE `formatsoli` (
  `IDFormatsoli` int(11) NOT NULL,
  `IDSiniestro_fk` int(11) DEFAULT NULL,
  `IDCorralon_fk` int(11) DEFAULT NULL,
  `IDVehiculo_fk` int(11) DEFAULT NULL,
  `folio` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `formatsoli`
--

INSERT INTO `formatsoli` (`IDFormatsoli`, `IDSiniestro_fk`, `IDCorralon_fk`, `IDVehiculo_fk`, `folio`) VALUES
(1, 1, 1, 1, 'Folio-001'),
(2, 2, 2, 2, 'Folio-002'),
(3, 3, 3, 3, 'Folio-003'),
(4, 4, 4, 4, 'Folio-004'),
(5, 5, 5, 5, 'Folio-005');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grua`
--

CREATE TABLE `grua` (
  `IDGrua` int(11) NOT NULL,
  `Placa` varchar(20) DEFAULT NULL,
  `Color` varchar(50) DEFAULT NULL,
  `RazonSoc` varchar(255) DEFAULT NULL,
  `Tipo` varchar(100) DEFAULT NULL,
  `Region` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grua`
--

INSERT INTO `grua` (`IDGrua`, `Placa`, `Color`, `RazonSoc`, `Tipo`, `Region`) VALUES
(1, 'ABC123', 'Rojo', 'Gruas Corp', 'Tipo A', 1),
(2, 'XYZ456', 'Azul', 'Gruas Express', 'Tipo B', 2),
(3, 'DEF789', 'Verde', 'Gruas Veloz', 'Tipo C', 3),
(4, 'MNO123', 'Amarillo', 'Gruas Rápidas', 'Tipo D', 4),
(5, 'PQR789', 'Blanco', 'Gruas Eficaces', 'Tipo E', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operador`
--

CREATE TABLE `operador` (
  `IDOperador` int(11) NOT NULL,
  `NumLicencia` varchar(20) DEFAULT NULL,
  `Extra` varchar(255) DEFAULT NULL,
  `IDgrua_f` int(11) DEFAULT NULL,
  `IDUsuario_f` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `operador`
--

INSERT INTO `operador` (`IDOperador`, `NumLicencia`, `Extra`, `IDgrua_f`, `IDUsuario_f`) VALUES
(1, 'Licencia123', 'Información adicional 1', 1, 1),
(2, 'Licencia456', 'Información adicional 2', 2, 2),
(3, 'Licencia789', 'Información adicional 3', 3, 3),
(4, 'Licencia1011', 'Información adicional 4', 4, 4),
(5, 'Licencia1213', 'Información adicional 5', 5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportador`
--

CREATE TABLE `reportador` (
  `IDReportador` int(11) NOT NULL,
  `IDCorporacion_f` int(11) DEFAULT NULL,
  `IDUsuario_f` int(11) DEFAULT NULL,
  `Extra` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reportador`
--

INSERT INTO `reportador` (`IDReportador`, `IDCorporacion_f`, `IDUsuario_f`, `Extra`) VALUES
(1, 1, 1, 'Extra Info 1'),
(2, 2, 2, 'Extra Info 2'),
(3, 3, 3, 'Extra Info 3'),
(4, 4, 4, 'Extra Info 4'),
(5, 5, 5, 'Extra Info 5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `siniestro`
--

CREATE TABLE `siniestro` (
  `IDSiniestro` int(11) NOT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Longitud` decimal(10,6) DEFAULT NULL,
  `Latitud` decimal(10,6) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `IDReportador_f` int(11) DEFAULT NULL,
  `Extra1` varchar(255) DEFAULT NULL,
  `Extra2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `siniestro`
--

INSERT INTO `siniestro` (`IDSiniestro`, `Direccion`, `Longitud`, `Latitud`, `Fecha`, `IDReportador_f`, `Extra1`, `Extra2`) VALUES
(1, 'Calle 12 Ciudad A', 40.123456, -74.987654, '2023-01-15', 1, 'Descripción del siniestro 1', 'Notas adicionales 1'),
(2, 'Avenida ABC, Ciudad B', 35.987654, -82.123456, '2023-02-10', 2, 'Descripción del siniestro 2', 'Notas adicionales 2'),
(3, 'Rue de la Ville, Ville C', 48.654321, 2.123456, '2023-03-05', 3, 'Descripción del siniestro 3', 'Notas adicionales 3'),
(4, '123 Main St, City D', 30.567890, -95.432109, '2023-04-20', 4, 'Descripción del siniestro 4', 'Notas adicionales 4'),
(5, 'Av. Central, Cidade E', 38.987654, -76.543210, '2023-05-15', 5, 'Descripción del siniestro 5', 'Notas adicionales 5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `IdUsuarios` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `App` varchar(50) DEFAULT NULL,
  `Apm` varchar(50) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Correo` varchar(100) DEFAULT NULL,
  `Passwort` varchar(15) DEFAULT NULL,
  `Tipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`IdUsuarios`, `Nombre`, `App`, `Apm`, `Telefono`, `Correo`, `Passwort`, `Tipo`) VALUES
(1, 'Juan', 'Perez', 'Gomez', '1234567890', 'juan@email.com', 'clave123', 'Reportador'),
(2, 'Maria', 'Gonzalez', 'Lopez', '9876543210', 'maria@email.com', 'clave456', ''),
(3, 'Carlos', 'Martinez', 'Rodriguez', '5551234567', 'carlos@email.com', 'password123', ''),
(4, 'Ana', 'Lopez', 'Hernandez', '777888999', 'ana@email.com', 'pass1234', ''),
(5, 'Luis', 'Sanchez', 'Torres', '3334445555', 'luis@email.com', 'luispass', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `IDVehiculo` int(11) NOT NULL,
  `Placa` varchar(20) DEFAULT NULL,
  `NumSerie` varchar(50) DEFAULT NULL,
  `Color` varchar(50) DEFAULT NULL,
  `Marca` varchar(100) DEFAULT NULL,
  `Modelo` varchar(100) DEFAULT NULL,
  `FechaEntrada` date DEFAULT NULL,
  `FechaSalida` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`IDVehiculo`, `Placa`, `NumSerie`, `Color`, `Marca`, `Modelo`, `FechaEntrada`, `FechaSalida`) VALUES
(1, 'ABC123', '1234567890', 'Rojo', 'Toyota', 'Camry', '2023-01-15', '2023-03-20'),
(2, 'XYZ456', '9876543210', 'Azul', 'Honda', 'Civic', '2023-02-10', '2023-04-25'),
(3, 'DEF789', '5555555555', 'Verde', 'Ford', 'Focus', '2023-03-05', '2023-05-15'),
(4, 'MNO123', '1111111111', 'Amarillo', 'Chevrolet', 'Malibu', '2023-04-20', '2023-06-10'),
(5, 'PQR789', '9999999999', 'Blanco', 'Nissan', 'Altima', '2023-05-15', '2023-07-05');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `corporacion`
--
ALTER TABLE `corporacion`
  ADD PRIMARY KEY (`IDCorporacion`);

--
-- Indices de la tabla `corralon`
--
ALTER TABLE `corralon`
  ADD PRIMARY KEY (`IDCorralon`),
  ADD KEY `Res_IDUsu` (`Res_IDUsu`);

--
-- Indices de la tabla `diasoperacion`
--
ALTER TABLE `diasoperacion`
  ADD PRIMARY KEY (`IDDIa`),
  ADD KEY `IDCorralon_f` (`IDCorralon_f`);

--
-- Indices de la tabla `formatsoli`
--
ALTER TABLE `formatsoli`
  ADD PRIMARY KEY (`IDFormatsoli`),
  ADD KEY `IDSiniestro_fk` (`IDSiniestro_fk`),
  ADD KEY `IDCorralon_fk` (`IDCorralon_fk`),
  ADD KEY `IDVehiculo_fk` (`IDVehiculo_fk`);

--
-- Indices de la tabla `grua`
--
ALTER TABLE `grua`
  ADD PRIMARY KEY (`IDGrua`);

--
-- Indices de la tabla `operador`
--
ALTER TABLE `operador`
  ADD PRIMARY KEY (`IDOperador`),
  ADD KEY `IDgrua_f` (`IDgrua_f`),
  ADD KEY `IDUsuario_f` (`IDUsuario_f`);

--
-- Indices de la tabla `reportador`
--
ALTER TABLE `reportador`
  ADD PRIMARY KEY (`IDReportador`),
  ADD KEY `IDCorporacion_f` (`IDCorporacion_f`),
  ADD KEY `IDUsuario_f` (`IDUsuario_f`);

--
-- Indices de la tabla `siniestro`
--
ALTER TABLE `siniestro`
  ADD PRIMARY KEY (`IDSiniestro`),
  ADD KEY `IDReportador_f` (`IDReportador_f`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`IdUsuarios`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`IDVehiculo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `corporacion`
--
ALTER TABLE `corporacion`
  MODIFY `IDCorporacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `corralon`
--
ALTER TABLE `corralon`
  MODIFY `IDCorralon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `diasoperacion`
--
ALTER TABLE `diasoperacion`
  MODIFY `IDDIa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `formatsoli`
--
ALTER TABLE `formatsoli`
  MODIFY `IDFormatsoli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `grua`
--
ALTER TABLE `grua`
  MODIFY `IDGrua` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `operador`
--
ALTER TABLE `operador`
  MODIFY `IDOperador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `reportador`
--
ALTER TABLE `reportador`
  MODIFY `IDReportador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `siniestro`
--
ALTER TABLE `siniestro`
  MODIFY `IDSiniestro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `IdUsuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `IDVehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `corralon`
--
ALTER TABLE `corralon`
  ADD CONSTRAINT `corralon_ibfk_1` FOREIGN KEY (`Res_IDUsu`) REFERENCES `usuarios` (`IdUsuarios`);

--
-- Filtros para la tabla `diasoperacion`
--
ALTER TABLE `diasoperacion`
  ADD CONSTRAINT `diasoperacion_ibfk_1` FOREIGN KEY (`IDCorralon_f`) REFERENCES `corralon` (`IDCorralon`);

--
-- Filtros para la tabla `formatsoli`
--
ALTER TABLE `formatsoli`
  ADD CONSTRAINT `formatsoli_ibfk_1` FOREIGN KEY (`IDSiniestro_fk`) REFERENCES `siniestro` (`IDSiniestro`),
  ADD CONSTRAINT `formatsoli_ibfk_2` FOREIGN KEY (`IDCorralon_fk`) REFERENCES `corralon` (`IDCorralon`),
  ADD CONSTRAINT `formatsoli_ibfk_3` FOREIGN KEY (`IDVehiculo_fk`) REFERENCES `vehiculo` (`IDVehiculo`);

--
-- Filtros para la tabla `operador`
--
ALTER TABLE `operador`
  ADD CONSTRAINT `operador_ibfk_1` FOREIGN KEY (`IDgrua_f`) REFERENCES `grua` (`IDGrua`),
  ADD CONSTRAINT `operador_ibfk_2` FOREIGN KEY (`IDUsuario_f`) REFERENCES `usuarios` (`IdUsuarios`);

--
-- Filtros para la tabla `reportador`
--
ALTER TABLE `reportador`
  ADD CONSTRAINT `reportador_ibfk_1` FOREIGN KEY (`IDCorporacion_f`) REFERENCES `corporacion` (`IDCorporacion`),
  ADD CONSTRAINT `reportador_ibfk_2` FOREIGN KEY (`IDUsuario_f`) REFERENCES `usuarios` (`IdUsuarios`);

--
-- Filtros para la tabla `siniestro`
--
ALTER TABLE `siniestro`
  ADD CONSTRAINT `siniestro_ibfk_1` FOREIGN KEY (`IDReportador_f`) REFERENCES `reportador` (`IDReportador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
