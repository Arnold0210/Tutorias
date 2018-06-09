-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 09-06-2018 a las 06:44:16
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--
-- Creación: 06-06-2018 a las 17:35:46
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `auth_group`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--
-- Creación: 06-06-2018 a las 17:35:46
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `auth_group_permissions`:
--   `permission_id`
--       `auth_permission` -> `id`
--   `group_id`
--       `auth_group` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--
-- Creación: 06-06-2018 a las 17:35:45
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `auth_permission`:
--   `content_type_id`
--       `django_content_type` -> `id`
--

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add horario', 6, 'add_horario'),
(17, 'Can change horario', 6, 'change_horario'),
(18, 'Can delete horario', 6, 'delete_horario'),
(19, 'Can add tutoria', 7, 'add_tutoria'),
(20, 'Can change tutoria', 7, 'change_tutoria'),
(21, 'Can delete tutoria', 7, 'delete_tutoria'),
(22, 'Can add materia', 8, 'add_materia'),
(23, 'Can change materia', 8, 'change_materia'),
(24, 'Can delete materia', 8, 'delete_materia'),
(25, 'Can add persona', 9, 'add_persona'),
(26, 'Can change persona', 9, 'change_persona'),
(27, 'Can delete persona', 9, 'delete_persona'),
(28, 'Can add user', 10, 'add_user'),
(29, 'Can change user', 10, 'change_user'),
(30, 'Can delete user', 10, 'delete_user'),
(31, 'Can add tipo usuario', 11, 'add_tipousuario'),
(32, 'Can change tipo usuario', 11, 'change_tipousuario'),
(33, 'Can delete tipo usuario', 11, 'delete_tipousuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--
-- Creación: 06-06-2018 a las 17:36:10
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `django_admin_log`:
--   `content_type_id`
--       `django_content_type` -> `id`
--   `user_id`
--       `user_user` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--
-- Creación: 06-06-2018 a las 17:35:44
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `django_content_type`:
--

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(6, 'Horario', 'horario'),
(7, 'Horario', 'tutoria'),
(8, 'Materia', 'materia'),
(9, 'Persona', 'persona'),
(5, 'sessions', 'session'),
(11, 'TipoUsuario', 'tipousuario'),
(10, 'User', 'user');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--
-- Creación: 06-06-2018 a las 17:35:43
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `django_migrations`:
--

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-06-06 17:35:45'),
(2, 'contenttypes', '0002_remove_content_type_name', '2018-06-06 17:35:45'),
(3, 'auth', '0001_initial', '2018-06-06 17:35:49'),
(4, 'auth', '0002_alter_permission_name_max_length', '2018-06-06 17:35:49'),
(5, 'auth', '0003_alter_user_email_max_length', '2018-06-06 17:35:49'),
(6, 'auth', '0004_alter_user_username_opts', '2018-06-06 17:35:49'),
(7, 'auth', '0005_alter_user_last_login_null', '2018-06-06 17:35:49'),
(8, 'auth', '0006_require_contenttypes_0002', '2018-06-06 17:35:49'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2018-06-06 17:35:50'),
(10, 'User', '0001_initial', '2018-06-06 17:35:54'),
(11, 'Materia', '0001_initial', '2018-06-06 17:35:55'),
(12, 'Horario', '0001_initial', '2018-06-06 17:35:55'),
(13, 'Horario', '0002_auto_20180606_1210', '2018-06-06 17:36:04'),
(14, 'Horario', '0003_auto_20180606_1235', '2018-06-06 17:36:06'),
(15, 'Materia', '0002_materia_usuario', '2018-06-06 17:36:09'),
(16, 'TipoUsuario', '0001_initial', '2018-06-06 17:36:09'),
(17, 'Persona', '0001_initial', '2018-06-06 17:36:10'),
(18, 'admin', '0001_initial', '2018-06-06 17:36:13'),
(19, 'admin', '0002_logentry_remove_auto_add', '2018-06-06 17:36:13'),
(20, 'sessions', '0001_initial', '2018-06-06 17:36:13'),
(21, 'Horario', '0004_auto_20180607_1213', '2018-06-07 17:13:44'),
(22, 'User', '0002_auto_20180607_1213', '2018-06-07 17:13:44'),
(23, 'auth', '0008_auto_20180607_1213', '2018-06-07 17:13:45'),
(24, 'Horario', '0005_auto_20180607_1214', '2018-06-07 17:14:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--
-- Creación: 06-06-2018 a las 17:35:44
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `django_session`:
--

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('7zaymjtwyas2drczmcrfgkcefhv1liws', 'Y2I1OWY3YjM3YjI4NmM4NGY4NDNlNGFjMDIwM2I4Mzk0N2U1OTRlMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjM0MWNkNDRjZWE3YWE3ZDViNjUwZTYxYmEwMzExYzYzZjE5N2ExYjQiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-06-20 18:25:36'),
('84yibpahgxeywgn2lphptw6xvn4x90uf', 'Njg1YWNmNzhmN2JjYTdkMTA3MTNhZDE0MjdhZDYyNzQ3YWVjNGJiOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZWY2ODk4NjFkOWYwY2YzODZlYTJkYmI5Mzk4YWFiNDRlNWE3ZTdhNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-06-20 20:10:40'),
('bdrfspjno5v511tjzuu0uzq2vz8k9hjr', 'MjU0MjdmNzJhMjlkN2QzZTEzYWE5OGVmOGMxOTFlNTVjM2NiMjI3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjUyNTg5YTcxZTVkMWYwMTY1MTg0NTgyNTkwMjg5M2U1Zjg4MTM4NDUiLCJfYXV0aF91c2VyX2lkIjoiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-06-22 18:51:27'),
('jo0omfaoutsrhy68j86oa3uov4t880n9', 'ZDY1MDMyMDYwOTU3MWFjOGU3MDM4MTM3ZDJhZWU3MDBhYzYzY2ZkZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjYiLCJfYXV0aF91c2VyX2hhc2giOiJkN2YzODc4OTVlZmRjODdjNDNlMTUxMGUzZjAxZjU5ODg3M2JlYTYwIn0=', '2018-06-21 18:20:11'),
('kdw4br0zdlv9kby1cqs1fxl5zfva90lg', 'Nzg5Y2JmZjAxYTY4NmY1ODAzODAzZjNhODgwOWZhZDFlZTJhNWMxYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImVmNjg5ODYxZDlmMGNmMzg2ZWEyZGJiOTM5OGFhYjQ0ZTVhN2U3YTciLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-06-20 17:37:39'),
('lg0ijks2emlxo11hae2zanquc0ev2k9w', 'NzE5ODMxZmMyMTBkNzhhYjg4OGFhZGQ2OTYxOWE1ZTIyMGU0NGNhNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjRjYjMxZTVkNDBkNWU3NWJhYmQyNWFhMTY5ZThmY2E0ZTA0YjdkYmIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2018-06-20 18:45:40'),
('mzdb5bjv0d9j4emcf6x7sgqjc4m27ghh', 'ODUxMGYyNGZjY2NiM2IzODdhYjBkYWFlYTg3Mjg5YzM1MzBmYjU2ZDp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9oYXNoIjoiZDdmMzg3ODk1ZWZkYzg3YzQzZTE1MTBlM2YwMWY1OTg4NzNiZWE2MCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-06-21 17:26:17'),
('ngdpapyzoifahfjft1xztxqworw8iz15', 'ODkxN2RiMWJmM2ZkYmVkOGVlNzIxY2E5MzgzYjkyYzViYWQzZjgzMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImViNmY3MzNlZWU0MjZiZjQyOTI4NzdhYjc1NTFiNzdmOWFjNWU0NjgiLCJfYXV0aF91c2VyX2lkIjoiOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-06-22 22:26:32'),
('sbdtzsfimobr1zux25sydna8drksjyxz', 'NzhkMDNhN2UyNGQ1NmRkZDhmOTI1NDcwODk1MzkzZjI3YjhiOGY0YTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNDFjZDQ0Y2VhN2FhN2Q1YjY1MGU2MWJhMDMxMWM2M2YxOTdhMWI0In0=', '2018-06-22 21:00:12'),
('sswpygvxbrgbvinq1l5xsae49d1ziogs', 'Nzg5Y2JmZjAxYTY4NmY1ODAzODAzZjNhODgwOWZhZDFlZTJhNWMxYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImVmNjg5ODYxZDlmMGNmMzg2ZWEyZGJiOTM5OGFhYjQ0ZTVhN2U3YTciLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-06-20 23:53:31'),
('u8og5kaaelpozcrxvq8had4u175kkqfv', 'ODkxN2RiMWJmM2ZkYmVkOGVlNzIxY2E5MzgzYjkyYzViYWQzZjgzMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImViNmY3MzNlZWU0MjZiZjQyOTI4NzdhYjc1NTFiNzdmOWFjNWU0NjgiLCJfYXV0aF91c2VyX2lkIjoiOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-06-22 22:26:11'),
('vf69oj25g7f61i136erslpqtgblowb78', 'Y2I1OWY3YjM3YjI4NmM4NGY4NDNlNGFjMDIwM2I4Mzk0N2U1OTRlMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjM0MWNkNDRjZWE3YWE3ZDViNjUwZTYxYmEwMzExYzYzZjE5N2ExYjQiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-06-20 18:25:18'),
('y5vgiyjmc5yan2uh7nk28wznk2nhuk9z', 'MjExZTA3MjQzNjgzZmQ3OWM3M2IyMmM5ZTE0MzE4Y2EzZTY3MGI2Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MjU4OWE3MWU1ZDFmMDE2NTE4NDU4MjU5MDI4OTNlNWY4ODEzODQ1In0=', '2018-06-22 20:41:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario_horario`
--
-- Creación: 06-06-2018 a las 17:35:55
--

CREATE TABLE `horario_horario` (
  `idHorario` int(11) NOT NULL,
  `dia` longtext NOT NULL,
  `horaInicio` longtext NOT NULL,
  `horaFinal` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `horario_horario`:
--

--
-- Volcado de datos para la tabla `horario_horario`
--

INSERT INTO `horario_horario` (`idHorario`, `dia`, `horaInicio`, `horaFinal`) VALUES
(1, 'Lunes', '00:00', '00:00'),
(2, 'Miercoles', '09:00', '11:00'),
(3, 'Martes', '08:00', '09:00'),
(4, 'Sabado', '07:00', '17:00'),
(5, 'Jueves', '07:00', '09:00'),
(6, 'Lunes', '07:00', '07:00'),
(12, 'Martes', '07:00', '07:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario_horario_usuario`
--
-- Creación: 06-06-2018 a las 17:35:57
--

CREATE TABLE `horario_horario_usuario` (
  `id` int(11) NOT NULL,
  `horario_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `horario_horario_usuario`:
--   `horario_id`
--       `horario_horario` -> `idHorario`
--   `user_id`
--       `user_user` -> `id`
--

--
-- Volcado de datos para la tabla `horario_horario_usuario`
--

INSERT INTO `horario_horario_usuario` (`id`, `horario_id`, `user_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 2),
(4, 3, 4),
(5, 4, 4),
(6, 5, 4),
(7, 6, 2),
(8, 6, 4),
(9, 12, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario_tutoria`
--
-- Creación: 06-06-2018 a las 17:35:44
--

CREATE TABLE `horario_tutoria` (
  `id` int(11) NOT NULL,
  `estudiante_id` int(11),
  `horario_id` int(11) NOT NULL,
  `materia_id` varchar(7) NOT NULL,
  `profesor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `horario_tutoria`:
--   `estudiante_id`
--       `user_user` -> `id`
--   `horario_id`
--       `horario_horario` -> `idHorario`
--   `materia_id`
--       `materia_materia` -> `codigo`
--   `profesor_id`
--       `user_user` -> `id`
--

--
-- Volcado de datos para la tabla `horario_tutoria`
--

INSERT INTO `horario_tutoria` (`id`, `estudiante_id`, `horario_id`, `materia_id`, `profesor_id`) VALUES
(1, 7, 3, 'IS016', 4),
(2, 3, 2, 'EP001', 2),
(3, 7, 3, 'EI002', 2),
(4, 3, 3, 'EI002', 2),
(5, 3, 1, 'EP001', 2),
(6, 3, 3, 'EI002', 2),
(7, 3, 3, 'IS006', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia_materia`
--
-- Creación: 06-06-2018 a las 17:35:54
--

CREATE TABLE `materia_materia` (
  `codigo` varchar(7) NOT NULL,
  `nombre` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `materia_materia`:
--

--
-- Volcado de datos para la tabla `materia_materia`
--

INSERT INTO `materia_materia` (`codigo`, `nombre`) VALUES
('EI002', 'Programación Orientada a Objetos'),
('EP001', 'Programación I'),
('IS001', 'Estructuras Discretas'),
('IS0010', 'Construcción de software'),
('IS0011', 'Algoritmos y análisis estocástico'),
('IS002', 'Estructuras de datos'),
('IS003', 'Bases de datos'),
('IS004', 'Autómatas y lenguajes'),
('IS005', 'Sistemas operativos'),
('IS006', 'Redes de comunicaciones'),
('IS007', 'Ingeniería de software'),
('IS008', 'Análisis y diseño de algoritmos'),
('IS009', 'Redes y servicios'),
('IS012', 'Formulación y evaluación de proyectos'),
('IS013', 'Sistemas distribuidos computacionales'),
('IS014', 'Sistemas de información'),
('IS015', 'Arquitectura de software'),
('IS016', 'Ingeniería web'),
('IS017', 'Modelado y simulación'),
('IS018', 'Informática social'),
('IS019', 'Trabajo de grado I'),
('IS020', 'Gerencia de proyectos de TI'),
('IS021', 'Trabajo de grado II');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia_materia_usuario`
--
-- Creación: 06-06-2018 a las 17:36:06
--

CREATE TABLE `materia_materia_usuario` (
  `id` int(11) NOT NULL,
  `materia_id` varchar(7) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `materia_materia_usuario`:
--   `materia_id`
--       `materia_materia` -> `codigo`
--   `user_id`
--       `user_user` -> `id`
--

--
-- Volcado de datos para la tabla `materia_materia_usuario`
--

INSERT INTO `materia_materia_usuario` (`id`, `materia_id`, `user_id`) VALUES
(2, 'EI002', 2),
(1, 'EP001', 2),
(3, 'IS001', 4),
(12, 'IS0010', 2),
(13, 'IS0011', 4),
(4, 'IS002', 2),
(5, 'IS003', 4),
(6, 'IS004', 2),
(7, 'IS005', 4),
(8, 'IS006', 4),
(9, 'IS007', 2),
(10, 'IS008', 4),
(11, 'IS009', 2),
(14, 'IS012', 2),
(15, 'IS013', 4),
(16, 'IS014', 4),
(17, 'IS015', 2),
(18, 'IS016', 2),
(19, 'IS017', 2),
(20, 'IS018', 4),
(21, 'IS019', 2),
(22, 'IS020', 4),
(23, 'IS021', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_persona`
--
-- Creación: 06-06-2018 a las 17:36:09
--

CREATE TABLE `persona_persona` (
  `id` varchar(12) NOT NULL,
  `nombres` longtext NOT NULL,
  `apellidos` longtext NOT NULL,
  `correo` varchar(254) NOT NULL,
  `tipoUsuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `persona_persona`:
--   `tipoUsuario_id`
--       `tipousuario_tipousuario` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario_tipousuario`
--
-- Creación: 06-06-2018 a las 17:36:09
--

CREATE TABLE `tipousuario_tipousuario` (
  `id` int(11) NOT NULL,
  `nombre` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `tipousuario_tipousuario`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_user`
--
-- Creación: 06-06-2018 a las 17:35:50
--

CREATE TABLE `user_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `tipoUsuario` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `user_user`:
--

--
-- Volcado de datos para la tabla `user_user`
--

INSERT INTO `user_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `tipoUsuario`) VALUES
(1, 'pbkdf2_sha256$24000$M93TrR3FuY7b$R6bkudXxdvIbCT1tahE3Zeh1Cir0UUvpuAdfYfGpvOM=', '2018-06-07 16:52:18', 0, 'ArnoldHerrera603', 'Arnold Julian', 'Quiñones', 'arnoldjulianherreraquiones@gmail.com', 0, 1, '2018-06-06 17:36:56', 'Administrador'),
(2, 'pbkdf2_sha256$24000$F1Oxs3BpeQ3F$h8FFhnnkdirr/5wVRTLPciWt7P3qL4EHLdZJDkc8WvU=', '2018-06-06 18:45:40', 0, 'ccarce77', 'Cristhian Camilo', 'Arce García', 'ccarce77@ucatolica.edu.co', 0, 1, '2018-06-06 17:38:31', 'Profesor'),
(3, 'pbkdf2_sha256$24000$NrwpNwWKNOOb$PGLKZZ+N4nHtmNOf+EKu8W7v0CMFxLNOKZ3DYiYZBa0=', '2018-06-08 20:55:20', 0, 'jfsanchez78', 'Juan Felipe', 'Sanchez', 'jfsanchez78@ucatolica.edu.co', 0, 1, '2018-06-06 18:21:38', 'Estudiante'),
(4, 'pbkdf2_sha256$24000$OZTsUV9lDQbh$MO4H47QD8xjhsffX5TUppKnzdTRZf9mDaQ5l/nR0sL4=', '2018-06-08 21:00:12', 0, 'dfbernal99', 'Deivid Froilan', 'Bernal Gutierrez', 'dfbernal99@ucatolica.edu.co', 0, 1, '2018-06-06 18:24:32', 'Profesor'),
(5, 'pbkdf2_sha256$24000$NhmHmsgvLsk8$i6D5yrsxuZSgwlO/6Inndwz5of/E4tn7WyTYj6GyGds=', '2018-06-08 22:24:39', 0, 'admin', 'Arnold Julian', 'Herrera Quiñones', 'arnoldjulianherreraquiones@gmail.com', 0, 1, '2018-06-07 05:47:12', 'Administrador'),
(6, 'pbkdf2_sha256$24000$X7QlIi1wgODJ$V8pjTb7J9TsntlGDNl4img8ZTQAnQh0M8bTRKP5b3g4=', '2018-06-08 22:37:20', 0, 'kgrodriguez29', 'Karen Gisela', 'Rodriguez Romero', 'kgrodriguez29@ucatolica.edu.co', 0, 1, '2018-06-07 17:25:31', 'Estudiante'),
(7, 'pbkdf2_sha256$24000$9yzfm77Jh3uC$Zn/fNZCbjVgyG1rrdAEuNxyitU3qVjYyh5oNd7SYqZg=', NULL, 0, 'froilanbernal', 'Froilan', 'Bernal', 'deividbernal@hotmail.es', 0, 0, '2018-06-08 19:27:52', 'Estudiante'),
(8, 'pbkdf2_sha256$24000$IfA6BnHmQCFh$MFn8kwAsp1liaZLtDdfQZSZatq1TN8NO1fiwkVwhQZw=', '2018-06-08 22:26:31', 0, 'hgrodriguez78', 'Guillermo', 'Rodriguez', 'hgrodriguez78@ucatolica.edu.co', 0, 1, '2018-06-08 22:25:42', 'Estudiante'),
(9, 'pbkdf2_sha256$24000$YeLP8El2ja15$5HhwZcP5NqfRCid+I5I6CnQHuI6Z8NUBnOiQ8skISKc=', '2018-06-08 22:40:14', 0, 'jaime-perez', 'jaime fernando', 'perez gonzalez', 'jfperez@ucatolica.edu.co', 0, 1, '2018-06-08 22:32:44', 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_user_groups`
--
-- Creación: 06-06-2018 a las 17:35:50
--

CREATE TABLE `user_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `user_user_groups`:
--   `group_id`
--       `auth_group` -> `id`
--   `user_id`
--       `user_user` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_user_user_permissions`
--
-- Creación: 06-06-2018 a las 17:35:50
--

CREATE TABLE `user_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `user_user_user_permissions`:
--   `permission_id`
--       `auth_permission` -> `id`
--   `user_id`
--       `user_user` -> `id`
--

--
-- Índices para tablas volcadas
--

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
  ADD UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_User_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`);

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
  ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Indices de la tabla `horario_horario`
--
ALTER TABLE `horario_horario`
  ADD PRIMARY KEY (`idHorario`);

--
-- Indices de la tabla `horario_horario_usuario`
--
ALTER TABLE `horario_horario_usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Horario_horario_usuario_horario_id_c86be488_uniq` (`horario_id`,`user_id`),
  ADD KEY `Horario_horario_usuario_user_id_210e83ba_fk_User_user_id` (`user_id`);

--
-- Indices de la tabla `horario_tutoria`
--
ALTER TABLE `horario_tutoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Horario_tutoria_133716be` (`estudiante_id`),
  ADD KEY `Horario_tutoria_932b6051` (`horario_id`),
  ADD KEY `Horario_tutoria_d918f6e2` (`materia_id`),
  ADD KEY `Horario_tutoria_21c9ccfc` (`profesor_id`);

--
-- Indices de la tabla `materia_materia`
--
ALTER TABLE `materia_materia`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `materia_materia_usuario`
--
ALTER TABLE `materia_materia_usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Materia_materia_usuario_materia_id_bc9c76e8_uniq` (`materia_id`,`user_id`),
  ADD KEY `Materia_materia_usuario_user_id_0c15d9ac_fk_User_user_id` (`user_id`);

--
-- Indices de la tabla `persona_persona`
--
ALTER TABLE `persona_persona`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Persona_pe_tipoUsuario_id_7808bb98_fk_TipoUsuario_tipousuario_id` (`tipoUsuario_id`);

--
-- Indices de la tabla `tipousuario_tipousuario`
--
ALTER TABLE `tipousuario_tipousuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_user`
--
ALTER TABLE `user_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `user_user_groups`
--
ALTER TABLE `user_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `User_user_groups_user_id_e1236af7_uniq` (`user_id`,`group_id`),
  ADD KEY `User_user_groups_group_id_ca46cfeb_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `user_user_user_permissions`
--
ALTER TABLE `user_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `User_user_user_permissions_user_id_f20e58ff_uniq` (`user_id`,`permission_id`),
  ADD KEY `User_user_user_perm_permission_id_6ee76041_fk_auth_permission_id` (`permission_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `horario_horario_usuario`
--
ALTER TABLE `horario_horario_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `horario_tutoria`
--
ALTER TABLE `horario_tutoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `materia_materia_usuario`
--
ALTER TABLE `materia_materia_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `user_user`
--
ALTER TABLE `user_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `user_user_groups`
--
ALTER TABLE `user_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user_user_user_permissions`
--
ALTER TABLE `user_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_User_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`);

--
-- Filtros para la tabla `horario_horario_usuario`
--
ALTER TABLE `horario_horario_usuario`
  ADD CONSTRAINT `Horario_horario_horario_id_e06262fa_fk_Horario_horario_idHorario` FOREIGN KEY (`horario_id`) REFERENCES `horario_horario` (`idHorario`),
  ADD CONSTRAINT `Horario_horario_usuario_user_id_210e83ba_fk_User_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`);

--
-- Filtros para la tabla `horario_tutoria`
--
ALTER TABLE `horario_tutoria`
  ADD CONSTRAINT `Horario_tutoria_estudiante_id_dbd31811_fk_User_user_id` FOREIGN KEY (`estudiante_id`) REFERENCES `user_user` (`id`),
  ADD CONSTRAINT `Horario_tutoria_horario_id_f66275be_fk_Horario_horario_idHorario` FOREIGN KEY (`horario_id`) REFERENCES `horario_horario` (`idHorario`),
  ADD CONSTRAINT `Horario_tutoria_materia_id_4228cd1b_fk_Materia_materia_codigo` FOREIGN KEY (`materia_id`) REFERENCES `materia_materia` (`codigo`),
  ADD CONSTRAINT `Horario_tutoria_profesor_id_29885cc5_fk_User_user_id` FOREIGN KEY (`profesor_id`) REFERENCES `user_user` (`id`);

--
-- Filtros para la tabla `materia_materia_usuario`
--
ALTER TABLE `materia_materia_usuario`
  ADD CONSTRAINT `Materia_materia_us_materia_id_c499720d_fk_Materia_materia_codigo` FOREIGN KEY (`materia_id`) REFERENCES `materia_materia` (`codigo`),
  ADD CONSTRAINT `Materia_materia_usuario_user_id_0c15d9ac_fk_User_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`);

--
-- Filtros para la tabla `persona_persona`
--
ALTER TABLE `persona_persona`
  ADD CONSTRAINT `Persona_pe_tipoUsuario_id_7808bb98_fk_TipoUsuario_tipousuario_id` FOREIGN KEY (`tipoUsuario_id`) REFERENCES `tipousuario_tipousuario` (`id`);

--
-- Filtros para la tabla `user_user_groups`
--
ALTER TABLE `user_user_groups`
  ADD CONSTRAINT `User_user_groups_group_id_ca46cfeb_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `User_user_groups_user_id_8a581615_fk_User_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`);

--
-- Filtros para la tabla `user_user_user_permissions`
--
ALTER TABLE `user_user_user_permissions`
  ADD CONSTRAINT `User_user_user_perm_permission_id_6ee76041_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `User_user_user_permissions_user_id_321bdf68_fk_User_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
