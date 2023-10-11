-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-10-2023 a las 04:14:29
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
-- Base de datos: `mibaseerik`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `cod_carrera` varchar(10) NOT NULL,
  `nombre_carrera` varchar(50) DEFAULT NULL,
  `cod_fac` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`cod_carrera`, `nombre_carrera`, `cod_fac`) VALUES
('FIS', 'Física', 'FCPN'),
('INF', 'Informática', 'FCPN'),
('MAT', 'Matemática', 'FCPN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `ci` varchar(10) NOT NULL,
  `grado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`ci`, `grado`) VALUES
('10101014', 'Lic.'),
('10101015', 'Lic.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `ci` varchar(10) NOT NULL,
  `matricula` varchar(15) NOT NULL,
  `cod_carrera` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`ci`, `matricula`, `cod_carrera`) VALUES
('10101010', '123433245', 'MAT'),
('10101011', '12343312', 'FIS'),
('10101012', '123123123', 'INF'),
('10101013', '234234234', 'INF'),
('9200842', '12712312', 'INF');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `cod_fac` varchar(10) NOT NULL,
  `nombre_facultad` varchar(50) DEFAULT NULL,
  `abreviacion` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`cod_fac`, `nombre_facultad`, `abreviacion`) VALUES
('FCPN', 'Facultad de Ciencias Puras y Naturales', 'FCPN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `sigla` varchar(10) NOT NULL,
  `nombre_materia` varchar(50) DEFAULT NULL,
  `ci_docente` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`sigla`, `nombre_materia`, `ci_docente`) VALUES
('INF-111', 'Introducción a la Informática', '10101015'),
('MAT-115', 'Analisis Matematico', '10101014');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota`
--

CREATE TABLE `nota` (
  `ci` varchar(10) NOT NULL,
  `Sigla` varchar(8) NOT NULL,
  `Nota1` float DEFAULT NULL,
  `Nota2` float DEFAULT NULL,
  `Nota3` float DEFAULT NULL,
  `Notafinal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `nota`
--

INSERT INTO `nota` (`ci`, `Sigla`, `Nota1`, `Nota2`, `Nota3`, `Notafinal`) VALUES
('10101012', 'INF-111', 68, 75, 58, 67),
('10101012', 'MAT-115', 56, 65, 45, 55),
('10101013', 'INF-111', 88, 45, 48, 60),
('10101013', 'MAT-115', 66, 68, 45, 60),
('9200842', 'INF-111', 60, 65, 55, 60),
('9200842', 'MAT-115', 50, 65, 55, 57);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `ci` varchar(10) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `fecha_de_nacimiento` date DEFAULT NULL,
  `departamento` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`ci`, `nombre`, `fecha_de_nacimiento`, `departamento`) VALUES
('10101010', 'Jhonatan Joestar', '1999-05-05', '03'),
('10101011', 'Carolina Carmen Castro Martinez', '1997-12-05', '02'),
('10101012', 'Patricia Paredes Candia', '1998-02-13', '03'),
('10101013', 'Antonio Altamirano Alave', '1999-09-03', '02'),
('10101014', 'Daniel Dante Duval Diaz', '1999-09-03', '02'),
('10101015', 'Valeria Valentina Villalobos Perez', '1998-05-25', '03'),
('9200842', 'Adel Ramiro Paco Mamani', '1999-04-05', '02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ci` varchar(10) NOT NULL,
  `Usuario` varchar(15) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ci`, `Usuario`, `password`) VALUES
('10101010', 'JoJo28', '123456'),
('10101011', 'CaroCar12', '123456'),
('10101012', 'Pat132', '123456'),
('10101013', 'AntAl93', '123456'),
('10101014', 'Dan75', '123456'),
('10101015', 'ValVi245', '123456'),
('9200842', 'adpac', '123456');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`cod_carrera`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`ci`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`ci`,`matricula`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD PRIMARY KEY (`cod_fac`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`sigla`);

--
-- Indices de la tabla `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`ci`,`Sigla`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`ci`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ci`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
