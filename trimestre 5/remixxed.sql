-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-09-2024 a las 04:30:52
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `remixxed`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `imagen_album` varchar(300) DEFAULT NULL,
  `año_lanzamiento` datetime(6) DEFAULT NULL,
  `id_artista` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista`
--

CREATE TABLE `artista` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `genero` varchar(80) NOT NULL,
  `imagen_artista` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add usuario', 7, 'add_usuario'),
(26, 'Can change usuario', 7, 'change_usuario'),
(27, 'Can delete usuario', 7, 'delete_usuario'),
(28, 'Can view usuario', 7, 'view_usuario'),
(29, 'Can add evento', 8, 'add_evento'),
(30, 'Can change evento', 8, 'change_evento'),
(31, 'Can delete evento', 8, 'delete_evento'),
(32, 'Can view evento', 8, 'view_evento'),
(33, 'Can add song', 9, 'add_song'),
(34, 'Can change song', 9, 'change_song'),
(35, 'Can delete song', 9, 'delete_song'),
(36, 'Can view song', 9, 'view_song');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$720000$74waSeahosSVnHafqE49Bf$WBzRnwVJCU9QvwOq9RuitGWnZ34Vx2bwOqV48K8FdP8=', '2024-09-21 02:19:30.889474', 1, 'Esteban1224', 'Esteban', 'Sanchez', 'sanchezforeroe12@gmail.com', 1, 1, '2024-06-13 13:50:06.000000'),
(3, 'pbkdf2_sha256$720000$yqsfV3PItEvyQbXaInldAc$5vz1P/z0x/PhxPYWoknwh84Vh3WMT/R7KPrJasizaZs=', '2024-06-25 23:50:53.820308', 1, 'FelipeFranco', '', '', 'danielfelipefranco16@gmail.com', 1, 1, '2024-06-25 23:49:45.000000'),
(4, 'pbkdf2_sha256$720000$REnqS7SrrtYQINUvC0UC9G$OimXgf20/A7pByIpl0Y0UFZlgvqe0hK2UrbxahjbNxk=', NULL, 1, 'SunSunDP', 'Diego', 'Guzman', 'diegoguzmanha@gmail.com', 1, 1, '2024-06-25 23:53:07.000000'),
(5, 'pbkdf2_sha256$720000$JF9djLWjAwjTI60JyhCUUN$KNMP6GndIa5P6S5WAcVTSuB5f0Rdw8I1l0a03XHa/e0=', NULL, 1, 'takyrax', '', '', 'juestebanrepu@gmail.com', 1, 1, '2024-06-25 23:54:24.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancion`
--

