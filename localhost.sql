-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2017-11-17 02:20:27
-- 服务器版本： 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gt_db`
--
CREATE DATABASE IF NOT EXISTS `gt_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `gt_db`;

-- --------------------------------------------------------

--
-- 表的结构 `gt_affice`
--

CREATE TABLE `gt_affice` (
  `ac_id` int(8) UNSIGNED NOT NULL,
  `ac_titile` varchar(255) DEFAULT NULL,
  `ac_context` text NOT NULL,
  `ac_date` datetime DEFAULT NULL,
  `usr_id` int(8) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gt_affice`
--

INSERT INTO `gt_affice` (`ac_id`, `ac_titile`, `ac_context`, `ac_date`, `usr_id`) VALUES
(1, '公告1.0', '悦沙休闲岛1.0——可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参与到其中，或在沙漠水世界尽情享受那难于言表的“爽”……望着那无际的沙…… 或去沙雕部落展示自己更加美丽的身姿或自己动手雕它一座，或在沙画板上体验一次创作，把自己创作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属', '2017-09-27 07:26:27', 1),
(2, '公告2', '悦沙休闲岛——可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参与到其中，或在沙漠水世界尽情享受那难于言表的“爽”……望着那无际的沙…… 或去沙雕部落展示自己更加美丽的身姿或自己动手雕它一座，或在沙画板上体验一次创作，把自己创作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属于自己', '2017-09-05 07:26:48', 1),
(3, '公告3', '悦沙休闲岛——可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参与到其中，或在沙漠水世界尽情享受那难于言表的“爽”……望着那无际的沙…… 或去沙雕部落展示自己更加美丽的身姿或自己动手雕它一座，或在沙画板上体验一次创作，把自己创作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属于自己', '2017-09-10 07:27:09', 2),
(4, '这是一个公告标题', '悦沙休闲岛——可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参与到其中，或在沙漠水世界尽情享受那难于言表的“爽”……望着那无际的沙…… 或去沙雕部落展示自己更加美丽的身姿或自己动手雕它一座，或在沙画板上体验一次创作，把自己创作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属于自己', '2017-10-18 00:00:00', 1),
(5, '这是一个公告标题', '悦沙休闲岛——可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参与到其中，或在沙漠水世界尽情享受那难于言表的“爽”……望着那无际的沙…… 或去沙雕部落展示自己更加美丽的身姿或自己动手雕它一座，或在沙画板上体验一次创作，把自己创作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属于自己', '2017-10-18 00:00:00', 1),
(6, '这是一个公告标题', '悦沙休闲岛——可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参与到其中，或在沙漠水世界尽情享受那难于言表的“爽”……望着那无际的沙…… 或去沙雕部落展示自己更加美丽的身姿或自己动手雕它一座，或在沙画板上体验一次创作，把自己创作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属于自己', '2017-10-18 00:00:00', 1),
(7, '这是一个公告标题', '悦沙休闲岛——可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参与到其中，或在沙漠水世界尽情享受那难于言表的“爽”……望着那无际的沙…… 或去沙雕部落展示自己更加美丽的身姿或自己动手雕它一座，或在沙画板上体验一次创作，把自己创作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属于自己', '2017-10-18 00:00:00', 1),
(8, '这是一个公告标题', '悦沙休闲岛——可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参与到其中，或在沙漠水世界尽情享受那难于言表的“爽”……望着那无际的沙…… 或去沙雕部落展示自己更加美丽的身姿或自己动手雕它一座，或在沙画板上体验一次创作，把自己创作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属于自己', '2017-10-18 00:00:00', 1),
(9, '这是一个公告标题', '悦沙休闲岛——可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参与到其中，或在沙漠水世界尽情享受那难于言表的“爽”……望着那无际的沙…… 或去沙雕部落展示自己更加美丽的身姿或自己动手雕它一座，或在沙画板上体验一次创作，把自己创作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属于自己', '2017-10-18 00:00:00', 1),
(10, '这是一个公告标题', '悦沙休闲岛——可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参与到其中，或在沙漠水世界尽情享受那难于言表的“爽”……望着那无际的沙…… 或去沙雕部落展示自己更加美丽的身姿或自己动手雕它一座，或在沙画板上体验一次创作，把自己创作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属于自己', '2017-10-18 00:00:00', 1),
(11, '这是一个公告标题', '悦沙休闲岛——可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参与到其中，或在沙漠水世界尽情享受那难于言表的“爽”……望着那无际的沙…… 或去沙雕部落展示自己更加美丽的身姿或自己动手雕它一座，或在沙画板上体验一次创作，把自己创作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属于自己', '2017-10-18 00:00:00', 1),
(12, '这是一个公告标题', '悦沙休闲岛——可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参与到其中，或在沙漠水世界尽情享受那难于言表的“爽”……望着那无际的沙…… 或去沙雕部落展示自己更加美丽的身姿或自己动手雕它一座，或在沙画板上体验一次创作，把自己创作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属于自己', '2017-10-18 00:00:00', 1),
(13, '这是一个公告标题', '悦沙休闲岛——可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参与到其中，或在沙漠水世界尽情享受那难于言表的“爽”……望着那无际的沙…… 或去沙雕部落展示自己更加美丽的身姿或自己动手雕它一座，或在沙画板上体验一次创作，把自己创作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属于自己', '2017-10-18 00:00:00', 1),
(14, '这是一个公告标题', '悦沙休闲岛——可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参与到其中，或在沙漠水世界尽情享受那难于言表的“爽”……望着那无际的沙…… 或去沙雕部落展示自己更加美丽的身姿或自己动手雕它一座，或在沙画板上体验一次创作，把自己创作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属于自己', '2017-10-18 00:00:00', 1),
(15, '这是一个公告标题', '悦沙休闲岛——可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参与到其中，或在沙漠水世界尽情享受那难于言表的“爽”……望着那无际的沙…… 或去沙雕部落展示自己更加美丽的身姿或自己动手雕它一座，或在沙画板上体验一次创作，把自己创作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属于自己', '2017-10-18 00:00:00', 1),
(16, '这是一个公告标题', '悦沙休闲岛——可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参与到其中，或在沙漠水世界尽情享受那难于言表的“爽”……望着那无际的沙…… 或去沙雕部落展示自己更加美丽的身姿或自己动手雕它一座，或在沙画板上体验一次创作，把自己创作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属于自己', '2017-10-18 00:00:00', 1),
(17, '这是一个公告标题', '悦沙休闲岛——可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参与到其中，或在沙漠水世界尽情享受那难于言表的“爽”……望着那无际的沙…… 或去沙雕部落展示自己更加美丽的身姿或自己动手雕它一座，或在沙画板上体验一次创作，把自己创作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属于自己', '2017-10-18 00:00:00', 1),
(18, '这是一个公告标题', '悦沙休闲岛——可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参与到其中，或在沙漠水世界尽情享受那难于言表的“爽”……望着那无际的沙…… 或去沙雕部落展示自己更加美丽的身姿或自己动手雕它一座，或在沙画板上体验一次创作，把自己创作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属于自己', '2017-10-18 00:00:00', 1),
(19, '这是一个公告标题', '悦沙休闲岛——可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参与到其中，或在沙漠水世界尽情享受那难于言表的“爽”……望着那无际的沙…… 或去沙雕部落展示自己更加美丽的身姿或自己动手雕它一座，或在沙画板上体验一次创作，把自己创作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属于自己', '2017-10-18 00:00:00', 1),
(20, '这是一个公告标题', '悦沙休闲岛——可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参与到其中，或在沙漠水世界尽情享受那难于言表的“爽”……望着那无际的沙…… 或去沙雕部落展示自己更加美丽的身姿或自己动手雕它一座，或在沙画板上体验一次创作，把自己创作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属于自己', '2017-10-18 00:00:00', 1),
(21, '这是一个公告标题', '悦沙休闲岛——可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参与到其中，或在沙漠水世界尽情享受那难于言表的“爽”……望着那无际的沙…… 或去沙雕部落展示自己更加美丽的身姿或自己动手雕它一座，或在沙画板上体验一次创作，把自己创作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属于自己', '2017-10-18 00:00:00', 1),
(23, '这是一个公告标题', '悦沙休闲岛——可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参与到其中，或在沙漠水世界尽情享受那难于言表的“爽”……望着那无际的沙…… 或去沙雕部落展示自己更加美丽的身姿或自己动手雕它一座，或在沙画板上体验一次创作，把自己创作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属于自己', '2017-10-18 00:00:00', 1),
(24, '这是一个公告标题', '悦沙休闲岛——可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参与到其中，或在沙漠水世界尽情享受那难于言表的“爽”……望着那无际的沙…… 或去沙雕部落展示自己更加美丽的身姿或自己动手雕它一座，或在沙画板上体验一次创作，把自己创作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属于自己', '2017-10-18 00:00:00', 1),
(25, '这是一个', '悦沙休闲岛——可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参111作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属于自己', '2017-10-18 00:00:00', 1),
(26, '这是一个公告标题', '111111111111', '2017-10-18 00:00:00', 1),
(34, '999', '999——可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参与到其中，或在沙漠水世界尽情享受那难于言表的“爽”……望着那无际的沙…… 或去沙雕部落展示自己更加美丽的身姿或自己动手雕它一座，或在沙画板上体验一次创作，把自己创作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属于自己', '2017-10-18 00:00:00', 1),
(36, '777啊啊啊', '可以乘着沙漠深处的火车，可能会看到长长的驼铃商队，会路过古老的蒙古部落，进入悦沙休闲岛，在这里体验艺术与体育带来的愉悦， 艺术体操、健美操、街舞、沙滩排球等，你可以欣赏他们的表演，也可以参与到其中，或在沙漠水世界尽情享受那难于言表的“爽”……望着那无际的沙…… 或去沙雕部落展示自己更加美丽的身姿或自己动手雕它一座，或在沙画板上体验一次创作，把自己创作的沙画带回家——挂在墙上，这里吃喝玩乐应有尽有。 在沙漠中各种深浅的大型泳池里，以各种泳姿释放自己——在沙丘起伏无际的沙漠里——在沙漠中属于自己', '2017-10-18 00:00:00', 1),
(37, 'woshinidage', '<p>我好饿<img src=\"/gtdmn/Uploads/Aff_img/1509555510806787.png\" title=\"1509555510806787.png\" alt=\"02.png\"/>真111恶心</p>', '2017-11-02 01:02:01', 2),
(38, '加油做吧3', '<p>还要学习<img src=\"/gtdmn/Uploads/Aff_img/1509555793542840.jpg\" title=\"1509555793542840.jpg\" alt=\"10.jpg\" width=\"480\" height=\"199\"/></p>', '2017-11-02 01:03:48', 2),
(39, '这是一个测试', '<p><img src=\"/gtdmn/Uploads/Aff_img/1509769310567763.jpg\" title=\"1509769310567763.jpg\" alt=\"6.jpg\" width=\"400\" height=\"176\"/></p>', '2017-11-04 12:22:13', 2);

-- --------------------------------------------------------

--
-- 表的结构 `gt_answ`
--

CREATE TABLE `gt_answ` (
  `ans_id` int(8) UNSIGNED NOT NULL,
  `ans_msg` text,
  `ans_date` datetime DEFAULT NULL,
  `rec_id` int(8) UNSIGNED DEFAULT NULL,
  `send_id` int(8) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gt_answ`
--

INSERT INTO `gt_answ` (`ans_id`, `ans_msg`, `ans_date`, `rec_id`, `send_id`) VALUES
(2, 'message', '2017-10-23 17:04:19', 2, 1),
(3, 'msg2', '2017-10-23 05:18:14', 1, 2),
(4, '给管理员发的', '2017-10-23 17:30:41', 2, 1),
(7, '嗯嗯  爸爸你说得对', '2017-10-24 00:00:00', 1, 2),
(8, '11111', '2017-10-23 23:07:53', 2, 1),
(9, 'aaaa', '2017-10-24 17:15:02', 2, 1),
(10, '为什么错误调不完？', '2017-10-24 17:15:57', 2, 1),
(13, 'hainengyongbu', '2017-10-26 10:12:42', 2, 1),
(14, '没有问题', '2017-10-26 11:23:13', 2, 3),
(15, 'ccccc1111111111111111111111', '2017-11-04 12:10:41', 1, 2),
(16, '给gb', '2017-11-04 12:11:27', 4, 2),
(17, '给lf', '2017-11-04 12:11:55', 3, 2),
(18, 'gei lry', '2017-11-04 12:13:00', 1, 2),
(19, '123', '2017-11-07 01:43:30', 1, 2);

-- --------------------------------------------------------

--
-- 表的结构 `gt_auth_group`
--

CREATE TABLE `gt_auth_group` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(80) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gt_auth_group`
--

INSERT INTO `gt_auth_group` (`id`, `title`, `status`, `rules`) VALUES
(1, '普通用户', 1, '2,5,6,7,8,9'),
(2, '管理员', 1, '1,3,10,11,12,13,14,15,16,17,18');

-- --------------------------------------------------------

--
-- 表的结构 `gt_auth_group_access`
--

CREATE TABLE `gt_auth_group_access` (
  `uid` mediumint(8) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gt_auth_group_access`
--

INSERT INTO `gt_auth_group_access` (`uid`, `group_id`) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1);

