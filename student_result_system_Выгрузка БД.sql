-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 31 2023 г., 15:01
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `student_result_system`
--

-- --------------------------------------------------------

--
-- Структура таблицы `directions`
--

CREATE TABLE `directions` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `CourseCode` varchar(50) DEFAULT NULL,
  `Faculty` varchar(100) DEFAULT NULL,
  `Director` varchar(100) DEFAULT NULL,
  `Teacher` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `directions`
--

INSERT INTO `directions` (`ID`, `Name`, `CourseCode`, `Faculty`, `Director`, `Teacher`) VALUES
(1, 'Фундаментальная информатика', '002121', 'ИМИТ', 'Алексеев А. А.', 'Иванов И. И.'),
(2, 'Прикладная информатика', '002122', 'ИМИТ', 'Алексеев А. А.', 'Филатов И. И.');

-- --------------------------------------------------------

--
-- Структура таблицы `modules`
--

CREATE TABLE `modules` (
  `ID` int(50) NOT NULL,
  `Name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modules`
--

INSERT INTO `modules` (`ID`, `Name`) VALUES
(1, 'Алгебра'),
(2, 'Физика'),
(3, 'Русский язык');

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `StudentID` int(11) NOT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Firstname` varchar(45) DEFAULT NULL,
  `Patronymic` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `DOB` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Course` varchar(45) DEFAULT NULL,
  `CourseCode` varchar(45) DEFAULT NULL,
  `Module1` varchar(45) DEFAULT NULL,
  `Module2` varchar(45) DEFAULT NULL,
  `Module3` varchar(45) DEFAULT NULL,
  `Module4` varchar(45) DEFAULT NULL,
  `Module5` varchar(45) DEFAULT NULL,
  `Module6` varchar(45) DEFAULT NULL,
  `Module7` varchar(45) DEFAULT NULL,
  `Module8` varchar(45) DEFAULT NULL,
  `Score1` int(2) DEFAULT NULL,
  `Score2` int(2) DEFAULT NULL,
  `Score3` int(2) DEFAULT NULL,
  `Score4` int(2) DEFAULT NULL,
  `Score5` int(2) DEFAULT NULL,
  `Score6` int(2) DEFAULT NULL,
  `Score7` int(2) DEFAULT NULL,
  `Score8` int(2) DEFAULT NULL,
  `TotalScore` double DEFAULT NULL,
  `Ranking` varchar(45) DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`StudentID`, `LastName`, `Firstname`, `Patronymic`, `Address`, `Gender`, `Phone`, `DOB`, `Email`, `Course`, `CourseCode`, `Module1`, `Module2`, `Module3`, `Module4`, `Module5`, `Module6`, `Module7`, `Module8`, `Score1`, `Score2`, `Score3`, `Score4`, `Score5`, `Score6`, `Score7`, `Score8`, `TotalScore`, `Ranking`, `Date`) VALUES
(123, 'sdfsdf', 'sdfsd', 'sdfsd', 'sdfvsdf', 'Мужской', 'sdfsd', 'sdfds', 'Прикладная информатика', 'ДБ09832', 'sdfsdf', 'Математический анализ', 'Физика', 'Информационные системы', 'Математический анализ', 'Вычислительные технологии', 'Информационные системы', 'Математический анализ', 'Физика', 5, 5, 5, 5, 5, 5, 5, 5, 5, 'Хорошо', '28-окт.-2023');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `directions`
--
ALTER TABLE `directions`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `directions`
--
ALTER TABLE `directions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modules`
--
ALTER TABLE `modules`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
