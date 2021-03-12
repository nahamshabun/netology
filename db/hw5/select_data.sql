-- количество исполнителей в каждом жанре
select 
	g.name as "Название жанра", 
	count(ag.artist_id) as "Количество исполнителей" 
from genre g
left join artist_genre ag 
	on ag.genre_id = g.id
group by g.name;

-- количество треков, вошедших в альбомы 2019-2020 годов
select
	a.release_year as "Год",
	count(t.title) as "Количество треков"
from track t
join album a
	on t.album_id = a.id
where a.release_year between 2019 and 2020
group by a.release_year;

-- средняя продолжительность треков по каждому альбому;
select 
	round(avg(t.duration)) as "Средняя продолжительность трека",
	a.title as "Название альбома"
from track t
join album a
	on t.album_id = a.id
group by a.title;

-- все исполнители, которые не выпустили альбомы в 2020 году;
select a.name
from artist a
where a.id not in (
	select ar.id
	from artist_album aa
	join album al on aa.album_id = al.id
	join artist ar on aa.artist_id = ar.id
	where al.release_year = 2000);
	
-- названия сборников, в которых присутствует конкретный исполнитель (выберите сами)
select ca.title
from compilation_album_track cat
join compilation_album ca 
	on ca.id = cat.compilation_album_id
join track t 
	on cat.track_id = t.id
join album al
	on al.id = t.album_id
join artist_album aa 
	on aa.album_id = al.id
join artist ar
	on aa.artist_id = ar.id
where ar.name = 'Eric Clapton';

-- название альбомов, в которых присутствуют исполнители более 1 жанра
select al.title
from artist_album aa
join album al on aa.album_id = al.id
join artist ar on ar.id = aa.artist_id
where ar.name in (
	select a.name
	from artist a
	join artist_genre ag 
		on a.id = ag.artist_id
	group by a.name
	having count(ag.genre_id) > 1);

-- наименование треков, которые не входят в сборники
select t.title
from track t
left join compilation_album_track cat
	on t.id = cat.track_id
where cat.compilation_album_id is null;

-- исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)
select ar.name
from artist ar
join artist_album aa
	on aa.artist_id = ar.id
join track t
	on t.album_id = aa.album_id
where t.duration = (select min(t.duration) from track t);

-- название альбомов, содержащих наименьшее количество треков
select a.title
from album a
where a.id in (
	select t.album_id
	from track t
	group by t.album_id
	having count(t.id) = (
		select count(t.id)
		from track t 
		group by t.album_id
		order by count(t.id) asc
		limit 1));