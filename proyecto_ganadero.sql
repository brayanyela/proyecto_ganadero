-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-04-2023 a las 17:21:38
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
-- Base de datos: `proyecto_ganadero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alimento`
--

CREATE TABLE `alimento` (
  `id_alimento` int(11) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `id_tipo_alimento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alimento`
--

INSERT INTO `alimento` (`id_alimento`, `nombre`, `id_tipo_alimento`) VALUES
(1, 'cebada', 1),
(2, 'leguminosa', 2),
(3, 'paja', 3),
(4, 'maiz', 4),
(5, 'concentrado', 5),
(6, 'forraje', 6),
(7, 'avena', 7),
(8, 'maiz', 8),
(9, 'soja', 9),
(10, 'alfalfa', 10),
(11, 'pasto', 11),
(12, 'caña', 12),
(13, 'verdura', 13),
(14, 'fruta', 14),
(15, 'forraje', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animal`
--

CREATE TABLE `animal` (
  `id_animal` int(11) NOT NULL,
  `peso` int(50) DEFAULT NULL,
  `edad` int(50) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL,
  `id_tipo_animal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `animal`
--

INSERT INTO `animal` (`id_animal`, `peso`, `edad`, `genero`, `id_tipo_animal`) VALUES
(1, 320, 2, 'Hembra', 1),
(2, 320, 2, 'Hembra', 2),
(3, 720, 2, 'Hembra', 3),
(4, 650, 2, 'Hembra', 3),
(5, 520, 2, 'Hembra', 5),
(6, 633, 2, 'Hembra', 6),
(7, 640, 2, 'Hembra', 7),
(8, 650, 2, 'Hembra', 8),
(9, 650, 2, 'Hembra', 9),
(10, 400, 2, 'Hembra', 10),
(11, 452, 2, 'Hembra', 11),
(12, 390, 2, 'Hembra', 12),
(13, 364, 2, 'Hembra', 13),
(14, 365, 2, 'Hembra', 14),
(15, 405, 2, 'Hembra', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chequeo`
--

CREATE TABLE `chequeo` (
  `id_chequeo` int(11) NOT NULL,
  `fecha_chequeo` datetime DEFAULT NULL,
  `peso` varchar(150) DEFAULT NULL,
  `recomendaciones` varchar(50) DEFAULT NULL,
  `id_veterinario` int(11) DEFAULT NULL,
  `id_procedimiento` int(11) DEFAULT NULL,
  `id_animal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `chequeo`
--

INSERT INTO `chequeo` (`id_chequeo`, `fecha_chequeo`, `peso`, `recomendaciones`, `id_veterinario`, `id_procedimiento`, `id_animal`) VALUES
(1, '2023-04-28 13:26:53', '500', 'no exceder en los alimentos', 1, 1, 1),
(2, '2023-04-28 11:13:36', '500', 'no exceder el alimento', 2, 2, 2),
(3, '2023-04-28 12:13:36', '450', 'mantener alimentación balanceada', 3, 3, 3),
(4, '2023-04-29 09:13:36', '410', 'proporcionar dos comidas al dia', 4, 4, 4),
(5, '2023-04-29 10:13:36', '300', 'mantener el peso según  el crecimiento de esta vac', 5, 5, 5),
(6, '2023-04-30 10:13:36', '400', 'es necesario aplicar purgante a esta vaca', 6, 6, 6),
(7, '2023-05-01 09:13:36', '550', 'esta en sobrepeso y necesita una dieta balaceada ', 7, 7, 7),
(8, '2023-05-01 16:13:36', '410', 'mantener bajo revisión de líquidos ', 8, 8, 8),
(9, '2023-05-03 16:13:36', '530', 'la vaca esta en proceso de gestación ', 9, 9, 9),
(10, '2023-04-28 13:26:53', '450', 'esta vaca ya esta para la producción de leche', 10, 10, 10),
(11, '2023-05-03 16:29:31', '490', 'seguir con el proceso del especialista ', 11, 11, 11),
(12, '2023-04-29 16:34:30', '150', 'seguimiento en proceso nutricional ', 12, 12, 12),
(13, '2023-05-01 16:34:30', '240', 'mantener el proceso de lactancia ', 13, 13, 13),
(14, '2023-04-28 13:26:53', '420', 'debe mantener el peso adecuado durante tres meses ', 14, 14, 15),
(15, '2023-05-03 16:29:31', '380', 'necita vitaminas para el desarrollo', 15, 15, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procedimiento`
--

CREATE TABLE `procedimiento` (
  `id_procedimiento` int(11) NOT NULL,
  `fecha_chequeo` datetime DEFAULT NULL,
  `id_tipo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `procedimiento`
--

INSERT INTO `procedimiento` (`id_procedimiento`, `fecha_chequeo`, `id_tipo`) VALUES
(1, '2023-04-28 13:26:53', 1),
(2, '2023-04-29 14:26:53', 2),
(3, '2023-04-28 13:26:53', 3),
(4, '2023-04-28 14:26:53', 4),
(5, '2023-04-29 14:26:53', 5),
(6, '2023-04-30 11:26:53', 6),
(7, '2023-05-01 11:26:53', 7),
(8, '2023-05-01 11:26:53', 8),
(9, '2023-04-02 11:26:53', 9),
(10, '2023-04-02 11:26:53', 10),
(11, '2023-04-03 11:26:53', 6),
(12, '2023-04-03 11:26:53', 12),
(13, '2023-04-03 11:26:53', 13),
(14, '2023-04-04 11:26:53', 14),
(15, '2023-04-04 11:26:53', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suministro`
--

CREATE TABLE `suministro` (
  `id_suministro` int(11) NOT NULL,
  `hora` time DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `id_trabajador` int(11) DEFAULT NULL,
  `id_animal` int(11) DEFAULT NULL,
  `id_alimento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `suministro`
--

INSERT INTO `suministro` (`id_suministro`, `hora`, `cantidad`, `id_trabajador`, `id_animal`, `id_alimento`) VALUES
(1, '16:00:43', 2, 1, 1, 1),
(2, '11:13:09', 3, 2, 2, 2),
(3, '11:04:09', 5, 3, 3, 3),
(4, '16:00:43', 3, 4, 4, 4),
(5, '13:05:36', 5, 5, 5, 5),
(6, '13:05:36', 6, 6, 6, 6),
(7, '12:05:36', 3, 7, 7, 7),
(8, '10:05:36', 6, 8, 8, 8),
(9, '11:13:09', 5, 9, 9, 9),
(10, '11:04:09', 5, 10, 10, 10),
(11, '13:05:36', 6, 11, 11, 11),
(12, '12:05:36', 2, 12, 12, 12),
(13, '10:05:36', 3, 13, 13, 13),
(14, '11:13:09', 2, 14, 14, 14),
(15, '16:04:09', 5, 15, 15, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id_tipo` int(11) NOT NULL,
  `tipo` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`id_tipo`, `tipo`) VALUES
(1, 'la vaca necesita desparasitante '),
(2, 'la vaca necesita desparasitante '),
(3, 'la vaca necesita desifectacion '),
(4, 'el ganado necesita un plan de alimentacion'),
(5, 'Cumplir con las regulaciones y normas de bienestar  del animal'),
(6, 'necesita vacunacion'),
(7, ' Proporcionar agua limpia y fresca en todo momento'),
(8, 'Proporcionar un alojamiento adecuado y protegido del clima y las condiciones ambientales extremas'),
(9, 'Proporcionar espacio suficiente para que los animales puedan moverse y acostarse cómodamente'),
(10, 'Mantener la higiene y la limpieza en los corrales, establos y áreas de alimentación'),
(11, 'el ganado necesita  Mantener los registros de vacunación y desparasitación actualizados'),
(12, 'Realizar el proceso de castración o esterilización cuando sea necesario'),
(13, 'Controlar el manejo y la manipulación del ganado para minimizar el estrés y el sufrimiento durante la carga y descarga de los animales'),
(14, 'Proporcionar un espacio adecuado para el parto y la cría de los terneros o crías'),
(15, 'Proporcionar un ambiente adecuado para el crecimiento y desarrollo de los animales jóvenes, y controlar el destete para minimizar el estrés.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_alimento`
--

CREATE TABLE `tipo_alimento` (
  `id_tipo_alimento` int(11) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_alimento`
--

INSERT INTO `tipo_alimento` (`id_tipo_alimento`, `nombre`) VALUES
(1, 'cebada de primavera'),
(2, 'hierbas silvestres'),
(3, 'heno de alfalfa'),
(4, 'paja de trigo'),
(5, 'silo de maiz de planta entera'),
(6, 'concentrado para engorde'),
(7, 'avena blanca'),
(8, 'maiz harinoso'),
(9, 'soja convencional'),
(10, 'alfalfa comun '),
(11, 'pasto fresco'),
(12, 'caña de azucar'),
(13, 'remolacha'),
(14, 'concentrado de proteina de soja '),
(15, 'silo de hierva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_animal`
--

CREATE TABLE `tipo_animal` (
  `id_tipo_animal` int(11) NOT NULL,
  `raza` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_animal`
--

INSERT INTO `tipo_animal` (`id_tipo_animal`, `raza`) VALUES
(1, ' vanuno'),
(2, ' obino'),
(3, ' angus'),
(4, ' betted galloway'),
(5, ' branman'),
(6, ' charolais'),
(7, ' dexter'),
(8, ' gelbvieh'),
(9, ' herford'),
(10, ' holstein'),
(11, ' lemosin'),
(12, ' piamontesa'),
(13, ' simmental'),
(14, ' shorthor'),
(15, 'Ganado porcino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajor`
--

CREATE TABLE `trabajor` (
  `id_trabajador` int(11) NOT NULL,
  `telefono` int(20) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `trabajor`
--

INSERT INTO `trabajor` (`id_trabajador`, `telefono`, `nombre`) VALUES
(1, 31211332, ' Manuel'),
(2, 32121133, ' elvira'),
(3, 324223331, ' julian'),
(4, 321212192, ' ramirez'),
(5, 32131221, ' marquez'),
(6, 32345643, 'marcos'),
(7, 31234665, 'alvaro '),
(8, 32311322, ' juli'),
(9, 3124332, ' mariana'),
(10, 31654321, ' paula'),
(11, 31234232, ' carolina'),
(12, 3432231, ' ester'),
(13, 312345674, ' andres'),
(14, 31234232, ' brayan'),
(15, 31211332, ' Laura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `veterinario`
--

CREATE TABLE `veterinario` (
  `id_veterinario` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `telefono` int(30) DEFAULT NULL,
  `especializacion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `veterinario`
--

INSERT INTO `veterinario` (`id_veterinario`, `nombre`, `telefono`, `especializacion`) VALUES
(1, 'carlos silava', 322323343, 'veterinario zootecnista'),
(2, 'Manuel Rivera', 31892444, 'veterinario zootecnista'),
(3, 'Alejandra Bastidas', 321323343, 'produccion animal'),
(4, 'JUlio Castillo', 324323343, 'mejoramiento animal'),
(5, 'Maria paula', 319323343, 'nutriccion animal'),
(6, 'Ana ESpernza G', 314323343, 'veterinario zootecnista'),
(7, 'David ceron', 321323343, 'mejoramiento animal'),
(8, 'Juliana Diaz', 323323343, 'veterinario zootecnista'),
(9, 'Paula Castillo', 31892444, 'veterinario zootecnista'),
(10, 'Juan Perez', 323323343, 'produccion animal'),
(11, 'Edwin Gonzales', 32873222, 'mejoramiento animal'),
(12, 'Camila Gomez', 319323343, 'nutriccion animal'),
(13, 'Andrea Muñoz', 318323343, 'veterinario zootecnista'),
(14, 'Daniela Ceron', 321323343, 'mejoramiento animal'),
(15, 'Mariana cierra', 325323343, 'veterinario zootecnista');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alimento`
--
ALTER TABLE `alimento`
  ADD PRIMARY KEY (`id_alimento`),
  ADD KEY `id_tipo_alimento` (`id_tipo_alimento`);

--
-- Indices de la tabla `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id_animal`),
  ADD KEY `id_tipo_animal` (`id_tipo_animal`);

--
-- Indices de la tabla `chequeo`
--
ALTER TABLE `chequeo`
  ADD PRIMARY KEY (`id_chequeo`),
  ADD KEY `id_veterinario` (`id_veterinario`),
  ADD KEY `id_procedimiento` (`id_procedimiento`),
  ADD KEY `id_animal` (`id_animal`);

--
-- Indices de la tabla `procedimiento`
--
ALTER TABLE `procedimiento`
  ADD PRIMARY KEY (`id_procedimiento`),
  ADD KEY `id_tipo` (`id_tipo`);

--
-- Indices de la tabla `suministro`
--
ALTER TABLE `suministro`
  ADD PRIMARY KEY (`id_suministro`),
  ADD KEY `id_trabajador` (`id_trabajador`),
  ADD KEY `id_animal` (`id_animal`),
  ADD KEY `id_alimento` (`id_alimento`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `tipo_alimento`
--
ALTER TABLE `tipo_alimento`
  ADD PRIMARY KEY (`id_tipo_alimento`);

--
-- Indices de la tabla `tipo_animal`
--
ALTER TABLE `tipo_animal`
  ADD PRIMARY KEY (`id_tipo_animal`);

--
-- Indices de la tabla `trabajor`
--
ALTER TABLE `trabajor`
  ADD PRIMARY KEY (`id_trabajador`);

--
-- Indices de la tabla `veterinario`
--
ALTER TABLE `veterinario`
  ADD PRIMARY KEY (`id_veterinario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alimento`
--
ALTER TABLE `alimento`
  ADD CONSTRAINT `alimento_ibfk_1` FOREIGN KEY (`id_tipo_alimento`) REFERENCES `tipo_alimento` (`id_tipo_alimento`);

--
-- Filtros para la tabla `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`id_tipo_animal`) REFERENCES `tipo_animal` (`id_tipo_animal`);

--
-- Filtros para la tabla `chequeo`
--
ALTER TABLE `chequeo`
  ADD CONSTRAINT `chequeo_ibfk_1` FOREIGN KEY (`id_veterinario`) REFERENCES `veterinario` (`id_veterinario`),
  ADD CONSTRAINT `chequeo_ibfk_2` FOREIGN KEY (`id_procedimiento`) REFERENCES `procedimiento` (`id_procedimiento`),
  ADD CONSTRAINT `chequeo_ibfk_3` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`id_animal`);

--
-- Filtros para la tabla `procedimiento`
--
ALTER TABLE `procedimiento`
  ADD CONSTRAINT `procedimiento_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `tipo` (`id_tipo`);

--
-- Filtros para la tabla `suministro`
--
ALTER TABLE `suministro`
  ADD CONSTRAINT `suministro_ibfk_1` FOREIGN KEY (`id_trabajador`) REFERENCES `trabajor` (`id_trabajador`),
  ADD CONSTRAINT `suministro_ibfk_2` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`id_animal`),
  ADD CONSTRAINT `suministro_ibfk_3` FOREIGN KEY (`id_alimento`) REFERENCES `alimento` (`id_alimento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;





/* consultas 10
1-Seleccionar todos los registros de una tabla:
SELECT * FROM suministro;
2-Contar el número de registros en una tabla:
SELECT COUNT(*) FROM tipo;
3-suma del peso de todos los animales 
SELECT SUM(peso) FROM animal;
4-muestra el peso maximo entre todo el ganado de cheque 
SELECT MAX(peso) FROM chequeo;
5-consulta de la minima cantidad de suministro
SELECT MIN(cantidad) FROM suministro;
6-consulta de trascurrido entre  ¨x" a "y"
SELECT * FROM chequeo WHERE fecha_chequeo BETWEEN '2023-04-28' AND '2023-04-29';
7-agrupar registros de dos columnas mostrando la primer columna como principal
SELECT nombre, telefono FROM veterinario GROUP BY nombre;
8-agrupa los valores relacionados con la búsqueda
SELECT * FROM animal WHERE peso IN (320, 720, 650);
9-busca valores similares 
SELECT * FROM animal WHERE peso LIKE '320';
10-eliminar registro de una tabla
DELETE FROM animal WHERE peso= 550;
----conslultas joins 10
1-Busca los chequeos realizados por los veterinarios
SELECT chequeo.*, veterinario.nombre FROM chequeo INNER JOIN veterinario ON chequeo.id_veterinario = veterinario.id_veterinario;
2- Selecciona la fecha de la tabla chequeo de cada animal, con su respectivo género y cantidad de alimento que se toma de la tabla suministro
SELECT animal.id_animal,chequeo.fecha_chequeo, animal.genero, suministro.cantidad FROM chequeo LEFT JOIN animal ON chequeo.id_animal = animal.id_animal LEFT JOIN suministro ON suministro.id_animal = animal.id_animal;
3-selecciona el id de chequeo con las recomendaciones asignadas a cada animal los cuales también mostrará sus respectivos id
SELECT animal.id_animal,chequeo.id_chequeo, chequeo.recomendaciones FROM animal LEFT JOIN chequeo ON chequeo.id_animal = animal.id_animal;
4-Selecciona el id de animal  y recomendación hecha en el chequeo para así seguir de una buena manera la crianza del animal.
SELECT animal.id_animal, chequeo.recomendaciones FROM animal INNER JOIN chequeo ON chequeo.id_animal = animal.id_animal;
 
 5- Selecciona el alimento  con su respectivo id y  la cantidad total del suministro 
SELECT alimento.nombre, alimento.id_alimento, SUM(suministro.cantidad) AS 'cantidad total' FROM alimento INNER JOIN suministro ON alimento.id_alimento = suministro.id_alimento INNER JOIN animal ON suministro.id_animal = animal.id_animal GROUP BY alimento.nombre, alimento.id_alimento;
6- Selecciona trabajador mostrando los nombres de cada uno,suministro brindara las horas que se  utilizaran para el manejo del alimento
SELECT trabajor.id_trabajador,trabajor.nombre, suministro.hora, alimento.nombre FROM trabajor LEFT JOIN suministro ON suministro.id_trabajador = trabajor.id_trabajador LEFT JOIN alimento ON suministro.id_alimento = alimento.id_alimento;
7- Selecciona la tabla procedimiento tomando el tipo, luego obtiene la hora y fecha de la tabla chequeo, para así poder informar cual es el tipo de procedimiento que se debe seguir
SELECT procedimiento.fecha_chequeo,tipo.tipo, suministro.hora FROM procedimiento LEFT JOIN tipo ON procedimiento.id_tipo = tipo.id_tipo LEFT JOIN suministro ON procedimiento.id_procedimiento = suministro.id_animal WHERE suministro.id_suministro IS NOT NULL;
8-muestra el id del animal con el nombre de la raza y el peso de cada uno para asi diferenciar los pesos del ganado  
SELECT animal.id_animal,animal.peso, tipo_animal.raza FROM animal LEFT JOIN tipo_animal ON animal.id_tipo_animal = tipo_animal.id_tipo_animal;
9- Obtiene las recomendaciones con su id desde chequeo, por otro lado obtiene id y género desde la tabla animal, así facilitando el seguimiento que se le debe hacer a cada animal con su respectivo género
SELECT chequeo.id_chequeo, chequeo.recomendaciones,animal.id_animal, `animal`.`genero` FROM `chequeo` LEFT JOIN animal ON chequeo.id_animal = animal.id_animal;
10-Obtiene el  id veterinario y especialización, toma la tabla animal escogiendo su id, por otro lado toma a chequeo para utilizar las recomendaciones, así ayudando a tener un mejor conocimiento sobre los veterinarios y su objetivo en los animales
SELECT veterinario.id_veterinario, veterinario.especializacion, chequeo.recomendaciones, animal.id_animal FROM veterinario LEFT JOIN chequeo ON chequeo.id_veterinario = veterinario.id_veterinario LEFT JOIN animal ON chequeo.id_animal = animal.id_animal;
 integrantes
 jose Alexander Aroca Mera
Camilo Reyes Fernandez
Brayan Yela Mera
Andres Quiñonez Ruiz
Julio  Castillo Acosta
Ana Ordoñez Ruiz
*/
