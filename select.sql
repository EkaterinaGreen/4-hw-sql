--количество исполнителей в каждом жанре;
select gt.genre , count(mt.id)
from genre_table gt
join musician_gengre mg on gt.id = mg.g_id 
join musician_table mt on mt.id = mg.m_id
group by gt.genre

--количество треков, вошедших в альбомы 2019-2020 годов;
select count(tt.id) 
from track_table tt 
join album_table at2 on tt.album_id = at2.id 
where 
at2.year_of_release >= '2019-01-01' and at2.year_of_release < '2021-01-01'

--средняя продолжительность треков по каждому альбому;
select at2.album_name , avg(tt.duration) 
from
album_table at2 
join track_table tt on tt.album_id = at2.id
group by at2.album_name 
order by avg(tt.duration) 

--все исполнители, которые не выпустили альбомы в 2020 году;
select distinct (mt.nickname)
from musician_table mt 
join musician_album ma on ma.m_id = mt.id 
join album_table at2 on at2.id = ma.a_id 
where
at2.year_of_release NOT BETWEEN '2020-01-01' AND '2021-01-01';

--названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
select c.cllection_name , mt.nickname  
from collection c 
join track_collection tc on tc.t_id = c.id 
join track_table tt on tt.id = tc.t_id 
join album_table at2 on at2.id = tt.album_id 
join musician_album ma on ma.a_id = at2.id
join musician_table mt on mt.id = ma.m_id 
where 
mt.nickname like '%Стерео%'

--название альбомов, в которых присутствуют исполнители более 1 жанра;
select at2.album_name , count(gt.id) 
from album_table at2 
join musician_album ma on ma.a_id = at2.id
join musician_table mt on mt.id = ma.m_id 
join musician_gengre mg on mt.id =mg.m_id 
join genre_table gt  on gt.id = mg.g_id 
GROUP BY at2.album_name
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC;

--наименование треков, которые не входят в сборники;
select tt.track_name 
from track_table tt 
left join track_collection tc on tc.t_id = tt.id 
left join collection c on c.id = tc.t_id 
where tc.c_id  is null

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
select mt.nickname , min(tt.duration)
from musician_table mt 
join musician_album ma on ma.m_id = mt.id 
join album_table at2 on at2.id = ma.a_id 
join track_table tt on tt.album_id  = at2.id 
group by mt.nickname  
order by min(tt.duration) desc;

select distinct(mt.nickname)
from musician_table mt 
join musician_album ma on ma.m_id = mt.id 
join album_table at2 on at2.id = ma.a_id 
join track_table tt on tt.album_id  = at2.id
where tt.duration in (select min(tt.duration) from track_table tt  )

--название альбомов, содержащих наименьшее количество треков.
select distinct (at2.album_name) 
from album_table at2 
left join track_table tt on tt.album_id = at2.id
where tt.album_id  in (select album_id from track_table 
group by album_id 
having count(id) = (
        select count(id)
        from track_table
        group by album_id
        order by count
        limit 1)
        )
        order by at2.album_name



