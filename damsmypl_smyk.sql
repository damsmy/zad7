-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 14 Sty 2018, 17:58
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

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