CREATE TABLE `cancion` (
  `id` int(11) NOT NULL,
  `titulo` varchar(90) DEFAULT NULL,
  `id_album` int(11) NOT NULL,
  `imagen_cancion` varchar(300) NOT NULL,
  `duracion` varchar(100) NOT NULL,
  `archivo_audio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancionlistareproduccion`
--

CREATE TABLE `cancionlistareproduccion` (
  `id` int(11) NOT NULL,
  `id_cancion` int(11) DEFAULT NULL,
  `id_listareproduccion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(7, '2024-06-18 14:22:56.480679', '2', 'Esteban1224', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 2),
(8, '2024-06-25 23:49:45.861500', '3', 'FelipeFranco', 1, '[{\"added\": {}}]', 4, 2),
(9, '2024-06-25 23:50:14.850401', '3', 'FelipeFranco', 2, '[{\"changed\": {\"fields\": [\"Email address\", \"Staff status\", \"Superuser status\"]}}]', 4, 2),
(10, '2024-06-25 23:53:08.146772', '4', 'SunSunDP', 1, '[{\"added\": {}}]', 4, 2),
(11, '2024-06-25 23:53:46.969650', '4', 'SunSunDP', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 2),
(12, '2024-06-25 23:53:57.469024', '4', 'SunSunDP', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]', 4, 2),
(13, '2024-06-25 23:54:24.907581', '5', 'takyrax', 1, '[{\"added\": {}}]', 4, 2),
(14, '2024-06-25 23:54:48.105327', '5', 'takyrax', 2, '[{\"changed\": {\"fields\": [\"Email address\", \"Staff status\", \"Superuser status\"]}}]', 4, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(8, 'users', 'evento'),
(9, 'users', 'song'),
(7, 'users', 'usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-06-04 15:56:32.212897'),
(2, 'auth', '0001_initial', '2024-06-04 15:56:32.778154'),
(3, 'admin', '0001_initial', '2024-06-04 15:56:32.921526'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-06-04 15:56:32.945274'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-04 15:56:32.953246'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-06-04 15:56:33.019558'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-06-04 15:56:33.083226'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-06-04 15:56:33.101989'),
(9, 'auth', '0004_alter_user_username_opts', '2024-06-04 15:56:33.111959'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-06-04 15:56:33.260781'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-06-04 15:56:33.262322'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-06-04 15:56:33.273695'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-06-04 15:56:33.291044'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-06-04 15:56:33.301447'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-06-04 15:56:33.322204'),
(16, 'auth', '0011_update_proxy_permissions', '2024-06-04 15:56:33.331784'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-06-04 15:56:33.348292'),
(18, 'sessions', '0001_initial', '2024-06-04 15:56:33.380875'),
(19, 'users', '0001_initial', '2024-06-04 15:56:33.402560'),
(20, 'users', '0002_alter_usuario_apellido_alter_usuario_clase', '2024-06-14 14:36:00.729142'),
(21, 'users', '0003_evento', '2024-06-21 15:32:47.303278'),
(22, 'users', '0004_alter_evento_foto', '2024-06-21 16:56:23.729306'),
(23, 'users', '0005_remove_evento_foto', '2024-06-25 13:25:27.064479'),
(24, 'users', '0006_song', '2024-09-12 14:00:14.416044');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('434df8ucluy0ok3g0ni4ox3g07xt6kps', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJjOTcwZjAtMmZiYTkxOWRjMTljZDk0YWUyZGFlN2JjODNjZTljMDMifQ:1sMH4z:Fiw2tF9xDg7poYevvEfjWILAWX5TCgICLBYv5tH0-Bo', '2024-07-10 01:04:09.294431'),
('p94l9gxmfho5jyhkgc1ofopy7idxiah4', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJjOTJ5ZmEtY2ZiYThjOGRhMzM1NzIxN2YwZjM5NzkzMjZkZjgyZDYifQ:1sLTdn:BIdE83pLt20v-z-znnqvQWGKEH6TyXNT13jYWgIilM4', '2024-07-07 20:16:47.036243');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_cancion` int(11) DEFAULT NULL,
  `id_album` int(11) DEFAULT NULL,
  `id_artista` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listareproduccion`
--

CREATE TABLE `listareproduccion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `imagen_ListaReproduccion` varchar(300) DEFAULT NULL,
  `fecha_creacion` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimientoreproduccion`
--

CREATE TABLE `seguimientoreproduccion` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_cancion` int(11) DEFAULT NULL,
  `fecha_reproduccion` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_evento`
--

CREATE TABLE `users_evento` (
  `id` bigint(20) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `fecha` date NOT NULL,
  `hora` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users_evento`
--

INSERT INTO `users_evento` (`id`, `titulo`, `descripcion`, `fecha`, `hora`) VALUES
(9, 'tomorrowland', 'musica electronica onn', '2024-12-24', '00:00:00.000000'),
(12, 'PRUEBA UNITARIA EVENTOS', 'Prueba de funcionamiento creacion de eventos', '2024-09-17', '00:27:00.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_song`
--

CREATE TABLE `users_song` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `artist` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users_song`
--

INSERT INTO `users_song` (`id`, `title`, `artist`, `file`) VALUES
(6, 'TEMA CALETO', '?????????', 'songs/WhatsApp_Audio_2024-09-12_at_9.18.51_AM_qeflAWx.mpeg'),
(7, 'Blank Space', 'Taylor Swift', 'songs/Taylor_Swift_-_Blank_Space_-_TaylorSwiftVEVO_youtube.mp3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_usuario`
--

CREATE TABLE `users_usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `clase` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users_usuario`
--

INSERT INTO `users_usuario` (`id`, `nombre`, `apellido`, `foto`, `clase`) VALUES
(20, 'Juan Esteban', 'Reina', 'fotos/reina.jpg', 'oyente'),
(21, 'Daniel Felipe', 'Franco', 'fotos/felipe.jpg', 'oyente'),
(23, 'IMPASSE', '', 'fotos/20210908090607_IMG_9107.JPG', 'artista'),
(24, 'El Sonido De Mi Zona', '', 'fotos/WhatsApp_Image_2024-06-25_at_10.01.42_AM.jpeg', 'artista');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contraseña` varchar(40) DEFAULT NULL,
  `imagen_perfil` varchar(300) DEFAULT NULL,
  `fecha_de_registro` datetime(6) DEFAULT NULL,
  `tipo_usuario` enum('normal','premium','admin') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_artista` (`id_artista`);

--
-- Indices de la tabla `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `cancion`
--
ALTER TABLE `cancion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_album` (`id_album`);

--
-- Indices de la tabla `cancionlistareproduccion`
--
ALTER TABLE `cancionlistareproduccion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cancion` (`id_cancion`),
  ADD KEY `id_listareproduccion` (`id_listareproduccion`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_cancion` (`id_cancion`),
  ADD KEY `id_album` (`id_album`),
  ADD KEY `id_artista` (`id_artista`);

--
-- Indices de la tabla `listareproduccion`
--
ALTER TABLE `listareproduccion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `seguimientoreproduccion`
--
ALTER TABLE `seguimientoreproduccion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_cancion` (`id_cancion`);

--
-- Indices de la tabla `users_evento`
--
ALTER TABLE `users_evento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users_song`
--
ALTER TABLE `users_song`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users_usuario`
--
ALTER TABLE `users_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `artista`
--
ALTER TABLE `artista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cancion`
--
ALTER TABLE `cancion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cancionlistareproduccion`
--
ALTER TABLE `cancionlistareproduccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `listareproduccion`
--
ALTER TABLE `listareproduccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seguimientoreproduccion`
--
ALTER TABLE `seguimientoreproduccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users_evento`
--
ALTER TABLE `users_evento`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `users_song`
--
ALTER TABLE `users_song`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users_usuario`
--
ALTER TABLE `users_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`id_artista`) REFERENCES `artista` (`id`);

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `cancion`
--
ALTER TABLE `cancion`
  ADD CONSTRAINT `cancion_ibfk_1` FOREIGN KEY (`id_album`) REFERENCES `album` (`id`);

--
-- Filtros para la tabla `cancionlistareproduccion`
--
ALTER TABLE `cancionlistareproduccion`
  ADD CONSTRAINT `cancionlistareproduccion_ibfk_1` FOREIGN KEY (`id_cancion`) REFERENCES `cancion` (`id`),
  ADD CONSTRAINT `cancionlistareproduccion_ibfk_2` FOREIGN KEY (`id_listareproduccion`) REFERENCES `listareproduccion` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`id_cancion`) REFERENCES `cancion` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_3` FOREIGN KEY (`id_album`) REFERENCES `album` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_4` FOREIGN KEY (`id_artista`) REFERENCES `artista` (`id`);

--
-- Filtros para la tabla `listareproduccion`
--
ALTER TABLE `listareproduccion`
  ADD CONSTRAINT `listareproduccion_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `seguimientoreproduccion`
--
ALTER TABLE `seguimientoreproduccion`
  ADD CONSTRAINT `seguimientoreproduccion_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `seguimientoreproduccion_ibfk_2` FOREIGN KEY (`id_cancion`) REFERENCES `cancion` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
