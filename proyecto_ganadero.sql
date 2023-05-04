-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-04-2023 a las 02:45:41
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
  `id_alimento` int(150) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animal`
--

CREATE TABLE `animal` (
  `id_animal` int(11) NOT NULL,
  `peso` int(50) DEFAULT NULL,
  `edad` int(50) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chequeo`
--

CREATE TABLE `chequeo` (
  `id_chequeo` int(150) NOT NULL,
  `fecha_chequeo` datetime DEFAULT NULL,
  `peso` varchar(150) DEFAULT NULL,
  `recomendaciones` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procedimiento`
--

CREATE TABLE `procedimiento` (
  `id_producimiento` int(11) NOT NULL,
  `fecha_chequeo` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suministro`
--

CREATE TABLE `suministro` (
  `id_suministro` int(11) NOT NULL,
  `hora` time DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id_tipo` int(150) NOT NULL,
  `tipo` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_alimento`
--

CREATE TABLE `tipo_alimento` (
  `id_tipo_alimento` int(100) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_animal`
--

CREATE TABLE `tipo_animal` (
  `id_tipo_animal` int(150) NOT NULL,
  `raza` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajor`
--

CREATE TABLE `trabajor` (
  `id_trabajor` int(20) NOT NULL,
  `telefono` int(20) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `veterinario`
--

CREATE TABLE `veterinario` (
  `id_veterinario` int(50) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `telefono` int(30) DEFAULT NULL,
  `especializacion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alimento`
--
ALTER TABLE `alimento`
  ADD PRIMARY KEY (`id_alimento`);

--
-- Indices de la tabla `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id_animal`);

--
-- Indices de la tabla `chequeo`
--
ALTER TABLE `chequeo`
  ADD PRIMARY KEY (`id_chequeo`);

--
-- Indices de la tabla `procedimiento`
--
ALTER TABLE `procedimiento`
  ADD PRIMARY KEY (`id_producimiento`);

--
-- Indices de la tabla `suministro`
--
ALTER TABLE `suministro`
  ADD PRIMARY KEY (`id_suministro`);

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
  ADD PRIMARY KEY (`id_trabajor`);

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
  ADD CONSTRAINT `alimento_ibfk_1` FOREIGN KEY (`id_alimento`) REFERENCES `suministro` (`id_suministro`);

--
-- Filtros para la tabla `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`id_animal`) REFERENCES `chequeo` (`id_chequeo`);

--
-- Filtros para la tabla `chequeo`
--
ALTER TABLE `chequeo`
  ADD CONSTRAINT `chequeo_ibfk_1` FOREIGN KEY (`id_chequeo`) REFERENCES `veterinario` (`id_veterinario`);

--
-- Filtros para la tabla `procedimiento`
--
ALTER TABLE `procedimiento`
  ADD CONSTRAINT `procedimiento_ibfk_1` FOREIGN KEY (`id_producimiento`) REFERENCES `chequeo` (`id_chequeo`);

--
-- Filtros para la tabla `suministro`
--
ALTER TABLE `suministro`
  ADD CONSTRAINT `suministro_ibfk_1` FOREIGN KEY (`id_suministro`) REFERENCES `animal` (`id_animal`);

--
-- Filtros para la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD CONSTRAINT `tipo_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `procedimiento` (`id_producimiento`);

--
-- Filtros para la tabla `tipo_alimento`
--
ALTER TABLE `tipo_alimento`
  ADD CONSTRAINT `tipo_alimento_ibfk_1` FOREIGN KEY (`id_tipo_alimento`) REFERENCES `alimento` (`id_alimento`);

--
-- Filtros para la tabla `tipo_animal`
--
ALTER TABLE `tipo_animal`
  ADD CONSTRAINT `tipo_animal_ibfk_1` FOREIGN KEY (`id_tipo_animal`) REFERENCES `animal` (`id_animal`);

--
-- Filtros para la tabla `trabajor`
--
ALTER TABLE `trabajor`
  ADD CONSTRAINT `trabajor_ibfk_1` FOREIGN KEY (`id_trabajor`) REFERENCES `suministro` (`id_suministro`);
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
