-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2016 a las 17:34:13
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `almacen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acceso`
--

CREATE TABLE `acceso` (
  `id_acc` int(11) NOT NULL,
  `id_mod` int(11) NOT NULL,
  `id_per` int(11) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `acceso`
--

INSERT INTO `acceso` (`id_acc`, `id_mod`, `id_per`, `estado`) VALUES
(1, 1, 1, 'A'),
(2, 2, 1, 'A'),
(3, 9, 1, 'A'),
(4, 10, 1, 'A'),
(5, 11, 1, 'A'),
(9, 15, 1, 'A'),
(10, 16, 1, 'A'),
(11, 17, 1, 'A'),
(12, 18, 1, 'A'),
(15, 21, 1, 'A'),
(16, 22, 1, 'A'),
(17, 23, 1, 'A'),
(18, 24, 1, 'A'),
(19, 25, 1, 'A'),
(20, 26, 1, 'A'),
(21, 27, 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `concepto_general`
--

CREATE TABLE `concepto_general` (
  `id_con` int(11) NOT NULL,
  `desc_con` text NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `concepto_general`
--

INSERT INTO `concepto_general` (`id_con`, `desc_con`, `estado`) VALUES
(1, 'MATERIALES DE ESCRITORIO Y MATERIALES DE IMPRESIÓN', 'A'),
(2, 'MATERIALES DE CONSTRUCCIÓN, HERRAMIENTAS Y OTROS BIENES', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_movimiento`
--

CREATE TABLE `det_movimiento` (
  `id_dmov` int(11) NOT NULL,
  `id_mov` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `id_uni` int(11) DEFAULT NULL,
  `pre_uni` decimal(8,2) DEFAULT NULL,
  `cant_pro` int(11) NOT NULL,
  `stock_fis_ant` decimal(10,2) DEFAULT NULL,
  `stock_val_ant` decimal(10,2) DEFAULT NULL,
  `stock_fis_act` decimal(10,2) DEFAULT NULL,
  `stock_val_act` decimal(10,2) DEFAULT NULL,
  `stock_act` decimal(8,2) NOT NULL,
  `cant_ent` decimal(8,2) NOT NULL,
  `stock_res` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `det_movimiento`
--

INSERT INTO `det_movimiento` (`id_dmov`, `id_mov`, `id_pro`, `id_uni`, `pre_uni`, `cant_pro`, `stock_fis_ant`, `stock_val_ant`, `stock_fis_act`, `stock_val_act`, `stock_act`, `cant_ent`, `stock_res`) VALUES
(4, 2, 1, 1, '10.00', 12, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(5, 3, 1, 2, '12.00', 20, NULL, NULL, NULL, NULL, '0.00', '20.00', '20.00'),
(6, 3, 2, 2, '5.00', 12, NULL, NULL, NULL, NULL, '0.00', '12.00', '12.00'),
(7, 4, 2, 2, '0.00', 10, NULL, NULL, NULL, NULL, '12.00', '10.00', '2.00'),
(8, 4, 1, 2, '0.00', 20, NULL, NULL, NULL, NULL, '20.00', '20.00', '0.00'),
(9, 5, 3, 2, '12.00', 15, NULL, NULL, NULL, NULL, '0.00', '15.00', '15.00'),
(17, 7, 2, 1, '1.00', 1, NULL, NULL, NULL, NULL, '2.00', '1.00', '1.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entidad`
--

CREATE TABLE `entidad` (
  `id_ent` int(11) NOT NULL,
  `desc_ent` varchar(100) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `entidad`
--

INSERT INTO `entidad` (`id_ent`, `desc_ent`, `estado`) VALUES
(1, 'CONSELVA', 'A'),
(2, 'Comercial el Sol', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

CREATE TABLE `material` (
  `id_mat` int(11) NOT NULL,
  `desc_mat` text NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `id_mod` int(11) NOT NULL,
  `name_mod` varchar(60) NOT NULL,
  `alone` int(11) DEFAULT NULL,
  `id_padre` int(11) NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  `orden` int(11) NOT NULL,
  `icon` varchar(20) DEFAULT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`id_mod`, `name_mod`, `alone`, `id_padre`, `url`, `orden`, `icon`, `estado`) VALUES
(1, 'Mantenimiento', NULL, 0, 'javascript:void(0)', 9, 'fa fa-gears', 'A'),
(2, 'Modulos', 0, 23, 'modulo', 1, '', 'A'),
(9, 'Personas', 0, 1, 'persona', 2, '', 'A'),
(10, 'Perfiles', 0, 23, 'perfil', 3, '', 'A'),
(11, 'Permisos', 0, 23, 'permiso', 4, '', 'A'),
(15, 'Sub-Areá', 0, 12, 'subarea', 3, '', 'A'),
(16, 'Almacen', 0, 0, '', 1, 'fa fa-archive', 'A'),
(17, 'Concepto General', 0, 1, 'concepto_general', 1, '', 'A'),
(18, 'Productos', 0, 16, 'producto', 2, '', 'A'),
(21, 'Unidad de Medida', 0, 1, 'unidad_medida', 3, '', 'A'),
(22, 'Proveedor', 0, 16, 'proveedor', 4, '', 'A'),
(23, 'Seguridad', 0, 0, '', 3, 'fa fa-lock', 'A'),
(24, 'Movimientos', 0, 16, 'movimiento', 1, '', 'A'),
(25, 'Procedencia', 0, 1, 'procedencia', 3, '', 'A'),
(26, 'Reporte', 1, 0, 'reporte', 2, 'fa fa-sliders', 'A'),
(27, 'Entidades', 0, 1, 'entidad', 4, '', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento`
--

CREATE TABLE `movimiento` (
  `id_mov` int(11) NOT NULL,
  `id_tmov` int(11) NOT NULL,
  `id_pers` int(11) DEFAULT NULL,
  `id_proc` int(11) NOT NULL,
  `id_ent` int(11) DEFAULT NULL,
  `fecha_mov` date NOT NULL,
  `fac_mov` varchar(30) NOT NULL,
  `estado` char(1) NOT NULL,
  `fecha_hora_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `solicitante` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `movimiento`
--

INSERT INTO `movimiento` (`id_mov`, `id_tmov`, `id_pers`, `id_proc`, `id_ent`, `fecha_mov`, `fac_mov`, `estado`, `fecha_hora_reg`, `solicitante`) VALUES
(2, 1, NULL, 1, 0, '2016-09-26', '3452', 'I', '2016-11-09 15:29:13', NULL),
(3, 1, NULL, 1, 0, '2016-11-15', '123457', 'A', '2016-11-15 23:28:36', NULL),
(4, 2, NULL, 1, 0, '2016-11-16', '12548', 'A', '2016-11-16 13:37:58', NULL),
(5, 1, NULL, 1, 0, '2016-11-16', '34521', 'A', '2016-11-16 13:39:13', NULL),
(7, 2, NULL, 1, 0, '2016-11-07', 'asasas', 'A', '2016-11-24 16:22:35', 'asasasas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id_per` int(11) NOT NULL,
  `name_per` varchar(40) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_per`, `name_per`, `estado`) VALUES
(1, 'Administrador', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id_pers` int(11) NOT NULL,
  `id_per` int(11) NOT NULL,
  `nombre_pers` varchar(40) NOT NULL,
  `apaterno_pers` varchar(40) NOT NULL,
  `amaterno_pers` varchar(40) NOT NULL,
  `sexo_pers` char(1) NOT NULL,
  `direccion_pers` varchar(60) NOT NULL,
  `fnacimiento_pers` date NOT NULL,
  `telefono_pers` varchar(20) NOT NULL,
  `dni_pers` char(8) NOT NULL,
  `name_usu` varchar(20) NOT NULL,
  `pass_usu` varchar(80) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id_pers`, `id_per`, `nombre_pers`, `apaterno_pers`, `amaterno_pers`, `sexo_pers`, `direccion_pers`, `fnacimiento_pers`, `telefono_pers`, `dni_pers`, `name_usu`, `pass_usu`, `estado`) VALUES
(1, 1, 'Israel', 'Flores1', 'García', 'M', 'Jr. Manuel Arevalo Orbe 648', '1995-01-03', '998791816', '73473897', 'admin', '7363a0d0604902af7b70b271a0b96480', 'I'),
(3, 1, 'asas', 'asas', 'asas', 'M', 'asas', '2016-10-04', 'asasas', '12345678', 'andres', '7363a0d0604902af7b70b271a0b96480', 'I'),
(4, 1, 'Israel', 'Flores', 'García', 'M', 'Jr. Manuel Arevalo Orbe 648', '1994-01-03', '998791816', '73473897', 'admin', '7363a0d0604902af7b70b271a0b96480', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procedencia`
--

CREATE TABLE `procedencia` (
  `id_proc` int(11) NOT NULL,
  `desc_proc` varchar(60) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `procedencia`
--

INSERT INTO `procedencia` (`id_proc`, `desc_proc`, `estado`) VALUES
(1, 'Chazuta', 'A'),
(2, 'Tarapoto', 'A'),
(3, 'Consuelo', 'A'),
(4, 'Barranquita', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_pro` int(11) NOT NULL,
  `id_con` int(11) NOT NULL,
  `desc_pro` text NOT NULL,
  `cuenta_contable` text NOT NULL,
  `clasificador` text,
  `stock_pro` decimal(10,2) DEFAULT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_pro`, `id_con`, `desc_pro`, `cuenta_contable`, `clasificador`, `stock_pro`, `estado`) VALUES
(1, 1, 'ABRAZADERAS', '1301.1101', '2.3.1.11.1.1', '0.00', 'A'),
(2, 1, 'ABRAZADERAS DE 4"', '1301.1101', '2.3.1.11.1.1', '1.00', 'A'),
(3, 2, 'Tubos para flujo de corriente', '12548', '12541', '15.00', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_prov` int(11) NOT NULL,
  `desc_prov` varchar(100) NOT NULL,
  `dir_prov` varchar(80) NOT NULL,
  `tel_prov` varchar(20) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_prov`, `desc_prov`, `dir_prov`, `tel_prov`, `estado`) VALUES
(1, 'Proveedor', 'Jr. Hallame si puedes 671', '111-01', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_movimiento`
--

CREATE TABLE `tipo_movimiento` (
  `id_tmov` int(11) NOT NULL,
  `desc_tmov` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_movimiento`
--

INSERT INTO `tipo_movimiento` (`id_tmov`, `desc_tmov`) VALUES
(1, 'Entrada'),
(2, 'Salida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_medida`
--

CREATE TABLE `unidad_medida` (
  `id_uni` int(11) NOT NULL,
  `desc_uni` varchar(20) NOT NULL,
  `cant_uni` int(11) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `unidad_medida`
--

INSERT INTO `unidad_medida` (`id_uni`, `desc_uni`, `cant_uni`, `estado`) VALUES
(1, 'KG', 1, 'A'),
(2, 'UND', 1, 'A');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acceso`
--
ALTER TABLE `acceso`
  ADD PRIMARY KEY (`id_acc`),
  ADD KEY `modulo_acceso_fk` (`id_mod`),
  ADD KEY `perfil_acceso_fk` (`id_per`);

--
-- Indices de la tabla `concepto_general`
--
ALTER TABLE `concepto_general`
  ADD PRIMARY KEY (`id_con`);

--
-- Indices de la tabla `det_movimiento`
--
ALTER TABLE `det_movimiento`
  ADD PRIMARY KEY (`id_dmov`);

--
-- Indices de la tabla `entidad`
--
ALTER TABLE `entidad`
  ADD PRIMARY KEY (`id_ent`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`id_mod`);

--
-- Indices de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  ADD PRIMARY KEY (`id_mov`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_per`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id_pers`),
  ADD KEY `fk_perfil_persona` (`id_per`);

--
-- Indices de la tabla `procedencia`
--
ALTER TABLE `procedencia`
  ADD PRIMARY KEY (`id_proc`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_pro`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_prov`);

--
-- Indices de la tabla `tipo_movimiento`
--
ALTER TABLE `tipo_movimiento`
  ADD PRIMARY KEY (`id_tmov`);

--
-- Indices de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  ADD PRIMARY KEY (`id_uni`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acceso`
--
ALTER TABLE `acceso`
  MODIFY `id_acc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `concepto_general`
--
ALTER TABLE `concepto_general`
  MODIFY `id_con` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `det_movimiento`
--
ALTER TABLE `det_movimiento`
  MODIFY `id_dmov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `entidad`
--
ALTER TABLE `entidad`
  MODIFY `id_ent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `id_mod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  MODIFY `id_mov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id_per` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id_pers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `procedencia`
--
ALTER TABLE `procedencia`
  MODIFY `id_proc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_prov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tipo_movimiento`
--
ALTER TABLE `tipo_movimiento`
  MODIFY `id_tmov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  MODIFY `id_uni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acceso`
--
ALTER TABLE `acceso`
  ADD CONSTRAINT `fk_modulo_acceso` FOREIGN KEY (`id_mod`) REFERENCES `modulo` (`id_mod`),
  ADD CONSTRAINT `fk_perfil_acceso` FOREIGN KEY (`id_per`) REFERENCES `perfil` (`id_per`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `fk_perfil_persona` FOREIGN KEY (`id_per`) REFERENCES `perfil` (`id_per`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
