-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 26 2023 г., 20:58
-- Версия сервера: 5.7.33-log
-- Версия PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `books`
--

-- --------------------------------------------------------

--
-- Структура таблицы `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `img` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `book`
--

INSERT INTO `book` (`id`, `name`, `author`, `cost`, `date`, `img`, `second_id`) VALUES
(1, 'Я в технике психоанализа', 'Жак Лакан', 110, '2023-02-22 13:11:41', '1.jpg', 1),
(2, 'Тревога', 'Жак Лакан', 111, '2023-02-22 13:11:41', '1.jpg', 2),
(3, 'Перенос', 'Жак Лакан', 100, '2023-02-22 13:12:35', '1.jpg', 3),
(4, 'Желание и его интерпретация', 'Жак Лакан', 100, '2023-02-22 13:12:35', '1.jpg', 4),
(5, 'Образования бессознательного', 'Жак Лакан', 160, '2023-02-22 13:13:08', '1.jpg', 5),
(6, 'L’identification', 'Жак Лакан', 100, '2023-02-22 23:12:54', '1.jpg', 6),
(7, 'Logique Du Fantasme', 'Жак Лакан', 110, '2023-02-22 23:13:41', '1.jpg', 7),
(8, 'The Object Relation', 'Жак Лакан', 100, '2023-02-22 23:14:48', '1.jpg', 8),
(9, 'On a Discourse Be a Semblance', 'Жак Лакан', 130, '2023-02-22 23:16:13', '1.jpg', 9),
(10, 'Joyce and the Sinthome', 'Жак Лакан', 165, '2023-02-22 23:16:13', '1.jpg', 10),
(11, 'Желание одержимого ', 'А.Смулянский', 100, '2023-02-22 23:22:42', '1.jpg', 11),
(12, 'Метафора отца', 'А.Смулянский', 100, '2023-02-22 23:22:42', '1.jpg', 12);

-- --------------------------------------------------------

--
-- Структура таблицы `book_lang`
--

CREATE TABLE `book_lang` (
  `id` int(11) NOT NULL,
  `name_id` int(50) NOT NULL,
  `name_lang_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `book_lang`
--

INSERT INTO `book_lang` (`id`, `name_id`, `name_lang_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 3),
(7, 7, 3),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 1),
(12, 12, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `description`
--

CREATE TABLE `description` (
  `id` int(11) NOT NULL,
  `book_id` int(50) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `description`
--

INSERT INTO `description` (`id`, `book_id`, `description`) VALUES
(1, 1, 'В действительности садистское отношение подразумевает причастность согласия партнера — его свободы, его признания, его унижения. Доказательством тому служат так называемые сложные формы садизма. Не правда ли, большинство садистских проявлений, оставаясь далеки от крайностей, останавливаются, скорее, на пороге исполнения угроз — играя ожиданием, страхом другого, давлением, угрозой, наблюдая за более или менее тайными формами участия партнера?\r\n'),
(2, 2, 'Анализ - это правильно организованный бред.\r\n'),
(3, 3, 'Я мыслю там, где я не есть, и я есть там, где я не мыслю.\r\n'),
(4, 4, '...скажем, вслед за Раймоном де Соссюром, что мир субъекта является его собственной галлюцинацией.\r\n'),
(5, 5, 'Сверх-Я — это просто-напросто речь, которая не говорит ничего\r\n'),
(6, 6, 'Любовь, любовь того, кто желает быть любимым, является по сути попыткой захватить другого в ловушку себя самого.'),
(7, 7, 'Желание человека получает свой смысл в желании другого.'),
(8, 8, 'Наиболее примитивный способ человеческих отношений - это, безусловно, поглощение плоти себе подобного. Отсюда ясна становится функция тотемизма - она состоит в том, чтобы сделать субъект по отношению к себе подобному трансцендентным\r\n'),
(9, 9, 'За истину, конечно, сражаются, но причиной тому ее связь с Реальным. Однако то, что это происходит, куда маловажнее того, что это производит. Эффект истины - это пропажа знания. Эта пропажа и обусловливает скорейшее возобновление производства. Что касается Реального, то ему от этого ни жарко, ни холодно. С него, как с гуся вода - до следующего кризиса. Оно даже выигрывает, возвращая себе на время свой блеск. Это блеск, которого от любых революций ждать бесполезно - тот блеск, что мог бы воссиять на месте, всегда неспокойном, истины. Беда лишь в том, что блеск этот ослепителен - в нем не видно ни зги.\r\n'),
(10, 10, 'Весь прогресс психологии собственного Я может быть резюмирован следующим образом: собственное Я структурировано точно так же, как симптом. Внутри субъекта оно представляет собой всего-навсего привилегированный симптом. Это исключительно человеческий симптом, душевная болезнь человека.\r\n'),
(11, 11, 'Искусство аналитика должно состоять в том, чтобы постепенно лишить субъекта всякой уверенности, пока не рассеются последние призраки ее.'),
(12, 12, 'В основе современности лежит изначальная мизкреация, промахнувшаяся попытка творения.');

-- --------------------------------------------------------

--
-- Структура таблицы `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `name_lang` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `language`
--

INSERT INTO `language` (`id`, `name_lang`) VALUES
(1, 'ru'),
(2, 'en'),
(3, 'fr');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`) VALUES
(1, 'login', '123');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `second_id` (`second_id`);

--
-- Индексы таблицы `book_lang`
--
ALTER TABLE `book_lang`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `description`
--
ALTER TABLE `description`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `book_lang`
--
ALTER TABLE `book_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `description`
--
ALTER TABLE `description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`second_id`) REFERENCES `book` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
