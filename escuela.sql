-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 10-06-2016 a las 17:26:50
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `escuela`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agrupaciones`
--

CREATE TABLE IF NOT EXISTS `agrupaciones` (
  `idAgrupacion` int(11) NOT NULL AUTO_INCREMENT,
  `idGrupo` int(11) DEFAULT NULL,
  `idAlumno` int(11) DEFAULT NULL,
  `idPeriodo` int(11) DEFAULT NULL,
  `idMateria` int(11) DEFAULT NULL,
  `idEscuela` int(11) DEFAULT NULL,
  `idParcial` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAgrupacion`),
  KEY `idGrupo` (`idGrupo`),
  KEY `idAlumno` (`idAlumno`),
  KEY `idPeriodo` (`idPeriodo`),
  KEY `idMateria` (`idMateria`),
  KEY `idEscuela` (`idEscuela`),
  KEY `idParcial` (`idParcial`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE IF NOT EXISTS `alumnos` (
  `idAlumno` int(11) NOT NULL AUTO_INCREMENT,
  `nombreAlumno` varchar(25) DEFAULT NULL,
  `apAlumno` varchar(25) DEFAULT NULL,
  `amAlumno` varchar(25) DEFAULT NULL,
  `matricula` varchar(20) DEFAULT NULL,
  `idTipoAlumnos` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAlumno`),
  KEY `idTipoAlumnos` (`idTipoAlumnos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE IF NOT EXISTS `asistencias` (
  `idAsistencia` int(11) NOT NULL AUTO_INCREMENT,
  `idAlumno` int(11) DEFAULT NULL,
  `idTipoAsistencia` int(11) DEFAULT NULL,
  `idAgrupacion` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`idAsistencia`),
  KEY `idAlumno` (`idAlumno`),
  KEY `idTipoAsistencia` (`idTipoAsistencia`),
  KEY `idAgrupacion` (`idAgrupacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE IF NOT EXISTS `calificaciones` (
  `idCalificacion` int(11) NOT NULL AUTO_INCREMENT,
  `nombreCalificacion` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idCalificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacionesalumnos`
--

CREATE TABLE IF NOT EXISTS `calificacionesalumnos` (
  `idCalificacionAlumno` int(11) NOT NULL AUTO_INCREMENT,
  `idAgrupacion` int(11) DEFAULT NULL,
  `calificacionTrabajos` double DEFAULT NULL,
  `calificacionAsistencias` double DEFAULT NULL,
  `calificacionCompetencias` double DEFAULT NULL,
  `calificacionTrabajoEnClase` double DEFAULT NULL,
  `calificacionDelParcial` double DEFAULT NULL,
  PRIMARY KEY (`idCalificacionAlumno`),
  KEY `idAgrupacion` (`idAgrupacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuelas`
--

CREATE TABLE IF NOT EXISTS `escuelas` (
  `idEscuela` int(11) NOT NULL AUTO_INCREMENT,
  `nombreEscuela` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idEscuela`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE IF NOT EXISTS `grupos` (
  `idGrupo` int(11) NOT NULL AUTO_INCREMENT,
  `nombreGrupo` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idGrupo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE IF NOT EXISTS `horario` (
  `id_horario` int(11) NOT NULL AUTO_INCREMENT,
  `dia` date DEFAULT NULL,
  `horaInicio` date DEFAULT NULL,
  `horaFinal` date DEFAULT NULL,
  `idAgrupacion` int(11) DEFAULT NULL,
  `idSalon` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_horario`),
  KEY `idAgrupacion` (`idAgrupacion`),
  KEY `idSalon` (`idSalon`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE IF NOT EXISTS `materias` (
  `idMateria` int(11) NOT NULL AUTO_INCREMENT,
  `nombreMateria` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idMateria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parciales`
--

CREATE TABLE IF NOT EXISTS `parciales` (
  `idParcial` int(11) NOT NULL AUTO_INCREMENT,
  `nombreParcial` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idParcial`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodos`
--

CREATE TABLE IF NOT EXISTS `periodos` (
  `idTipoPeriodo` int(11) NOT NULL AUTO_INCREMENT,
  `nombrePeriodo` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idTipoPeriodo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salones`
--

CREATE TABLE IF NOT EXISTS `salones` (
  `idSalon` int(11) NOT NULL AUTO_INCREMENT,
  `nombreSalon` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idSalon`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoalumnos`
--

CREATE TABLE IF NOT EXISTS `tipoalumnos` (
  `idTipoAlumnos` int(11) NOT NULL AUTO_INCREMENT,
  `tipoAlumno` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idTipoAlumnos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoasistencias`
--

CREATE TABLE IF NOT EXISTS `tipoasistencias` (
  `idTipoAsistencia` int(11) NOT NULL AUTO_INCREMENT,
  `tipoAsistencia` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idTipoAsistencia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajos`
--

CREATE TABLE IF NOT EXISTS `trabajos` (
  `id_trabajo` int(11) NOT NULL AUTO_INCREMENT,
  `nombreTrabajo` varchar(50) DEFAULT NULL,
  `idAgrupacion` int(11) DEFAULT NULL,
  `idCalificacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_trabajo`),
  KEY `idAgrupacion` (`idAgrupacion`),
  KEY `idCalificacion` (`idCalificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `agrupaciones`
--
ALTER TABLE `agrupaciones`
  ADD CONSTRAINT `agrupaciones_ibfk_1` FOREIGN KEY (`idGrupo`) REFERENCES `grupos` (`idGrupo`),
  ADD CONSTRAINT `agrupaciones_ibfk_2` FOREIGN KEY (`idAlumno`) REFERENCES `alumnos` (`idAlumno`),
  ADD CONSTRAINT `agrupaciones_ibfk_3` FOREIGN KEY (`idPeriodo`) REFERENCES `periodos` (`idTipoPeriodo`),
  ADD CONSTRAINT `agrupaciones_ibfk_4` FOREIGN KEY (`idMateria`) REFERENCES `materias` (`idMateria`),
  ADD CONSTRAINT `agrupaciones_ibfk_5` FOREIGN KEY (`idEscuela`) REFERENCES `escuelas` (`idEscuela`),
  ADD CONSTRAINT `agrupaciones_ibfk_6` FOREIGN KEY (`idParcial`) REFERENCES `parciales` (`idParcial`);

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`idTipoAlumnos`) REFERENCES `tipoalumnos` (`idTipoAlumnos`);

--
-- Filtros para la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD CONSTRAINT `asistencias_ibfk_1` FOREIGN KEY (`idAlumno`) REFERENCES `alumnos` (`idAlumno`),
  ADD CONSTRAINT `asistencias_ibfk_2` FOREIGN KEY (`idTipoAsistencia`) REFERENCES `tipoasistencias` (`idTipoAsistencia`),
  ADD CONSTRAINT `asistencias_ibfk_3` FOREIGN KEY (`idAgrupacion`) REFERENCES `agrupaciones` (`idAgrupacion`);

--
-- Filtros para la tabla `calificacionesalumnos`
--
ALTER TABLE `calificacionesalumnos`
  ADD CONSTRAINT `calificacionesalumnos_ibfk_1` FOREIGN KEY (`idAgrupacion`) REFERENCES `agrupaciones` (`idAgrupacion`);

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`idAgrupacion`) REFERENCES `agrupaciones` (`idAgrupacion`),
  ADD CONSTRAINT `horario_ibfk_2` FOREIGN KEY (`idSalon`) REFERENCES `salones` (`idSalon`);

--
-- Filtros para la tabla `trabajos`
--
ALTER TABLE `trabajos`
  ADD CONSTRAINT `trabajos_ibfk_1` FOREIGN KEY (`idAgrupacion`) REFERENCES `agrupaciones` (`idAgrupacion`),
  ADD CONSTRAINT `trabajos_ibfk_2` FOREIGN KEY (`idCalificacion`) REFERENCES `calificaciones` (`idCalificacion`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
