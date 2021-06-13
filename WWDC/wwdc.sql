-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2021 a las 17:02:46
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wwdc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `ID_admin` int(11) NOT NULL,
  `usuario` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `hash_pass` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `nivel` int(1) NOT NULL,
  `actualizado` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`ID_admin`, `usuario`, `hash_pass`, `nivel`, `actualizado`) VALUES
(36, 'rober', '$2y$12$Bg9vXRRKrh3reOfxFI6.uuowWd3Wsz1cFCuXPlnv86D1zGa/xmEoi', 1, '2021-05-19 20:38:09'),
(42, 'administrador', '$2y$12$6vJJjBhticeJXy3l7HSkT.ZUA17YcxB7wf5HWebQLtbVXx4RWG8Xu', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_evento`
--

CREATE TABLE `categoria_evento` (
  `id_categoria` tinyint(10) NOT NULL,
  `cat_evento` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `icono` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `actualizado` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categoria_evento`
--

INSERT INTO `categoria_evento` (`id_categoria`, `cat_evento`, `icono`, `actualizado`) VALUES
(1, 'Seminario', 'fa-university', '2021-05-14 00:00:00'),
(2, 'Conferencia', 'fa-at', '2021-05-14 00:00:00'),
(3, 'Talleres', 'fa-code', '2021-05-14 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `evento_id` tinyint(10) NOT NULL,
  `nombre_evento` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_evento` date NOT NULL,
  `hora_evento` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `id_cat_evento` tinyint(10) NOT NULL,
  `id_inv` tinyint(4) NOT NULL,
  `clave` varchar(10) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`evento_id`, `nombre_evento`, `fecha_evento`, `hora_evento`, `id_cat_evento`, `id_inv`, `clave`) VALUES
(4, 'HTML5 y CSS3', '2021-06-14', '17:00:00', 3, 3, 'taller_01'),
(6, 'WordPress', '2021-06-15', '19:00:00', 3, 5, 'taller_13'),
(7, 'Como ser freelancer', '2021-06-14', '10:00:00', 2, 6, 'conf_01'),
(8, 'Tecnologías del Futuro PHP', '2021-06-17', '17:00:00', 2, 3, 'conf_02'),
(9, 'Seguridad en la Web', '2021-06-15', '17:00:00', 2, 2, 'conf_03'),
(10, 'Diseño UI y UX para móviles', '2021-06-15', '10:00:00', 1, 6, 'sem_01'),
(11, 'Angular 5', '2021-06-17', '17:00:00', 3, 3, 'taller_02'),
(12, 'PHP y MySQL', '2021-06-14', '12:00:00', 3, 2, 'taller_03'),
(13, 'JavaScript Avanzado', '2021-06-18', '14:00:00', 3, 3, 'taller_04'),
(14, 'SEO en Google', '2021-06-15', '17:00:00', 3, 4, 'taller_05'),
(15, 'De Photoshop a HTML5 y CSS3', '2021-06-15', '19:00:00', 3, 5, 'taller_06'),
(16, 'PHP Intermedio y Avanzado', '2021-06-18', '21:00:00', 3, 6, 'taller_07'),
(17, 'Como crear una tienda online que venda millones en pocos día', '2021-06-17', '10:00:00', 2, 6, 'conf_04'),
(18, 'Los mejores lugares para encontrar trabajo', '2021-06-18', '17:00:00', 2, 1, 'conf_05'),
(19, 'Pasos para crear un negocio rentable ', '2021-06-15', '19:00:00', 2, 2, 'conf_06'),
(20, 'Aprende a Programar en una mañana', '2021-06-17', '10:00:00', 1, 3, 'sem_02'),
(21, 'Diseño UI y UX para móviles', '2021-06-14', '17:00:00', 1, 5, 'sem_03'),
(23, 'Crea tu propia API', '2021-06-14', '12:00:00', 3, 2, 'taller_09'),
(24, 'JavaScript y jQuery', '2021-06-17', '14:00:00', 3, 3, 'taller_10'),
(25, 'Creando Plantillas para WordPress', '2021-06-17', '17:00:00', 3, 4, 'taller_11'),
(26, 'Tiendas Virtuales en Magento', '2021-06-18', '19:00:00', 3, 5, 'taller_12'),
(30, 'Creando una App en Android en una mañana', '2021-06-14', '10:00:00', 1, 4, 'sem_04'),
(31, 'Creando una App en iOS en una tarde', '2021-06-15', '17:00:00', 1, 1, 'sem_05'),
(32, 'Flexbox para principiantes', '2021-06-15', '11:00:00', 2, 4, 'conf_07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invitados`
--

CREATE TABLE `invitados` (
  `invitado_id` tinyint(4) NOT NULL,
  `nombre_invitado` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellido_invitado` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` mediumtext COLLATE utf8_spanish_ci NOT NULL,
  `url_imagen` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `editado` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `invitados`
--

INSERT INTO `invitados` (`invitado_id`, `nombre_invitado`, `apellido_invitado`, `descripcion`, `url_imagen`, `editado`) VALUES
(1, 'Angélica', 'Vázquez', '<br> \r\n<i>Experto en desarrollo móvil con una gran capacidad de compresión de patrones de algoítmicos</i>', 'angelica.png', '2021-06-10 00:00:00'),
(2, 'Bernardo', 'Morán', '<br>\r\n<i>Aptitudes innatas en la metodología ágil de desarrollo de nuevas tecnologías de lenguaje automático</i>', 'berni.png', '2021-06-10 00:00:00'),
(3, 'Guillermo', 'Blanco', '<br>\r\n<i>Gran divulgador de sistemas de software en toda su larga experiencia como jefe técnico de desarrollo en múltiples proyectos internacionales</i>', 'guillermo.png', '2021-06-10 00:00:00'),
(4, 'Roberto', 'Mengibar', '<br>\r\n<i>Con grandes capacidades de desarrollo de sofware, se ha convertido en uno de los mayores programadores multiplataforma, especializado en sistemas móviles como iOS y Android</i>', 'robert.jpg', '2021-06-10 00:00:00'),
(5, 'Lu', 'Liang', '<br>\r\n<i>Gran profesional en el campo del aprendizaje automático, es una gran pasionaria por la tecnología automatizada y las microredes neuronales</i>', 'lu.jpg', '2021-06-10 00:00:00'),
(6, 'Jorge', 'García', '<br>\r\n<i>No hay nadie que supere en capacidades linguísticas, comunicativas y resolutivas para ella, abarca una gran parte del marketing en empresas internacionales de tecnología, véase Apple, Google y Microsoft</i>', 'jorge.jpg', '2021-06-10 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regalos`
--

CREATE TABLE `regalos` (
  `ID_regalo` int(11) NOT NULL,
  `nombre_regalo` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `regalos`
--

INSERT INTO `regalos` (`ID_regalo`, `nombre_regalo`) VALUES
(1, 'Pulsera'),
(2, 'Auriculares'),
(3, 'Powerbank');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrados`
--

CREATE TABLE `registrados` (
  `ID_Registrado` bigint(20) UNSIGNED NOT NULL,
  `nombre_registrado` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellido_registrado` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `email_registrado` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `pases_articulos` longtext COLLATE utf8_spanish_ci NOT NULL,
  `talleres_registrados` longtext COLLATE utf8_spanish_ci NOT NULL,
  `regalo` int(11) NOT NULL,
  `total_pagado` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `pagado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `registrados`
--

INSERT INTO `registrados` (`ID_Registrado`, `nombre_registrado`, `apellido_registrado`, `email_registrado`, `fecha_registro`, `pases_articulos`, `talleres_registrados`, `regalo`, `total_pagado`, `pagado`) VALUES
(38, 'prueba', 'prueba', 'correo@correo.com', '2021-06-05 21:02:55', '{\"un_dia\":{\"cantidad\":\"0\"},\"pase_completo\":{\"cantidad\":\"0\"},\"pase_2dias\":{\"cantidad\":\"1\"}}', '{\"eventos\":[\"7\",\"13\",\"26\"]}', 2, '45', 1),
(39, 'prueba', 'prueba', 'correo@correo.com', '2021-06-01 20:04:08', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"8\"]}', 3, '30', 1),
(40, 'prueba', 'prueba', 'correo@correo.com', '2021-06-02 19:07:14', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"7\"]}', 2, '30', 0),
(41, 'prueba', 'prueba', 'correo@correo.com', '2021-05-29 18:00:13', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":10,\"etiquetas\":20}', '{\"eventos\":[\"8\"]}', 3, '163', 1),
(44, 'prueba', 'prueba', 'correo@correo.com', '2021-06-01 21:04:18', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"31\",\"8\"]}', 2, '43.3', 1),
(45, 'Liu', 'Yang', 'liu@liu.com', '2021-05-22 19:13:39', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1}', '{\"eventos\":[\"6\"]}', 2, '39.3', 1),
(57, 'Roberto', 'Mengibar Arias', 'roberarias31@gmail.com', '2021-06-04 21:35:23', '{\"un_dia\":{\"cantidad\":\"2\"},\"pase_completo\":{\"cantidad\":\"2\"},\"pase_2dias\":{\"cantidad\":\"0\"},\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"30\",\"10\",\"20\"]}', 2, '173.3', 0),
(67, 'Roberto', 'Mengibar Arias', 'roberarias31@gmail.com', '2021-06-11 19:37:18', '{\"un_dia\":{\"cantidad\":\"0\"},\"pase_completo\":{\"cantidad\":\"5\"},\"pase_2dias\":{\"cantidad\":\"0\"}}', '{\"eventos\":[\"14\"]}', 2, '250', 1),
(69, 'Roberto', 'Mengibar Arias', 'roberarias31@gmail.com', '2021-06-07 20:03:28', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"32\",\"9\"]}', 3, '30', 1),
(72, 'Roberto', 'Mengibar Arias', 'roberarias31@gmail.com', '2021-06-06 21:21:22', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":2,\"etiquetas\":3}', '{\"eventos\":[\"19\"]}', 3, '54.6', 1),
(75, 'Roberto', 'Mengibar Arias', 'roberarias31@gmail.com', '2021-06-09 13:49:04', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":1}', '{\"eventos\":[\"19\"]}', 2, '39.3', 1),
(76, 'Roberto', 'Mengibar Arias', 'roberarias31@gmail.com', '2021-06-10 13:54:11', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"1\"},\"camisas\":1}', '{\"eventos\":[\"9\",\"16\"]}', 2, '134.3', 1),
(80, 'Roberto', 'Arias', 'roberarias31@gmail.com', '2021-06-02 14:19:25', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"32\"]}', 2, '30', 1),
(81, 'Roberto', 'Mengibar Arias', 'roberarias31@gmail.com', '2021-06-10 14:24:41', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"19\"]}', 2, '30', 1),
(82, 'Roberto', 'Mengibar Arias', 'roberarias31@gmail.com', '2021-06-13 14:27:46', '{\"un_dia\":{\"cantidad\":\"\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"7\"]}', 2, '50', 1),
(83, 'Roberto', 'Mengibar Arias', 'roberarias31@gmail.com', '2021-06-05 14:30:16', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"19\"]}', 1, '30', 1),
(87, 'Roberto', 'Mengibar Arias', 'roberarias31@gmail.com', '2021-06-01 14:51:04', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"31\"]}', 2, '30', 1),
(88, 'Roberto', 'Mengibar Arias', 'roberarias31@gmail.com', '2021-06-13 14:56:51', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"31\"]}', 2, '30', 1),
(96, 'Jorge', 'Garcia', 'jorge@jorge.com', '2021-06-13 16:07:05', '{\"un_dia\":{\"cantidad\":\"\"},\"pase_completo\":{\"cantidad\":\"2\"},\"pase_2dias\":{\"cantidad\":\"\"},\"camisas\":2}', '{\"eventos\":[\"12\",\"23\",\"4\",\"9\",\"19\",\"18\",\"13\"]}', 3, '118.6', 0),
(97, 'Roberto', 'Mengibar Arias', 'roberarias31@gmail.com', '2021-06-13 16:41:59', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"32\"]}', 2, '30', 1),
(98, 'Roberto', 'Mengibar Arias', 'roberarias31@gmail.com', '2021-06-13 16:44:10', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"31\"]}', 3, '30', 1),
(99, 'Roberto', 'Mengibar Arias', 'roberarias31@gmail.com', '2021-06-13 16:45:48', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"1\"},\"pase_2dias\":{\"cantidad\":\"1\"}}', '{\"eventos\":[\"12\"]}', 1, '125', 1),
(100, 'Roberto', 'Mengibar Arias', 'roberarias31@gmail.com', '2021-06-13 16:56:53', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"19\"]}', 2, '30', 0),
(101, 'Roberto', 'Mengibar Arias', 'roberarias31@gmail.com', '2021-06-13 16:58:01', '{\"un_dia\":{\"cantidad\":\"1\"},\"pase_completo\":{\"cantidad\":\"\"},\"pase_2dias\":{\"cantidad\":\"\"}}', '{\"eventos\":[\"19\"]}', 1, '30', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`ID_admin`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Indices de la tabla `categoria_evento`
--
ALTER TABLE `categoria_evento`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`evento_id`),
  ADD KEY `id_cat_evento` (`id_cat_evento`),
  ADD KEY `id_inv` (`id_inv`);

--
-- Indices de la tabla `invitados`
--
ALTER TABLE `invitados`
  ADD PRIMARY KEY (`invitado_id`);

--
-- Indices de la tabla `regalos`
--
ALTER TABLE `regalos`
  ADD PRIMARY KEY (`ID_regalo`);

--
-- Indices de la tabla `registrados`
--
ALTER TABLE `registrados`
  ADD PRIMARY KEY (`ID_Registrado`),
  ADD KEY `regalo` (`regalo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `ID_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `categoria_evento`
--
ALTER TABLE `categoria_evento`
  MODIFY `id_categoria` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `evento_id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `invitados`
--
ALTER TABLE `invitados`
  MODIFY `invitado_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `regalos`
--
ALTER TABLE `regalos`
  MODIFY `ID_regalo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `registrados`
--
ALTER TABLE `registrados`
  MODIFY `ID_Registrado` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`id_cat_evento`) REFERENCES `categoria_evento` (`id_categoria`),
  ADD CONSTRAINT `eventos_ibfk_2` FOREIGN KEY (`id_inv`) REFERENCES `invitados` (`invitado_id`);

--
-- Filtros para la tabla `registrados`
--
ALTER TABLE `registrados`
  ADD CONSTRAINT `registrados_ibfk_1` FOREIGN KEY (`regalo`) REFERENCES `regalos` (`ID_regalo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
