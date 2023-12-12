DROP TABLE IF EXISTS directors CASCADE;
DROP TABLE IF EXISTS actors CASCADE; 
DROP TABLE IF EXISTS films CASCADE;
DROP TABLE IF EXISTS tv_series CASCADE;
DROP TABLE IF EXISTS tv_series_episodes CASCADE;
DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS permissions CASCADE;
DROP TABLE IF EXISTS streaming_services CASCADE;
DROP TABLE IF EXISTS genres CASCADE;
DROP TABLE IF EXISTS critics_films_reviews;
DROP TABLE IF EXISTS critics_tv_series_episodes_reviews;
DROP TABLE IF EXISTS streamings_films;
DROP TABLE IF EXISTS streamings_tv_series;
DROP TABLE IF EXISTS films_actors;
DROP TABLE IF EXISTS tv_series_episodes_actors;
DROP TABLE IF EXISTS users_permissions;
DROP TABLE IF EXISTS films_genres;
DROP TABLE IF EXISTS tv_series_genres;

CREATE TABLE directors(
	id SERIAL PRIMARY KEY,
	name varchar(256) not null,
	surname varchar(256) not null,
	patronymic varchar(256),
	birthday DATE not null,
	birthplace varchar(256) not null,
	sex CHAR(1) not null,
	zodiac varchar(256)
);

CREATE TABLE actors(
	id SERIAL PRIMARY KEY,
	name varchar(256) not null,
	surname varchar(256) not null,
	patronymic varchar(256),
	birthday DATE not null,
	birthplace varchar(256) not null,
	sex CHAR(1) not null,
	zodiac varchar(256)
);

CREATE TABLE films(
	id SERIAL PRIMARY KEY,
	title varchar(256) not null,
	year INT not null,
	duration TIME not null,
	director_id INTEGER NOT NULL REFERENCES directors(id)
);

CREATE TABLE tv_series(
	id SERIAL PRIMARY KEY,
	title varchar(256) not null,
	start_year INT not null,
	end_year INT not null,
	seasons_num INT not null,
	company varchar(256) not null
);

CREATE TABLE tv_series_episodes(
	id CHAR(6) PRIMARY KEY,
	title VARCHAR(256) not null,
	director_id INTEGER NOT NULL REFERENCES directors(id),
	tv_series_id INTEGER NOT NULL REFERENCES tv_series(id)
);

CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	login varchar(256) not null,
	password varchar(1024) not null, 
	name varchar(256) not null,
	surname varchar(256) not null,
	patronymic varchar(256),
	birthday DATE,
	-- Sex uses for determine sex:
	-- n = Not binary;
	-- m = Male;
	-- f = Female;
	sex CHAR(1)
);

CREATE TABLE permissions(
	id SERIAL PRIMARY KEY,
	name varchar(256) not null
);

CREATE TABLE streaming_services(
	id SERIAL PRIMARY KEY,
	name varchar(256) not null,
	rating NUMERIC(2,1) not null,
	owner varchar(256) not null
);

CREATE TABLE genres(
	id SERIAL PRIMARY KEY,
	name varchar(256) not null
);

CREATE TABLE critics_films_reviews(
	id SERIAL PRIMARY KEY,
	critic_id INTEGER NOT NULL REFERENCES users(id),
	film_id INTEGER NOT NULL REFERENCES films(id),
	review varchar(1024) not null
);

CREATE TABLE critics_tv_series_episodes_reviews(
	id SERIAL PRIMARY KEY,
	critic_id INTEGER NOT NULL REFERENCES users(id),
	tv_series_episode_id CHAR(6) NOT NULL REFERENCES tv_series_episodes(id),
	review varchar(1024) not null
);

CREATE TABLE streamings_films(
	film_id INTEGER NOT NULL REFERENCES films(id),
	streaming_id INTEGER NOT NULL REFERENCES streaming_services(id),
	rating NUMERIC(2,1) not null,
	in_subscription BOOLEAN,
	PRIMARY KEY(film_id, streaming_id)
);

CREATE TABLE streamings_tv_series(
	tv_series_id INTEGER NOT NULL REFERENCES tv_series(id),
	streaming_id INTEGER NOT NULL REFERENCES streaming_services(id),
	rating NUMERIC(2,1) not null,
	in_subscription BOOLEAN,
	PRIMARY KEY(tv_series_id, streaming_id)
);

CREATE TABLE films_actors(
	film_id INTEGER NOT NULL REFERENCES films(id),
	actor_id INTEGER NOT NULL REFERENCES actors(id),
	role varchar(256),
	PRIMARY KEY(film_id, actor_id)
);

CREATE TABLE tv_series_episodes_actors(
	tv_series_episode_id CHAR(6) NOT NULL REFERENCES tv_series_episodes(id),
	actor_id INTEGER NOT NULL REFERENCES actors(id),
	tv_series_id integer NOT NULL REFERENCES tv_series(id),
	role varchar(256),
	PRIMARY KEY(tv_series_episode_id, actor_id)
);

CREATE TABLE users_permissions(
	user_id INTEGER NOT NULL REFERENCES users(id),
	permission_id INTEGER NOT NULL REFERENCES permissions(id),
	PRIMARY KEY(user_id, permission_id)
);

CREATE TABLE films_genres(
	film_id INTEGER NOT NULL REFERENCES films(id),
	genre_id INTEGER NOT NULL REFERENCES genres(id),
	PRIMARY KEY(film_id, genre_id)
);

CREATE TABLE tv_series_genres(
	tv_series_id INTEGER NOT NULL REFERENCES tv_series(id),
	genre_id INTEGER NOT NULL REFERENCES genres(id),
	PRIMARY KEY(tv_series_id, genre_id)
);



