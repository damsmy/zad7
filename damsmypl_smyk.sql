-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 14 Sty 2018, 17:17
-- Wersja serwera: 5.5.53
-- Wersja PHP: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `damsmypl_smyk`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `haslo` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `admin`
--

INSERT INTO `admin` (`id`, `email`, `haslo`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `domeny`
--

CREATE TABLE `domeny` (
  `id` int(11) NOT NULL,
  `nazwa` text COLLATE utf8_unicode_ci NOT NULL,
  `Pracownicy` text COLLATE utf8_unicode_ci NOT NULL,
  `Proby` int(11) NOT NULL,
  `czas` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `domeny`
--

INSERT INTO `domeny` (`id`, `nazwa`, `Pracownicy`, `Proby`, `czas`) VALUES
(1, 'wp.pl', 'Jan Kowalski', 0, 0),
(2, 'onet.pl', 'Mateusz Bąk', 0, 0),
(3, 'fb.pl', 'Jan Kowalski', 0, 0),
(4, 'interia.pl', 'Mateusz Bąk', 0, 0),
(5, 'o2.pl', 'Mateusz Bąk', 0, 0),
(6, 'wp.pppl', 'Jan Kowalski', 203, 2020),
(7, 'onet.ppl', 'Jan Kowalski', 202, 2010),
(8, 'test.damsmy.pl', 'Mateusz Bąk', 0, 0),
(9, 'sport.pl', 'Jan Kowalski', 0, 0),
(10, 'fb.com', 'Jan Kowalski', 0, 0),
(11, 'damsmy.pl', 'Jan Kowalski', 0, 0),
(12, 'GG. Oo', 'Mateusz Bąk', 29, 280);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Goscie`
--

CREATE TABLE `Goscie` (
  `AdresIP` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `Data` datetime NOT NULL,
  `Lokalizacja` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Miasto` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Kraj` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Region` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Iloscwej` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `Goscie`
--

INSERT INTO `Goscie` (`AdresIP`, `Data`, `Lokalizacja`, `Miasto`, `Kraj`, `Region`, `Iloscwej`) VALUES
('82.146.252.', '2017-11-09 11:40:45', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('138.197.149', '2017-11-09 11:40:59', '43.6555,-79.3626', 'Toronto', 'CA', 'Ontario', 0),
('82.146.252.', '2017-11-09 11:41:40', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('82.146.252.', '2017-11-09 11:42:50', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('82.146.252.', '2017-11-09 11:43:54', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('82.146.252.', '2017-11-09 11:43:58', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('82.146.252.', '2017-11-09 11:44:19', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('178.62.198.', '2017-11-09 11:44:37', '52.3529,4.9415', 'Amsterdam', 'NL', 'North Holland', 0),
('178.62.198.', '2017-11-09 11:44:43', '52.3529,4.9415', 'Amsterdam', 'NL', 'North Holland', 0),
('82.146.252.', '2017-11-09 11:45:57', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('82.146.252.', '2017-11-09 11:46:12', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('37.47.24.42', '2017-11-09 11:49:05', '52.4167,16.9333', 'Stare Miasto', 'PL', 'Poznan', 0),
('37.47.24.42', '2017-11-09 11:49:16', '52.4167,16.9333', 'Stare Miasto', 'PL', 'Poznan', 0),
('37.47.24.42', '2017-11-09 11:49:18', '52.4167,16.9333', 'Stare Miasto', 'PL', 'Poznan', 0),
('82.146.252.', '2017-11-09 11:49:38', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('82.146.252.', '2017-11-09 12:15:44', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('82.146.252.', '2017-11-09 13:44:31', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('82.146.252.', '2017-11-12 18:28:27', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('82.146.252.', '2017-11-12 18:28:40', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('37.47.13.22', '2017-11-12 22:09:04', '52.4167,16.9333', 'Stare Miasto', 'PL', 'Poznan', 0),
('83.23.17.19', '2017-11-18 20:30:15', '53.1234,17.9584', 'Jary', 'PL', 'Kujawsko-Pomorskie', 0),
('82.146.252.', '2017-11-20 20:46:31', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('82.146.252.', '2017-11-20 20:47:09', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('82.146.252.', '2017-11-20 20:47:12', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('82.146.252.', '2017-11-21 00:28:05', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('82.146.252.', '2017-11-23 15:48:30', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('176.97.138.', '2017-11-25 18:54:41', '52.4981,18.9195', 'Jerzmanowo', 'PL', 'Kujawsko-Pomorskie', 0),
('83.20.53.25', '2017-11-26 11:42:39', '53.0099,17.7387', 'Szubin', 'PL', 'Kujawsko-Pomorskie', 0),
('82.146.252.', '2017-11-27 18:32:46', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('82.146.252.', '2017-11-28 15:32:26', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('82.146.252.', '2017-11-28 15:33:25', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('82.146.252.', '2017-11-28 15:33:26', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('82.146.252.', '2017-11-28 15:33:28', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('82.146.252.', '2017-11-28 15:33:30', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('82.146.252.', '2017-11-29 16:44:13', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('37.47.2.143', '2017-12-10 18:27:12', '52.4167,16.9333', 'Stare Miasto', 'PL', 'Poznan', 0),
('37.47.2.143', '2017-12-10 18:28:24', '52.4167,16.9333', 'Stare Miasto', 'PL', 'Poznan', 0),
('37.47.2.143', '2017-12-10 18:28:35', '52.4167,16.9333', 'Stare Miasto', 'PL', 'Poznan', 0),
('37.47.2.143', '2017-12-10 18:29:03', '52.4167,16.9333', 'Stare Miasto', 'PL', 'Poznan', 0),
('37.47.2.143', '2017-12-10 18:29:05', '52.4167,16.9333', 'Stare Miasto', 'PL', 'Poznan', 0),
('37.47.2.143', '2017-12-10 18:29:09', '52.4167,16.9333', 'Stare Miasto', 'PL', 'Poznan', 0),
('212.122.194', '2017-12-19 12:54:54', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('37.47.240.2', '2017-12-26 19:28:17', '52.4167,16.9333', 'Stare Miasto', 'PL', 'Poznan', 0),
('82.146.252.', '2018-01-09 18:26:12', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('82.146.252.', '2018-01-09 20:46:20', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('82.146.252.', '2018-01-10 15:42:56', '53.1271,18.0200', 'Bydgoszcz', 'PL', 'Kujawsko-Pomorskie', 0),
('37.47.21.23', '2018-01-11 11:34:09', '52.4167,16.9333', 'Stare Miasto', 'PL', 'Poznan', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `id` int(11) NOT NULL,
  `imie` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `haslo` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`id`, `imie`, `nazwisko`, `email`, `haslo`, `status`) VALUES
(1, 'dar', 'dar', 'dar@wp.pl', 'dar', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `logi`
--

CREATE TABLE `logi` (
  `klient` int(11) NOT NULL,
  `ip` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `data` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `logi`
--

INSERT INTO `logi` (`klient`, `ip`, `data`) VALUES
(1, '82.146.252.3', '2018-01-11 17:39:37'),
(1, '82.146.252.3', '2018-01-11 17:40:20'),
(1, '82.146.252.3', '2018-01-11 17:48:14'),
(1, '82.146.252.3', '2018-01-12 17:15:44');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `logi2`
--

CREATE TABLE `logi2` (
  `idu` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `proby` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `logi2`
--

INSERT INTO `logi2` (`idu`, `data`, `proby`) VALUES
(1, '2018-01-13 23:44:24', 0),
(1, '2018-01-13 23:45:16', 0),
(1, '2018-01-13 23:45:21', 1),
(1, '2018-01-13 23:45:23', 1),
(1, '2018-01-13 23:45:25', 0),
(1, '2018-01-13 23:45:31', 1),
(1, '2018-01-13 23:45:36', 1),
(1, '2018-01-13 23:45:39', 0),
(1, '2018-01-13 23:53:10', 0),
(1, '2018-01-13 23:53:30', 0),
(1, '2018-01-13 23:53:36', 0),
(2, '2018-01-13 23:58:07', 0),
(2, '2018-01-14 00:00:11', 0),
(2, '2018-01-14 00:02:10', 0),
(3, '2018-01-14 00:03:15', 0),
(1, '2018-01-14 00:12:16', 0),
(1, '2018-01-14 16:30:36', 0),
(1, '2018-01-14 16:30:41', 1),
(1, '2018-01-14 16:30:43', 1),
(1, '2018-01-14 16:30:46', 0),
(1, '2018-01-14 16:30:53', 1),
(1, '2018-01-14 16:30:55', 1),
(1, '2018-01-14 16:30:57', 0),
(1, '2018-01-14 16:42:02', 0),
(1, '2018-01-14 16:42:07', 1),
(1, '2018-01-14 16:42:10', 1),
(1, '2018-01-14 16:42:12', 0),
(3, '2018-01-14 16:43:05', 0),
(1, '2018-01-14 16:51:55', 0),
(1, '2018-01-14 17:09:31', 1),
(1, '2018-01-14 17:09:38', 1),
(1, '2018-01-14 17:10:11', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `logiprac`
--

CREATE TABLE `logiprac` (
  `pracownik` int(11) NOT NULL,
  `ip` text COLLATE utf8_unicode_ci NOT NULL,
  `data` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `logiprac`
--

INSERT INTO `logiprac` (`pracownik`, `ip`, `data`) VALUES
(1, '82.146.252.3', '2018-01-11 17:38:57'),
(1, '82.146.252.3', '2018-01-11 17:39:55'),
(2, '82.146.252.3', '2018-01-12 17:16:03');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Pomiary`
--

CREATE TABLE `Pomiary` (
  `id` int(11) NOT NULL,
  `x1` int(11) NOT NULL,
  `x2` int(11) NOT NULL,
  `x3` int(11) NOT NULL,
  `x4` int(11) NOT NULL,
  `x5` int(11) NOT NULL,
  `datagodzina` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `szybkosc` int(11) NOT NULL,
  `pozar` int(11) NOT NULL,
  `zalanie` int(11) NOT NULL,
  `wlamanie` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `Pomiary`
--

INSERT INTO `Pomiary` (`id`, `x1`, `x2`, `x3`, `x4`, `x5`, `datagodzina`, `szybkosc`, `pozar`, `zalanie`, `wlamanie`) VALUES
(1, 12, 23, 21, 23, 45, '2017-12-02 11:25:10', 2, 1, 0, 1),
(2, 12, 32, 0, 0, 0, '2017-12-02 11:45:34', 0, 0, 0, 0),
(3, 0, 32, 0, 0, 0, '2017-12-02 11:45:39', 0, 0, 0, 0),
(4, 23, 32, 0, 0, 0, '2017-12-02 11:46:21', 0, 0, 0, 0),
(5, 12, 32, 34, 45, 23, '2017-12-02 11:56:35', 0, 0, 0, 0),
(6, 23, 23, 32, 32, 23, '2017-12-02 12:03:03', 1, 0, 0, 0),
(7, 23, 23, 32, 32, 23, '2017-12-02 12:03:10', 2, 0, 0, 0),
(8, 23, 23, 32, 32, 23, '2017-12-02 12:03:15', 2, 1, 1, 1),
(9, 23, 23, 32, 32, 23, '2017-12-02 12:03:58', 2, 1, 0, 0),
(10, 21, 22, 23, 24, 19, '2017-12-03 10:10:01', 1, 1, 1, 1),
(11, 20, 11, 23, 43, 20, '2017-12-03 10:15:13', 2, 1, 0, 1),
(12, 23, 46, 45, 44, 33, '2017-12-03 10:17:37', 1, 0, 1, 0),
(13, 32, 23, 32, 23, 32, '2017-12-03 10:18:46', 0, 1, 1, 1),
(14, 66, 43, 66, 44, 56, '2017-12-04 08:06:07', 0, 0, 0, 0),
(15, 20, 21, 22, 23, 20, '2017-12-04 13:33:12', 1, 1, 1, 1),
(16, 1, 2, 3, 4, 5, '2017-12-04 13:44:55', 2, 1, 1, 1),
(17, 4, 4, 5, 9, 9, '2017-12-04 13:50:42', 1, 1, 0, 1),
(18, 12, 12, 12, 12, 12, '2017-12-04 13:52:17', 2, 1, 1, 1),
(19, 12, 21, 12, 12, 22, '2017-12-04 13:57:39', 0, 0, 0, 0),
(20, 1, 1, 1, 1, 1, '2017-12-04 13:58:40', 0, 0, 0, 0),
(21, 12, 23, 12, 32, 32, '2017-12-04 14:04:38', 0, 0, 0, 0),
(22, 1, 22, 23, 12, 32, '2017-12-04 14:04:46', 0, 0, 0, 0),
(23, 23, 1, 32, 43, 1, '2017-12-04 14:06:17', 1, 1, 1, 1),
(24, 3, 3, 3, 12, 12, '2017-12-04 14:08:07', 2, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Pracownicy`
--

CREATE TABLE `Pracownicy` (
  `id` int(11) NOT NULL,
  `Pracownik` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `Pracownicy`
--

INSERT INTO `Pracownicy` (`id`, `Pracownik`) VALUES
(1, 'Jan Kowalski'),
(2, 'Mateusz Bąk'),
(3, 'Jan Kowalski'),
(4, 'Mateusz Bąk'),
(5, 'Mateusz Bąk'),
(6, 'Jan Kowalski'),
(7, 'Jan Kowalski'),
(8, 'Mateusz Bąk'),
(9, 'Jan Kowalski'),
(10, 'Jan Kowalski'),
(11, 'Jan Kowalski'),
(12, 'Mateusz Bąk');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id` int(11) NOT NULL,
  `imie` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `haslo` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`id`, `imie`, `nazwisko`, `email`, `haslo`, `status`) VALUES
(1, 'dam', 'dam', 'dam@wp.pl', 'dam', 0),
(2, 'www', 'www', 'www', 'www', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rozmowa`
--

CREATE TABLE `rozmowa` (
  `id` int(11) NOT NULL,
  `klient` int(11) NOT NULL,
  `pracownik` int(11) NOT NULL,
  `temat` int(11) NOT NULL,
  `iloscwej` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `rozmowa`
--

INSERT INTO `rozmowa` (`id`, `klient`, `pracownik`, `temat`, `iloscwej`) VALUES
(1, 1, 1, 3, 0),
(2, 1, 2, 3, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tresc`
--

CREATE TABLE `tresc` (
  `idr` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `tresc` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `odpowiedz` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `tresc`
--

INSERT INTO `tresc` (`idr`, `id`, `tresc`, `odpowiedz`) VALUES
(1, 1, 'Witam', ''),
(2, 1, '', 'Czesc'),
(3, 1, 'Nie chcę już.', ''),
(4, 2, 'Chce zrezygnowac', ''),
(5, 2, '', 'Dlaczego?');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` text COLLATE utf8_polish_ci NOT NULL,
  `haslo` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `login`, `haslo`) VALUES
(1, 'qwe', 'qwe'),
(3, '123', '123');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `pass` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `user`, `pass`) VALUES
(1, 'user1', 'pass1'),
(2, 'user2', 'pass2');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zagadnienie`
--

CREATE TABLE `zagadnienie` (
  `id` int(11) NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `zagadnienie`
--

INSERT INTO `zagadnienie` (`id`, `text`) VALUES
(1, 'Sprzedaż'),
(2, 'Pomoc'),
(3, 'Rezygnacja'),
(4, 'Inne problemy');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `domeny`
--
ALTER TABLE `domeny`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Pomiary`
--
ALTER TABLE `Pomiary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Pracownicy`
--
ALTER TABLE `Pracownicy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rozmowa`
--
ALTER TABLE `rozmowa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tresc`
--
ALTER TABLE `tresc`
  ADD PRIMARY KEY (`idr`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zagadnienie`
--
ALTER TABLE `zagadnienie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `domeny`
--
ALTER TABLE `domeny`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT dla tabeli `klienci`
--
ALTER TABLE `klienci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `Pomiary`
--
ALTER TABLE `Pomiary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT dla tabeli `Pracownicy`
--
ALTER TABLE `Pracownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `rozmowa`
--
ALTER TABLE `rozmowa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `tresc`
--
ALTER TABLE `tresc`
  MODIFY `idr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `zagadnienie`
--
ALTER TABLE `zagadnienie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
