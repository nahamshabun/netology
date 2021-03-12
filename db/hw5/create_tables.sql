create table if not exists genre (
	id serial primary key,
	name varchar(50) not null unique
);

create table if not exists artist (
	id serial primary key,
	name varchar(100) not null unique
);

create table if not exists artist_genre (
	artist_id integer references artist(id),
	genre_id integer references genre(id),
	constraint artist_genre_pk primary key (artist_id, genre_id)
);

create table if not exists album (
	id serial primary key,
	title varchar(256) not null, 
	release_year integer not null check(release_year > 0)
);

create table if not exists artist_album (
	artist_id integer references artist(id),
	album_id integer references album(id),
	constraint artist_album_pk primary key (artist_id, album_id)
);

create table if not exists track (
	id serial primary key,
	album_id integer references album(id),
	title varchar(100) not null,
	duration integer not null check(duration > 0)
);

create table if not exists compilation_album (
	id serial primary key,
	title varchar(256) not null,
	release_year integer not null check(release_year > 0)
);

create table if not exists compilation_album_track (
	track_id integer references track(id),
	compilation_album_id integer references  compilation_album(id),
	constraint compilation_album_track_pk primary key (track_id, compilation_album_id)
);