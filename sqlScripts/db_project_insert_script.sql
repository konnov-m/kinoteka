SET datestyle TO "ISO, DMY";
SET client_encoding='utf-8';
DELETE FROM directors;
DELETE FROM films;
DELETE FROM critics_films_reviews;
DELETE FROM critics_tv_series_episodes_reviews;
DELETE FROM streamings_films;
DELETE FROM streamings_tv_series;
DELETE FROM films_actors;
DELETE FROM tv_series;
DELETE FROM tv_series_episodes;
DELETE FROM tv_series_episodes_actors;
DELETE FROM films_genres;
DELETE FROM tv_series_genres;

INSERT INTO directors (id, name, surname, patronymic, birthday, birthplace, sex) VALUES
(1, 'Кристофер', 'Джонатан Джеймс Нолан', '', '30.07.1970', 'Лондон', 'm'),
(2, 'Тим', 'Ван Паттен', '', '10.06.1959', 'Нью-Йорк', 'm'),
(3,'Стивен', 'Спилберг', '', '18.12.1946', 'Кингстон, США', 'm'),
(4,'Квентин', 'Тарантино', '', '27.03.1963', 'Ноксвил, США', 'm'),
(5,'Алексей', 'Балабанов', '', '25.02.1959', 'Свердловск, Россия', 'm'),
(6,'Джеймс','Кэмерон','','16.08.1954','Онтарио, США','m'),
(7,'Дэвид ','Финчер','','28.08.1962',' Колорадо, США','m'),
(8,'Ридли','Скотт','','30.11.1937','Саут-Шилдс, Англия, Великобритания','m'),
(9,'Стивен ','Спилберг','','18.12.1946','Цинциннати, США','m'),
(10,'Сэм', 'Эсмейл', '', '17.01.1977', 'Хобокен, Нью-Джерси, США','m'),
( 11,'Винс', 'Гиллиган','','10.02.1967', 'Ричмонд, Виргиния, США', 'm'),
(12, 'Гай',  'Ричи', '', '10.09.1968', 'Хатфилд, Хартвордшир, Англия, Великобритания', 'm'),
(13, 'Сэм','Рэйми', '' , '23.10.1959', 'Ройал-Оак, Мичиган, США', 'm'),
(14, 'Хаяо','Миядзаки', '', '5.01.1941', 'Токио, Японская империя', 'm');

INSERT INTO actors (id, name, surname, patronymic, birthday, birthplace, sex) VALUES
(1, 'Райан', 'Томас Гослинг', '', '12.11.1980', 'Лондон, Онтарио, Канада', 'm'),
(2, 'Киллиан', 'Мерфи', '', '25.05.1976', 'Дуглас, Корк, Ирландия', 'm'),
(3, 'Питер', 'Хейден Динклэйдж', '', '11.06.1969', 'Морристаун, Нью-Джерси, США', 'm'),
(4, 'Кристиан', 'Бэйл', '', '30.01.1974', ' Уэльс, Англия', 'm'),
(5,'Леонардо', 'ДиКаприо', '', '11.11.1974', 'Лос-Анджелес, США', 'm'),
(6,'Брэд', ' Питт', '', '18.12.1963', ' Оклахома, США', 'm'),
(7,'Эдвард', ' Нортон', '', '18.08.1969', ' Бостон, Массачусетс, США', 'm'),
(8,'Рами', 'Малек', '','12.05.1981','Лос-Анджелес, Калифорния, США','m'),
(9,'Сэмюэл', 'Л. Джексон','','21.12.1948', 'Вашингтон, округ Колумбия, США', 'm'),
(10,'Брайан', 'Крэнстон','','7.03.1956', 'Сан-Фернандо, Калифорния, США', 'm'),
(11, 'Мэтью', 'Макконахи', '', '4.11.1969', 'Увалд, Техас, США', 'm'),
(12, 'Сергей', 'Бодров', '', '27.12.1971', 'Москва, СССР', 'm'),
(13, 'Тоби',  'Магуайр', '', '27.06.1975','Санта-Моника, штат Калифорния, США', 'm');

INSERT INTO films (id, title, year, duration, director_id) VALUES
(1, 'Оппенгеймер', 2023, '03:00', 1),
(2, 'Бойцовский клуб', 1999, '02:19', 7),
(3, 'Начало', 2010, '02:19', 1),
(4, 'Криминальное чтиво', 1994, '02:34', 4),
(5, 'Джентльмены', 2019 , '1:53', 11 ),
(6, 'Брат', 1997, '1:40', 5),
(7, 'Брат 2', 2000,  '2:07', 5),
(8, 'Человек-паук', 2002, '2:01', 12),
(9, 'Человек-паук 2', 2004, '2:07', 12),
(10, 'Человек-паук 3', 2007, '2:19', 12),
(11, 'Ходячий замок', 2004, '1:59', 13),
(12, 'Бесславные ублюдки', 2009, '2:34', 4),
(13, 'Однажды в... Голливуде', 2019, '2:41', 4)