-- --------------------------------------------------------

--
-- 表的结构 `gt_auth_rule`
--

CREATE TABLE `gt_auth_rule` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gt_auth_rule`
--

INSERT INTO `gt_auth_rule` (`id`, `name`, `title`, `type`, `status`, `condition`) VALUES
(1, 'Admin/Index/index', '网站后台', 1, 1, ''),
(2, 'Home/UserHome/usr_home', '用户主页', 1, 1, ''),
(3, 'mgr_auth', '管理员权限', 0, 1, ''),
(5, 'Home/UserHome/userEtk', '门票预订', 1, 1, ''),
(6, 'Home/UserHome/userHot', '酒店预订', 1, 1, ''),
(7, 'Home/UserHome/answ', '用户问题咨询', 1, 1, ''),
(8, 'Home/UserHome/picupload', '头像上传', 1, 1, ''),
(9, 'Home/UserHome/zf', '没有支付', 1, 1, ''),
(10, 'Admin/Index/affice_ls', '后台公告列表', 1, 1, ''),
(11, 'Admin/Index/affice_add', '添加公告', 1, 1, ''),
(12, 'Admin/Index/pic_ls', '后台图片列表', 1, 1, ''),
(13, 'Admin/Index/pic_add', '添加图片', 1, 1, ''),
(14, 'Admin/Index/uer_ls', '用户列表', 1, 1, ''),
(15, 'Admin/Index/order_ls', '订单管理', 1, 1, ''),
(16, 'Admin/Index/position', '定位校准', 1, 1, ''),
(17, 'Admin/Index/log', '后台登录日志', 1, 1, ''),
(18, 'Admin/Index/answer', '咨询回复', 1, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `gt_etk`
--

CREATE TABLE `gt_etk` (
  `etk_id` int(8) UNSIGNED NOT NULL,
  `etk_type` varchar(255) DEFAULT NULL,
  `etk_num` int(8) DEFAULT NULL,
  `dd_time` datetime NOT NULL,
  `etk_status` varchar(255) DEFAULT '0',
  `usr_id` int(8) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gt_etk`
