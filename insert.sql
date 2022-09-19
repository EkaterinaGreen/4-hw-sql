--не менее 8 исполнителей;
INSERT INTO musician_table(id, nickname) 
VALUES(default, 'Стереополина');
INSERT INTO musician_table(id, nickname) 
VALUES(default, 'Joy Division');
INSERT INTO musician_table(id, nickname) 
VALUES(default, 'Ty Segall');
INSERT INTO musician_table(id, nickname) 
VALUES(default, 'Макулатура');
INSERT INTO musician_table(id, nickname) 
VALUES(default, 'Ночные грузчики');
INSERT INTO musician_table(id, nickname) 
VALUES(default, '4 позиции бруно');
INSERT INTO musician_table(id, nickname) 
VALUES(default, 'Эхо прокуренных подъездов');
INSERT INTO musician_table(id, nickname) 
VALUES(default, 'the smiths');
--не менее 5 жанров;
INSERT INTO genre_table(id, genre) 
VALUES(default, 'синтипоп');
INSERT INTO genre_table(id, genre) 
VALUES(default, 'реп');
INSERT INTO genre_table(id, genre) 
VALUES(default, 'гаражный рок');
INSERT INTO genre_table(id, genre) 
VALUES(default, 'абстрактный хип-хоп');
INSERT INTO genre_table(id, genre) 
VALUES(default, 'инди');
--не менее 8 альбомов;
INSERT INTO album_table(id, album_name,year_of_release) 
VALUES(default, 'суперлуние','2021-01-01');
INSERT INTO album_table(id, album_name,year_of_release) 
VALUES(default, 'институт культуры и отдых','2020-01-01');
INSERT INTO album_table(id, album_name,year_of_release) 
VALUES(default, 'Unknown Pleasures','1979-01-01');
INSERT INTO album_table(id, album_name,year_of_release) 
VALUES(default, 'Atmosphere','1980-01-01');
INSERT INTO album_table(id, album_name,year_of_release) 
VALUES(default, 'Segall The Best','2018-01-01');
INSERT INTO album_table(id, album_name,year_of_release) 
VALUES(default, 'Пляж','2016-01-01');
INSERT INTO album_table(id, album_name,year_of_release) 
VALUES(default, 'О, человек','2009-01-01');
INSERT INTO album_table(id, album_name,year_of_release) 
VALUES(default, '1 позиция','2005-01-01');
INSERT INTO album_table(id, album_name,year_of_release) 
VALUES(default, 'Ты должен носить свои грехи прямо на рукавах','2016-01-01');
INSERT INTO album_table(id, album_name,year_of_release) 
VALUES(default, 'charming man','1985-01-01');
--не менее 15 треков;
INSERT INTO track_table(id, album_id,track_name,duration) 
VALUES(default, '1','Киногерой','00:03:50');
INSERT INTO track_table(id, album_id,track_name,duration) 
VALUES(default, '1','уеду в мой петербург','00:01:30');
INSERT INTO track_table(id, album_id,track_name,duration) 
VALUES(default, '1','грустный танец','00:03:30');
INSERT INTO track_table(id, album_id,track_name,duration) 
VALUES(default, '1','немое кино','00:03:14');
INSERT INTO track_table(id, album_id,track_name,duration) 
VALUES(default, '1','пьеро','00:01:14');
INSERT INTO track_table(id, album_id,track_name,duration) 
VALUES(default, '1','один из дней','00:01:14');
INSERT INTO track_table(id, album_id,track_name,duration) 
VALUES(default, '1','разреши мне','00:01:14');
INSERT INTO track_table(id, album_id,track_name,duration) 
VALUES(default, '2','мой дым сигарет','00:02:50');
INSERT INTO track_table(id, album_id,track_name,duration) 
VALUES(default, '3','dead soul','00:02:36');
INSERT INTO track_table(id, album_id,track_name,duration) 
VALUES(default, '4','Atmosphere','00:05:36');
INSERT INTO track_table(id, album_id,track_name,duration) 
VALUES(default, '5','drugs','00:01:36');
INSERT INTO track_table(id, album_id,track_name,duration) 
VALUES(default, '6','лимб','00:01:58');
INSERT INTO track_table(id, album_id,track_name,duration) 
VALUES(default, '7','розовые очки','00:04:20');
INSERT INTO track_table(id, album_id,track_name,duration) 
VALUES(default, '8','вестна','00:03:20');
INSERT INTO track_table(id, album_id,track_name,duration) 
VALUES(default, '9','юность','00:02:14');
INSERT INTO track_table(id, album_id,track_name,duration) 
VALUES(default, '10','old house','00:02:14');
--не менее 8 сборников.
INSERT INTO collection(id, cllection_name,years_of_release) 
VALUES(default,'best brit','2018-01-01');
INSERT INTO collection(id, cllection_name,years_of_release) 
VALUES(default,'best rep','2013-01-01');
INSERT INTO collection(id, cllection_name,years_of_release) 
VALUES(default,'best pop','2016-01-01');
INSERT INTO collection(id, cllection_name,years_of_release) 
VALUES(default,'best','2022-01-01');
INSERT INTO collection(id, cllection_name,years_of_release) 
VALUES(default,'best for you','2003-01-01');
INSERT INTO collection(id, cllection_name,years_of_release) 
VALUES(default,'best of the best','2001-01-01');
INSERT INTO collection(id, cllection_name,years_of_release) 
VALUES(default,'best music','2009-01-01');
INSERT INTO collection(id, cllection_name,years_of_release) 
VALUES(default,'my collection','2008-01-01');
--исполнителей с жанрами, 
INSERT INTO musician_gengre(m_id,g_id) 
VALUES(1,1);
INSERT INTO musician_gengre(m_id,g_id) 
VALUES(1,5);
INSERT INTO musician_gengre(m_id,g_id) 
VALUES(3,5);
INSERT INTO musician_gengre(m_id,g_id) 
VALUES(4,3);
INSERT INTO musician_gengre(m_id,g_id) 
VALUES(5,2);
INSERT INTO musician_gengre(m_id,g_id) 
VALUES(6,2);
INSERT INTO musician_gengre(m_id,g_id) 
VALUES(7,4);
INSERT INTO musician_gengre(m_id,g_id) 
VALUES(9,5);
INSERT INTO musician_gengre(m_id,g_id) 
VALUES(10,4);
--исполнителей с альбомами, 
INSERT INTO musician_album(m_id,a_id) 
VALUES(1,1);
INSERT INTO musician_album(m_id,a_id) 
VALUES(1,2);
INSERT INTO musician_album(m_id,a_id) 
VALUES(3,3);
INSERT INTO musician_album(m_id,a_id) 
VALUES(3,4);
INSERT INTO musician_album(m_id,a_id) 
VALUES(4,5);
INSERT INTO musician_album(m_id,a_id) 
VALUES(5,6);
INSERT INTO musician_album(m_id,a_id) 
VALUES(6,7);
INSERT INTO musician_album(m_id,a_id) 
VALUES(7,8);
INSERT INTO musician_album(m_id,a_id) 
VALUES(9,10);
INSERT INTO musician_album(m_id,a_id) 
VALUES(10,9);
--сборников с треками
INSERT INTO track_collection(t_id,c_id) 
VALUES(1,1);
INSERT INTO track_collection(t_id,c_id) 
VALUES(2,1);
INSERT INTO track_collection(t_id,c_id) 
VALUES(3,2);
INSERT INTO track_collection(t_id,c_id) 
VALUES(4,2);
INSERT INTO track_collection(t_id,c_id) 
VALUES(3,3);
INSERT INTO track_collection(t_id,c_id) 
VALUES(4,3);
INSERT INTO track_collection(t_id,c_id) 
VALUES(5,3);
INSERT INTO track_collection(t_id,c_id) 
VALUES(6,3);
INSERT INTO track_collection(t_id,c_id) 
VALUES(5,5);
INSERT INTO track_collection(t_id,c_id) 
VALUES(3,4);
INSERT INTO track_collection(t_id,c_id) 
VALUES(6,4);
INSERT INTO track_collection(t_id,c_id) 
VALUES(13,6);
INSERT INTO track_collection(t_id,c_id) 
VALUES(16,6);
INSERT INTO track_collection(t_id,c_id) 
VALUES(11,7);
INSERT INTO track_collection(t_id,c_id) 
VALUES(12,7);
INSERT INTO track_collection(t_id,c_id) 
VALUES(15,8);
INSERT INTO track_collection(t_id,c_id) 
VALUES(10,8);