;
INSERT INTO tv_series (id, title, start_year, end_year, seasons_num, company) VALUES
(1, 'Игра престолов', 2011, 2019, 8, 'HBO'),
(2, 'Mr. Robot', 2015, 2019, 4, 'USA Network'),
(3, 'Во все тяжкие', 2008, 2013, 5, 'AMC'),
(4, 'Лучше звоните Солу', 2015, 2022, 6, 'AMC')


;

INSERT INTO tv_series_episodes (id, title, director_id, tv_series_id) VALUES
('1s01e01', 'Зима близко', 2, 1),
('2s01e01', 'Приветдруг.mov', 9, 2),
('3s01e01', 'Пилот', 10, 3),
('4s01e01', 'Уно', 10, 4);

INSERT INTO users (id, login, password, name, surname, patronymic, birthday, sex) VALUES
(1, 'rarelywherevervacant@dot.com', '2AultRylC8qkVGeFauycauZ7yVtG2UFg', 'Илья', 'Оразов', 'Витальевич', '21.02.2002', 'm'),
(2, 'gmail@com.dot', 'qwerty22', 'Михаил', 'Коннов', 'Юрьевич', '28.06.2002', 'm'),
(3, 'email@com.dot', 'qwerty22', 'Кирилл', 'Волков', 'Юрьевич', '20.11.2002', 'm');

INSERT INTO permissions (id, name) VALUES
(1, 'critic'),
(2, 'ROLE_USER'),
(3, 'ROLE_ADMIN');

INSERT INTO streaming_services (id, name, rating, owner) VALUES
(1, 'HBO MAX', '9.2', 'HBO'),
(2, 'Apple TV', '9.8', 'Apple Inc.'),
(3, 'Кинопоиск', '2', 'Яндекс'),
(4, 'ivi', '0', 'ООО «Иви.ру»');

INSERT INTO genres (id, name) VALUES
(1, 'Биография'),
(2, 'Фэнтези'),
(3,'Триллер'),
(4, 'Драма'),
(5, 'Фантастика'),
(6, 'Криминал'),
(7, 'Комедия'),
(8, 'Боевик') ;

INSERT INTO critics_films_reviews (critic_id, film_id, review) VALUES
(1, 1, 'Офигенный фильм, Киллиан Мерфи Острый пузырек - топ актер'),
(2, 3, 'review...'),
(3, 5, 'review...');

INSERT INTO critics_tv_series_episodes_reviews (critic_id, tv_series_episode_id, review) VALUES
(1, '1s01e01', 'С этой серии началась великая сага о Вестеросе'),
(3, '2s01e01', 'review...'),
(3, '3s01e01', 'review...');

INSERT INTO streamings_films (film_id, streaming_id, rating, in_subscription) VALUES
(1, 2, '9.8', TRUE),
(2, 3, '8.7', TRUE),
(3, 3, '8.7', FALSE),
(4, 3, '8.7', TRUE);

INSERT INTO streamings_tv_series (tv_series_id, streaming_id, rating, in_subscription) VALUES
(1, 1, '9.2', TRUE),
(1, 2, '7.8', TRUE),
(1, 3, '8.9', FALSE);

INSERT INTO films_actors (film_id, actor_id, role) VALUES
(1, 2, 'Роберт Оппенгеймер'),
(2, 6, 'Тайлер Дерден'),
(3, 5, 'Кобб'),
(4 ,9, 'Джулс Винфилд'),
(5, 11, 'Мишель Пирсон'),
(6, 12, 'Данила'),
(7, 12, 'Данила'),
(8, 13, 'Питер Паркер'),
(9, 13, 'Питер Паркер'),
(10, 13, 'Питер Паркер'),
(12, 6, 'Альдо Рейн'),
(13, 6, 'Рик Далтон'),
(13, 5, 'Клифф Бут')
;

INSERT INTO tv_series_episodes_actors (tv_series_episode_id, actor_id, role, tv_series_id) VALUES
('1s01e01', 3, 'Тирион Ланнистер', 1),
('2s01e01', 8, 'Эллиот Андерсон', 2),
('3s01e01', 10, 'Уолтер Белый', 3);

INSERT INTO users_permissions (user_id, permission_id) VALUES
(2, 1), (3, 1), (2, 3);

INSERT INTO films_genres (film_id, genre_id) VALUES
(1, 1), (2, 3), (3, 3), (4, 6), (5, 5);

INSERT INTO tv_series_genres (tv_series_id, genre_id) VALUES
(1, 2),(2, 3), (3,6) ;