--

INSERT INTO `gt_etk` (`etk_id`, `etk_type`, `etk_num`, `dd_time`, `etk_status`, `usr_id`) VALUES
(9, '1', 1, '2017-10-23 12:18:13', '1', 1),
(10, '3', 2, '2017-10-23 16:57:27', '0', 1),
(11, '1', 1, '2017-10-25 20:32:52', '0', 3),
(12, '1', 1, '2017-10-26 00:38:35', '1', 1),
(13, '4', 5, '2017-10-26 00:40:54', '0', 1),
(14, '2', 1, '2017-10-26 01:00:42', '1', 1),
(15, '4', 1, '2017-11-07 20:36:13', '0', 1);

-- --------------------------------------------------------

--
-- 表的结构 `gt_etk_type`
--

CREATE TABLE `gt_etk_type` (
  `etk_type_id` int(8) UNSIGNED NOT NULL,
  `etk_type_name` varchar(255) DEFAULT NULL,
  `etk_type_pro` varchar(255) DEFAULT NULL,
  `etk_type_price` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gt_etk_type`
--

INSERT INTO `gt_etk_type` (`etk_type_id`, `etk_type_name`, `etk_type_pro`, `etk_type_price`) VALUES
(1, '景区门票', '包含门票往返索道', 120),
(2, '套票二选一', '仙沙/悦沙二选一', 398),
(3, '自由之旅', '呼和浩特出发', 178),
(4, '仙沙岛套票', '往返索道+仙沙岛', 430);

-- --------------------------------------------------------

--
-- 表的结构 `gt_hotel`
--

CREATE TABLE `gt_hotel` (
  `hot_id` int(8) UNSIGNED NOT NULL,
  `hot_type` varchar(255) DEFAULT NULL,
  `rdate` date NOT NULL,
  `ldate` date NOT NULL,
  `dd_time` datetime NOT NULL,
  `hot_status` varchar(255) DEFAULT '0',
  `usr_id` int(8) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gt_hotel`
--

INSERT INTO `gt_hotel` (`hot_id`, `hot_type`, `rdate`, `ldate`, `dd_time`, `hot_status`, `usr_id`) VALUES
(2, '3', '2017-05-04', '2017-05-08', '2017-10-23 16:57:52', '0', 1),
(3, '2', '2017-05-04', '2017-05-08', '2017-10-25 20:08:25', '0', 3),
(4, '1', '2017-05-04', '2017-05-05', '2017-10-26 00:39:16', '0', 1),
(5, '4', '2017-05-04', '2017-05-06', '2017-10-26 00:41:22', '0', 1),
(6, '1', '2017-10-26', '2017-10-28', '2017-10-26 11:23:38', '0', 3);

-- --------------------------------------------------------

--
-- 表的结构 `gt_hotel_type`
--

CREATE TABLE `gt_hotel_type` (
  `hot_type_id` int(8) UNSIGNED NOT NULL,
  `hot_type_name` varchar(255) DEFAULT NULL,
  `hot_type_pro` varchar(255) DEFAULT NULL,
  `hot_type_price` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gt_hotel_type`
--

INSERT INTO `gt_hotel_type` (`hot_type_id`, `hot_type_name`, `hot_type_pro`, `hot_type_price`) VALUES
(1, '莲花商务套房', '暂无介绍', 599),
(2, '莲花标准间', '暂无介绍', 299),
(3, '莲花大床房', '暂无介绍', 256),
(4, '莲花三人间', '暂无介绍', 328);

-- --------------------------------------------------------

--
-- 表的结构 `gt_larpic`
--

CREATE TABLE `gt_larpic` (
  `pic_id` int(8) UNSIGNED NOT NULL,
  `pic_src` varchar(255) DEFAULT NULL,
  `pic_rank` varchar(255) DEFAULT NULL,
  `ac_id` int(8) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gt_larpic`
--

INSERT INTO `gt_larpic` (`pic_id`, `pic_src`, `pic_rank`, `ac_id`) VALUES
(2, '/Uploads/images/2.jpg', '2', 2),
(3, '/Uploads/images/3.jpg', '3', 3),
(5, '/Uploads/images/59fbc8b4c0142.jpg', '0', 0),
(6, '/Uploads/images/59fbc8b990cf5.jpg', '0', 0),
(7, '/Uploads/images/59fbc8bd6c744.jpg', '0', 0),
(8, '/Uploads/images/59fbc8c1a0ea3.jpg', '0', 0);

-- --------------------------------------------------------

--
-- 表的结构 `gt_log`
--

CREATE TABLE `gt_log` (
  `log_id` int(8) UNSIGNED NOT NULL,
  `log_type` varchar(255) DEFAULT NULL,
  `log_date` datetime DEFAULT NULL,
  `log_ip` varchar(255) DEFAULT NULL,
  `usr_id` int(8) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gt_log`
--

INSERT INTO `gt_log` (`log_id`, `log_type`, `log_date`, `log_ip`, `usr_id`) VALUES
(2, 'Firefox55.0', '2017-10-26 10:27:22', '127.0.0.1', 1),
(3, 'Firefox55.0', '2017-10-26 10:27:54', '127.0.0.1', 2),
(6, 'Firefox55.0', '2017-10-26 10:29:43', '127.0.0.1', 1),
(7, 'Firefox55.0', '2017-10-26 10:42:54', '127.0.0.1', 1),
(8, '', '2017-10-26 10:46:02', '172.20.10.1', 1),
(9, '', '2017-10-26 11:10:52', '172.20.10.1', 1),
(10, 'Chrome53.0', '2017-10-26 11:22:21', '172.20.10.9', 3),
(11, 'Firefox55.0', '2017-10-26 17:50:11', '127.0.0.1', 2),
(12, 'Firefox55.0', '2017-10-27 15:01:16', '127.0.0.1', 1),
(13, 'Firefox55.0', '2017-10-31 16:58:03', '127.0.0.1', 2),
(14, 'Firefox55.0', '2017-11-01 15:52:28', '127.0.0.1', 2),
(15, 'Firefox55.0', '2017-11-02 12:33:47', '127.0.0.1', 2),
(16, 'Firefox55.0', '2017-11-03 08:41:48', '127.0.0.1', 2),
(17, 'Firefox55.0', '2017-11-04 10:38:38', '127.0.0.1', 2),
(18, 'Firefox55.0', '2017-11-04 12:13:39', '127.0.0.1', 1),
(19, 'Firefox55.0', '2017-11-04 12:15:03', '127.0.0.1', 2),
(20, 'Firefox55.0', '2017-11-07 01:18:51', '127.0.0.1', 1),
(21, 'Firefox55.0', '2017-11-07 01:40:12', '127.0.0.1', 2),
(22, 'Firefox55.0', '2017-11-07 20:34:58', '127.0.0.1', 1),
(23, 'Firefox55.0', '2017-11-07 20:38:32', '127.0.0.1', 2),
(24, 'Firefox55.0', '2017-11-07 20:59:05', '127.0.0.1', 2),
(25, 'Firefox55.0', '2017-11-17 01:41:42', '127.0.0.1', 2),
(26, 'Firefox55.0', '2017-11-16 17:50:31', '127.0.0.1', 1),
(27, 'Firefox55.0', '2017-11-16 17:52:15', '127.0.0.1', 2),
(28, '', '2017-11-16 17:57:29', '172.20.10.1', 1),
(29, 'Firefox55.0', '2017-11-16 17:58:53', '127.0.0.1', 1),
(30, 'Firefox55.0', '2017-11-16 22:23:59', '127.0.0.1', 2);

-- --------------------------------------------------------

--
-- 表的结构 `gt_position`
--

CREATE TABLE `gt_position` (
  `pos_id` tinyint(8) NOT NULL,
  `pos_name` varchar(255) NOT NULL,
  `pos_pt1` varchar(255) NOT NULL,
  `pos_pt2` varchar(255) NOT NULL,
  `pos_pt3` varchar(255) NOT NULL,
  `pos_pt4` varchar(255) NOT NULL,
  `pos_pt5` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gt_position`
--

INSERT INTO `gt_position` (`pos_id`, `pos_name`, `pos_pt1`, `pos_pt2`, `pos_pt3`, `pos_pt4`, `pos_pt5`) VALUES
(1, '莲沙岛', '110.583071,40.595832', '110.583916,40.595476', '110.583431,40.594709', '110.582514,40.594846', '110.582263,40.595489'),
(2, '悦沙岛', '110.584841,40.595921', '110.585443,40.595441', '110.585398,40.59501', '110.584814,40.594962', '110.584491,40.595414'),
(3, '仙沙岛', '110.583224,40.597462', '110.584437,40.597058', '110.583242,40.596256', '110.582407,40.596496', '110.58202,40.596825'),
(4, '福沙岛', '110.585652,40.600192', '110.586873,40.599795', '110.586245,40.599425', '110.585508,40.599576', '110.585418,40.60037'),
(5, '一粒沙度假村', '110.584789,40.601466', '110.585508,40.60074', '110.584771,40.600274', '110.583837,40.600206', '110.583568,40.600767');

-- --------------------------------------------------------

--
-- 表的结构 `gt_user`
--

CREATE TABLE `gt_user` (
  `usr_id` int(8) UNSIGNED NOT NULL,
  `usr_name` varchar(255) DEFAULT NULL,
  `usr_pass` varchar(255) DEFAULT NULL,
  `usr_phone` varchar(20) NOT NULL,
  `usr_gender` varchar(4) NOT NULL,
  `usr_pic` varchar(255) DEFAULT NULL,
  `usr_detail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gt_user`
--

INSERT INTO `gt_user` (`usr_id`, `usr_name`, `usr_pass`, `usr_phone`, `usr_gender`, `usr_pic`, `usr_detail`) VALUES
(1, 'lry', '654321', '17604890365', '男', 'Uploads/usr_img/lry.jpeg', '这个人很懒... 什么也没有留下..'),
(2, 'gt', '654321', '15034701712', '女', 'Uploads/usr_img/null.jpg', '123123123456'),
(3, 'lf', '123456', '15034701712', '男', 'Uploads/usr_img/lf.jpg', 'heheda..'),
(4, 'gb', '111111', '13214944384', '男', 'Uploads/usr_img/null.jpg', '密码111111'),
(5, 'xzsd5g', '123456', '17604890364', '女', 'Uploads/usr_img/null.jpg', '啥时候注册的'),
(7, 'ohh_suc', '123456', '', '', 'Uploads/usr_img/null.jpg', ''),
(8, 'ohh_suc8', '88888888', '888', '女', 'Uploads/usr_img/null.jpg', '888'),
(9, 'ohh_suc9', '99999999', '', '', 'Uploads/usr_img/null.jpg', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gt_affice`
--
ALTER TABLE `gt_affice`
  ADD PRIMARY KEY (`ac_id`);

--
-- Indexes for table `gt_answ`
--
ALTER TABLE `gt_answ`
  ADD PRIMARY KEY (`ans_id`);

--
-- Indexes for table `gt_auth_group`
--
ALTER TABLE `gt_auth_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gt_auth_group_access`
--
ALTER TABLE `gt_auth_group_access`
  ADD UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `gt_auth_rule`
--
ALTER TABLE `gt_auth_rule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `gt_etk`
--
ALTER TABLE `gt_etk`
  ADD PRIMARY KEY (`etk_id`);

--
-- Indexes for table `gt_etk_type`
--
ALTER TABLE `gt_etk_type`
  ADD PRIMARY KEY (`etk_type_id`);

--
-- Indexes for table `gt_hotel`
--
ALTER TABLE `gt_hotel`
  ADD PRIMARY KEY (`hot_id`);

--
-- Indexes for table `gt_hotel_type`
--
ALTER TABLE `gt_hotel_type`
  ADD PRIMARY KEY (`hot_type_id`);

--
-- Indexes for table `gt_larpic`
--
ALTER TABLE `gt_larpic`
  ADD PRIMARY KEY (`pic_id`);

--
-- Indexes for table `gt_log`
--
ALTER TABLE `gt_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `gt_position`
--
ALTER TABLE `gt_position`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `gt_user`
--
ALTER TABLE `gt_user`
  ADD PRIMARY KEY (`usr_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `gt_affice`
--
ALTER TABLE `gt_affice`
  MODIFY `ac_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- 使用表AUTO_INCREMENT `gt_answ`
--
ALTER TABLE `gt_answ`
  MODIFY `ans_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- 使用表AUTO_INCREMENT `gt_auth_group`
--
ALTER TABLE `gt_auth_group`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `gt_auth_rule`
--
ALTER TABLE `gt_auth_rule`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- 使用表AUTO_INCREMENT `gt_etk`
--
ALTER TABLE `gt_etk`
  MODIFY `etk_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `gt_etk_type`
--
ALTER TABLE `gt_etk_type`
  MODIFY `etk_type_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `gt_hotel`
--
ALTER TABLE `gt_hotel`
  MODIFY `hot_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `gt_hotel_type`
--
ALTER TABLE `gt_hotel_type`
  MODIFY `hot_type_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `gt_larpic`
--
ALTER TABLE `gt_larpic`
  MODIFY `pic_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `gt_log`
--
ALTER TABLE `gt_log`
  MODIFY `log_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- 使用表AUTO_INCREMENT `gt_position`
--
ALTER TABLE `gt_position`
  MODIFY `pos_id` tinyint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `gt_user`
--
ALTER TABLE `gt_user`
  MODIFY `usr_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
