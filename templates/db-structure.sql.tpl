-- phpMyAdmin SQL Dump
-- version 3.4.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 18. Sep 2011 um 17:53
-- Server Version: 5.1.53
-- PHP-Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Datenbank: `${config.db.name}`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `${config.db.tables.reports}`
--

DROP TABLE IF EXISTS `${config.db.tables.reports}`;
CREATE TABLE IF NOT EXISTS `${config.db.tables.reports}` (
  `id` char(32) NOT NULL,
  `visibility` enum('public','private') NOT NULL,
  `creation` int(11) NOT NULL,
  `report` blob NOT NULL,
  `size` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `visibility` (`visibility`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stellvertreter-Struktur des Views `${config.db.tables.statistics}`
--
DROP VIEW IF EXISTS `${config.db.tables.statistics}`;
CREATE TABLE IF NOT EXISTS `${config.db.tables.statistics}` (
`creation` int(11)
,`count` bigint(21)
);
-- --------------------------------------------------------

--
-- Struktur des Views `${config.db.tables.statistics}`
--
DROP TABLE IF EXISTS `${config.db.tables.statistics}`;

CREATE VIEW `${config.db.tables.statistics}` AS select `${config.db.tables.reports}`.`creation` AS `creation`,count(`${config.db.tables.reports}`.`id`) AS `count` from `${config.db.tables.reports}` group by `${config.db.tables.reports}`.`creation`;
