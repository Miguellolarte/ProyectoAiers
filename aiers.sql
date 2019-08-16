-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-08-2019 a las 20:02:04
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aiers`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresia`
--

CREATE TABLE `membresia` (
  `idmembresia` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) NOT NULL,
  `FechaInicio` date NOT NULL,
  `FechaFin` date NOT NULL,
  `Valor` int(11) NOT NULL,
  `Detalles` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idmembresia`),
  KEY `idusuario` (`idusuario`),
  CONSTRAINT `membresia_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`),
  CONSTRAINT `membresia_ibfk_2` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `membresia`
--

INSERT INTO `membresia` (`idmembresia`, `idusuario`, `FechaInicio`, `FechaFin`, `Valor`, `Detalles`) VALUES
(1, 1, '2019-09-06', '2019-10-19', 5000000, 'j');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `idservicio` int(11) NOT NULL AUTO_INCREMENT,
  `idtiposervicio` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `FechaInicio` date NOT NULL,
  `FechaFin` date NOT NULL,
  `Valor` int(11) NOT NULL,
  `Telefono` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Correo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Direccion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Detalles` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idservicio`),
  KEY `idtiposervicio` (`idtiposervicio`),
  KEY `idusuario` (`idusuario`),
  CONSTRAINT `servicio_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`),
  CONSTRAINT `servicio_ibfk_2` FOREIGN KEY (`idtiposervicio`) REFERENCES `tiposervicio` (`idtiposervicio`),
  CONSTRAINT `servicio_ibfk_3` FOREIGN KEY (`idtiposervicio`) REFERENCES `tiposervicio` (`idtiposervicio`),
  CONSTRAINT `servicio_ibfk_4` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`idservicio`, `idtiposervicio`, `idusuario`, `FechaInicio`, `FechaFin`, `Valor`, `Telefono`, `Correo`, `Direccion`, `Detalles`) VALUES
(1, 1, 1, '2019-08-01', '2019-08-30', 5000000, '3214235346', 'sebas@gmal.com', 'csadsd', 'j');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposervicio`
--

CREATE TABLE `tiposervicio` (
  `idtiposervicio` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idtiposervicio`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tiposervicio`
--

INSERT INTO `tiposervicio` (`idtiposervicio`, `Nombre`) VALUES
(1, 'Mecanica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Apellido` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Documento` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Telefono` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Tipo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Clave` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Direccion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Correo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Estado` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `FotoPerfil` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `FotosAdicionales` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Detalles` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Calificacion` int(11) NOT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `Nombre`, `Apellido`, `Documento`, `Telefono`, `Tipo`, `Clave`, `Direccion`, `Correo`, `Estado`, `FotoPerfil`, `FotosAdicionales`, `Detalles`, `Calificacion`) VALUES
(1, 'Jose', 'sierra', '10448778778', '3214235346', 'Oferente', '312', 'csadsd', 'sebas@gmal.com', '1', '', 'asdasd', '', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
