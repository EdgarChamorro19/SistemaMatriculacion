-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 21-08-2021 a las 20:57:04
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

DROP TABLE IF EXISTS `curso`;
CREATE TABLE IF NOT EXISTS `curso` (
  `codigocurso` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`codigocurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`codigocurso`, `nombre`) VALUES
('EGB001', 'Primero de Basica Paralelo A'),
('EGB002', 'Primero de basica Paralelo B'),
('EGB003', 'Primero de Basica Paralelo C'),
('EGB004', 'Segundo de Basica Paralelo A'),
('EGB005', 'Segundo de Basica Paralelo B'),
('EGB006', 'Segundo de Basica Paralelo C'),
('EGB007', 'Tercero de Basica Paralelo A'),
('EGB008', 'Tercero de Basica Paralelo B'),
('EGB009', 'Tercero de Basica Paralelo C'),
('EGB010', 'Cuarto de Basica Paralelo A'),
('EGB011', 'Cuarto de Basica Paralelo B'),
('EGB012', 'Cuarto de Basica Paralelo C'),
('EGB013', 'Quinto de Basica Paralelo A'),
('EGB014', 'Quinto de Basica Paralelo B'),
('EGB015', 'Quinto de Basica Paralelo C'),
('EGB016', 'Sexto de Basica Paralelo A'),
('EGB017', 'Sexto de Basica Paralelo B'),
('EGB018', 'Sexto de Basica Paralelo C'),
('EGB019', 'Septimo de Basica Paralelo A'),
('EGB020', 'Septimo de Basica Paralelo B'),
('EGB021', 'Septimo de Basica Paralelo C'),
('EGB022', 'Octavo de Basica Paralelo A'),
('EGB023', 'Octavo de Basica Paralelo B'),
('EGB024', 'Octavo de Basica Paralelo C'),
('EGB025', 'Noveno de Basica Paralelo A'),
('EGB026', 'Noveno de Basica Paralelo B'),
('EGB027', 'Noveno de Basica Paralelo C'),
('EGB028', 'Decimo de Basica Paralelo A'),
('EGB029', 'Decimo de Basica Paralelo B'),
('EGB030', 'Decimo de Basica Paralelo C');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallefactura`
--

DROP TABLE IF EXISTS `detallefactura`;
CREATE TABLE IF NOT EXISTS `detallefactura` (
  `Cod_Factura` varchar(50) NOT NULL,
  `Cod_Rubro` varchar(50) NOT NULL,
  `ValorUnitario` decimal(10,0) NOT NULL,
  UNIQUE KEY `Cod_Rubro` (`Cod_Rubro`),
  KEY `Cod_Factura` (`Cod_Factura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detallefactura`
--

INSERT INTO `detallefactura` (`Cod_Factura`, `Cod_Rubro`, `ValorUnitario`) VALUES
('1', 'RUB-001', '150'),
('2', 'RUB-002', '300'),
('3', 'RUB-003', '300'),
('3', 'RUB-004', '300');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

DROP TABLE IF EXISTS `estudiantes`;
CREATE TABLE IF NOT EXISTS `estudiantes` (
  `Cedula` varchar(10) NOT NULL,
  `Nombres` varchar(50) NOT NULL,
  `Apellidos` varchar(50) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Padre` varchar(50) NOT NULL,
  `Madre` varchar(50) NOT NULL,
  `Nombre_Representante` varchar(50) NOT NULL,
  `Apellido_Representante` varchar(50) NOT NULL,
  `Cedula_Representante` varchar(10) NOT NULL,
  PRIMARY KEY (`Cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`Cedula`, `Nombres`, `Apellidos`, `Direccion`, `Email`, `Padre`, `Madre`, `Nombre_Representante`, `Apellido_Representante`, `Cedula_Representante`) VALUES
('0923657316', 'Edgar Fabrizio', 'Chamorro Astudillo', 'Calle tal en una manzana y villa tal', 'correousuario@gmail.com', '', '', 'Edgar Amilcar', 'Chamorro Obando', '0925689312'),
('0924622245', 'ANDRES', 'PEREZ', 'SAMANES 5', 'andres87@gmail.com', 'ALBERTO PERES LOPEZ', 'JOSEFINA BERMUDEZ', 'ALBERTO', 'PEREZ', '0985263725'),
('0954692245', 'ALBERTO', 'CASTILLO', 'ALBORADA 1RA ETAPA', 'alberto72@gmail.com', 'ANDRES CASTILLO LOPEZ', 'CINDY RODRIGUEZ', 'ANDRES', 'CASTILLOS', '0987323421'),
('0966793245', 'JAVIER', 'PAREDES', 'SAUCES 9', 'javier28@gmail.com', 'ALBERTO PAREDES RODRIGUEZ', 'SOFIA GONZALES PARRALES', 'ALBERTO', 'PAREDES', '0986723425'),
('0967692125', 'ALBERTO', 'PADILLA', 'FLOR DE BASTION', 'alberto10@gmail.com', 'JORGE PADILLA ALVARADO', 'ALEJANDRA CABRERA', 'JORGE', 'PADILLA', '0917583425'),
('0967692245', 'CRISTHIAN', 'GONZALES', 'duran', 'christian@gmail.com', 'JOSE GONZALES ALVARADO', 'MARIA BARRERA', 'JOSE', 'GONZALES', '0987563425'),
('0994277590', 'IVAN', 'MOSQUERA', 'GARZOTA', 'ivan21@gmail.com', 'ALEX MOSQUERA ALVARADO', 'MARIA GUZAMN', 'ALEX', 'MOSQUERA', '0958999237'),
('0996532015', 'Jose Luis', 'Castillo Barrera', 'calle tal en una manzana tal', 'Luis19@gmail.com', '', '', 'Jose Armando', 'Castillo Lopez', '0975623510');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

DROP TABLE IF EXISTS `factura`;
CREATE TABLE IF NOT EXISTS `factura` (
  `NroFactura` varchar(30) NOT NULL,
  `CedEstudiante` varchar(10) NOT NULL,
  `Total` decimal(10,0) NOT NULL,
  `Fecha` date NOT NULL,
  PRIMARY KEY (`NroFactura`),
  KEY `CedEstudiante` (`CedEstudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`NroFactura`, `CedEstudiante`, `Total`, `Fecha`) VALUES
('1', '0923657316', '150', '2021-08-18'),
('2', '0967692245', '450', '2021-08-18'),
('3', '0967692245', '600', '2021-08-18'),
('4', '0923657316', '900', '2021-08-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricula`
--

DROP TABLE IF EXISTS `matricula`;
CREATE TABLE IF NOT EXISTS `matricula` (
  `NroMatricula` int(10) NOT NULL AUTO_INCREMENT,
  `CedulaEstudiante` varchar(10) NOT NULL,
  `CodigoCurso` varchar(50) NOT NULL,
  PRIMARY KEY (`NroMatricula`),
  KEY `CedulaEstudiante` (`CedulaEstudiante`),
  KEY `CodigoCurso` (`CodigoCurso`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `matricula`
--

INSERT INTO `matricula` (`NroMatricula`, `CedulaEstudiante`, `CodigoCurso`) VALUES
(1, '0923657316', 'EGB005'),
(2, '0967692245', 'EGB001'),
(9, '0994277590', 'EGB017');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

DROP TABLE IF EXISTS `pagos`;
CREATE TABLE IF NOT EXISTS `pagos` (
  `Ced_Estudiante` varchar(10) NOT NULL,
  `Cod_Rubro` varchar(50) NOT NULL,
  `Estado` varchar(30) NOT NULL,
  KEY `Ced_Estudiante` (`Ced_Estudiante`),
  KEY `Cod_Rubro` (`Cod_Rubro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`Ced_Estudiante`, `Cod_Rubro`, `Estado`) VALUES
('0923657316', 'RUB-001', 'Pagado'),
('0923657316', 'RUB-002', 'Pagado'),
('0923657316', 'RUB-003', 'Pagado'),
('0923657316', 'RUB-004', 'Pagado'),
('0923657316', 'RUB-005', 'Pendiente'),
('0923657316', 'RUB-006', 'Pendiente'),
('0923657316', 'RUB-007', 'Pendiente'),
('0923657316', 'RUB-008', 'Pendiente'),
('0923657316', 'RUB-009', 'Pendiente'),
('0923657316', 'RUB-010', 'Pendiente'),
('0923657316', 'RUB-011', 'Pendiente'),
('0967692245', 'RUB-001', 'Pagado'),
('0967692245', 'RUB-002', 'Pagado'),
('0967692245', 'RUB-003', 'Pagado'),
('0967692245', 'RUB-004', 'Pagado'),
('0967692245', 'RUB-005', 'Pendiente'),
('0967692245', 'RUB-006', 'Pendiente'),
('0967692245', 'RUB-007', 'Pendiente'),
('0967692245', 'RUB-008', 'Pendiente'),
('0967692245', 'RUB-009', 'Pendiente'),
('0967692245', 'RUB-010', 'Pendiente'),
('0967692245', 'RUB-011', 'Pendiente'),
('0994277590', 'RUB-001', 'Pendiente'),
('0994277590', 'RUB-002', 'Pendiente'),
('0994277590', 'RUB-003', 'Pendiente'),
('0994277590', 'RUB-004', 'Pendiente'),
('0994277590', 'RUB-005', 'Pendiente'),
('0994277590', 'RUB-006', 'Pendiente'),
('0994277590', 'RUB-007', 'Pendiente'),
('0994277590', 'RUB-008', 'Pendiente'),
('0994277590', 'RUB-009', 'Pendiente'),
('0994277590', 'RUB-010', 'Pendiente'),
('0994277590', 'RUB-011', 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rubros`
--

DROP TABLE IF EXISTS `rubros`;
CREATE TABLE IF NOT EXISTS `rubros` (
  `Codigo` varchar(20) NOT NULL,
  `Rubro` varchar(50) NOT NULL,
  `Detalle` varchar(60) NOT NULL,
  `Valor` decimal(10,0) NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rubros`
--

INSERT INTO `rubros` (`Codigo`, `Rubro`, `Detalle`, `Valor`) VALUES
('RUB-001', 'Matricula', 'Pago de la Matircula para el Periodo Academico', '150'),
('RUB-002', 'Pension-Cuota:1', 'Pago de la pension del mes de Enero', '300'),
('RUB-003', 'Pension-Cuota:2', 'Pago de la pension del mes de Febrero', '300'),
('RUB-004', 'Pension-Cuota:3', 'Pago de la pension del mes de Marzo', '300'),
('RUB-005', 'Pension-Cuota:4', 'Pago de la pension del mes de Abril', '300'),
('RUB-006', 'Pension-Cuota:5', 'Pago de la pension del mes de Mayo', '300'),
('RUB-007', 'Pension-Cuota:6', 'Pago de la pension del mes de Junio', '300'),
('RUB-008', 'Pension-Cuota:7', 'Pago de la pension del mes de Julio', '300'),
('RUB-009', 'Pension-Cuota:8', 'Pago de la pension del mes de Agosto', '300'),
('RUB-010', 'Pension-Cuota:9', 'Pago de la pension del mes de Septiembre', '300'),
('RUB-011', 'Pension-Cuota:10', 'Pago de la pension del mes de Octubre', '300');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `Cedula` varchar(10) NOT NULL,
  `Nombres` varchar(50) NOT NULL,
  `Apellidos` varchar(50) NOT NULL,
  `Usuario` varchar(40) NOT NULL,
  `Contraseña` varchar(30) NOT NULL,
  `Permisos` varchar(40) NOT NULL,
  PRIMARY KEY (`Cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Cedula`, `Nombres`, `Apellidos`, `Usuario`, `Contraseña`, `Permisos`) VALUES
('0923657316', 'Edgar Fabrizio', 'Chamorro Astudillo', 'Edgar001', 'Admin001', 'Administrador'),
('0975623581', 'Pepito Armando', 'Paredes Gonzales', 'Pepito21', 'Cajero001', 'Cajero'),
('0985632130', 'Sofia Alejandra', 'Castillo Lopez', 'Sofia001', 'Secretaria001', 'Secretaria');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detallefactura`
--
ALTER TABLE `detallefactura`
  ADD CONSTRAINT `detallefactura_ibfk_1` FOREIGN KEY (`Cod_Factura`) REFERENCES `factura` (`NroFactura`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detallefactura_ibfk_2` FOREIGN KEY (`Cod_Rubro`) REFERENCES `rubros` (`Codigo`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`CedEstudiante`) REFERENCES `estudiantes` (`Cedula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`CedulaEstudiante`) REFERENCES `estudiantes` (`Cedula`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `matricula_ibfk_2` FOREIGN KEY (`CodigoCurso`) REFERENCES `curso` (`codigocurso`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`Ced_Estudiante`) REFERENCES `estudiantes` (`Cedula`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pagos_ibfk_2` FOREIGN KEY (`Cod_Rubro`) REFERENCES `rubros` (`Codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
