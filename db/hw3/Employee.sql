create table if not exists Employee (
	id serial primary key,
	boss_id integer references Employee(id),
	name varchar(100) not null,
	department varchar(150) not null
);