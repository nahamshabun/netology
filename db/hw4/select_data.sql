-- название и год выхода альбомов, вышедших в 2018 году
select a.title, a.release_year
from album a
where a.release_year = 2018;

--название и продолжительность самого длительного трека
select t.title, t.duration
from track t
order by t.duration desc
limit 1;

--название треков, продолжительность которых не менее 3,5 минуты
select t.title
from track t
where t.duration >= 210;

--названия сборников, вышедших в период с 2018 по 2020 год включительно
select ca.title
from compilation_album ca
where ca.release_year between 2018 and 2020;

--исполнители, чье имя состоит из 1 слова
select a.name
from artist a
where a.name not like '% %';

--название треков, которые содержат слово "мой"/"my"
select t.title
from track t
where t.title like '% my%'; 
or t.title like '%my %' 
or t.title like '% мой%'
or t.title like '%мой %'; 