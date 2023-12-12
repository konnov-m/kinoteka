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
(2, 'Тим', 'Ван Паттен', '', '10.06.1959', 'Нью-Йорк', 'm');

UPDATE directors
SET zodiac =
	CASE
		WHEN(EXTRACT(MONTH FROM birthday) = 3 AND EXTRACT(DAY FROM birthday) >= 21) OR (EXTRACT(MONTH FROM birthday) = 4 AND EXTRACT(DAY FROM birthday) <= 20) THEN 'Овен'
		WHEN(EXTRACT(MONTH FROM birthday) = 4 AND EXTRACT(DAY FROM birthday) >= 21) OR (EXTRACT(MONTH FROM birthday) = 5 AND EXTRACT(DAY FROM birthday) <= 20) THEN 'Телец'
		WHEN(EXTRACT(MONTH FROM birthday) = 5 AND EXTRACT(DAY FROM birthday) >= 21) OR (EXTRACT(MONTH FROM birthday) = 6 AND EXTRACT(DAY FROM birthday) <= 21) THEN 'Близнецы'
		WHEN(EXTRACT(MONTH FROM birthday) = 6 AND EXTRACT(DAY FROM birthday) >= 22) OR (EXTRACT(MONTH FROM birthday) = 7 AND EXTRACT(DAY FROM birthday) <= 22) THEN 'Рак'
		WHEN(EXTRACT(MONTH FROM birthday) = 7 AND EXTRACT(DAY FROM birthday) >= 23) OR (EXTRACT(MONTH FROM birthday) = 8 AND EXTRACT(DAY FROM birthday) <= 23) THEN 'Лев'
		WHEN(EXTRACT(MONTH FROM birthday) = 8 AND EXTRACT(DAY FROM birthday) >= 24) OR (EXTRACT(MONTH FROM birthday) = 9 AND EXTRACT(DAY FROM birthday) <= 23) THEN 'Дева'
		WHEN(EXTRACT(MONTH FROM birthday) = 9 AND EXTRACT(DAY FROM birthday) >= 24) OR (EXTRACT(MONTH FROM birthday) = 10 AND EXTRACT(DAY FROM birthday) <= 23) THEN 'Весы'
		WHEN(EXTRACT(MONTH FROM birthday) = 10 AND EXTRACT(DAY FROM birthday) >= 24) OR (EXTRACT(MONTH FROM birthday) = 11 AND EXTRACT(DAY FROM birthday) <= 22) THEN 'Скорпион'
		WHEN(EXTRACT(MONTH FROM birthday) = 11 AND EXTRACT(DAY FROM birthday) >= 23) OR (EXTRACT(MONTH FROM birthday) = 12 AND EXTRACT(DAY FROM birthday) <= 21) THEN 'Стрелец'
		WHEN(EXTRACT(MONTH FROM birthday) = 12 AND EXTRACT(DAY FROM birthday) >= 22) OR (EXTRACT(MONTH FROM birthday) = 1 AND EXTRACT(DAY FROM birthday) <= 20) THEN 'Козерог'
		WHEN(EXTRACT(MONTH FROM birthday) = 1 AND EXTRACT(DAY FROM birthday) >= 21) OR (EXTRACT(MONTH FROM birthday) = 2 AND EXTRACT(DAY FROM birthday) <= 20) THEN 'Водолей'
		WHEN(EXTRACT(MONTH FROM birthday) = 2 AND EXTRACT(DAY FROM birthday) >= 21) OR (EXTRACT(MONTH FROM birthday) = 3 AND EXTRACT(DAY FROM birthday) <= 20) THEN 'Рыбы'
		ELSE '-'
	END;

INSERT INTO actors (id, name, surname, patronymic, birthday, birthplace, sex) VALUES
(1, 'Райан', 'Томас Гослинг', '', '12.11.1980', 'Лондон, Онтарио, Канада', 'm'),
(2, 'Киллиан', 'Мерфи', '', '25.05.1976', 'Дуглас, Корк, Ирландия', 'm'),
(3, 'Питер', 'Хейден Динклэйдж', '', '11.06.1969', 'Морристаун, Нью-Джерси, США', 'm');

INSERT INTO films (id, title, year, duration, director_id) VALUES
(1, 'Оппенгеймер', 2023, '03:00', 1);

INSERT INTO tv_series (id, title, start_year, end_year, seasons_num, company) VALUES
(1, 'Игра престолов', 2011, 2019, 8, 'HBO');

INSERT INTO tv_series_episodes (id, title, director_id, tv_series_id) VALUES
('s01e01', 'Зима близко', 2, 1);

INSERT INTO users (id, login, password, name, surname, patronymic, birthday, sex) VALUES
(1, 'rarelywherevervacant@dot.com', '2AultRylC8qkVGeFauycauZ7yVtG2UFg', 'Илья', 'Оразов', 'Витальевич', '21.02.2002', 'm');

INSERT INTO permissions (id, name) VALUES
(1, 'critic');

INSERT INTO streaming_services (id, name, rating, owner) VALUES
(1, 'HBO MAX', '9.2', 'HBO'),
(2, 'Apple TV', '9.8', 'Apple Inc.');

INSERT INTO genres (id, name) VALUES
(1, 'Биография'),
(2, 'Фэнтези');

INSERT INTO critics_films_reviews (critic_id, film_id, review) VALUES
(1, 1, 'Офигенный фильм, Киллиан Мерфи Острый пузырек - топ актер');

INSERT INTO critics_tv_series_episodes_reviews (id, critic_id, tv_series_episode_id, review) VALUES
(1, 1, 's01e01', 'С этой серии началась великая сага о Вестеросе');

INSERT INTO streamings_films (film_id, streaming_id, rating, in_subscription) VALUES
(1, 2, '9.8', TRUE);

INSERT INTO streamings_tv_series (tv_series_id, streaming_id, rating, in_subscription) VALUES
(1, 1, '9.2', TRUE);

INSERT INTO films_actors (film_id, actor_id, role) VALUES
(1, 2, 'Роберт Оппенгеймер');

INSERT INTO tv_series_episodes_actors (tv_series_episode_id, actor_id, role, tv_series_id) VALUES
('s01e01', 3, 'Тирион Ланнистер', 1);

INSERT INTO users_permissions (user_id, permission_id) VALUES
(1, 1);

INSERT INTO films_genres (film_id, genre_id) VALUES
(1, 1);

INSERT INTO tv_series_genres (tv_series_id, genre_id) VALUES
(1, 2);
